.class public Lcom/htc/internal/telephony/HtcSmsUtils;
.super Ljava/lang/Object;
.source "HtcSmsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SMS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLinkControl(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 14
    .param p0, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 46
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v7

    float-to-double v8, v7

    const-wide/high16 v10, 0x401c000000000000L    # 7.0

    cmpg-double v7, v8, v10

    if-gez v7, :cond_0

    .line 106
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v3, 0x0

    .line 50
    .local v3, "isLongSms":Z
    const/4 v6, 0x1

    .line 51
    .local v6, "totalSegments":I
    const/4 v5, 0x1

    .line 52
    .local v5, "sequence":I
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v7, :cond_1

    .line 53
    const/4 v3, 0x1

    .line 54
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v6, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 55
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 57
    :cond_1
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isLongSms="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", sequence/totalSegments="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 62
    :cond_2
    const/4 v2, 0x0

    .line 63
    .local v2, "isGroupSms":Z
    const/4 v0, 0x0

    .line 64
    .local v0, "firstSms":Z
    const/4 v4, 0x0

    .line 65
    .local v4, "lastSms":Z
    if-eqz v1, :cond_3

    const-string v7, "FIRST_SMS"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "LAST_SMS"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 66
    const-string v7, "FIRST_SMS"

    invoke-virtual {v1, v7, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    const-string v7, "LAST_SMS"

    invoke-virtual {v1, v7, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 68
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Had Link Control Info: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-ne v0, v13, :cond_5

    if-ne v4, v13, :cond_5

    .line 87
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 88
    if-eqz v3, :cond_a

    .line 89
    if-ne v5, v13, :cond_8

    .line 90
    iput-boolean v13, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    .line 91
    iput-boolean v12, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    .line 105
    :cond_4
    :goto_2
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isGroupSms="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", result("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 73
    :cond_5
    if-ne v5, v13, :cond_6

    if-ne v0, v13, :cond_6

    .line 74
    iput-boolean v13, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    .line 75
    iput-boolean v12, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    .line 83
    :goto_3
    const/4 v2, 0x1

    goto :goto_1

    .line 76
    :cond_6
    if-ne v5, v6, :cond_7

    if-ne v4, v13, :cond_7

    .line 77
    iput-boolean v12, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    .line 78
    iput-boolean v13, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    goto :goto_3

    .line 80
    :cond_7
    iput-boolean v12, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    .line 81
    iput-boolean v12, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    goto :goto_3

    .line 92
    :cond_8
    if-ne v5, v6, :cond_9

    .line 93
    iput-boolean v12, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    .line 94
    iput-boolean v13, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    goto :goto_2

    .line 96
    :cond_9
    iput-boolean v12, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    .line 97
    iput-boolean v12, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    goto :goto_2

    .line 100
    :cond_a
    iput-boolean v12, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    .line 101
    iput-boolean v12, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    goto :goto_2
.end method

.method public static syncMo2AcmsDb(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 119
    .local v1, "ambsValues":Landroid/content/ContentValues;
    const-string v3, "direction"

    const-string v4, "O"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v3, "time"

    const-string v4, "date"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    const-string v3, "content"

    const-string v4, "body"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v3, "recipients"

    const-string v4, "address"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v3, "id"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :try_start_0
    const-string v3, "content://acms/insert-sms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    .local v0, "ambsUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v0    # "ambsUri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SMS"

    const-string v4, "sync3rdMo2AmbsDb: Failed to persist outbox message"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
