.class public final Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmsTracker"
.end annotation


# instance fields
.field private mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mAppInfo:Landroid/content/pm/PackageInfo;

.field public final mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeliveryIntent:Landroid/app/PendingIntent;

.field public final mDestAddress:Ljava/lang/String;

.field public mDontRetry:Z

.field public mExpectMore:Z

.field public mFirstOfAll:Z

.field mFormat:Ljava/lang/String;

.field public mImsRetry:I

.field private mIsInvisibleMoSms:Z

.field private mIsLongSms:Z

.field public mLastOfAll:Z

.field public mMessageRef:I

.field public mMessageUri:Landroid/net/Uri;

.field public mPhoneId:I

.field public mRetryCount:I

.field public final mSentIntent:Landroid/app/PendingIntent;

.field public final mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

.field private mTimestamp:J

.field public mTpMrForRetry:I

.field private mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZJ)V
    .locals 2
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "appInfo"    # Landroid/content/pm/PackageInfo;
    .param p5, "destAddr"    # Ljava/lang/String;
    .param p6, "format"    # Ljava/lang/String;
    .param p7, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p8, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p9, "messageUri"    # Landroid/net/Uri;
    .param p10, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p11, "isExpectMore"    # Z
    .param p12, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "ZJ)V"
        }
    .end annotation

    .prologue
    .line 2105
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2064
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    .line 2076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDontRetry:Z

    .line 2079
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimestamp:J

    .line 2087
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsInvisibleMoSms:Z

    .line 2090
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsLongSms:Z

    .line 2096
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    .line 2107
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2108
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 2109
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 2110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 2112
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    .line 2113
    iput-object p5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 2115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    .line 2116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    .line 2118
    iput-object p6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 2119
    iput-boolean p11, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    .line 2120
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    .line 2121
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 2122
    iput-object p7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2123
    iput-object p8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2124
    iput-object p9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    .line 2125
    iput-object p10, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 2131
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsLongSms:Z

    .line 2134
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZJLcom/android/internal/telephony/SMSDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/HashMap;
    .param p2, "x1"    # Landroid/app/PendingIntent;
    .param p3, "x2"    # Landroid/app/PendingIntent;
    .param p4, "x3"    # Landroid/content/pm/PackageInfo;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p8, "x7"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p9, "x8"    # Landroid/net/Uri;
    .param p10, "x9"    # Lcom/android/internal/telephony/SmsHeader;
    .param p11, "x10"    # Z
    .param p12, "x11"    # J
    .param p14, "x12"    # Lcom/android/internal/telephony/SMSDispatcher$1;

    .prologue
    .line 2054
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZJ)V

    return-void
.end method

