.class public Lcom/android/internal/telephony/gsm/OrangeEccSms;
.super Ljava/lang/Object;
.source "OrangeEccSms.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;,
        Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;
    }
.end annotation


# static fields
.field private static final BT999:Ljava/lang/String; = "999"

.field private static final DEFAULT_SCALE_VALUE:I = 0x64

.field private static final KEEP_PENDING_SMS_LIMIT:J = 0x36ee80L

.field private static final LOW_POWER_VALUE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OrangeEccSms"

.field private static final UPDATE_TIME_LIMIT:J = 0x4e20L

.field private static mNtpRetryCnt:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

.field private mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNtpHandler:Landroid/os/Handler;

.field private mNtpThread:Landroid/os/HandlerThread;

.field private mOriginalGpsSetting:Z

.field private mOriginalNlpSetting:Z

.field private mOriginalWifiAlwaysAvailable:I

.field private mPendingSmsQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

.field private mStartLocationUpdate:Z

.field private mSubId:J

.field private mThread:Landroid/os/HandlerThread;

.field private final mTime:Landroid/util/TrustedTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;Landroid/content/Context;J)V
    .locals 3
    .param p1, "dispatcher"    # Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subId"    # J

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    .line 81
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    .line 82
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    .line 83
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mStartLocationUpdate:Z

    .line 84
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    .line 85
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    .line 86
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    .line 89
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalGpsSetting:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalNlpSetting:Z

    .line 91
    iput v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalWifiAlwaysAvailable:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mPendingSmsQueue:Ljava/util/ArrayList;

    .line 101
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    .line 102
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    .line 110
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    .line 111
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    .line 112
    iput-wide p3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mSubId:J

    .line 114
    invoke-static {p2}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    .line 115
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/util/TrustedTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalNlpSetting:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/OrangeEccSms;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalWifiAlwaysAvailable:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/gsm/OrangeEccSms;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mStartLocationUpdate:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mPendingSmsQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/OrangeEccSms;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->refreshNtpTimeStamp()V

    return-void
.end method

