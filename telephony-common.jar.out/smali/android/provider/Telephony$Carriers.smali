.class public final Landroid/provider/Telephony$Carriers;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Carriers"
.end annotation


# static fields
.field public static final APN:Ljava/lang/String; = "apn"

.field public static final AREA:Ljava/lang/String; = "area"

.field public static final AUTH_TYPE:Ljava/lang/String; = "authtype"

.field public static final BEARER:Ljava/lang/String; = "bearer"

.field public static final CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field public static final CDMA_CONTENT_URI:Landroid/net/Uri;

.field public static final CLASS:Ljava/lang/String; = "class"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_CURRENT:Landroid/net/Uri;

.field public static final CONTENT_URI_CURRENT_CDMA:Landroid/net/Uri;

.field public static final CONTENT_URI_CURRENT_GSM:Landroid/net/Uri;

.field public static final CONTENT_URI_PREFERAPN:Landroid/net/Uri;

.field public static final CONTENT_URI_PREFERAPN_CDMA:Landroid/net/Uri;

.field public static final CONTENT_URI_PREFERAPN_GSM:Landroid/net/Uri;

.field public static final CURRENT:Ljava/lang/String; = "current"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final DNS1:Ljava/lang/String; = "dns1"

.field public static final DNS2:Ljava/lang/String; = "dns2"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final FEATURE_APN_ROAMING:Z = false

.field public static final FLAG_APN_DISPATCH_MODE:Z = false

.field public static final HTC_BEARER:Ljava/lang/String; = "htc_bearer"

.field public static final INACTIVE_TIMER:Ljava/lang/String; = "inactivetimer"

.field public static final INSERT_BY:Ljava/lang/String; = "insert_by"

.field public static final MAX_CONNS:Ljava/lang/String; = "max_conns"

.field public static final MAX_CONNS_TIME:Ljava/lang/String; = "max_conns_time"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MMSC:Ljava/lang/String; = "mmsc"

.field public static final MMSPORT:Ljava/lang/String; = "mmsport"

.field public static final MMSPROTOCOL:Ljava/lang/String; = "mmsprotocol"

.field public static final MMSPROXY:Ljava/lang/String; = "mmsproxy"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final MODEM_COGNITIVE:Ljava/lang/String; = "modem_cognitive"

.field public static final MTU:Ljava/lang/String; = "mtu"

.field public static final MVNO_MATCH_DATA:Ljava/lang/String; = "mvno_match_data"

.field public static final MVNO_TYPE:Ljava/lang/String; = "mvno_type"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMERIC:Ljava/lang/String; = "numeric"

.field public static final OPERATOR:Ljava/lang/String; = "operator"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PDN_LABEL:Ljava/lang/String; = "pdn_label"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final PROFILE_ID:Ljava/lang/String; = "profile_id"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PROXY:Ljava/lang/String; = "proxy"

.field public static final ROAMING_PROTOCOL:Ljava/lang/String; = "roaming_protocol"

.field public static final SERVER:Ljava/lang/String; = "server"

.field public static final SLOT1_CDMA_CONTENT_URI:Landroid/net/Uri;

.field public static final SLOT1_GSM_CONTENT_URI:Landroid/net/Uri;

.field public static final SLOT2_GSM_CONTENT_URI:Landroid/net/Uri;

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final USER:Ljava/lang/String; = "user"

.field public static final WAIT_TIME:Ljava/lang/String; = "wait_time"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3347
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 3351
    const-string v0, "content://slot1cdmaapn/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->SLOT1_CDMA_CONTENT_URI:Landroid/net/Uri;

    .line 3352
    const-string v0, "content://slot1gsmapn/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->SLOT1_GSM_CONTENT_URI:Landroid/net/Uri;

    .line 3353
    const-string v0, "content://slot2gsmapn/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->SLOT2_GSM_CONTENT_URI:Landroid/net/Uri;

    .line 3358
    const-string v0, "content://telephony/carriers/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI_CURRENT:Landroid/net/Uri;

    .line 3361
    const-string v0, "content://telephony/carriers/current_gsm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI_CURRENT_GSM:Landroid/net/Uri;

    .line 3364
    const-string v0, "content://telephony/carriers/current_cdma"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI_CURRENT_CDMA:Landroid/net/Uri;

    .line 3367
    const-string v0, "content://telephony/carriers-preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI_PREFERAPN:Landroid/net/Uri;

    .line 3370
    const-string v0, "content://telephony/carriers-preferapn-gsm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI_PREFERAPN_GSM:Landroid/net/Uri;

    .line 3373
    const-string v0, "content://telephony/carriers-preferapn-cdma"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI_PREFERAPN_CDMA:Landroid/net/Uri;

    .line 3383
    const-string v0, "content://cdmaapn/carriers/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CDMA_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apnAreaCheck(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3471
    const-string v0, ""

    .line 3480
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