.method private setMessageFinalState(Landroid/content/Context;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageType"    # I

    .prologue
    const/4 v8, 0x1

    .line 2232
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 2246
    :goto_0
    return-void

    .line 2235
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 2236
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2239
    .local v6, "identity":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_1

    .line 2241
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to move message to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2244
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private updateMessageErrorCode(Landroid/content/Context;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .prologue
    const/4 v8, 0x1

    .line 2209
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 2223
    :goto_0
    return-void

    .line 2212
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 2213
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "error_code"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2214
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2216
    .local v6, "identity":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_1

    .line 2218
    const-string v0, "SMSDispatcher"

    const-string v1, "Failed to update message error code"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2221
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method


# virtual methods
.method public isInvisibleMoSms()Z
    .locals 1

    .prologue
    .line 2142
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsInvisibleMoSms:Z

    return v0
.end method

.method isMultipart()Z
    .locals 2

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string v1, "parts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onFailed(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "error"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 2256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;IILandroid/content/Intent;)V

    .line 2257
    return-void
.end method

.method public onFailed(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "error"    # I
    .param p3, "errorCode"    # I
    .param p4, "additionalIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2268
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v5, :cond_0

    .line 2269
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2272
    :cond_0
    const/4 v2, 0x1

    .line 2273
    .local v2, "isSinglePartOrLastPart":Z
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v5, :cond_1

    .line 2274
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    if-nez v5, :cond_9

    move v2, v3

    .line 2276
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 2277
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateMessageErrorCode(Landroid/content/Context;I)V

    .line 2279
    :cond_2
    if-eqz v2, :cond_3

    .line 2280
    const/4 v3, 0x5

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setMessageFinalState(Landroid/content/Context;I)V

    .line 2282
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_8

    .line 2287
    if-eqz p4, :cond_a

    .line 2288
    move-object v1, p4

    .line 2293
    .local v1, "fillIn":Landroid/content/Intent;
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v3, :cond_4

    .line 2295
    const-string v3, "uri"

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2297
    :cond_4
    if-eqz p3, :cond_5

    .line 2298
    const-string v3, "errorCode"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2300
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 2302
    const-string v3, "SendNextMsg"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2310
    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsLongSms:Z

    if-eqz v3, :cond_7

    .line 2311
    const-string v3, "is_long_sms"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2312
    const-string v3, "is_lastpart"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2313
    if-eqz v2, :cond_7

    .line 2314
    const-string v3, "final_result"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2319
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, p2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2329
    .end local v1    # "fillIn":Landroid/content/Intent;
    :cond_8
    :goto_2
    invoke-static {p0}, Lcom/htc/internal/telephony/HtcMoSmsController;->checkOutFromSendingAndSendNext(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 2330
    return-void

    :cond_9
    move v2, v4

    .line 2274
    goto :goto_0

    .line 2290
    :cond_a
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1    # "fillIn":Landroid/content/Intent;
    goto :goto_1

    .line 2320
    .end local v1    # "fillIn":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2321
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v3, "SMSDispatcher"

    const-string v4, "Failed to send result"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onSent(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 2339
    const/4 v2, 0x1

    .line 2340
    .local v2, "isSinglePartOrLastPart":Z
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v5, :cond_0

    .line 2341
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    if-nez v5, :cond_9

    move v2, v4

    .line 2343
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 2344
    const/4 v3, 0x1

    .line 2345
    .local v3, "success":Z
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2346
    const/4 v3, 0x0

    .line 2348
    :cond_1
    if-eqz v3, :cond_a

    .line 2349
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setMessageFinalState(Landroid/content/Context;I)V

    .line 2354
    .end local v3    # "success":Z
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_8

    .line 2357
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2358
    .local v1, "fillIn":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v4, :cond_3

    .line 2360
    const-string v4, "uri"

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2362
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 2364
    const-string v4, "SendNextMsg"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2372
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsLongSms:Z

    if-eqz v4, :cond_6

    .line 2373
    const-string v4, "is_long_sms"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2374
    const-string v4, "is_lastpart"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2375
    if-eqz v2, :cond_6

    .line 2376
    const/4 v3, 0x1

    .line 2377
    .restart local v3    # "success":Z
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2378
    const/4 v3, 0x0

    .line 2381
    :cond_5
    const-string v4, "final_result"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2387
    .end local v3    # "success":Z
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSmsWriteUiccForMo3gppSms()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2388
    const-string v5, "pdu"

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string v6, "pdu"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2392
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v5, -0x1

    invoke-virtual {v4, p1, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2402
    .end local v1    # "fillIn":Landroid/content/Intent;
    :cond_8
    :goto_2
    invoke-static {p0}, Lcom/htc/internal/telephony/HtcMoSmsController;->checkOutFromSendingAndSendNext(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 2403
    return-void

    .line 2341
    :cond_9
    const/4 v2, 0x0

    goto :goto_0

    .line 2351
    .restart local v3    # "success":Z
    :cond_a
    const/4 v4, 0x5

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setMessageFinalState(Landroid/content/Context;I)V

    goto :goto_1

    .line 2393
    .end local v3    # "success":Z
    :catch_0
    move-exception v0

    .line 2394
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMSDispatcher"

    const-string v5, "Failed to send result"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setIsInvisibleMoSms(Z)V
    .locals 0
    .param p1, "isInvisibleMoSms"    # Z

    .prologue
    .line 2138
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsInvisibleMoSms:Z

    .line 2139
    return-void
.end method

.method public setLinkControl(ZZ)V
    .locals 0
    .param p1, "first"    # Z
    .param p2, "last"    # Z

    .prologue
    .line 2184
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    .line 2185
    iput-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    .line 2186
    return-void
.end method

.method public setPhoneId(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .prologue
    .line 2099
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    .line 2100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateSentMessageStatus(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 2193
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2195
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2196
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2197
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    move-object v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2200
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method writeSentMessage(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 2165
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2166
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2167
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    move v7, v6

    .line 2170
    .local v7, "deliveryReport":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v8, 0x0

    invoke-static/range {v0 .. v9}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    .line 2180
    .end local v7    # "deliveryReport":Z
    :cond_0
    return-void

    .line 2167
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method
