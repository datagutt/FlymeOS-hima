.class public Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.super Ljava/lang/Object;
.source "SmsBroadcastUndelivered.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final PARTIAL_SEGMENT_EXPIRE_AGE:J = 0x9a7ec800L

.field private static final PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmsBroadcastUndelivered"

.field private static final sRawUri:Landroid/net/Uri;


# instance fields
.field private final mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private final mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private mHad3gpp2UndeliveredMessage:Z

.field private mHad3gppUndeliveredMessage:Z

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pdu"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sequence"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "reference_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 64
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->sRawUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p3, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mHad3gppUndeliveredMessage:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mHad3gpp2UndeliveredMessage:Z

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    .line 92
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 93
    iput-object p3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p3, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 100
    return-void
.end method

.method private broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 5
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    const/4 v4, 0x1

    .line 223
    const/4 v1, 0x0

    .line 225
    .local v1, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 227
    .local v0, "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v2

    const-string v3, "3gpp2"

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 232
    :goto_0
    if-eqz v0, :cond_4

    .line 234
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v2, :cond_2

    .line 236
    :cond_0
    const-string v2, "SmsBroadcastUndelivered"

    const-string v3, "invalid sms in raw data, can\'t deliver."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_1
    return-void

    .line 229
    .end local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 230
    .restart local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v2

    const-string v3, "3gpp"

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    goto :goto_0

    .line 239
    :cond_2
    const-string v2, "SmsBroadcastUndelivered"

    const-string v3, "parse OK, ready to dispatch"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 245
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 246
    iput-boolean v4, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mHad3gpp2UndeliveredMessage:Z

    goto :goto_1

    .line 248
    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mHad3gppUndeliveredMessage:Z

    goto :goto_1

    .line 253
    :cond_4
    const-string v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null handler for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " format, can\'t deliver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private scanRawTable()V
    .locals 24

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 133
    .local v20, "startTime":J
    new-instance v13, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v13, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 135
    .local v13, "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v15, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 136
    .local v15, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;>;"
    const/4 v8, 0x0

    .line 138
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 139
    if-nez v8, :cond_1

    .line 140
    const-string v2, "SmsBroadcastUndelivered"

    const-string v3, "error getting pending message cursor"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    if-eqz v8, :cond_0

    .line 211
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_0
    const-string v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finished scanning raw table in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v20

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    .line 153
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v11, 0x1

    .line 154
    .local v11, "isCurrentFormat3gpp2":Z
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_9

    .line 157
    :try_start_2
    new-instance v19, Lcom/android/internal/telephony/InboundSmsTracker;

    move-object/from16 v0, v19

    invoke-direct {v0, v8, v11}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/database/Cursor;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    .local v19, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 207
    .end local v11    # "isCurrentFormat3gpp2":Z
    .end local v19    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :catch_0
    move-exception v9

    .line 208
    .local v9, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v2, "SmsBroadcastUndelivered"

    const-string v3, "error reading pending SMS messages"

    invoke-static {v2, v3, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    if-eqz v8, :cond_3

    .line 211
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_3
    const-string v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finished scanning raw table in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v20

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    .end local v9    # "e":Landroid/database/SQLException;
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 158
    .restart local v11    # "isCurrentFormat3gpp2":Z
    :catch_1
    move-exception v9

    .line 164
    .local v9, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error loading SmsTracker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 210
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "isCurrentFormat3gpp2":Z
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_5

    .line 211
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_5
    const-string v3, "SmsBroadcastUndelivered"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finished scanning raw table in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v20

    const-wide/32 v22, 0xf4240

    div-long v6, v6, v22

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    .line 172
    .restart local v11    # "isCurrentFormat3gpp2":Z
    .restart local v19    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_6
    :try_start_6
    new-instance v17, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;-><init>(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 173
    .local v17, "reference":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 174
    .local v16, "receivedCount":Ljava/lang/Integer;
    if-nez v16, :cond_7

    .line 175
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide v6, 0x9a7ec800L

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 179
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 182
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v14, v2, 0x1

    .line 183
    .local v14, "newCount":I
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    if-ne v14, v2, :cond_8

    .line 186
    const-string v2, "SmsBroadcastUndelivered"

    const-string v3, "found complete multi-part message"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 189
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 191
    :cond_8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 197
    .end local v14    # "newCount":I
    .end local v16    # "receivedCount":Ljava/lang/Integer;
    .end local v17    # "reference":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v19    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_9
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    .line 198
    .local v12, "message":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->sRawUri:Landroid/net/Uri;

    const-string v4, "address=? AND reference_number=? AND count=?"

    invoke-virtual {v12}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 200
    .local v18, "rows":I
    if-nez v18, :cond_a

    .line 201
    const-string v2, "SmsBroadcastUndelivered"

    const-string v3, "No rows were deleted from raw table!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 203
    :cond_a
    const-string v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows from raw table for incomplete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " part message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 210
    .end local v12    # "message":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v18    # "rows":I
    :cond_b
    if-eqz v8, :cond_c

    .line 211
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_c
    const-string v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finished scanning raw table in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v20

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    .line 104
    const-string v0, "SmsBroadcastUndelivered"

    const-string v1, "scanning raw table for undelivered messages"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->scanRawTable()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(I)V

    .line 120
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mHad3gppUndeliveredMessage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(I)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(I)V

    .line 124
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mHad3gpp2UndeliveredMessage:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(I)V

    .line 126
    :cond_2
    return-void
.end method
