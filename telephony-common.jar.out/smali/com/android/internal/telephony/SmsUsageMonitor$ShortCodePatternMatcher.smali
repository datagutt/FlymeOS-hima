.class final Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
.super Ljava/lang/Object;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShortCodePatternMatcher"
.end annotation


# instance fields
.field private final mFreeShortCodePattern:Ljava/util/regex/Pattern;

.field private final mPremiumShortCodePattern:Ljava/util/regex/Pattern;

.field private final mShortCodePattern:Ljava/util/regex/Pattern;

.field private final mStandardShortCodePattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "shortCodeRegex"    # Ljava/lang/String;
    .param p2, "premiumShortCodeRegex"    # Ljava/lang/String;
    .param p3, "freeShortCodeRegex"    # Ljava/lang/String;
    .param p4, "standardShortCodeRegex"    # Ljava/lang/String;
    .param p5, "country"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getOperatorDefineSmsShortCode()[Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "shortCodeCustList":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 335
    new-instance v1, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;

    invoke-direct {v1, v0, p5}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .local v1, "shortCodeCustUtils":Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;
    const-string v2, "pattern"

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->merge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 337
    const-string v2, "premium"

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->merge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 338
    const-string v2, "free"

    invoke-virtual {v1, p3, v2}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->merge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 339
    const-string v2, "standard"

    invoke-virtual {v1, p4, v2}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->merge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 345
    .end local v1    # "shortCodeCustUtils":Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;
    :cond_0
    if-eqz p1, :cond_2

    const-string v2, "\\\\"

    const-string v4, "\\"

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mShortCodePattern:Ljava/util/regex/Pattern;

    .line 346
    if-eqz p2, :cond_3

    const-string v2, "\\\\"

    const-string v4, "\\"

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mPremiumShortCodePattern:Ljava/util/regex/Pattern;

    .line 348
    if-eqz p3, :cond_4

    const-string v2, "\\\\"

    const-string v4, "\\"

    invoke-virtual {p3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mFreeShortCodePattern:Ljava/util/regex/Pattern;

    .line 350
    if-eqz p4, :cond_1

    const-string v2, "\\\\"

    const-string v3, "\\"

    invoke-virtual {p4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    :cond_1
    iput-object v3, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mStandardShortCodePattern:Ljava/util/regex/Pattern;

    .line 353
    return-void

    :cond_2
    move-object v2, v3

    .line 345
    goto :goto_0

    :cond_3
    move-object v2, v3

    .line 346
    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 348
    goto :goto_2
.end method


# virtual methods
.method getNumberCategory(Ljava/lang/String;)I
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mFreeShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mFreeShortCodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 371
    :goto_0
    return v0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mStandardShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mStandardShortCodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    const/4 v0, 0x2

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mPremiumShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mPremiumShortCodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    const/4 v0, 0x4

    goto :goto_0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mShortCodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    const/4 v0, 0x3

    goto :goto_0

    .line 371
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
