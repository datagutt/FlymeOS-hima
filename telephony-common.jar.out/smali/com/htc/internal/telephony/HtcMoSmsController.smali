.class public Lcom/htc/internal/telephony/HtcMoSmsController;
.super Ljava/lang/Object;
.source "HtcMoSmsController.java"


# static fields
.field public static final MAX_SENDING_COUNT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "HtcMoSmsController"

.field private static sInstance:[Lcom/htc/internal/telephony/HtcMoSmsController;


# instance fields
.field private mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

.field private mSendingList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 1
    .param p1, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/internal/telephony/HtcMoSmsController;->mWaitingQueue:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/internal/telephony/HtcMoSmsController;->mSendingList:Ljava/util/HashMap;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/internal/telephony/HtcMoSmsController;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    .line 62
    iput-object p1, p0, Lcom/htc/internal/telephony/HtcMoSmsController;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    .line 63
    return-void
.end method

.method public static checkInForSendOrWait(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 10
    .param p0, "phoneId"    # I
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v5, 0x1

    .line 95
    const-string v6, "HtcMoSmsController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkInForSendOrWait> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", RetryCnt> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Phone ID>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-eqz v6, :cond_0

    .line 128
    :goto_0
    return v5

    .line 102
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setPhoneId(I)V

    .line 104
    invoke-static {p0}, Lcom/htc/internal/telephony/HtcMoSmsController;->getInstance(I)Lcom/htc/internal/telephony/HtcMoSmsController;

    move-result-object v1

    .line 105
    .local v1, "instance":Lcom/htc/internal/telephony/HtcMoSmsController;
    if-nez v1, :cond_1

    .line 106
    const-string v6, "HtcMoSmsController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] MO SMS Controller not be init!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_1
    monitor-enter v1

    .line 111
    :try_start_0
    const-string v6, "HtcMoSmsController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] Sending count> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/htc/internal/telephony/HtcMoSmsController;->mSendingList:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v6, v1, Lcom/htc/internal/telephony/HtcMoSmsController;->mSendingList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v7, 0x7

    if-ge v6, v7, :cond_2

    .line 113
    iget-object v6, v1, Lcom/htc/internal/telephony/HtcMoSmsController;->mSendingList:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v6, "HtcMoSmsController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] check In For Sending"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    monitor-exit v1

    goto/16 :goto_0

    .line 130
    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 117
    :cond_2
    :try_start_1
    iget-object v5, v1, Lcom/htc/internal/telephony/HtcMoSmsController;->mWaitingQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v5, "HtcMoSmsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] check In For Waiting> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/htc/internal/telephony/HtcMoSmsController;->mWaitingQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v5, v1, Lcom/htc/internal/telephony/HtcMoSmsController;->mSendingList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 122
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 123
    .local v3, "timestamp":Ljava/lang/Long;
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 124
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 125
    const-string v5, "HtcMoSmsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Sending Timestamp> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%Y %m-%d %H:%M:%S"

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 128
    .end local v2    # "time":Landroid/text/format/Time;
    .end local v3    # "timestamp":Ljava/lang/Long;
    :cond_3
    const/4 v5, 0x0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static checkOutFromSendingAndSendNext(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 5
    .param p0, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 140
    const-string v2, "HtcMoSmsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOutFromSendingAndSendNext>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RetryCnt>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Phone ID>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    invoke-static {v2}, Lcom/htc/internal/telephony/HtcMoSmsController;->getInstance(I)Lcom/htc/internal/telephony/HtcMoSmsController;

    move-result-object v0

    .line 144
    .local v0, "instance":Lcom/htc/internal/telephony/HtcMoSmsController;
    if-nez v0, :cond_0

    .line 145
    const-string v2, "HtcMoSmsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] MO SMS Controller not be init!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    monitor-enter v0

    .line 149
    :try_start_0
    const-string v2, "HtcMoSmsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Sending List contain this SMS> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/internal/telephony/HtcMoSmsController;->mSendingList:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, v0, Lcom/htc/internal/telephony/HtcMoSmsController;->mSendingList:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v2, "HtcMoSmsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Remaining sending count> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/internal/telephony/HtcMoSmsController;->mSendingList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v2, "HtcMoSmsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Waiting count> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/internal/telephony/HtcMoSmsController;->mWaitingQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, v0, Lcom/htc/internal/telephony/HtcMoSmsController;->mSendingList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    iget-object v2, v0, Lcom/htc/internal/telephony/HtcMoSmsController;->mWaitingQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 157
    const-string v2, "HtcMoSmsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Send next enqueue SMS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, v0, Lcom/htc/internal/telephony/HtcMoSmsController;->mWaitingQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 166
    .local v1, "nextTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v2, v0, Lcom/htc/internal/telephony/HtcMoSmsController;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 168
    .end local v1    # "nextTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getInstance(I)Lcom/htc/internal/telephony/HtcMoSmsController;
    .locals 3
    .param p0, "phoneId"    # I

    .prologue
    .line 77
    const-string v0, "HtcMoSmsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/htc/internal/telephony/HtcMoSmsController;->sInstance:[Lcom/htc/internal/telephony/HtcMoSmsController;

    if-nez v0, :cond_0

    .line 79
    const-string v0, "HtcMoSmsController"

    const-string v1, "sInstance is null, never be init!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/internal/telephony/HtcMoSmsController;->sInstance:[Lcom/htc/internal/telephony/HtcMoSmsController;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static initMoSmsController(ILcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    .line 66
    const-string v0, "HtcMoSmsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init MO SMS Controller for phone ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-class v1, Lcom/htc/internal/telephony/HtcMoSmsController;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/htc/internal/telephony/HtcMoSmsController;->sInstance:[Lcom/htc/internal/telephony/HtcMoSmsController;

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/htc/internal/telephony/HtcMoSmsController;

    sput-object v0, Lcom/htc/internal/telephony/HtcMoSmsController;->sInstance:[Lcom/htc/internal/telephony/HtcMoSmsController;

    .line 72
    :cond_0
    sget-object v0, Lcom/htc/internal/telephony/HtcMoSmsController;->sInstance:[Lcom/htc/internal/telephony/HtcMoSmsController;

    new-instance v2, Lcom/htc/internal/telephony/HtcMoSmsController;

    invoke-direct {v2, p1}, Lcom/htc/internal/telephony/HtcMoSmsController;-><init>(Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    aput-object v2, v0, p0

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