.method static synthetic access$308()I
    .locals 2

    .prologue
    .line 76
    sget v0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/OrangeEccSms;Z)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->getBestLocation(Z)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/OrangeEccSms;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->printLocationLog(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/OrangeEccSms;Landroid/location/Location;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->getUserData(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/OrangeEccSms;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->sendSms(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalGpsSetting:Z

    return v0
.end method

.method private enableGpsAndUpdateLocation()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 214
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mStartLocationUpdate:Z

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalGpsSetting:Z

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalNlpSetting:Z

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalWifiAlwaysAvailable:I

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 228
    .local v6, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    .line 229
    .local v7, "originalMobileNetworkSetting":Z
    const-string v0, "OrangeEccSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mobile Datat Enabled? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalGpsSetting:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 235
    const-string v0, "OrangeEccSms"

    const-string v1, "enable GPS for Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalNlpSetting:Z

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 242
    const-string v0, "OrangeEccSms"

    const-string v1, "enable NLP for Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalWifiAlwaysAvailable:I

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    const-string v0, "OrangeEccSms"

    const-string v1, "enable Wifi Scanning Always Available for Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v6    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v7    # "originalMobileNetworkSetting":Z
    :cond_2
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mStartLocationUpdate:Z

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_3

    .line 263
    const-string v0, "OrangeEccSms"

    const-string v1, "Can\'t find GPS Provider!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_4

    .line 269
    const-string v0, "OrangeEccSms"

    const-string v1, "Can\'t find Network Provider!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->removeMessages(I)V

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 277
    return-void

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1
.end method

.method private formatRadius2IntegerString(F)Ljava/lang/String;
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 496
    float-to-int v0, p1

    .line 497
    .local v0, "radius":I
    const-string v1, "N"

    .line 499
    .local v1, "result":Ljava/lang/String;
    const v2, 0x1869f

    if-gt v0, v2, :cond_0

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    :cond_0
    return-object v1
.end method

.method private get10CharactersDoubleString(D)Ljava/lang/String;
    .locals 11
    .param p1, "d"    # D

    .prologue
    .line 443
    const-wide/16 v8, 0x0

    cmpl-double v7, p1, v8

    if-ltz v7, :cond_0

    .line 444
    const/4 v3, 0x1

    .line 451
    .local v3, "isPlus":Z
    :goto_0
    const-wide v8, 0x408f400000000000L    # 1000.0

    cmpl-double v7, p1, v8

    if-ltz v7, :cond_1

    .line 452
    const/4 v4, 0x4

    .line 460
    .local v4, "leftNumberCount":I
    :goto_1
    rsub-int/lit8 v6, v4, 0x8

    .line 462
    .local v6, "rightNumberCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .local v0, "formatString":Ljava/lang/StringBuilder;
    const-string v7, "0."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_4

    .line 465
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 446
    .end local v0    # "formatString":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v3    # "isPlus":Z
    .end local v4    # "leftNumberCount":I
    .end local v6    # "rightNumberCount":I
    :cond_0
    const/4 v3, 0x0

    .line 447
    .restart local v3    # "isPlus":Z
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    mul-double/2addr p1, v8

    goto :goto_0

    .line 453
    :cond_1
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    cmpl-double v7, p1, v8

    if-ltz v7, :cond_2

    .line 454
    const/4 v4, 0x3

    .restart local v4    # "leftNumberCount":I
    goto :goto_1

    .line 455
    .end local v4    # "leftNumberCount":I
    :cond_2
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v7, p1, v8

    if-ltz v7, :cond_3

    .line 456
    const/4 v4, 0x2

    .restart local v4    # "leftNumberCount":I
    goto :goto_1

    .line 458
    .end local v4    # "leftNumberCount":I
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "leftNumberCount":I
    goto :goto_1

    .line 472
    .restart local v0    # "formatString":Ljava/lang/StringBuilder;
    .restart local v2    # "i":I
    .restart local v6    # "rightNumberCount":I
    :cond_4
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/text/DecimalFormatSymbols;

    sget-object v9, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v8, v9}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v1, v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 473
    .local v1, "formatter":Ljava/text/NumberFormat;
    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, "result":Ljava/lang/String;
    const/4 v7, 0x1

    if-ne v3, v7, :cond_5

    .line 475
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 480
    :goto_3
    return-object v5

    .line 477
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private getBestLocation(Z)Landroid/location/Location;
    .locals 4
    .param p1, "gpsLocationUpdateIsAvailable"    # Z

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 283
    .local v0, "location":Landroid/location/Location;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 292
    .end local v0    # "location":Landroid/location/Location;
    .local v1, "location":Landroid/location/Location;
    :goto_0
    return-object v1

    .line 291
    .end local v1    # "location":Landroid/location/Location;
    .restart local v0    # "location":Landroid/location/Location;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    move-object v1, v0

    .line 292
    .end local v0    # "location":Landroid/location/Location;
    .restart local v1    # "location":Landroid/location/Location;
    goto :goto_0
.end method

.method private getBestTimestamp(Landroid/location/Location;)J
    .locals 6
    .param p1, "bestLocation"    # Landroid/location/Location;

    .prologue
    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 309
    .local v0, "bestTime":J
    if-eqz p1, :cond_0

    .line 310
    const-string v3, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    const-string v3, "OrangeEccSms"

    const-string v4, "Got GPS timestamp"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 317
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    if-nez v3, :cond_1

    .line 318
    const-string v3, "OrangeEccSms"

    const-string v4, "mTime is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    const-string v3, "OrangeEccSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Best timestamp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-wide v0

    .line 320
    :cond_1
    :try_start_1
    const-string v3, "OrangeEccSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasCache="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v5}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    .line 322
    const-string v3, "OrangeEccSms"

    const-string v4, "Use Network timestamp"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OrangeEccSms"

    const-string v4, "Get Exception while get best timestamp"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getUserData(Landroid/location/Location;)Ljava/lang/String;
    .locals 22
    .param p1, "bestLocation"    # Landroid/location/Location;

    .prologue
    .line 333
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v20, "000000"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 336
    .local v4, "formatter":Ljava/text/NumberFormat;
    const-string v7, "+000.00000"

    .line 337
    .local v7, "latitude":Ljava/lang/String;
    const-string v9, "+000.00000"

    .line 338
    .local v9, "longitude":Ljava/lang/String;
    const-string v15, "N"

    .line 339
    .local v15, "radius":Ljava/lang/String;
    const-string v8, "0"

    .line 340
    .local v8, "levelOfConfidence":Ljava/lang/String;
    const-string v14, "N"

    .line 341
    .local v14, "positionMethod":Ljava/lang/String;
    const-string v6, "000000000000000"

    .line 342
    .local v6, "imsi":Ljava/lang/String;
    const-string v5, "0000000000000000"

    .line 343
    .local v5, "imei":Ljava/lang/String;
    const-string v10, "000"

    .line 344
    .local v10, "mcc":Ljava/lang/String;
    const-string v13, "00"

    .line 347
    .local v13, "mnc":Ljava/lang/String;
    new-instance v18, Landroid/text/format/Time;

    const-string v20, "UTC"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 348
    .local v18, "timestamp":Landroid/text/format/Time;
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->getBestTimestamp(Landroid/location/Location;)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 349
    const-string v20, "%Y%m%d%H%M%S"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 352
    .local v17, "time":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->get10CharactersDoubleString(D)Ljava/lang/String;

    move-result-object v7

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->get10CharactersDoubleString(D)Ljava/lang/String;

    move-result-object v9

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->formatRadius2IntegerString(F)Ljava/lang/String;

    move-result-object v15

    .line 368
    const-string v20, "gps"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 369
    const-string v14, "G"

    .line 374
    :cond_0
    :goto_0
    const-string v8, "68"

    .line 377
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "phone"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    .line 378
    .local v19, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 379
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mSubId:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;

    move-result-object v6

    .line 381
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 382
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 384
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mSubId:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/telephony/TelephonyManager;->getNetworkOperator(J)Ljava/lang/String;

    move-result-object v11

    .line 385
    .local v11, "mccmnc":Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 386
    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 387
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 391
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string v20, "A\"ML=1;"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v20, "lt="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v20, "lg="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v20, "rd="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v20, "top="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v20, "lc="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v20, "pm="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v20, "si="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v20, "ei="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string v20, "mcc="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v20, "mnc="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 404
    .local v12, "messageLength":Ljava/lang/String;
    const-string v20, "ml="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20

    .line 370
    .end local v11    # "mccmnc":Ljava/lang/String;
    .end local v12    # "messageLength":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v19    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    const-string v20, "network"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 371
    const-string v14, "W"

    goto/16 :goto_0
.end method

.method private isLowPower()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 127
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 128
    const-string v6, "OrangeEccSms"

    const-string v7, "Can\'t get Battery Information!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    :goto_0
    return v5

    .line 132
    :cond_1
    const-string v6, "level"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 133
    .local v2, "level":I
    const-string v6, "scale"

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 135
    .local v4, "scale":I
    if-nez v4, :cond_2

    .line 136
    const-string v6, "OrangeEccSms"

    const-string v7, "scale is 0, set default 100"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/16 v4, 0x64

    .line 140
    :cond_2
    mul-int/lit8 v6, v2, 0x64

    div-int v3, v6, v4

    .line 141
    .local v3, "percentage":I
    const-string v6, "OrangeEccSms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "level : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", scale : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", percentage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/16 v6, 0xa

    if-gt v3, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private printLocationLog(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 507
    return-void
.end method

.method private refreshNtpTimeStamp()V
    .locals 4

    .prologue
    .line 191
    const-string v1, "OrangeEccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NTP retry count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget v1, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    if-eqz v1, :cond_0

    .line 195
    new-instance v0, Lcom/android/internal/telephony/gsm/OrangeEccSms$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms$1;-><init>(Lcom/android/internal/telephony/gsm/OrangeEccSms;)V

    .line 207
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private sendSms(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "userData"    # Ljava/lang/String;
    .param p2, "firstSend"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 414
    if-nez p1, :cond_0

    .line 415
    const-string v0, "OrangeEccSms"

    const-string v1, "user data is null when sending Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return-void

    .line 422
    :cond_0
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.android.mms.OrangeEccSms.SmsResultReceiver.MESSAGE_SENT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "UserData"

    invoke-virtual {v10, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 427
    const-string v0, "Timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v10, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v10, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 431
    .local v4, "sentIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    if-eqz v0, :cond_2

    .line 432
    const/4 v9, 0x1

    .line 433
    .local v9, "isInvisibleMoSms":Z
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    const-string v1, "999"

    move-object v3, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 435
    .end local v9    # "isInvisibleMoSms":Z
    :cond_2
    const-string v0, "OrangeEccSms"

    const-string v1, "SMSDispatcher is null, can\'t send Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    if-eqz v0, :cond_0

    .line 667
    const-string v0, "OrangeEccSms"

    const-string v1, "Unregister Emergency SMS result receiver!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->removeMessages(I)V

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 674
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    .line 675
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 679
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    .line 680
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    .line 682
    :cond_2
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x1

    .line 521
    if-nez p1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    const-string v1, "OrangeEccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New location : provider = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v1, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    const-string v1, "OrangeEccSms"

    const-string v2, "GPS onLocationChange"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->removeMessages(I)V

    .line 538
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 539
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 540
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 545
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 549
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 553
    return-void
.end method

.method public sendEccSms()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 156
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->isLowPower()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string v1, "OrangeEccSms"

    const-string v2, "Is low power level, for keep emergency call, do not enable emergency sms!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    .line 165
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LocationHandler"

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 167
    new-instance v1, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;-><init>(Lcom/android/internal/telephony/gsm/OrangeEccSms;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "com.android.mms.OrangeEccSms.SmsResultReceiver.MESSAGE_SENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    new-instance v1, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;-><init>(Lcom/android/internal/telephony/gsm/OrangeEccSms;Lcom/android/internal/telephony/gsm/OrangeEccSms$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    .line 173
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    const-string v1, "OrangeEccSms"

    const-string v2, "Register Emergency SMS result receiver!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->enableGpsAndUpdateLocation()V

    .line 181
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    .line 182
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 183
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NtpHandler"

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 185
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    .line 187
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->refreshNtpTimeStamp()V

    goto :goto_0
.end method
