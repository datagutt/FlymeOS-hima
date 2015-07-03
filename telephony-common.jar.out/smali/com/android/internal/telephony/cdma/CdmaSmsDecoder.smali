.class public Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;
.super Ljava/lang/Object;
.source "CdmaSmsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;,
        Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_TAG:Ljava/lang/String; = "CDMA"

.field static final accepted_TRANSPORT_TYPE:[B

.field static final accepted_TRANSPORT_TYPE_param_list:[[B

.field static final accepted_param_ACKNOWLEDGE:[B

.field static final accepted_param_BROADCAST:[B

.field static final accepted_param_POINT_TO_POINT:[B

.field static final accepted_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

.field static final accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

.field static final accepted_subparam_IS91_EXTENDED:[B

.field static final accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

.field static final accepted_subparam_VOICE_MAIL_NOTIFICATION:[B

.field static final accepted_subparam_WIRELESS_APPLICATION:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_delivery:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_delivery_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

.field static final accepted_subparam_WIRELESS_PAGING_delivery:[B

.field static final accepted_subparam_WIRELESS_PAGING_delivery_ack:[B

.field static final accepted_subparam_WIRELESS_PAGING_user_ack:[B

.field static final accepted_subparam_broadcast:[B

.field static final accepted_subparam_raw_message_waiting_indication:[B

.field static final accepted_subparam_submit_report:[B

.field private static final bitsMaskRight:[S

.field private static final dtmfDigitToAscII:[B

.field static final required_TRANSPORT_TYPE_param_list:[[B

.field static final required_param_ACKNOWLEDGE:[B

.field static final required_param_BROADCAST:[B

.field static final required_param_POINT_TO_POINT:[B

.field static final required_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

.field static final required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

.field static final required_subparam_IS91_EXTENDED:[B

.field static final required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

.field static final required_subparam_VOICE_MAIL_NOTIFICATION:[B

.field static final required_subparam_WIRELESS_APPLICATION:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_delivery:[B

.field static final required_subparam_WIRELESS_MESSAGING_delivery_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_read_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_user_ack:[B

.field static final required_subparam_WIRELESS_PAGING_delivery:[B

.field static final required_subparam_WIRELESS_PAGING_delivery_ack:[B

.field static final required_subparam_WIRELESS_PAGING_user_ack:[B

.field static final required_subparam_broadcast:[B

.field static final required_subparam_raw_message_waiting_indication:[B

.field static final required_subparam_submit_report:[B


# instance fields
.field final BODY_EMPTY:I

.field final BODY_ENCODING_CHAR:I

.field final BODY_ENCODING_RAW_DATA:I

.field final BODY_ENCODING_UNICODE:I

.field final BODY_ENCODING_UNKNOWN:I

.field TeleserviceMsgType:B

.field TeleserviceParam_absoluteValidity:[S

.field TeleserviceParam_alertOnDelivery:B

.field TeleserviceParam_callbackAddr:[B

.field TeleserviceParam_callbackAddrPlan:B

.field TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TeleserviceParam_displayMode:B

.field TeleserviceParam_downloadMode:B

.field TeleserviceParam_encodingUserData:[[B

.field TeleserviceParam_encodingUserDataEncoding:[B

.field TeleserviceParam_errorClass:B

.field TeleserviceParam_errorDetail:B

.field TeleserviceParam_gsmTpFailure:B

.field TeleserviceParam_language:B

.field TeleserviceParam_messageCenterTimeStamp:[S

.field TeleserviceParam_messageId:S

.field TeleserviceParam_messageIdInCenter:S

.field TeleserviceParam_priority:B

.field TeleserviceParam_privacy:B

.field TeleserviceParam_relativeValidity:[B

.field TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

.field TeleserviceParam_replyManualAck:Z

.field TeleserviceParam_replyReadAck:Z

.field TeleserviceParam_replySubmitReport:Z

.field TeleserviceParam_settingAlertForTypeOfService:[B

.field TeleserviceParam_settingData:[[B

.field TeleserviceParam_settingEncoding:B

.field TeleserviceParam_settingLanguage:[B

.field TeleserviceParam_settingMaxMessagesForTypeOfService:[S

.field TeleserviceParam_settingOperation:[B

.field TeleserviceParam_settingTypeOfService:[S

.field TeleserviceParam_userData:[B

.field TeleserviceParam_userDataEncoding:B

.field TeleserviceParam_userDataEncodingExtended:S

.field TeleserviceParam_userDataHeader:[B

.field TeleserviceParam_userDataHeaderExisted:Z

.field TeleserviceParam_userResponseCode:S

.field TeleserviceParam_vmnAccessNumber:[B

.field TeleserviceParam_vmnAccessNumberPlan:B

.field TeleserviceParam_vmnAccessNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TeleserviceParam_vmnAckDeletedAcks:[S

.field TeleserviceParam_vmnAckMailboxId:S

.field TeleserviceParam_vmnAckPlayedAcks:[S

.field TeleserviceParam_vmnAckUnheardMessages:S

.field TeleserviceParam_vmnAllowReply:Z

.field TeleserviceParam_vmnCallingPartyNumber:[B

.field TeleserviceParam_vmnCallingPartyNumberPlan:B

.field TeleserviceParam_vmnCallingPartyNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TeleserviceParam_vmnChangePassword:Z

.field TeleserviceParam_vmnIncludeFax:Z

.field TeleserviceParam_vmnLengthInSeconds:S

.field TeleserviceParam_vmnMailboxId:S

.field TeleserviceParam_vmnMessageId:S

.field TeleserviceParam_vmnPasswordExisted:Z

.field TeleserviceParam_vmnPasswordMaxLen:B

.field TeleserviceParam_vmnPasswordMinLen:B

.field TeleserviceParam_vmnPriority:B

.field TeleserviceParam_vmnRetentionDays:B

.field TeleserviceParam_vmnServerAlmostFull:Z

.field TeleserviceParam_vmnServerFull:Z

.field TeleserviceParam_vmnSetupInitUserPrompt:Z

.field TeleserviceParam_vmnUnheardMessages:S

.field TeleserviceParam_voiceMailsInServer:B

.field TeleserviceParameters:[Z

.field TransportMsgType:B

.field TransportParam_causeDetail:B

.field TransportParam_destAddr:[B

.field TransportParam_destAddrPlan:B

.field TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TransportParam_errorClass:B

.field TransportParam_fromAddr:[B

.field TransportParam_fromAddrDigitMode:B

.field TransportParam_fromAddrNumberMode:B

.field TransportParam_fromAddrNumberOfDigits:I

.field TransportParam_fromAddrPlan:B

.field TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TransportParam_replySeqNumber:B

.field TransportParam_subAddr:[B

.field TransportParam_subAddrType:B

.field TransportParam_teleserviceCategory:I

.field TransportParam_typeOfService:I

.field TransportParameters:[Z

.field dataEnd:I

.field dataEnd_bearerData:I

.field dataEnd_userData:I

.field param_len:S

.field smsData:[B

.field startBitIndex_decodeAddress:I

.field startIndex:I

.field startIndex_bearerData:I

.field startIndex_userData:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-array v0, v6, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE:[B

    .line 67
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_POINT_TO_POINT:[B

    .line 78
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_POINT_TO_POINT:[B

    .line 83
    new-array v0, v4, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_BROADCAST:[B

    .line 88
    new-array v0, v3, [B

    aput-byte v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_BROADCAST:[B

    .line 92
    new-array v0, v4, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_ACKNOWLEDGE:[B

    .line 97
    new-array v0, v3, [B

    const/4 v1, 0x7

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_ACKNOWLEDGE:[B

    .line 101
    new-array v0, v6, [[B

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_POINT_TO_POINT:[B

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_BROADCAST:[B

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_ACKNOWLEDGE:[B

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE_param_list:[[B

    .line 107
    new-array v0, v6, [[B

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_POINT_TO_POINT:[B

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_BROADCAST:[B

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_ACKNOWLEDGE:[B

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_TRANSPORT_TYPE_param_list:[[B

    .line 113
    const/16 v0, 0x9

    new-array v0, v0, [S

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    .line 116
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dtmfDigitToAscII:[B

    .line 120
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_broadcast:[B

    .line 134
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_broadcast:[B

    .line 138
    new-array v0, v4, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_IS91_EXTENDED:[B

    .line 143
    new-array v0, v4, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_IS91_EXTENDED:[B

    .line 148
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery:[B

    .line 162
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery:[B

    .line 166
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_user_ack:[B

    .line 175
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_user_ack:[B

    .line 179
    new-array v0, v5, [B

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery_ack:[B

    .line 187
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery_ack:[B

    .line 191
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    .line 209
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    .line 213
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

    .line 222
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_user_ack:[B

    .line 226
    new-array v0, v5, [B

    fill-array-data v0, :array_e

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

    .line 234
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_read_ack:[B

    .line 238
    new-array v0, v5, [B

    fill-array-data v0, :array_f

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    .line 246
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    .line 250
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_VOICE_MAIL_NOTIFICATION:[B

    .line 264
    new-array v0, v4, [B

    fill-array-data v0, :array_11

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_VOICE_MAIL_NOTIFICATION:[B

    .line 269
    new-array v0, v4, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    .line 274
    new-array v0, v4, [B

    fill-array-data v0, :array_13

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_APPLICATION:[B

    .line 279
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    .line 297
    new-array v0, v4, [B

    fill-array-data v0, :array_15

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    .line 302
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    .line 311
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    .line 315
    new-array v0, v5, [B

    fill-array-data v0, :array_17

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    .line 323
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    .line 327
    new-array v0, v5, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    .line 335
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    .line 339
    new-array v0, v6, [B

    fill-array-data v0, :array_19

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    .line 345
    new-array v0, v4, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    .line 350
    new-array v0, v4, [B

    fill-array-data v0, :array_1b

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    .line 355
    new-array v0, v4, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    .line 360
    new-array v0, v6, [B

    fill-array-data v0, :array_1d

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    .line 366
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    .line 370
    new-array v0, v5, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_submit_report:[B

    .line 378
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_submit_report:[B

    .line 383
    new-array v0, v4, [B

    fill-array-data v0, :array_1f

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_raw_message_waiting_indication:[B

    .line 389
    new-array v0, v4, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_raw_message_waiting_indication:[B

    return-void

    .line 61
    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
    .end array-data

    .line 67
    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x8t
    .end array-data

    .line 83
    :array_2
    .array-data 1
        0x1t
        0x8t
    .end array-data

    .line 92
    nop

    :array_3
    .array-data 1
        0x5t
        0x7t
    .end array-data

    .line 113
    nop

    :array_4
    .array-data 2
        0x0s
        0x1s
        0x3s
        0x7s
        0xfs
        0x1fs
        0x3fs
        0x7fs
        0xffs
    .end array-data

    .line 116
    nop

    :array_5
    .array-data 1
        0x0t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x2at
        0x23t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 120
    :array_6
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x8t
        0xct
        0xdt
        0xet
        0xft
        0x10t
    .end array-data

    .line 138
    :array_7
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 143
    nop

    :array_8
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 148
    nop

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x8t
        0x9t
        0xat
        0xbt
        0xet
        0xft
        0x10t
        0x11t
    .end array-data

    .line 166
    :array_a
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 179
    nop

    :array_b
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x10t
        0x14t
    .end array-data

    .line 191
    nop

    :array_c
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
    .end array-data

    .line 213
    :array_d
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 226
    nop

    :array_e
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 238
    nop

    :array_f
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x10t
        0x14t
    .end array-data

    .line 250
    nop

    :array_10
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x8t
        0x9t
        0xbt
        0xct
        0xet
        0x10t
        0x16t
        0x17t
    .end array-data

    .line 264
    :array_11
    .array-data 1
        0x0t
        0xbt
    .end array-data

    .line 269
    nop

    :array_12
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 274
    nop

    :array_13
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 279
    nop

    :array_14
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
    .end array-data

    .line 297
    :array_15
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 302
    nop

    :array_16
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 315
    nop

    :array_17
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 327
    nop

    :array_18
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x10t
        0x14t
    .end array-data

    .line 339
    nop

    :array_19
    .array-data 1
        0x0t
        0x3t
        0x12t
    .end array-data

    .line 345
    :array_1a
    .array-data 1
        0x0t
        0x12t
    .end array-data

    .line 350
    nop

    :array_1b
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 355
    nop

    :array_1c
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 360
    nop

    :array_1d
    .array-data 1
        0x0t
        0x1t
        0x2t
    .end array-data

    .line 370
    :array_1e
    .array-data 1
        0x0t
        0x1t
        0xdt
        0x10t
        0x15t
    .end array-data

    .line 383
    nop

    :array_1f
    .array-data 1
        0x0t
        0xbt
    .end array-data

    .line 389
    nop

    :array_20
    .array-data 1
        0x0t
        0xbt
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "pdu"    # [B

    .prologue
    const/4 v1, 0x0

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_EMPTY:I

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_UNKNOWN:I

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_RAW_DATA:I

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_UNICODE:I

    .line 55
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_CHAR:I

    .line 422
    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    .line 423
    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    .line 428
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberOfDigits:I

    .line 561
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    .line 562
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 564
    return-void
.end method

.method private decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B
    .locals 10
    .param p1, "startBitIndex"    # I
    .param p2, "dtmfDigit"    # Z
    .param p3, "numberingType"    # Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 712
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v6, p1, 0x8

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_0

    .line 713
    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 717
    :cond_0
    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    .line 718
    .local v4, "numberOfCharacters":I
    add-int/lit8 p1, p1, 0x8

    .line 720
    if-nez v4, :cond_1

    .line 721
    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startBitIndex_decodeAddress:I

    .line 723
    const/4 v1, 0x0

    .line 773
    :goto_0
    return-object v1

    .line 729
    :cond_1
    if-eqz p2, :cond_4

    .line 730
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v6, v4, 0x2

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_2

    .line 731
    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 735
    :cond_2
    new-array v1, v4, [B

    .line 736
    .local v1, "addressDecoded":[B
    const/4 v0, 0x0

    .local v0, "addrIndex":I
    :goto_1
    if-ge v0, v4, :cond_6

    .line 737
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dtmfDigitToAscII:[B

    invoke-direct {p0, p1, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    aget-byte v5, v5, v6

    aput-byte v5, v1, v0

    .line 739
    invoke-direct {p0, p1, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    .line 740
    .local v3, "ix":I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    const/16 v3, 0xa

    .line 741
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dtmfDigitToAscII:[B

    aget-byte v5, v5, v3

    aput-byte v5, v1, v0

    .line 743
    add-int/lit8 p1, p1, 0x4

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 747
    .end local v0    # "addrIndex":I
    .end local v1    # "addressDecoded":[B
    .end local v3    # "ix":I
    :cond_4
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v6, v4, 0x3

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_5

    .line 748
    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 751
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 758
    new-array v1, v4, [B

    .line 759
    .restart local v1    # "addressDecoded":[B
    const/4 v0, 0x0

    .restart local v0    # "addrIndex":I
    :goto_2
    if-ge v0, v4, :cond_6

    .line 760
    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    .line 761
    add-int/lit8 p1, p1, 0x8

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 754
    .end local v0    # "addrIndex":I
    .end local v1    # "addressDecoded":[B
    :pswitch_0
    invoke-direct {p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v1

    .line 755
    .restart local v1    # "addressDecoded":[B
    shl-int/lit8 v5, v4, 0x3

    add-int/2addr p1, v5

    .line 766
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-ne p3, v5, :cond_7

    .line 767
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [B

    .line 768
    .local v2, "addressInternational":[B
    const/16 v5, 0x2b

    aput-byte v5, v2, v8

    .line 769
    const/4 v5, 0x1

    array-length v6, v1

    invoke-static {v1, v8, v2, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 770
    move-object v1, v2

    .line 772
    .end local v2    # "addressInternational":[B
    :cond_7
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startBitIndex_decodeAddress:I

    goto/16 :goto_0

    .line 751
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private decodeBCDnumber(I)I
    .locals 4
    .param p1, "bcdOctet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    .line 778
    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v0, v2, 0xf

    .line 779
    .local v0, "highBCD":I
    and-int/lit8 v1, p1, 0xf

    .line 780
    .local v1, "lowBCD":I
    if-gt v0, v3, :cond_0

    if-le v1, v3, :cond_1

    .line 781
    :cond_0
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS BCD number"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 784
    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    return v2
.end method

.method private decodeBitStream(II)I
    .locals 8
    .param p1, "startBitIndex"    # I
    .param p2, "lengthOfBits"    # I

    .prologue
    const/16 v7, 0x8

    .line 613
    shr-int/lit8 v2, p1, 0x3

    .line 614
    .local v2, "bytesOffset":I
    and-int/lit8 v0, p1, 0x7

    .line 615
    .local v0, "bitsOffset":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    aget-byte v5, v5, v2

    and-int/lit16 v4, v5, 0xff

    .line 617
    .local v4, "returnValue":I
    add-int v5, v0, p2

    if-gt v5, v7, :cond_1

    .line 618
    rsub-int/lit8 v5, v0, 0x8

    sub-int/2addr v5, p2

    shr-int v5, v4, v5

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    aget-short v6, v6, p2

    and-int v4, v5, v6

    .line 634
    :cond_0
    :goto_0
    return v4

    .line 621
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    rsub-int/lit8 v6, v0, 0x8

    aget-short v5, v5, v6

    and-int/2addr v4, v5

    .line 622
    add-int/lit8 v3, v2, 0x1

    .line 623
    .local v3, "bytesOffsetRemaining":I
    rsub-int/lit8 v5, v0, 0x8

    sub-int v1, p2, v5

    .line 624
    .local v1, "bitsRemaining":I
    :goto_1
    if-le v1, v7, :cond_2

    .line 625
    shl-int/lit8 v5, v4, 0x8

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    or-int v4, v5, v6

    .line 626
    add-int/lit8 v3, v3, 0x1

    .line 627
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 629
    :cond_2
    if-lez v1, :cond_0

    .line 630
    shl-int v5, v4, v1

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    aget-byte v6, v6, v3

    rsub-int/lit8 v7, v1, 0x8

    shr-int/2addr v6, v7

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    aget-short v7, v7, v1

    and-int/2addr v6, v7

    or-int v4, v5, v6

    goto :goto_0
.end method

.method private decodeBitStreamIntoBytes(III)[B
    .locals 3
    .param p1, "startBitIndex"    # I
    .param p2, "lengthOfBits"    # I
    .param p3, "lengthOfBytes"    # I

    .prologue
    .line 639
    new-array v0, p3, [B

    .line 642
    .local v0, "byteArray":[B
    const/4 v1, 0x0

    .local v1, "copyIndex":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 643
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 644
    add-int/2addr p1, p2

    .line 642
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    :cond_0
    return-object v0
.end method

.method private decodeBitStreamIntoShorts(III)[S
    .locals 3
    .param p1, "startBitIndex"    # I
    .param p2, "lengthOfBits"    # I
    .param p3, "lengthOfBytes"    # I

    .prologue
    .line 652
    new-array v1, p3, [S

    .line 655
    .local v1, "shortArray":[S
    const/4 v0, 0x0

    .local v0, "copyIndex":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 656
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 657
    add-int/2addr p1, p2

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_0
    return-object v1
.end method

.method private decodeParameter_header()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 575
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parmHeader size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v1, v2

    .line 580
    .local v0, "param_id":B
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    .line 581
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 582
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    if-ge v1, v2, :cond_1

    .line 583
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parmHeader size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 586
    :cond_1
    return v0
.end method

.method private decodePeriodRelative(I)[B
    .locals 7
    .param p1, "period"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 835
    const/16 v2, 0xf4

    if-le p1, v2, :cond_0

    .line 836
    const/4 v1, 0x0

    .line 873
    :goto_0
    return-object v1

    .line 838
    :cond_0
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 839
    .local v1, "relativeTime":[B
    const/16 v2, 0xa7

    if-ge p1, v2, :cond_3

    .line 840
    aput-byte v3, v1, v3

    .line 841
    aput-byte v3, v1, v5

    .line 845
    const/16 v2, 0x8f

    if-ge p1, v2, :cond_1

    .line 846
    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v0, v2, 0x5

    .line 847
    .local v0, "offsetValue":I
    div-int/lit8 v2, v0, 0x3c

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 848
    rem-int/lit8 v2, v0, 0x3c

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    goto :goto_0

    .line 851
    .end local v0    # "offsetValue":I
    :cond_1
    add-int/lit16 v0, p1, -0x8f

    .line 852
    .restart local v0    # "offsetValue":I
    shr-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0xc

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 853
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    .line 854
    const/16 v2, 0x1e

    aput-byte v2, v1, v4

    goto :goto_0

    .line 857
    :cond_2
    aput-byte v3, v1, v4

    goto :goto_0

    .line 862
    .end local v0    # "offsetValue":I
    :cond_3
    const/16 v2, 0xc5

    if-ge p1, v2, :cond_4

    .line 863
    aput-byte v3, v1, v3

    .line 864
    add-int/lit16 v2, p1, -0xa6

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 870
    :goto_1
    aput-byte v3, v1, v6

    .line 871
    aput-byte v3, v1, v4

    goto :goto_0

    .line 867
    :cond_4
    add-int/lit16 v2, p1, -0xc0

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 868
    aput-byte v3, v1, v5

    goto :goto_1
.end method

.method private decodeTeleservice()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1322
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1323
    .local v1, "startIndex_teleservice":I
    iput-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    .line 1325
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeParameter_header()B

    move-result v2

    if-nez v2, :cond_3

    .line 1327
    iget-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    if-ge v2, v3, :cond_2

    .line 1328
    :cond_1
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-id size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1331
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v2, v2, v3

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    .line 1332
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1337
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    if-gt v2, v3, :cond_0

    .line 1338
    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    if-ne v2, v6, :cond_4

    .line 1339
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-id not existed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1335
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    .line 1342
    :cond_4
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1344
    const/4 v2, 0x2

    new-array v0, v2, [[B

    .line 1346
    .local v0, "filtersApplied":[[B
    const/16 v2, 0x18

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    .line 1348
    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    if-ne v2, v4, :cond_6

    .line 1349
    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    if-ne v2, v4, :cond_5

    .line 1350
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_broadcast:[B

    aput-object v2, v0, v5

    .line 1351
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_broadcast:[B

    aput-object v2, v0, v4

    .line 1352
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceDeliveryBroadcast([[B)V

    .line 1487
    :goto_1
    return-void

    .line 1354
    :cond_5
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS broadcast but not delivery : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1358
    :cond_6
    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    packed-switch v2, :pswitch_data_0

    .line 1483
    :pswitch_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported msg-type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1360
    :pswitch_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_1

    .line 1374
    :pswitch_2
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported submit-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1362
    :pswitch_3
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1363
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    .line 1378
    :goto_2
    :pswitch_4
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_2

    .line 1412
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported delivery-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1366
    :pswitch_5
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v5

    .line 1367
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v4

    goto :goto_2

    .line 1370
    :pswitch_6
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1371
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_2

    .line 1380
    :pswitch_7
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_IS91_EXTENDED:[B

    aput-object v2, v0, v5

    .line 1381
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_IS91_EXTENDED:[B

    aput-object v2, v0, v4

    .line 1415
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceDelivery([[B)V

    goto/16 :goto_1

    .line 1384
    :pswitch_8
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1385
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1388
    :pswitch_9
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1389
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1392
    :pswitch_a
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_VOICE_MAIL_NOTIFICATION:[B

    aput-object v2, v0, v5

    .line 1393
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_VOICE_MAIL_NOTIFICATION:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1396
    :pswitch_b
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v5

    .line 1397
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1400
    :pswitch_c
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1401
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1404
    :pswitch_d
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    aput-object v2, v0, v5

    .line 1405
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1408
    :pswitch_e
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    aput-object v2, v0, v5

    .line 1409
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1418
    :pswitch_f
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_3

    .line 1432
    :pswitch_10
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported deliveryAck-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1420
    :pswitch_11
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery_ack:[B

    aput-object v2, v0, v5

    .line 1421
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery_ack:[B

    aput-object v2, v0, v4

    .line 1435
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceDeliveryAck([[B)V

    goto/16 :goto_1

    .line 1424
    :pswitch_12
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v5

    .line 1425
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v4

    goto :goto_4

    .line 1428
    :pswitch_13
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v5

    .line 1429
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v4

    goto :goto_4

    .line 1438
    :pswitch_14
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_4

    .line 1456
    :pswitch_15
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported userAck-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1440
    :pswitch_16
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_user_ack:[B

    aput-object v2, v0, v5

    .line 1441
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_user_ack:[B

    aput-object v2, v0, v4

    .line 1459
    :goto_5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceUserAck([[B)V

    goto/16 :goto_1

    .line 1444
    :pswitch_17
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

    aput-object v2, v0, v5

    .line 1445
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_5

    .line 1448
    :pswitch_18
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    aput-object v2, v0, v5

    .line 1449
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_5

    .line 1452
    :pswitch_19
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    aput-object v2, v0, v5

    .line 1453
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_5

    .line 1462
    :pswitch_1a
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_5

    .line 1472
    :pswitch_1b
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported readAck-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1464
    :pswitch_1c
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

    aput-object v2, v0, v5

    .line 1465
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_read_ack:[B

    aput-object v2, v0, v4

    .line 1475
    :goto_6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceReadAck([[B)V

    goto/16 :goto_1

    .line 1468
    :pswitch_1d
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    aput-object v2, v0, v5

    .line 1469
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    aput-object v2, v0, v4

    goto :goto_6

    .line 1478
    :pswitch_1e
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_submit_report:[B

    aput-object v2, v0, v5

    .line 1479
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_submit_report:[B

    aput-object v2, v0, v4

    .line 1480
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubmitReport([[B)V

    goto/16 :goto_1

    .line 1358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_f
        :pswitch_14
        :pswitch_1a
        :pswitch_0
        :pswitch_1e
    .end packed-switch

    .line 1360
    :pswitch_data_1
    .packed-switch 0x1002
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1378
    :pswitch_data_2
    .packed-switch 0x1000
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 1418
    :pswitch_data_3
    .packed-switch 0x1001
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_10
        :pswitch_13
    .end packed-switch

    .line 1438
    :pswitch_data_4
    .packed-switch 0x1001
        :pswitch_16
        :pswitch_17
        :pswitch_15
        :pswitch_15
        :pswitch_18
        :pswitch_15
        :pswitch_19
    .end packed-switch

    .line 1462
    :pswitch_data_5
    .packed-switch 0x1002
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1d
    .end packed-switch
.end method

.method private decodeTeleserviceDelivery([[B)V
    .locals 3
    .param p1, "filtersApplied"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1500
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1501
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    const/16 v1, 0x1003

    if-ne v0, v1, :cond_1

    .line 1502
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/16 v1, 0x16

    aget-boolean v0, v0, v1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/16 v1, 0x17

    aget-boolean v0, v0, v1

    if-ne v0, v2, :cond_1

    .line 1504
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1507
    :cond_1
    return-void
.end method

.method private decodeTeleserviceDeliveryAck([[B)V
    .locals 0
    .param p1, "filtersApplied"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1511
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1512
    return-void
.end method

.method private decodeTeleserviceDeliveryBroadcast([[B)V
    .locals 3
    .param p1, "filtersApplied"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 1491
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 1493
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_priority:B

    .line 1494
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1496
    :cond_0
    return-void
.end method

.method private decodeTeleserviceParamAbsoluteValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1827
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTimeStamp()[S

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    .line 1828
    return-void
.end method

.method private decodeTeleserviceParamAlertOnMessageDelivery()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1884
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1886
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_alertOnDelivery:B

    .line 1891
    :goto_0
    return-void

    .line 1889
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_alertOnDelivery:B

    goto :goto_0
.end method

.method private decodeTeleserviceParamBroadcastServiceSetting()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0x8

    .line 1992
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v4, 0x3

    .line 1994
    .local v3, "startBitIndex":I
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x5

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_0

    .line 1995
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-setting size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 1998
    :cond_0
    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingEncoding:B

    .line 1999
    add-int/lit8 v3, v3, 0x5

    .line 2001
    const/4 v1, 0x0

    .line 2004
    .local v1, "indexOfFields":I
    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x30

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_2

    .line 2005
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-setting size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 2009
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingOperation:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingOperation:[B

    .line 2010
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingTypeOfService:[S

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([S)[S

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingTypeOfService:[S

    .line 2011
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingLanguage:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingLanguage:[B

    .line 2012
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingMaxMessagesForTypeOfService:[S

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([S)[S

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingMaxMessagesForTypeOfService:[S

    .line 2013
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingAlertForTypeOfService:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingAlertForTypeOfService:[B

    .line 2014
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingData:[[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([[B)[[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingData:[[B

    .line 2016
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingOperation:[B

    invoke-direct {p0, v3, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 2017
    add-int/lit8 v3, v3, 0x4

    .line 2018
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingTypeOfService:[S

    const/16 v5, 0x10

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v1

    .line 2019
    add-int/lit8 v3, v3, 0x10

    .line 2020
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingLanguage:[B

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 2021
    add-int/lit8 v3, v3, 0x8

    .line 2022
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingMaxMessagesForTypeOfService:[S

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v1

    .line 2023
    add-int/lit8 v3, v3, 0x8

    .line 2024
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingAlertForTypeOfService:[B

    invoke-direct {p0, v3, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 2025
    add-int/lit8 v3, v3, 0x4

    .line 2027
    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    .line 2028
    .local v2, "numberOfCharacters":I
    add-int/lit8 v3, v3, 0x8

    .line 2030
    const/16 v0, 0x8

    .line 2031
    .local v0, "bitsPerCharacters":I
    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingEncoding:B

    packed-switch v4, :pswitch_data_0

    .line 2050
    :goto_0
    :pswitch_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    mul-int v5, v2, v0

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_3

    .line 2051
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-setting size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 2038
    :pswitch_1
    const/4 v0, 0x7

    .line 2039
    goto :goto_0

    .line 2041
    :pswitch_2
    shl-int/lit8 v2, v2, 0x1

    .line 2042
    goto :goto_0

    .line 2054
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingData:[[B

    invoke-direct {p0, v3, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v5

    aput-object v5, v4, v1

    .line 2055
    mul-int v4, v2, v0

    add-int/2addr v3, v4

    .line 2056
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-gt v4, v5, :cond_1

    .line 2057
    return-void

    .line 2031
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeTeleserviceParamCallBack()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1900
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v4, v5

    if-ge v4, v2, :cond_0

    .line 1901
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-callback size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1905
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    shr-int/lit8 v0, v4, 0x7

    .line 1906
    .local v0, "digitMode":I
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v4, v4, 0x3

    add-int/lit8 v1, v4, 0x1

    .line 1907
    .local v1, "startBitIndex":I
    if-eqz v0, :cond_1

    .line 1908
    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1910
    add-int/lit8 v1, v1, 0x3

    .line 1911
    const/4 v4, 0x4

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrPlan:B

    .line 1912
    add-int/lit8 v1, v1, 0x4

    .line 1919
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddr:[B

    .line 1920
    return-void

    .line 1915
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1916
    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrPlan:B

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1919
    goto :goto_1
.end method

.method private decodeTeleserviceParamDisplayMode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_displayMode:B

    .line 1926
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_displayMode:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_downloadMode:B

    .line 1932
    :goto_0
    return-void

    .line 1930
    :cond_0
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_downloadMode:B

    goto :goto_0
.end method

.method private decodeTeleserviceParamErrorCode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_errorClass:B

    .line 2062
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_errorDetail:B

    .line 2063
    return-void
.end method

.method private decodeTeleserviceParamGsmTpFailure()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_gsmTpFailure:B

    .line 2068
    return-void
.end method

.method private decodeTeleserviceParamLanguage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_language:B

    .line 1896
    return-void
.end method

.method private decodeTeleserviceParamMessageCenterTimeStamp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1822
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTimeStamp()[S

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    .line 1823
    return-void
.end method

.method private decodeTeleserviceParamMessageID()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    .line 1657
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageId:S

    .line 1660
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeaderExisted:Z

    .line 1661
    return-void

    .line 1660
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decodeTeleserviceParamMessageIdInCenter()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageIdInCenter:S

    .line 1988
    return-void
.end method

.method private decodeTeleserviceParamMultiEncodingUserData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1936
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v4, 0x3

    .line 1937
    .local v3, "startBitIndex":I
    const/4 v1, 0x0

    .line 1941
    .local v1, "indexOfFields":I
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0xd

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_1

    .line 1942
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-multiUser size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 1946
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserDataEncoding:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserDataEncoding:[B

    .line 1947
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserData:[[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([[B)[[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserData:[[B

    .line 1949
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserDataEncoding:[B

    const/4 v5, 0x5

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 1950
    add-int/lit8 v3, v3, 0x5

    .line 1951
    const/16 v4, 0x8

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    .line 1952
    .local v2, "numberOfCharacters":I
    add-int/lit8 v3, v3, 0x8

    .line 1954
    const/16 v0, 0x8

    .line 1955
    .local v0, "bitsPerCharacters":I
    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    packed-switch v4, :pswitch_data_0

    .line 1974
    :goto_0
    :pswitch_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    mul-int v5, v2, v0

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_2

    .line 1975
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-multiUser size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 1962
    :pswitch_1
    const/4 v0, 0x7

    .line 1963
    goto :goto_0

    .line 1965
    :pswitch_2
    shl-int/lit8 v2, v2, 0x1

    .line 1966
    goto :goto_0

    .line 1978
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserData:[[B

    invoke-direct {p0, v3, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v5

    aput-object v5, v4, v1

    .line 1979
    mul-int v4, v2, v0

    add-int/2addr v3, v4

    .line 1980
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-gt v4, v5, :cond_0

    .line 1981
    return-void

    .line 1955
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeTeleserviceParamPriority()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_priority:B

    .line 1861
    return-void
.end method

.method private decodeTeleserviceParamPrivacy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_privacy:B

    .line 1866
    return-void
.end method

.method private decodeTeleserviceParamRelativeValidity()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1832
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1833
    .local v0, "validity":I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodePeriodRelative(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidity:[B

    .line 1834
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidity:[B

    if-eqz v1, :cond_0

    .line 1835
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Fixed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    .line 1856
    :goto_0
    return-void

    .line 1838
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1852
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeSMS subparm-relaValid peroid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 1840
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Indefinite:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    .line 1843
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilMessageDisplayed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    .line 1846
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilMobileInactive:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    .line 1849
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilLeavingThisRegistrationArea:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    .line 1838
    :pswitch_data_0
    .packed-switch 0xf5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private decodeTeleserviceParamReplyOption()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1871
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v1, v4

    .line 1872
    .local v0, "options":B
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_replyManualAck:Z

    .line 1873
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_replyReadAck:Z

    .line 1874
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_replySubmitReport:Z

    .line 1875
    return-void

    :cond_0
    move v1, v3

    .line 1872
    goto :goto_0

    :cond_1
    move v1, v3

    .line 1873
    goto :goto_1

    :cond_2
    move v2, v3

    .line 1874
    goto :goto_2
.end method

.method private decodeTeleserviceParamUserData()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 1665
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v6, 0x3

    .line 1667
    .local v3, "startBitIndex":I
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x5

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_0

    .line 1668
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1671
    :cond_0
    const/4 v6, 0x5

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    .line 1672
    add-int/lit8 v3, v3, 0x5

    .line 1674
    const/4 v2, 0x0

    .line 1676
    .local v2, "processGsmSmsUserDataHeader":Z
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    const/4 v7, 0x0

    aget-boolean v6, v6, v7

    if-ne v6, v8, :cond_1

    .line 1677
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v6, :pswitch_data_0

    .line 1704
    :cond_1
    :goto_0
    :pswitch_0
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    sparse-switch v6, :sswitch_data_0

    .line 1715
    const/4 v6, -0x1

    iput-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    .line 1719
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_3

    .line 1720
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1679
    :pswitch_1
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    if-eq v6, v8, :cond_1

    .line 1680
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DecodeSMS subparm-user is91 encoding : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1685
    :pswitch_2
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    if-eqz v6, :cond_1

    .line 1686
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DecodeSMS subparm-user wap encoding : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1692
    :pswitch_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeaderExisted:Z

    if-ne v6, v8, :cond_1

    .line 1693
    const/4 v2, 0x1

    goto :goto_0

    .line 1707
    :sswitch_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_2

    .line 1708
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1711
    :cond_2
    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    .line 1712
    add-int/lit8 v3, v3, 0x8

    .line 1713
    goto/16 :goto_1

    .line 1723
    :cond_3
    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v1

    .line 1724
    .local v1, "numberOfCharacters":I
    add-int/lit8 v3, v3, 0x8

    .line 1726
    const/16 v0, 0x8

    .line 1727
    .local v0, "bitsPerCharacters":I
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    packed-switch v6, :pswitch_data_1

    .line 1777
    :cond_4
    :goto_2
    :pswitch_4
    if-ne v2, v8, :cond_a

    .line 1778
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_6

    .line 1779
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1731
    :pswitch_5
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    packed-switch v6, :pswitch_data_2

    .line 1739
    const/4 v0, 0x6

    .line 1740
    goto :goto_2

    .line 1733
    :pswitch_6
    const/4 v0, 0x4

    .line 1734
    goto :goto_2

    .line 1746
    :pswitch_7
    const/4 v0, 0x7

    .line 1747
    goto :goto_2

    .line 1749
    :pswitch_8
    shl-int/lit8 v1, v1, 0x1

    .line 1750
    goto :goto_2

    .line 1752
    :pswitch_9
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_5

    .line 1753
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit8 v6, v6, 0x2c

    if-nez v6, :cond_4

    .line 1754
    const/4 v0, 0x7

    goto :goto_2

    .line 1758
    :cond_5
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v6, v6, 0xf0

    sparse-switch v6, :sswitch_data_1

    goto :goto_2

    .line 1761
    :sswitch_1
    const/4 v0, 0x7

    .line 1762
    goto :goto_2

    .line 1764
    :sswitch_2
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_4

    .line 1765
    const/4 v0, 0x7

    goto :goto_2

    .line 1782
    :cond_6
    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    .line 1783
    .local v5, "userDataHeaderLength":I
    add-int/lit8 v3, v3, 0x8

    .line 1785
    if-lez v5, :cond_8

    .line 1786
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v7, v5, 0x3

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_7

    .line 1787
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1790
    :cond_7
    invoke-direct {p0, v3, v9, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeader:[B

    .line 1791
    shl-int/lit8 v6, v5, 0x3

    add-int/2addr v3, v6

    .line 1795
    :cond_8
    mul-int v6, v1, v0

    add-int/lit8 v7, v5, 0x1

    shl-int/lit8 v7, v7, 0x3

    sub-int/2addr v6, v7

    rem-int v4, v6, v0

    .line 1797
    .local v4, "userDataHeaderFillBits":I
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int v7, v3, v4

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_9

    .line 1798
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1801
    :cond_9
    add-int/2addr v3, v4

    .line 1802
    add-int/lit8 v6, v5, 0x1

    shl-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v4

    div-int/2addr v6, v0

    sub-int/2addr v1, v6

    .line 1805
    .end local v4    # "userDataHeaderFillBits":I
    .end local v5    # "userDataHeaderLength":I
    :cond_a
    if-lez v1, :cond_c

    .line 1806
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    mul-int v7, v1, v0

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_b

    .line 1807
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1810
    :cond_b
    invoke-direct {p0, v3, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    .line 1811
    mul-int v6, v1, v0

    add-int/2addr v3, v6

    .line 1813
    :cond_c
    return-void

    .line 1677
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1704
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch

    .line 1727
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_9
    .end packed-switch

    .line 1731
    :pswitch_data_2
    .packed-switch 0x84
        :pswitch_6
    .end packed-switch

    .line 1758
    :sswitch_data_1
    .sparse-switch
        0xc0 -> :sswitch_1
        0xd0 -> :sswitch_1
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method

.method private decodeTeleserviceParamUserResponseCode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userResponseCode:S

    .line 1818
    return-void
.end method

.method private decodeTeleserviceParamVoiceMailMessages()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_voiceMailsInServer:B

    .line 1880
    return-void
.end method

.method private decodeTeleserviceParamVoiceMailNotification()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2072
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v1, v2, 0x3

    .line 2074
    .local v1, "startBitIndex":I
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_0

    .line 2075
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 2078
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPriority:B

    .line 2079
    add-int/lit8 v1, v1, 0x2

    .line 2081
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPasswordExisted:Z

    .line 2082
    add-int/lit8 v1, v1, 0x1

    .line 2084
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnSetupInitUserPrompt:Z

    .line 2085
    add-int/lit8 v1, v1, 0x1

    .line 2087
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnChangePassword:Z

    .line 2088
    add-int/lit8 v1, v1, 0x1

    .line 2090
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnSetupInitUserPrompt:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnChangePassword:Z

    if-nez v2, :cond_5

    .line 2092
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_4

    .line 2093
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_1
    move v2, v4

    .line 2081
    goto :goto_0

    :cond_2
    move v2, v4

    .line 2084
    goto :goto_1

    :cond_3
    move v2, v4

    .line 2087
    goto :goto_2

    .line 2096
    :cond_4
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPasswordMinLen:B

    .line 2097
    add-int/lit8 v1, v1, 0x4

    .line 2098
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPasswordMaxLen:B

    .line 2099
    add-int/lit8 v1, v1, 0x4

    .line 2102
    :cond_5
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x43

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_6

    .line 2103
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 2107
    :cond_6
    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnUnheardMessages:S

    .line 2108
    add-int/lit8 v1, v1, 0x8

    .line 2110
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnServerAlmostFull:Z

    .line 2111
    add-int/lit8 v1, v1, 0x1

    .line 2113
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnServerFull:Z

    .line 2114
    add-int/lit8 v1, v1, 0x1

    .line 2116
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAllowReply:Z

    .line 2117
    add-int/lit8 v1, v1, 0x1

    .line 2119
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnIncludeFax:Z

    .line 2120
    add-int/lit8 v1, v1, 0x1

    .line 2122
    const/16 v2, 0xc

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnLengthInSeconds:S

    .line 2123
    add-int/lit8 v1, v1, 0xc

    .line 2125
    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnRetentionDays:B

    .line 2126
    add-int/lit8 v1, v1, 0x7

    .line 2128
    invoke-direct {p0, v1, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnMessageId:S

    .line 2129
    add-int/lit8 v1, v1, 0x10

    .line 2131
    invoke-direct {p0, v1, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnMailboxId:S

    .line 2132
    add-int/lit8 v1, v1, 0x10

    .line 2134
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v0

    .line 2136
    .local v0, "digitMode":I
    invoke-direct {p0, v1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 2138
    add-int/lit8 v1, v1, 0x3

    .line 2140
    if-eqz v0, :cond_c

    .line 2141
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_b

    .line 2142
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .end local v0    # "digitMode":I
    :cond_7
    move v2, v4

    .line 2110
    goto :goto_3

    :cond_8
    move v2, v4

    .line 2113
    goto :goto_4

    :cond_9
    move v2, v4

    .line 2116
    goto :goto_5

    :cond_a
    move v2, v4

    .line 2119
    goto :goto_6

    .line 2145
    .restart local v0    # "digitMode":I
    :cond_b
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberPlan:B

    .line 2146
    add-int/lit8 v1, v1, 0x4

    .line 2152
    :goto_7
    if-nez v0, :cond_d

    move v2, v3

    :goto_8
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v1, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumber:[B

    .line 2153
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startBitIndex_decodeAddress:I

    .line 2155
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_e

    .line 2156
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 2149
    :cond_c
    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberPlan:B

    goto :goto_7

    :cond_d
    move v2, v4

    .line 2152
    goto :goto_8

    .line 2160
    :cond_e
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v0

    .line 2162
    invoke-direct {p0, v1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 2164
    add-int/lit8 v1, v1, 0x3

    .line 2166
    if-eqz v0, :cond_10

    .line 2167
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_f

    .line 2168
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 2171
    :cond_f
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberPlan:B

    .line 2172
    add-int/lit8 v1, v1, 0x4

    .line 2178
    :goto_9
    if-nez v0, :cond_11

    :goto_a
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumber:[B

    .line 2179
    return-void

    .line 2175
    :cond_10
    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberPlan:B

    goto :goto_9

    :cond_11
    move v3, v4

    .line 2178
    goto :goto_a
.end method

.method private decodeTeleserviceParamVoiceMailNotificationAck()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/16 v6, 0x10

    .line 2183
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v2, v3, 0x3

    .line 2185
    .local v2, "startBitIndex":I
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v4, v2, 0x1e

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_0

    .line 2186
    const-string v3, "CDMA"

    const-string v4, "DecodeSMS subparm-vmailNotiAck size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 2189
    :cond_0
    invoke-direct {p0, v2, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckMailboxId:S

    .line 2190
    add-int/lit8 v2, v2, 0x10

    .line 2192
    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckUnheardMessages:S

    .line 2193
    add-int/lit8 v2, v2, 0x8

    .line 2195
    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v0, v3

    .line 2196
    .local v0, "deletedAcks":I
    add-int/lit8 v2, v2, 0x3

    .line 2198
    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v1, v3

    .line 2199
    .local v1, "playedAcks":I
    add-int/lit8 v2, v2, 0x3

    .line 2201
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    shl-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_1

    .line 2202
    const-string v3, "CDMA"

    const-string v4, "DecodeSMS subparm-vmailNotiAck size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 2206
    :cond_1
    invoke-direct {p0, v2, v6, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoShorts(III)[S

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckDeletedAcks:[S

    .line 2207
    shl-int/lit8 v3, v0, 0x4

    add-int/2addr v2, v3

    .line 2209
    invoke-direct {p0, v2, v6, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoShorts(III)[S

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckPlayedAcks:[S

    .line 2210
    shl-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    .line 2211
    return-void
.end method

.method private decodeTeleserviceRawMessageWaitingIndication([[B)V
    .locals 0
    .param p1, "filtersApplied"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1532
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1533
    return-void
.end method

.method private decodeTeleserviceReadAck([[B)V
    .locals 0
    .param p1, "filtersApplied"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1521
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1522
    return-void
.end method

.method private decodeTeleserviceSingleParameter(B)V
    .locals 1
    .param p1, "param_id"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1579
    packed-switch p1, :pswitch_data_0

    .line 1652
    :goto_0
    :pswitch_0
    return-void

    .line 1581
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMessageID()V

    goto :goto_0

    .line 1585
    :pswitch_2
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_userData:I

    .line 1586
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_userData:I

    goto :goto_0

    .line 1589
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamUserResponseCode()V

    goto :goto_0

    .line 1592
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMessageCenterTimeStamp()V

    goto :goto_0

    .line 1595
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamAbsoluteValidity()V

    goto :goto_0

    .line 1598
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamRelativeValidity()V

    goto :goto_0

    .line 1605
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamPriority()V

    goto :goto_0

    .line 1608
    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamPrivacy()V

    goto :goto_0

    .line 1611
    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamReplyOption()V

    goto :goto_0

    .line 1614
    :pswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamVoiceMailMessages()V

    goto :goto_0

    .line 1617
    :pswitch_b
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamAlertOnMessageDelivery()V

    goto :goto_0

    .line 1620
    :pswitch_c
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamLanguage()V

    goto :goto_0

    .line 1623
    :pswitch_d
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamCallBack()V

    goto :goto_0

    .line 1626
    :pswitch_e
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamDisplayMode()V

    goto :goto_0

    .line 1629
    :pswitch_f
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMultiEncodingUserData()V

    goto :goto_0

    .line 1632
    :pswitch_10
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMessageIdInCenter()V

    goto :goto_0

    .line 1635
    :pswitch_11
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamBroadcastServiceSetting()V

    goto :goto_0

    .line 1640
    :pswitch_12
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamErrorCode()V

    goto :goto_0

    .line 1643
    :pswitch_13
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamGsmTpFailure()V

    goto :goto_0

    .line 1646
    :pswitch_14
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamVoiceMailNotification()V

    goto :goto_0

    .line 1649
    :pswitch_15
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamVoiceMailNotificationAck()V

    goto :goto_0

    .line 1579
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private decodeTeleserviceSubParam([[B)V
    .locals 10
    .param p1, "filtersApplied"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 1540
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeParameter_header()B

    move-result v4

    .line 1541
    .local v4, "param_id":B
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-direct {p0, v4, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->existInGivenList(B[B)Z

    move-result v8

    aput-boolean v8, v7, v4

    .line 1542
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v4

    if-ne v7, v9, :cond_3

    .line 1543
    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue;->fixedLengthSubparameter:[B

    aget-byte v6, v7, v4

    .line 1544
    .local v6, "parameterLength":I
    if-eqz v6, :cond_1

    iget-short v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    if-ne v6, v7, :cond_2

    .line 1545
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 1547
    .local v1, "current_dataEnd":I
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 1548
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSingleParameter(B)V

    .line 1549
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1550
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 1561
    .end local v1    # "current_dataEnd":I
    .end local v6    # "parameterLength":I
    :goto_0
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    if-gt v7, v8, :cond_0

    .line 1563
    aget-object v0, p1, v9

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-byte v5, v0, v2

    .line 1564
    .local v5, "param_required":B
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v5

    if-eq v7, v9, :cond_4

    .line 1565
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS required subparm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not existed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1553
    .end local v0    # "arr$":[B
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "param_required":B
    .restart local v6    # "parameterLength":I
    :cond_2
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS subparm-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " id size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1559
    .end local v6    # "parameterLength":I
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    .line 1563
    .restart local v0    # "arr$":[B
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "param_required":B
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1570
    .end local v5    # "param_required":B
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v9

    if-ne v7, v9, :cond_6

    .line 1571
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_userData:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1572
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_userData:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 1573
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamUserData()V

    .line 1575
    :cond_6
    return-void
.end method

.method private decodeTeleserviceSubmitReport([[B)V
    .locals 0
    .param p1, "filtersApplied"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1526
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1527
    return-void
.end method

.method private decodeTeleserviceUserAck([[B)V
    .locals 0
    .param p1, "filtersApplied"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1516
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1517
    return-void
.end method

.method private decodeTimeStamp()[S
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 789
    const/4 v3, 0x6

    new-array v0, v3, [S

    .line 790
    .local v0, "absoluteTime":[S
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v1, v3, 0x3

    .line 792
    .local v1, "startBitIndex":I
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    int-to-short v3, v3

    aput-short v3, v0, v7

    .line 794
    add-int/lit8 v1, v1, 0x8

    .line 795
    aget-short v3, v0, v7

    const/16 v4, 0x7cc

    if-ge v3, v4, :cond_0

    .line 796
    aget-short v3, v0, v7

    add-int/lit8 v3, v3, 0x64

    int-to-short v3, v3

    aput-short v3, v0, v7

    .line 798
    :cond_0
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v6

    .line 800
    add-int/lit8 v1, v1, 0x8

    .line 801
    aget-short v3, v0, v6

    if-lt v3, v6, :cond_1

    aget-short v3, v0, v6

    const/16 v4, 0xc

    if-le v3, v4, :cond_3

    :cond_1
    move-object v0, v2

    .line 830
    .end local v0    # "absoluteTime":[S
    :cond_2
    :goto_0
    return-object v0

    .line 805
    .restart local v0    # "absoluteTime":[S
    :cond_3
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v8

    .line 807
    add-int/lit8 v1, v1, 0x8

    .line 808
    aget-short v3, v0, v8

    if-lt v3, v6, :cond_4

    aget-short v3, v0, v8

    const/16 v4, 0x1f

    if-le v3, v4, :cond_5

    :cond_4
    move-object v0, v2

    .line 810
    goto :goto_0

    .line 812
    :cond_5
    const/4 v3, 0x3

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v0, v3

    .line 814
    add-int/lit8 v1, v1, 0x8

    .line 815
    const/4 v3, 0x3

    aget-short v3, v0, v3

    const/16 v4, 0x17

    if-le v3, v4, :cond_6

    move-object v0, v2

    .line 816
    goto :goto_0

    .line 818
    :cond_6
    const/4 v3, 0x4

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v0, v3

    .line 820
    add-int/lit8 v1, v1, 0x8

    .line 821
    const/4 v3, 0x4

    aget-short v3, v0, v3

    const/16 v4, 0x3b

    if-le v3, v4, :cond_7

    move-object v0, v2

    .line 822
    goto :goto_0

    .line 824
    :cond_7
    const/4 v3, 0x5

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v0, v3

    .line 826
    add-int/lit8 v1, v1, 0x8

    .line 827
    const/4 v3, 0x5

    aget-short v3, v0, v3

    const/16 v4, 0x3b

    if-le v3, v4, :cond_2

    move-object v0, v2

    .line 828
    goto :goto_0
.end method

.method private decodeTransport()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 924
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v9, v10

    const/4 v10, 0x3

    if-ge v9, v10, :cond_0

    .line 925
    const-string v9, "CDMA"

    const-string v10, "DecodeSMS Transport size"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9

    .line 929
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v9, v9, v10

    iput-byte v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    .line 930
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 931
    iget-byte v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    sget-object v10, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE:[B

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->existInGivenList(B[B)Z

    move-result v9

    if-nez v9, :cond_1

    .line 932
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DecodeSMS Transport type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-byte v11, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not allowed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9

    .line 936
    :cond_1
    const/16 v9, 0x9

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    .line 937
    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE_param_list:[[B

    iget-byte v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    aget-object v6, v9, v10

    .line 941
    .local v6, "param_accepted":[B
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeParameter_header()B

    move-result v7

    .line 942
    .local v7, "param_id":B
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v7

    if-nez v9, :cond_5

    .line 943
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->existInGivenList(B[B)Z

    move-result v10

    aput-boolean v10, v9, v7

    .line 944
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v7

    if-ne v9, v11, :cond_4

    .line 945
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 947
    .local v1, "current_dataEnd":I
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 948
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParameter(B)V

    .line 949
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 950
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 959
    .end local v1    # "current_dataEnd":I
    :goto_0
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    if-gt v9, v10, :cond_2

    .line 961
    const/4 v2, 0x1

    .line 963
    .local v2, "dataPrepared":Z
    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_TRANSPORT_TYPE_param_list:[[B

    iget-byte v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    aget-object v0, v9, v10

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_6

    aget-byte v8, v0, v4

    .line 964
    .local v8, "param_required":B
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v8

    if-eq v9, v11, :cond_3

    .line 965
    const/4 v2, 0x0

    .line 963
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 953
    .end local v0    # "arr$":[B
    .end local v2    # "dataPrepared":Z
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "param_required":B
    :cond_4
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    .line 957
    :cond_5
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    .line 969
    .restart local v0    # "arr$":[B
    .restart local v2    # "dataPrepared":Z
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_6
    if-eqz v2, :cond_8

    .line 970
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v13

    if-ne v9, v11, :cond_7

    .line 971
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 972
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 973
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleservice()V

    .line 995
    :cond_7
    :goto_2
    return-void

    .line 979
    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v12

    if-ne v9, v11, :cond_9

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    const/16 v10, 0x1003

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v13

    if-ne v9, v11, :cond_9

    .line 982
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 983
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 985
    const/4 v9, 0x2

    new-array v3, v9, [[B

    .line 986
    .local v3, "filtersApplied":[[B
    const/16 v9, 0x18

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    .line 987
    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_raw_message_waiting_indication:[B

    aput-object v9, v3, v12

    .line 988
    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_raw_message_waiting_indication:[B

    aput-object v9, v3, v11

    .line 989
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceRawMessageWaitingIndication([[B)V

    goto :goto_2

    .line 991
    .end local v3    # "filtersApplied":[[B
    :cond_9
    const-string v9, "CDMA"

    const-string v10, "DecodeSMS required parms not existed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9
.end method

.method private decodeTransportParamBearerReplyOption()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1263
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1264
    const-string v0, "CDMA"

    const-string v1, "DecodeSMS parm-reply size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_replySeqNumber:B

    .line 1269
    return-void
.end method

.method private decodeTransportParamCauseCodes()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x6b

    const/16 v6, 0x42

    const/16 v5, 0x30

    const/16 v4, 0x27

    const/4 v3, 0x5

    .line 1273
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 1274
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parm-cause size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 1278
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_replySeqNumber:B

    .line 1279
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_errorClass:B

    .line 1281
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_errorClass:B

    if-eqz v1, :cond_1

    .line 1282
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 1284
    const/16 v1, 0x6a

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    .line 1314
    :cond_1
    :goto_0
    return-void

    .line 1287
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    .line 1288
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    and-int/lit16 v0, v1, 0xff

    .line 1289
    .local v0, "causeDetail":I
    if-le v0, v3, :cond_3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    .line 1291
    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    .line 1294
    :cond_3
    if-le v0, v4, :cond_4

    if-ge v0, v5, :cond_4

    .line 1296
    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    .line 1299
    :cond_4
    if-lt v0, v5, :cond_5

    const/16 v1, 0x40

    if-ge v0, v1, :cond_5

    .line 1301
    const/16 v1, 0x24

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    .line 1304
    :cond_5
    if-le v0, v6, :cond_6

    const/16 v1, 0x60

    if-ge v0, v1, :cond_6

    .line 1306
    iput-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    .line 1309
    :cond_6
    if-le v0, v7, :cond_1

    .line 1310
    iput-byte v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0
.end method

.method private decodeTransportParamDestAddress()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1101
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v3, v6

    if-ge v3, v4, :cond_0

    .line 1102
    const-string v3, "CDMA"

    const-string v4, "DecodeSMS parm-address size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 1106
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0x80

    shr-int/lit8 v0, v3, 0x7

    .line 1107
    .local v0, "digitMode":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x40

    shr-int/lit8 v1, v3, 0x6

    .line 1109
    .local v1, "numberMode":I
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v3, 0x2

    .line 1111
    .local v2, "startBitIndex":I
    if-eqz v0, :cond_4

    .line 1112
    if-eqz v1, :cond_1

    move v3, v4

    :goto_0
    const/4 v6, 0x3

    invoke-direct {p0, v2, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    int-to-byte v6, v6

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1114
    add-int/lit8 v2, v2, 0x3

    .line 1119
    if-nez v1, :cond_3

    .line 1120
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v3, v6, :cond_2

    .line 1121
    const-string v3, "CDMA"

    const-string v4, "DecodeSMS parm-address size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_1
    move v3, v5

    .line 1112
    goto :goto_0

    .line 1125
    :cond_2
    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrPlan:B

    .line 1126
    add-int/lit8 v2, v2, 0x4

    .line 1137
    :goto_1
    if-nez v0, :cond_5

    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    .line 1138
    return-void

    .line 1129
    :cond_3
    iput-byte v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrPlan:B

    goto :goto_1

    .line 1133
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1134
    iput-byte v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrPlan:B

    goto :goto_1

    :cond_5
    move v4, v5

    .line 1137
    goto :goto_2
.end method

.method private decodeTransportParamOrigAddress()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1059
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v4

    if-ge v1, v2, :cond_0

    .line 1060
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parm-address size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 1064
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0x80

    shr-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    .line 1065
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x40

    shr-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    .line 1067
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v1, 0x2

    .line 1069
    .local v0, "startBitIndex":I
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    if-eqz v1, :cond_4

    .line 1070
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    const/4 v4, 0x3

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1072
    add-int/lit8 v0, v0, 0x3

    .line 1077
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    if-nez v1, :cond_3

    .line 1078
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    if-ge v1, v4, :cond_2

    .line 1079
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parm-address size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_1
    move v1, v3

    .line 1070
    goto :goto_0

    .line 1083
    :cond_2
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    .line 1084
    add-int/lit8 v0, v0, 0x4

    .line 1095
    :goto_1
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberOfDigits:I

    .line 1096
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    if-nez v1, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    .line 1097
    return-void

    .line 1087
    :cond_3
    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    goto :goto_1

    .line 1091
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1092
    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    goto :goto_1

    :cond_5
    move v2, v3

    .line 1096
    goto :goto_2
.end method

.method private decodeTransportParamServiceCategory()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1048
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1049
    const-string v0, "CDMA"

    const-string v1, "DecodeSMS parm-category size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_typeOfService:I

    .line 1055
    return-void
.end method

.method private decodeTransportParamSubAddress()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x8

    .line 1142
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 1143
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1147
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xe0

    shr-int/lit8 v7, v7, 0x5

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddrType:B

    .line 1148
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v7, v7, v8

    and-int/lit8 v7, v7, 0x10

    shr-int/lit8 v5, v7, 0x4

    .line 1149
    .local v5, "oddCHARi":I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v7, v7, v8

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x4

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    or-int v4, v7, v8

    .line 1151
    .local v4, "numberOfCharacters":I
    if-nez v4, :cond_2

    .line 1259
    :cond_1
    :goto_0
    return-void

    .line 1154
    :cond_2
    shl-int/lit8 v7, v4, 0x1

    sub-int v4, v7, v5

    .line 1155
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v7, v8

    shr-int/lit8 v8, v4, 0x1

    add-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_3

    .line 1156
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1160
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v7, v7, 0x3

    add-int/lit8 v6, v7, 0xc

    .line 1164
    .local v6, "startBitIndex":I
    iget-byte v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddrType:B

    packed-switch v7, :pswitch_data_0

    .line 1256
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS unknown parm-subaddress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddrType:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1166
    :pswitch_0
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v8, v6, 0x8

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_4

    .line 1167
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1170
    :cond_4
    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    .line 1171
    .local v2, "afiField":I
    add-int/lit8 v6, v6, 0x8

    .line 1172
    add-int/lit8 v4, v4, -0x2

    .line 1174
    sparse-switch v2, :sswitch_data_0

    .line 1246
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS unknown parm-subaddress-NSAP : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1176
    :sswitch_0
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v8, v6, 0x10

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_5

    .line 1177
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1180
    :cond_5
    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    add-int/lit8 v8, v6, 0x8

    invoke-direct {p0, v8, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v8

    add-int/2addr v7, v8

    int-to-short v0, v7

    .line 1182
    .local v0, "NSAP_internetCodePoint":S
    add-int/lit8 v6, v6, 0x10

    .line 1184
    packed-switch v0, :pswitch_data_1

    .line 1216
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS unknown parm-subaddress-NSAP-IP : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1186
    :pswitch_1
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit16 v8, v6, 0x80

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_6

    .line 1187
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1190
    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1191
    .local v3, "ipAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "addrIndex":I
    :goto_1
    if-ge v1, v10, :cond_8

    .line 1192
    const/16 v7, 0x10

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1193
    add-int/lit8 v6, v6, 0x10

    .line 1194
    const/4 v7, 0x7

    if-ge v1, v7, :cond_7

    .line 1195
    new-instance v7, Ljava/lang/String;

    const-string v8, ":"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1191
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1198
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    goto/16 :goto_0

    .line 1201
    .end local v1    # "addrIndex":I
    .end local v3    # "ipAddress":Ljava/lang/String;
    :pswitch_2
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v8, v6, 0x20

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_9

    .line 1202
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1205
    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1206
    .restart local v3    # "ipAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "addrIndex":I
    :goto_2
    if-ge v1, v11, :cond_b

    .line 1207
    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1208
    add-int/lit8 v6, v6, 0x8

    .line 1209
    const/4 v7, 0x3

    if-ge v1, v7, :cond_a

    .line 1210
    new-instance v7, Ljava/lang/String;

    const-string v8, "."

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1206
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1213
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    goto/16 :goto_0

    .line 1221
    .end local v0    # "NSAP_internetCodePoint":S
    .end local v1    # "addrIndex":I
    .end local v3    # "ipAddress":Ljava/lang/String;
    :sswitch_1
    shr-int/lit8 v4, v4, 0x1

    .line 1222
    const/16 v7, 0x13

    if-le v4, v7, :cond_c

    .line 1224
    const/16 v4, 0x13

    .line 1226
    :cond_c
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    .line 1227
    const/4 v1, 0x0

    .restart local v1    # "addrIndex":I
    :goto_3
    if-ge v1, v4, :cond_1

    .line 1228
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 1229
    add-int/lit8 v6, v6, 0x8

    .line 1227
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1233
    .end local v1    # "addrIndex":I
    :sswitch_2
    shr-int/lit8 v4, v4, 0x1

    .line 1234
    const/16 v7, 0x9

    if-le v4, v7, :cond_d

    .line 1236
    const/16 v4, 0x9

    .line 1238
    :cond_d
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    .line 1239
    const/4 v1, 0x0

    .restart local v1    # "addrIndex":I
    :goto_4
    if-ge v1, v4, :cond_1

    .line 1240
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 1241
    add-int/lit8 v6, v6, 0x8

    .line 1239
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1251
    .end local v1    # "addrIndex":I
    .end local v2    # "afiField":I
    :pswitch_3
    invoke-direct {p0, v6, v11, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    .line 1252
    shl-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    .line 1254
    goto/16 :goto_0

    .line 1164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1174
    :sswitch_data_0
    .sparse-switch
        0x35 -> :sswitch_0
        0x50 -> :sswitch_1
        0x51 -> :sswitch_2
    .end sparse-switch

    .line 1184
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private decodeTransportParamTeleserviceId()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1037
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1038
    const-string v0, "CDMA"

    const-string v1, "DecodeSMS parm-id size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    .line 1044
    return-void
.end method

.method private decodeTransportParameter(B)V
    .locals 3
    .param p1, "param_id"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    packed-switch p1, :pswitch_data_0

    .line 1030
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DecodeSMS unknown parms : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1001
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamTeleserviceId()V

    .line 1033
    :goto_0
    return-void

    .line 1004
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamServiceCategory()V

    goto :goto_0

    .line 1007
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamOrigAddress()V

    goto :goto_0

    .line 1010
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamSubAddress()V

    goto :goto_0

    .line 1013
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamDestAddress()V

    goto :goto_0

    .line 1016
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamSubAddress()V

    goto :goto_0

    .line 1019
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamBearerReplyOption()V

    goto :goto_0

    .line 1022
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamCauseCodes()V

    goto :goto_0

    .line 1026
    :pswitch_8
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    .line 1027
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    goto :goto_0

    .line 999
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private existInGivenList(B[B)Z
    .locals 5
    .param p1, "checkItem"    # B
    .param p2, "givenList"    # [B

    .prologue
    .line 592
    move-object v0, p2

    .local v0, "arr$":[B
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v3, v0, v1

    .line 593
    .local v3, "listItem":B
    if-ne v3, p1, :cond_0

    .line 594
    const/4 v4, 0x1

    .line 597
    .end local v3    # "listItem":B
    :goto_1
    return v4

    .line 592
    .restart local v3    # "listItem":B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    .end local v3    # "listItem":B
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private existInGivenList(I[I)Z
    .locals 5
    .param p1, "checkItem"    # I
    .param p2, "givenList"    # [I

    .prologue
    .line 603
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 604
    .local v3, "listItem":I
    if-ne v3, p1, :cond_0

    .line 605
    const/4 v4, 0x1

    .line 608
    .end local v3    # "listItem":I
    :goto_1
    return v4

    .line 603
    .restart local v3    # "listItem":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    .end local v3    # "listItem":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private extendArray([B)[B
    .locals 3
    .param p1, "givenArray"    # [B

    .prologue
    const/4 v2, 0x0

    .line 880
    if-nez p1, :cond_0

    .line 881
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 887
    .local v0, "extendedArray":[B
    :goto_0
    return-object v0

    .line 884
    .end local v0    # "extendedArray":[B
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 885
    .restart local v0    # "extendedArray":[B
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method private extendArray([S)[S
    .locals 3
    .param p1, "givenArray"    # [S

    .prologue
    const/4 v2, 0x0

    .line 894
    if-nez p1, :cond_0

    .line 895
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 901
    .local v0, "extendedArray":[S
    :goto_0
    return-object v0

    .line 898
    .end local v0    # "extendedArray":[S
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [S

    .line 899
    .restart local v0    # "extendedArray":[S
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([SI[SII)V

    goto :goto_0
.end method

.method private extendArray([[B)[[B
    .locals 3
    .param p1, "givenArray"    # [[B

    .prologue
    const/4 v2, 0x0

    .line 908
    if-nez p1, :cond_0

    .line 909
    const/4 v1, 0x1

    new-array v0, v1, [[B

    .line 915
    .local v0, "extendedArray":[[B
    :goto_0
    return-object v0

    .line 912
    .end local v0    # "extendedArray":[[B
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [[B

    .line 913
    .restart local v0    # "extendedArray":[[B
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z
    .locals 3
    .param p1, "layer"    # Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;
    .param p2, "field"    # B

    .prologue
    .line 2216
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsDecoder$messageLayer:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2224
    const/4 v1, 0x0

    .line 2226
    :goto_0
    return v1

    .line 2218
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    .line 2226
    .local v0, "parameters":[Z
    :goto_1
    aget-boolean v1, v0, p2

    goto :goto_0

    .line 2221
    .end local v0    # "parameters":[Z
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    .line 2222
    .restart local v0    # "parameters":[Z
    goto :goto_1

    .line 2216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    .locals 2
    .param p1, "dataNetwork"    # Z
    .param p2, "numberType"    # B

    .prologue
    .line 667
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_RESERVED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 668
    .local v0, "returnValue":Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 669
    packed-switch p2, :pswitch_data_0

    .line 707
    :goto_0
    return-object v0

    .line 671
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN_DATA_NETWORK:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 672
    goto :goto_0

    .line 674
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNET_PROTOCOL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 675
    goto :goto_0

    .line 677
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNET_EMAIL_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 678
    goto :goto_0

    .line 684
    :cond_0
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 686
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 687
    goto :goto_0

    .line 689
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 690
    goto :goto_0

    .line 692
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_NATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 693
    goto :goto_0

    .line 695
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_NETWORK_SPECIFIC:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 696
    goto :goto_0

    .line 698
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_SUBSCRIBER:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 699
    goto :goto_0

    .line 701
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_ABBREVIATED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 702
    goto :goto_0

    .line 669
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 684
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public absoluteValidatyPeriodInMilliSeconds()J
    .locals 9

    .prologue
    .line 2374
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2375
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2378
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    .line 2379
    .local v7, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 2380
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2383
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v4, 0x2

    aget-short v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v5, 0x3

    aget-short v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v6, 0x4

    aget-short v5, v5, v6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v8, 0x5

    aget-short v6, v6, v8

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2389
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public causeCode()I
    .locals 1

    .prologue
    .line 2319
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    return v0
.end method

.method public decodePdu()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransport()V

    .line 570
    return-void
.end method

.method public errorClass()I
    .locals 1

    .prologue
    .line 2314
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_errorClass:B

    return v0
.end method

.method public getBearerData()[B
    .locals 5

    .prologue
    .line 2600
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    sub-int v1, v2, v3

    .line 2601
    .local v1, "length":I
    new-array v0, v1, [B

    .line 2602
    .local v0, "data":[B
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2603
    return-object v0
.end method

.method public getDateOfReport()J
    .locals 2

    .prologue
    .line 2578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDestinationAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2475
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2484
    :cond_0
    :goto_0
    return-object v0

    .line 2478
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    if-eqz v1, :cond_0

    .line 2481
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 2482
    .local v0, "address":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 2483
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    goto :goto_0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2505
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 2

    .prologue
    .line 2510
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isMessageDisplayModeSet()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->messageDisplayMode()B

    move-result v0

    if-nez v0, :cond_0

    .line 2512
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    .line 2514
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0
.end method

.method public getNumberOfVoiceMail()I
    .locals 2

    .prologue
    .line 2400
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2401
    const/4 v0, -0x1

    .line 2403
    :goto_0
    return v0

    :cond_0
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_voiceMailsInServer:B

    goto :goto_0
.end method

.method public getNumberTypeValue(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)B
    .locals 5
    .param p1, "numberType"    # Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2447
    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2468
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 2451
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 2453
    goto :goto_0

    .line 2455
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 2457
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 2459
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 2463
    goto :goto_0

    :pswitch_7
    move v0, v2

    .line 2465
    goto :goto_0

    .line 2447
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public getOriginatingAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2425
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2441
    :cond_0
    :goto_0
    return-object v0

    .line 2428
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    if-eqz v1, :cond_0

    .line 2432
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 2433
    .local v0, "address":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 2434
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 2436
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 2437
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 2438
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getNumberTypeValue(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)B

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 2439
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 2440
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberOfDigits:I

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    goto :goto_0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 2548
    const/4 v0, 0x0

    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2523
    const-string v0, ""

    return-object v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2416
    const-string v0, ""

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 2572
    const/4 v0, 0x0

    return v0
.end method

.method public getTimestampMillis()J
    .locals 3

    .prologue
    .line 2532
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isMessageCenterTimeSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2533
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->messageCenterTimeInMilliSeconds()J

    move-result-wide v0

    .line 2540
    .local v0, "scTimeMillis":J
    :goto_0
    return-wide v0

    .line 2534
    .end local v0    # "scTimeMillis":J
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isAbsoluteValidatyPeriodSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2535
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->absoluteValidatyPeriodInMilliSeconds()J

    move-result-wide v0

    .restart local v0    # "scTimeMillis":J
    goto :goto_0

    .line 2538
    .end local v0    # "scTimeMillis":J
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .restart local v0    # "scTimeMillis":J
    goto :goto_0
.end method

.method public getToaOfOriginatingAddress()I
    .locals 1

    .prologue
    .line 2495
    const/4 v0, 0x0

    return v0
.end method

.method public getToaOfScAddress()I
    .locals 1

    .prologue
    .line 2490
    const/4 v0, 0x0

    return v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    return-object v0
.end method

.method public isAbsoluteValidatyPeriodSet()Z
    .locals 2

    .prologue
    .line 2369
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isCallbackNumberSet()Z
    .locals 2

    .prologue
    .line 2395
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isMessageCenterTimeSet()Z
    .locals 2

    .prologue
    .line 2343
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isMessageDisplayModeSet()Z
    .locals 2

    .prologue
    .line 2333
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 2587
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isCallbackNumberSet()Z

    move-result v0

    return v0
.end method

.method public isUnsupportedMessage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2595
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyEncoding()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public messageCenterTimeInMilliSeconds()J
    .locals 9

    .prologue
    .line 2348
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2349
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2352
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    .line 2353
    .local v7, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 2354
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2357
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v4, 0x2

    aget-short v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v5, 0x3

    aget-short v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v6, 0x4

    aget-short v5, v5, v6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v8, 0x5

    aget-short v6, v6, v8

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2363
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public messageDisplayMode()B
    .locals 1

    .prologue
    .line 2338
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_displayMode:B

    return v0
.end method

.method public messageType()I
    .locals 1

    .prologue
    .line 2304
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    return v0
.end method

.method public replyOptionSeq()I
    .locals 1

    .prologue
    .line 2309
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_replySeqNumber:B

    return v0
.end method

.method public retrieveBody()[B
    .locals 2

    .prologue
    .line 2259
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2260
    const/4 v0, 0x0

    .line 2265
    :goto_0
    return-object v0

    .line 2262
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    if-nez v0, :cond_1

    .line 2263
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    .line 2265
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    goto :goto_0
.end method

.method public retrieveBodyAsString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2270
    const/4 v0, 0x0

    .line 2272
    .local v0, "rtValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyEncoding()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2287
    :goto_0
    :pswitch_0
    if-nez v0, :cond_0

    .line 2288
    new-instance v0, Ljava/lang/String;

    .end local v0    # "rtValue":Ljava/lang/String;
    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2290
    .restart local v0    # "rtValue":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 2274
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    array-length v3, v3

    shr-int/lit8 v3, v3, 0x1

    new-array v2, v3, [C

    .line 2275
    .local v2, "unicodeText":[C
    const/4 v1, 0x0

    .local v1, "unicodeIndex":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2276
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    shl-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    shl-int/lit8 v5, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 2275
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2279
    :cond_1
    new-instance v0, Ljava/lang/String;

    .end local v0    # "rtValue":Ljava/lang/String;
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 2280
    .restart local v0    # "rtValue":Ljava/lang/String;
    goto :goto_0

    .line 2282
    .end local v1    # "unicodeIndex":I
    .end local v2    # "unicodeText":[C
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    .end local v0    # "rtValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 2283
    .restart local v0    # "rtValue":Ljava/lang/String;
    goto :goto_0

    .line 2272
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public retrieveBodyEncoding()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2231
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2254
    :cond_0
    :goto_0
    return v1

    .line 2234
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    if-eqz v2, :cond_0

    .line 2238
    const/4 v0, 0x0

    .line 2239
    .local v0, "isUnicodeBytes":Z
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2240
    const/4 v0, 0x1

    .line 2251
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 2252
    const/4 v1, 0x3

    goto :goto_0

    .line 2243
    :cond_3
    iget-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    if-ltz v1, :cond_2

    .line 2244
    iget-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v1, v1, 0xbc

    const/16 v2, 0x18

    if-eq v1, v2, :cond_4

    iget-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_2

    .line 2246
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 2254
    :cond_5
    const/4 v1, 0x5

    goto :goto_0
.end method

.method public retrieveUserDataHeader()[B
    .locals 2

    .prologue
    .line 2295
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2296
    const/4 v0, 0x0

    .line 2298
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeader:[B

    goto :goto_0
.end method

.method public teleserviceCategory()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2325
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2328
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    goto :goto_0
.end method
