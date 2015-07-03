.class public Lcom/android/internal/telephony/gsm/GsmCmasMessage;
.super Lcom/android/internal/telephony/CmasMessage;
.source "GsmCmasMessage.java"


# static fields
.field private static final CHANNEL_AMBER:I = 0x111b

.field private static final CHANNEL_AMBER_ADDITIONAL:I = 0x1128

.field private static final CHANNEL_EXERCISE:I = 0x111d

.field private static final CHANNEL_EXERCISE_ADDITIONAL:I = 0x112a

.field private static final CHANNEL_EXTREME_EXTREME_IMMEDIATE_LIKELY:I = 0x1114

.field private static final CHANNEL_EXTREME_EXTREME_IMMEDIATE_LIKELY_ADDITIONAL:I = 0x1121

.field private static final CHANNEL_EXTREME_EXTREME_IMMEDIATE_OBSERVED:I = 0x1113

.field private static final CHANNEL_EXTREME_EXTREME_IMMEDIATE_OBSERVED_ADDITIONAL:I = 0x1120

.field private static final CHANNEL_OPERATOR_DEFINED:I = 0x111e

.field private static final CHANNEL_OPERATOR_DEFINED_ADDITIONAL:I = 0x112b

.field private static final CHANNEL_PRESIDENTIAL:I = 0x1112

.field private static final CHANNEL_PRESIDENTIAL_ADDITIONAL:I = 0x111f

.field private static final CHANNEL_SEVERE_EXTREME_EXPECTED_LIKELY:I = 0x1116

.field private static final CHANNEL_SEVERE_EXTREME_EXPECTED_LIKELY_ADDITIONAL:I = 0x1123

.field private static final CHANNEL_SEVERE_EXTREME_EXPECTED_OBSERVED:I = 0x1115

.field private static final CHANNEL_SEVERE_EXTREME_EXPECTED_OBSERVED_ADDITIONAL:I = 0x1122

.field private static final CHANNEL_SEVERE_SEVERE_EXPECTED_LIKELY:I = 0x111a

.field private static final CHANNEL_SEVERE_SEVERE_EXPECTED_LIKELY_ADDITIONAL:I = 0x1127

.field private static final CHANNEL_SEVERE_SEVERE_EXPECTED_OBSERVED:I = 0x1119

.field private static final CHANNEL_SEVERE_SEVERE_EXPECTED_OBSERVED_ADDITIONAL:I = 0x1126

.field private static final CHANNEL_SEVERE_SEVERE_IMMEDIATE_LIKELY:I = 0x1118

.field private static final CHANNEL_SEVERE_SEVERE_IMMEDIATE_LIKELY_ADDITIONAL:I = 0x1125

.field private static final CHANNEL_SEVERE_SEVERE_IMMEDIATE_OBSERVED:I = 0x1117

.field private static final CHANNEL_SEVERE_SEVERE_IMMEDIATE_OBSERVED_ADDITIONAL:I = 0x1124

.field private static final CHANNEL_TEST_MONTHLY:I = 0x111c

.field private static final CHANNEL_TEST_MONTHLY_ADDITIONAL:I = 0x1129

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/CmasMessage;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasFormat:I

    .line 90
    return-void
.end method

.method public static getCertainty(I)Ljava/lang/String;
    .locals 2
    .param p0, "msgId"    # I

    .prologue
    .line 269
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 270
    .local v0, "r":Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 290
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 279
    :pswitch_1
    const v1, 0x3070152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 288
    :pswitch_2
    const v1, 0x3070153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSeverity(I)Ljava/lang/String;
    .locals 2
    .param p0, "msgId"    # I

    .prologue
    .line 207
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 208
    .local v0, "r":Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 228
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 217
    :pswitch_1
    const v1, 0x307014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 226
    :pswitch_2
    const v1, 0x307014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getUrgency(I)Ljava/lang/String;
    .locals 2
    .param p0, "msgId"    # I

    .prologue
    .line 238
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 239
    .local v0, "r":Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 259
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 248
    :pswitch_1
    const v1, 0x3070150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 257
    :pswitch_2
    const v1, 0x3070151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setCmasType(I)V
    .locals 4
    .param p1, "channel"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 198
    :goto_0
    :pswitch_0
    return-void

    .line 124
    :pswitch_1
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    goto :goto_0

    .line 128
    :pswitch_2
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 129
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 130
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 131
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 135
    :pswitch_3
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 136
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 137
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 138
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 142
    :pswitch_4
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 143
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 144
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 145
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 149
    :pswitch_5
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 150
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 151
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 152
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 156
    :pswitch_6
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 157
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 158
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 159
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 163
    :pswitch_7
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 164
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 165
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 166
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 170
    :pswitch_8
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 171
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 172
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 173
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 177
    :pswitch_9
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 178
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 179
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 180
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 184
    :pswitch_a
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    goto :goto_0

    .line 188
    :pswitch_b
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    goto :goto_0

    .line 192
    :pswitch_c
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public parseGsmPdu([B)V
    .locals 4
    .param p1, "pdu"    # [B

    .prologue
    .line 99
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/CBMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/CBMessage;-><init>()V

    .line 100
    .local v0, "cb":Lcom/android/internal/telephony/gsm/CBMessage;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/CBMessage;->parseCBPdu([B)V

    .line 101
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasFormat:I

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->mPdu:[B

    .line 103
    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->sn:I

    .line 104
    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->gs:I

    .line 105
    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->msgId:I

    .line 106
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 107
    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->pageSeg:I

    .line 108
    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->pageCount:I

    .line 109
    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingType:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->charSetEncoding:I

    .line 110
    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->charSetEncodingSet:Z

    .line 111
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/CBMessage;->getUserData()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->alertText:[B

    .line 112
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->alertTextStr:Ljava/lang/String;

    .line 113
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->msgId:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->setCmasType(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "cb":Lcom/android/internal/telephony/gsm/CBMessage;
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "GSM"

    const-string v3, "gsm cb parsing failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
