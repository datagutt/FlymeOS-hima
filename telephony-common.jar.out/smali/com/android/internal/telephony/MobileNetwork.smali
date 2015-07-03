.class public Lcom/android/internal/telephony/MobileNetwork;
.super Ljava/lang/Object;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;,
        Lcom/android/internal/telephony/MobileNetwork$CachedSetting;,
        Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;,
        Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;,
        Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;,
        Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;,
        Lcom/android/internal/telephony/MobileNetwork$Menu;,
        Lcom/android/internal/telephony/MobileNetwork$Setting;,
        Lcom/android/internal/telephony/MobileNetwork$Selection;
    }
.end annotation


# static fields
.field private static final HTC_CP_QUERY_RETRY_DELAY_MS:[J

.field private static final HTC_CP_UPDATE_RETRY_DELAY_MS:[J

.field private static final HTC_DEBUG_DEVELOPMENT:Z = false

.field private static final HTC_FRAMEWORK_PKG:Ljava/lang/String; = "com.android.internal.telephony"

.field private static final HTC_LEGACY_SECUTE_KEY_DATA_ROAMING_SIM1:Ljava/lang/String; = "data_roaming_slot1"

.field private static final HTC_LEGACY_SECUTE_KEY_DATA_ROAMING_SIM2:Ljava/lang/String; = "data_roaming_slot2"

.field private static final HTC_LEGACY_SECUTE_KEY_DATA_ROAMING_SOUND:Ljava/lang/String; = "roaming_sound_on"

.field private static final HTC_LEGACY_SECUTE_KEY_NATIONAL_ROAMING:Ljava/lang/String; = "national_roaming_on"

.field private static final HTC_LEGACY_SECUTE_KEY_NATIONAL_ROAMING_SIM1:Ljava/lang/String; = "national_roaming_slot1"

.field private static final HTC_LEGACY_SECUTE_KEY_NATIONAL_ROAMING_SIM2:Ljava/lang/String; = "national_roaming_slot2"

.field private static final HTC_NOTIFY_ACTION_PREFER:Ljava/lang/String; = "actionPrefer"

.field private static final HTC_NOTIFY_ACTION_TYPE:Ljava/lang/String; = "actionType"

.field private static final HTC_NOTIFY_INTENT_TIME:Ljava/lang/String; = "updateTime"

.field private static final HTC_NOTIFY_LOG_TAG:Ljava/lang/String; = "logTag"

.field private static final HTC_PROVIDER:Ljava/lang/String; = "com.htc.mobiledata"

.field private static final HTC_SETTING_PHONE_TYPE:Ljava/lang/String; = "phoneType"

.field private static final HTC_SETTING_PRIVILEGE:Ljava/lang/String; = "privilege"

.field private static final HTC_SETTING_SLOT:Ljava/lang/String; = "slot"

.field private static final HTC_SETTING_SUMMARY:Ljava/lang/String; = "summary"

.field private static final HTC_SETTING_TITLE:Ljava/lang/String; = "title"

.field private static final HTC_SETTING_TYPE_DATA_DIALOG:Ljava/lang/String; = "dataDialog"

.field private static final HTC_SETTING_TYPE_DATA_PATH:Ljava/lang/String; = "dataPath"

.field private static final HTC_SETTING_TYPE_DATA_ROAMING:Ljava/lang/String; = "roamingSetting"

.field private static final HTC_SETTING_TYPE_DATA_ROAMING_SOUND:Ljava/lang/String; = "roamSoundSetting"

.field private static final HTC_SETTING_TYPE_MOBILE_DATA:Ljava/lang/String; = "dataSetting"

.field private static final HTC_SETTING_TYPE_MOBILE_DATA_MENU:Ljava/lang/String; = "dataSettingMenu"

.field private static final HTC_SETTING_UI_GRAYOUT:Ljava/lang/String; = "uiGrayOut"

.field private static final HTC_SETTING_UI_HIDE:Ljava/lang/String; = "uiHide"

.field private static final HTC_SETTING_USER:Ljava/lang/String; = "user"

.field private static final HTC_SETTING_VALUE:Ljava/lang/String; = "value"

.field public static final INTENT_PERMISSION:Ljava/lang/String; = "com.htc.permission.APP_PLATFORM"

.field private static final LOG_TAG:Ljava/lang/String; = "LibMobileNetwork"

.field public static final NOTIFY_INTENT:Ljava/lang/String; = "com.htc.intent.action.MOBILEDATA_MODE"

.field public static final VERSION:Ljava/lang/String; = "2015032801"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 3145
    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/MobileNetwork;->HTC_CP_UPDATE_RETRY_DELAY_MS:[J

    .line 3154
    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/MobileNetwork;->HTC_CP_QUERY_RETRY_DELAY_MS:[J

    return-void

    .line 3145
    :array_0
    .array-data 8
        0x2bc
        0x1f4
        0x190
    .end array-data

    .line 3154
    :array_1
    .array-data 8
        0x2bc
        0x1f4
        0x190
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5317
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork;->getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Long;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork;->matchLongValue(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork;->createQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/os/HandlerThread;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Landroid/os/HandlerThread;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork;->destroyThread(Landroid/os/HandlerThread;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork;->logAddVersion(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/Looper;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;

    .prologue
    .line 53
    invoke-static/range {p0 .. p7}, Lcom/android/internal/telephony/MobileNetwork;->createBackgroundHandler(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Boolean;)C
    .locals 1
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v0

    return v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork;->convertIntToBoolean(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Intent;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/util/LinkedList;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;

    .prologue
    .line 53
    invoke-static/range {p0 .. p9}, Lcom/android/internal/telephony/MobileNetwork;->handleIntentInBackgroundHandler(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Parcelable;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static convertBooleanToChar(Ljava/lang/Boolean;)C
    .locals 2
    .param p0, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 4373
    const/16 v0, 0x2d

    .line 4374
    .local v0, "result":C
    if-eqz p0, :cond_0

    .line 4375
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x31

    .line 4377
    :cond_0
    :goto_0
    return v0

    .line 4375
    :cond_1
    const/16 v0, 0x30

    goto :goto_0
.end method

.method private static convertIntToBoolean(I)Ljava/lang/Boolean;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 4388
    const/4 v0, 0x0

    .line 4389
    .local v0, "result":Ljava/lang/Boolean;
    const/16 v1, 0x2d

    if-eq p0, v1, :cond_0

    .line 4390
    const/16 v1, 0x30

    if-eq p0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4392
    :cond_0
    return-object v0

    .line 4390
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createBackgroundHandler(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;)Landroid/os/Handler;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "prefname"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .param p4, "callbackMatchSlotNphone"    # Z
    .param p5, "callbackSlotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p6, "logTag"    # Ljava/lang/String;
    .param p7, "memoryCachedSettings"    # Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;

    .prologue
    const/4 v4, 0x0

    .line 4764
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 4765
    :cond_0
    const/4 v1, 0x0

    .line 4932
    :goto_0
    return-object v1

    .line 4767
    :cond_1
    const/4 v1, 0x0

    .line 4768
    .local v1, "result":Landroid/os/Handler;
    new-instance v1, Lcom/android/internal/telephony/MobileNetwork$1;

    .end local v1    # "result":Landroid/os/Handler;
    invoke-direct {v1, p1, p7}, Lcom/android/internal/telephony/MobileNetwork$1;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;)V

    .line 4924
    .restart local v1    # "result":Landroid/os/Handler;
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/Object;

    .line 4925
    .local v0, "params":[Ljava/lang/Object;
    aput-object p0, v0, v4

    .line 4926
    const/4 v2, 0x1

    aput-object p3, v0, v2

    .line 4927
    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 4928
    const/4 v2, 0x3

    aput-object p5, v0, v2

    .line 4929
    const/4 v2, 0x4

    aput-object p2, v0, v2

    .line 4930
    const/4 v2, 0x5

    aput-object p6, v0, v2

    .line 4931
    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private static createQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "logTag"    # Ljava/lang/String;

    .prologue
    .line 4936
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4937
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4938
    const-string v1, "dataSetting"

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3400(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4939
    const-string v1, "dataSettingMenu"

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3400(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4940
    const-string v1, "roamingSetting"

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3400(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4941
    const-string v1, "roamSoundSetting"

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3400(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4942
    const-string v2, "dataPath"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4943
    if-eqz p2, :cond_0

    .line 4944
    const-string v1, "logTag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4947
    :cond_0
    return-object v0
.end method

.method private static createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "prefer"    # Landroid/os/Parcelable;
    .param p4, "privilege"    # Ljava/lang/String;
    .param p5, "logTag"    # Ljava/lang/String;

    .prologue
    .line 4952
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4953
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4954
    const-string v1, "actionType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4955
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3400(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4956
    if-eqz p3, :cond_0

    .line 4957
    const-string v1, "actionPrefer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4959
    :cond_0
    if-eqz p4, :cond_1

    .line 4960
    const-string v1, "privilege"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4962
    :cond_1
    if-eqz p5, :cond_2

    .line 4963
    const-string v1, "logTag"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4965
    :cond_2
    const-string v1, "updateTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4966
    return-object v0
.end method

.method private static destroyThread(Landroid/os/HandlerThread;)Ljava/lang/Throwable;
    .locals 7
    .param p0, "thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 4422
    const/4 v2, 0x0

    .line 4423
    .local v2, "exception":Ljava/lang/Throwable;
    if-eqz p0, :cond_1

    .line 4424
    const/4 v4, 0x1

    .line 4425
    .local v4, "unsafeQuit":Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v5

    const/16 v6, 0x12

    if-lt v5, v6, :cond_0

    .line 4427
    :try_start_0
    const-string v5, "android.os.HandlerThread"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4428
    .local v0, "cls":Ljava/lang/Class;
    const-string v5, "quitSafely"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4429
    .local v3, "mth":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4430
    const/4 v4, 0x0

    .line 4435
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v3    # "mth":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 4436
    const/4 v2, 0x0

    .line 4438
    :try_start_1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 4444
    .end local v4    # "unsafeQuit":Z
    :cond_1
    :goto_1
    return-object v2

    .line 4431
    .restart local v4    # "unsafeQuit":Z
    :catch_0
    move-exception v1

    .line 4432
    .local v1, "exDestroy":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    .line 4439
    .end local v1    # "exDestroy":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 4440
    .restart local v1    # "exDestroy":Ljava/lang/Throwable;
    move-object v2, v1

    goto :goto_1
.end method

.method private static getAllFieldsFromObject(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4276
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 4277
    .local v2, "flds":[Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .line 4278
    .local v4, "results":[Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 4279
    array-length v3, v2

    .line 4280
    .local v3, "nbrFlds":I
    if-lez v3, :cond_1

    .line 4281
    new-array v4, v3, [Ljava/lang/Object;

    .line 4282
    :cond_0
    :goto_0
    if-lez v3, :cond_1

    .line 4283
    add-int/lit8 v3, v3, -0x1

    .line 4284
    aget-object v1, v2, v3

    .line 4285
    .local v1, "fld":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 4286
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4287
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    goto :goto_0

    .line 4292
    .end local v1    # "fld":Ljava/lang/reflect/Field;
    .end local v3    # "nbrFlds":I
    :cond_1
    return-object v4
.end method

.method private static getAndroidApiLevel()I
    .locals 1

    .prologue
    .line 3177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getDataPath(Landroid/content/Context;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2010
    const/4 v4, 0x0

    .line 2011
    .local v4, "exception":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 2012
    .local v2, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 2013
    .local v5, "result":Lcom/android/internal/telephony/MobileNetwork$Selection;
    const/4 v1, 0x1

    .line 2017
    .local v1, "checkNextInterface":Z
    const/4 v7, 0x0

    :try_start_0
    const-string v8, "dataPath"

    const-class v9, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-static {p0, v7, v8, v9}, Lcom/android/internal/telephony/MobileNetwork;->getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 2018
    .local v6, "results":[Ljava/lang/Object;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 2019
    const/4 v7, 0x0

    aget-object v7, v6, v7

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2020
    const/4 v1, 0x0

    .line 2026
    .end local v6    # "results":[Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-nez v5, :cond_4

    .line 2027
    :cond_1
    if-nez v4, :cond_2

    .line 2028
    move-object v4, v2

    .line 2030
    :cond_2
    if-nez v4, :cond_3

    .line 2031
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .end local v4    # "exception":Ljava/lang/Throwable;
    const-string v7, "get data path"

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 2033
    .restart local v4    # "exception":Ljava/lang/Throwable;
    :cond_3
    throw v4

    .line 2022
    :catch_0
    move-exception v3

    .line 2023
    .local v3, "exRead":Ljava/lang/Throwable;
    move-object v2, v3

    goto :goto_0

    .line 2044
    .end local v3    # "exRead":Ljava/lang/Throwable;
    :cond_4
    return-object v5
.end method

.method public static getDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1671
    const/4 v6, 0x0

    .line 1672
    .local v6, "exception":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1673
    .local v3, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 1674
    .local v9, "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    const/4 v2, 0x1

    .line 1678
    .local v2, "checkNextInterface":Z
    :try_start_0
    const-string v15, "roamingSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v15}, Lcom/android/internal/telephony/MobileNetwork;->getValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v11

    .line 1679
    .local v11, "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz v11, :cond_2

    array-length v15, v11

    if-lez v15, :cond_2

    .line 1680
    new-instance v10, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    invoke-direct {v10}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    .end local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .local v10, "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    const/4 v15, 0x0

    :try_start_1
    aget-object v15, v11, v15

    iput-object v15, v10, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1682
    array-length v15, v11

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 1683
    const/4 v15, 0x1

    aget-object v15, v11, v15

    iput-object v15, v10, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1685
    :cond_0
    array-length v15, v11

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 1686
    const/4 v15, 0x2

    aget-object v15, v11, v15

    iput-object v15, v10, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 1688
    :cond_1
    const/4 v2, 0x0

    move-object v9, v10

    .line 1694
    .end local v10    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .end local v11    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v12

    .line 1696
    .local v12, "sdkVersion":I
    if-eqz v2, :cond_3

    const/16 v15, 0x15

    if-lt v12, v15, :cond_3

    .line 1698
    const/4 v6, 0x0

    .line 1699
    new-instance v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-direct {v9}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>()V

    .line 1701
    .restart local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoamingInSettings(Landroid/content/Context;Ljava/lang/Throwable;)I

    move-result v14

    .line 1702
    .local v14, "value":I
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    iput-object v15, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1703
    iget-object v0, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v16, v0

    if-eqz v14, :cond_a

    const/4 v15, 0x1

    :goto_1
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1704
    const/4 v2, 0x0

    .line 1710
    .end local v14    # "value":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_6

    const/16 v15, 0x15

    if-ge v12, v15, :cond_6

    .line 1712
    const/4 v6, 0x0

    .line 1713
    if-eqz p1, :cond_b

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 1714
    .local v13, "slotSelection":Ljava/lang/Long;
    :goto_3
    if-eqz v13, :cond_5

    .line 1715
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-ltz v15, :cond_4

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x2

    cmp-long v15, v16, v18

    if-ltz v15, :cond_5

    .line 1716
    :cond_4
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .end local v6    # "exception":Ljava/lang/Throwable;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "query data roaming slot"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1720
    .restart local v6    # "exception":Ljava/lang/Throwable;
    :cond_5
    if-nez v6, :cond_6

    .line 1721
    const/4 v2, 0x0

    .line 1722
    new-instance v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-direct {v9}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>()V

    .line 1723
    .restart local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    const-string v8, "national_roaming_on"

    .line 1724
    .local v8, "keyNationalRoaming":Ljava/lang/String;
    if-nez v13, :cond_d

    .line 1726
    :try_start_3
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoamingInSettings(Landroid/content/Context;Ljava/lang/Throwable;)I

    move-result v14

    .line 1727
    .restart local v14    # "value":I
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    iput-object v15, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1728
    iget-object v0, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v16, v0

    if-eqz v14, :cond_c

    const/4 v15, 0x1

    :goto_4
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1765
    .end local v14    # "value":I
    :goto_5
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-static {v15, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v14

    .line 1766
    .restart local v14    # "value":I
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    iput-object v15, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1767
    iget-object v0, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v16, v0

    if-eqz v14, :cond_10

    const/4 v15, 0x1

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1776
    .end local v8    # "keyNationalRoaming":Ljava/lang/String;
    .end local v13    # "slotSelection":Ljava/lang/Long;
    .end local v14    # "value":I
    :cond_6
    :goto_7
    if-nez v2, :cond_7

    if-nez v9, :cond_11

    .line 1777
    :cond_7
    if-nez v6, :cond_8

    .line 1778
    move-object v6, v3

    .line 1780
    :cond_8
    if-nez v6, :cond_9

    .line 1781
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .end local v6    # "exception":Ljava/lang/Throwable;
    const-string v15, "query data roaming"

    invoke-static {v15}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1783
    .restart local v6    # "exception":Ljava/lang/Throwable;
    :cond_9
    throw v6

    .line 1690
    .end local v12    # "sdkVersion":I
    :catch_0
    move-exception v4

    .line 1691
    .local v4, "exRead":Ljava/lang/Throwable;
    :goto_8
    move-object v3, v4

    goto/16 :goto_0

    .line 1703
    .end local v4    # "exRead":Ljava/lang/Throwable;
    .restart local v12    # "sdkVersion":I
    .restart local v14    # "value":I
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1705
    .end local v14    # "value":I
    :catch_1
    move-exception v5

    .line 1706
    .local v5, "exSettings":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    goto/16 :goto_2

    .line 1713
    .end local v5    # "exSettings":Ljava/lang/Throwable;
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1728
    .restart local v8    # "keyNationalRoaming":Ljava/lang/String;
    .restart local v13    # "slotSelection":Ljava/lang/Long;
    .restart local v14    # "value":I
    :cond_c
    const/4 v15, 0x0

    goto :goto_4

    .line 1729
    .end local v14    # "value":I
    :catch_2
    move-exception v5

    .line 1730
    .restart local v5    # "exSettings":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    .line 1731
    goto :goto_5

    .line 1734
    .end local v5    # "exSettings":Ljava/lang/Throwable;
    :cond_d
    const-string v7, "data_roaming_slot1"

    .line 1735
    .local v7, "keyDataRoaming":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-nez v15, :cond_e

    .line 1736
    const-string v8, "national_roaming_slot1"

    .line 1750
    :goto_9
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-static {v15, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v14

    .line 1751
    .restart local v14    # "value":I
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    iput-object v15, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1752
    iget-object v0, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v16, v0

    if-eqz v14, :cond_f

    const/4 v15, 0x1

    :goto_a
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 1753
    .end local v14    # "value":I
    :catch_3
    move-exception v5

    .line 1754
    .restart local v5    # "exSettings":Ljava/lang/Throwable;
    move-object v6, v5

    goto :goto_5

    .line 1739
    .end local v5    # "exSettings":Ljava/lang/Throwable;
    :cond_e
    const-string v7, "data_roaming_slot2"

    .line 1740
    const-string v8, "national_roaming_slot2"

    goto :goto_9

    .line 1752
    .restart local v14    # "value":I
    :cond_f
    const/4 v15, 0x0

    goto :goto_a

    .line 1767
    .end local v7    # "keyDataRoaming":Ljava/lang/String;
    :cond_10
    const/4 v15, 0x0

    goto :goto_6

    .line 1768
    .end local v14    # "value":I
    :catch_4
    move-exception v5

    .line 1769
    .restart local v5    # "exSettings":Ljava/lang/Throwable;
    if-nez v6, :cond_6

    .line 1770
    move-object v6, v5

    goto :goto_7

    .line 1794
    .end local v5    # "exSettings":Ljava/lang/Throwable;
    .end local v8    # "keyNationalRoaming":Ljava/lang/String;
    .end local v13    # "slotSelection":Ljava/lang/Long;
    :cond_11
    return-object v9

    .line 1690
    .end local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .end local v12    # "sdkVersion":I
    .restart local v10    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .restart local v11    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catch_5
    move-exception v4

    move-object v9, v10

    .end local v10    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .restart local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    goto :goto_8
.end method

.method private static getDataRoamingInSettings(Landroid/content/Context;Ljava/lang/Throwable;)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prevEx"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4337
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v4

    .line 4350
    .local v4, "sdkVersion":I
    const/4 v5, 0x0

    .line 4351
    .local v5, "value":I
    const/16 v6, 0x11

    if-lt v4, v6, :cond_0

    .line 4352
    const/4 v2, 0x0

    .line 4353
    .local v2, "intValue":Ljava/lang/Integer;
    const-string v6, "android.provider.Settings$Global"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4354
    .local v0, "cls":Ljava/lang/Class;
    const-string v6, "getInt"

    new-array v7, v11, [Ljava/lang/Class;

    const-class v8, Landroid/content/ContentResolver;

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4355
    .local v3, "mth":Ljava/lang/reflect/Method;
    const-string v6, "DATA_ROAMING"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4356
    .local v1, "fld":Ljava/lang/reflect/Field;
    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    aput-object v6, v7, v9

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v10

    invoke-virtual {v3, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "intValue":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 4357
    .restart local v2    # "intValue":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 4362
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "fld":Ljava/lang/reflect/Field;
    .end local v2    # "intValue":Ljava/lang/Integer;
    .end local v3    # "mth":Ljava/lang/reflect/Method;
    :goto_0
    return v5

    .line 4360
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "data_roaming"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method

.method public static getDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1893
    const/4 v4, 0x0

    .line 1894
    .local v4, "exception":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 1895
    .local v1, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 1896
    .local v5, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    const/4 v0, 0x1

    .line 1900
    .local v0, "checkNextInterface":Z
    :try_start_0
    const-string v10, "roamSoundSetting"

    invoke-static {p0, p1, v10}, Lcom/android/internal/telephony/MobileNetwork;->getValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v7

    .line 1901
    .local v7, "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz v7, :cond_0

    array-length v10, v7

    if-lez v10, :cond_0

    .line 1902
    const/4 v10, 0x0

    aget-object v5, v7, v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1903
    const/4 v0, 0x0

    :cond_0
    move-object v6, v5

    .line 1909
    .end local v5    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v7    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .local v6, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :goto_0
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v10

    const/16 v11, 0x15

    if-ge v10, v11, :cond_6

    .line 1911
    const/4 v4, 0x0

    .line 1920
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "roaming_sound_on"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    .line 1922
    .local v8, "value":I
    new-instance v5, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v5}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1923
    .end local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v5    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz v8, :cond_1

    const/4 v9, 0x1

    :cond_1
    :try_start_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v5, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1924
    const/4 v0, 0x0

    .line 1930
    .end local v8    # "value":I
    :goto_1
    if-nez v0, :cond_2

    if-nez v5, :cond_5

    .line 1931
    :cond_2
    if-nez v4, :cond_3

    .line 1932
    move-object v4, v1

    .line 1934
    :cond_3
    if-nez v4, :cond_4

    .line 1935
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .end local v4    # "exception":Ljava/lang/Throwable;
    const-string v9, "get data roaming sound"

    invoke-static {v9}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1937
    .restart local v4    # "exception":Ljava/lang/Throwable;
    :cond_4
    throw v4

    .line 1905
    :catch_0
    move-exception v2

    .line 1906
    .local v2, "exRead":Ljava/lang/Throwable;
    move-object v1, v2

    move-object v6, v5

    .end local v5    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto :goto_0

    .line 1925
    .end local v2    # "exRead":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    move-object v5, v6

    .line 1926
    .end local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .local v3, "exSettings":Ljava/lang/Throwable;
    .restart local v5    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :goto_2
    move-object v4, v3

    goto :goto_1

    .line 1948
    .end local v3    # "exSettings":Ljava/lang/Throwable;
    :cond_5
    return-object v5

    .line 1925
    .restart local v8    # "value":I
    :catch_2
    move-exception v3

    goto :goto_2

    .end local v5    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v8    # "value":I
    .restart local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_6
    move-object v5, v6

    .end local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v5    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto :goto_1
.end method

.method private static getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4262
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4263
    .local v1, "fld":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4264
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static getFrameworkClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3288
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "com.android.internal.telephony"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3289
    const-string v1, ".MobileNetwork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getHtcMobileNetwork(Landroid/content/Context;)Landroid/net/Uri$Builder;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3201
    const/4 v5, 0x0

    .line 3202
    .local v5, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3203
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_6

    .line 3204
    const-string v6, "com.htc.mobiledata"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 3205
    .local v3, "prodr":Landroid/content/pm/ProviderInfo;
    if-eqz v3, :cond_5

    .line 3206
    iget-boolean v6, v3, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v3, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v6, :cond_2

    .line 3207
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v6

    const/16 v7, 0x15

    if-ge v6, v7, :cond_0

    const-string v0, "com.android.phone"

    .line 3208
    .local v0, "matchPackage":Ljava/lang/String;
    :goto_0
    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3209
    .local v1, "matchSignature":I
    if-nez v1, :cond_1

    .line 3210
    new-instance v5, Landroid/net/Uri$Builder;

    .end local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 3211
    .restart local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    const-string v6, "content"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3212
    const-string v6, "com.htc.mobiledata"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3240
    return-object v5

    .line 3207
    .end local v0    # "matchPackage":Ljava/lang/String;
    .end local v1    # "matchSignature":I
    :cond_0
    const-string v0, "com.htc.sense.hsp"

    goto :goto_0

    .line 3215
    .restart local v0    # "matchPackage":Ljava/lang/String;
    .restart local v1    # "matchSignature":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3216
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v6, "HTC pkg sign "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3217
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3218
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3222
    .end local v0    # "matchPackage":Ljava/lang/String;
    .end local v1    # "matchSignature":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3223
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    const-string v6, "HTC cp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3224
    iget-boolean v6, v3, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-nez v6, :cond_3

    .line 3225
    const-string v6, " disabled"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3227
    :cond_3
    iget-boolean v6, v3, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v6, :cond_4

    .line 3228
    const-string v6, " hide"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3230
    :cond_4
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3234
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "access HTC cp"

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3238
    .end local v3    # "prodr":Landroid/content/pm/ProviderInfo;
    :cond_6
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "access pm"

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static getMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1341
    const/4 v12, 0x0

    .line 1342
    .local v12, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    const/4 v9, 0x0

    .line 1343
    .local v9, "exception":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 1345
    .local v7, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v3, 0x1

    .line 1347
    .local v3, "checkNextInterface":Z
    if-eqz v3, :cond_1

    .line 1349
    const/4 v14, 0x0

    .line 1351
    .local v14, "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_start_0
    const-string v17, "dataSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork;->getValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1355
    :goto_0
    if-nez v7, :cond_1

    .line 1356
    if-eqz v14, :cond_0

    array-length v0, v14

    move/from16 v17, v0

    if-gtz v17, :cond_5

    .line 1357
    :cond_0
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    .end local v7    # "exHtcInterface":Ljava/lang/Throwable;
    const-string v17, "get mobile data"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1366
    .end local v14    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v7    # "exHtcInterface":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v15

    .line 1368
    .local v15, "sdkVersion":I
    if-eqz v3, :cond_8

    const/16 v17, 0x15

    move/from16 v0, v17

    if-lt v15, v0, :cond_8

    .line 1370
    const/4 v9, 0x0

    .line 1371
    const/4 v11, 0x0

    .line 1373
    .local v11, "mth":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v17, "android.telephony.TelephonyManager"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1374
    .local v4, "cls":Ljava/lang/Class;
    const-string v17, "getDataEnabled"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1375
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1379
    .end local v4    # "cls":Ljava/lang/Class;
    :goto_2
    if-eqz v11, :cond_8

    if-nez v9, :cond_8

    .line 1380
    const/4 v3, 0x0

    .line 1386
    :try_start_2
    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 1387
    .local v10, "mgr":Landroid/telephony/TelephonyManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    .line 1388
    .local v16, "value":Ljava/lang/Boolean;
    new-instance v13, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v13}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1389
    .end local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .local v13, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_start_3
    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    .line 1396
    .end local v10    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v11    # "mth":Ljava/lang/reflect/Method;
    .end local v16    # "value":Ljava/lang/Boolean;
    :goto_3
    if-eqz v3, :cond_7

    const/16 v17, 0x8

    move/from16 v0, v17

    if-lt v15, v0, :cond_7

    .line 1397
    const/4 v9, 0x0

    .line 1398
    const/4 v11, 0x0

    .line 1400
    .restart local v11    # "mth":Ljava/lang/reflect/Method;
    :try_start_4
    const-string v17, "android.net.ConnectivityManager"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1401
    .restart local v4    # "cls":Ljava/lang/Class;
    const-string v17, "getMobileDataEnabled"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1402
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 1410
    .end local v4    # "cls":Ljava/lang/Class;
    :goto_4
    if-eqz v11, :cond_7

    if-nez v9, :cond_7

    .line 1411
    const/4 v3, 0x0

    .line 1413
    :try_start_5
    const-string v17, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 1414
    .local v10, "mgr":Landroid/net/ConnectivityManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    .line 1415
    .restart local v16    # "value":Ljava/lang/Boolean;
    new-instance v12, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v12}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 1416
    .end local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_start_6
    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 1423
    .end local v10    # "mgr":Landroid/net/ConnectivityManager;
    .end local v11    # "mth":Ljava/lang/reflect/Method;
    .end local v16    # "value":Ljava/lang/Boolean;
    :goto_5
    if-nez v3, :cond_2

    if-nez v12, :cond_6

    .line 1424
    :cond_2
    if-nez v9, :cond_3

    .line 1425
    move-object v9, v7

    .line 1427
    :cond_3
    if-nez v9, :cond_4

    .line 1428
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    .end local v9    # "exception":Ljava/lang/Throwable;
    const-string v17, "query mobile data"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1430
    .restart local v9    # "exception":Ljava/lang/Throwable;
    :cond_4
    throw v9

    .line 1352
    .end local v15    # "sdkVersion":I
    .restart local v14    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catch_0
    move-exception v5

    .line 1353
    .local v5, "ex":Ljava/lang/Throwable;
    move-object v7, v5

    goto/16 :goto_0

    .line 1360
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_5
    const/16 v17, 0x0

    aget-object v12, v14, v17

    .line 1361
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1376
    .end local v14    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v11    # "mth":Ljava/lang/reflect/Method;
    .restart local v15    # "sdkVersion":I
    :catch_1
    move-exception v8

    .line 1377
    .local v8, "exReflect":Ljava/lang/Throwable;
    move-object v9, v8

    goto/16 :goto_2

    .line 1390
    .end local v8    # "exReflect":Ljava/lang/Throwable;
    :catch_2
    move-exception v6

    .line 1391
    .local v6, "exExecute":Ljava/lang/Throwable;
    :goto_6
    invoke-static {v6}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v9

    move-object v13, v12

    .end local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto :goto_3

    .line 1403
    .end local v6    # "exExecute":Ljava/lang/Throwable;
    :catch_3
    move-exception v8

    .line 1404
    .restart local v8    # "exReflect":Ljava/lang/Throwable;
    move-object v9, v8

    goto :goto_4

    .line 1417
    .end local v8    # "exReflect":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    move-object v12, v13

    .line 1418
    .end local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v6    # "exExecute":Ljava/lang/Throwable;
    .restart local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :goto_7
    invoke-static {v6}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v9

    goto :goto_5

    .line 1440
    .end local v6    # "exExecute":Ljava/lang/Throwable;
    .end local v11    # "mth":Ljava/lang/reflect/Method;
    :cond_6
    return-object v12

    .line 1417
    .restart local v10    # "mgr":Landroid/net/ConnectivityManager;
    .restart local v11    # "mth":Ljava/lang/reflect/Method;
    .restart local v16    # "value":Ljava/lang/Boolean;
    :catch_5
    move-exception v6

    goto :goto_7

    .line 1390
    .end local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .local v10, "mgr":Landroid/telephony/TelephonyManager;
    .restart local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catch_6
    move-exception v6

    move-object v12, v13

    .end local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto :goto_6

    .end local v10    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v11    # "mth":Ljava/lang/reflect/Method;
    .end local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v16    # "value":Ljava/lang/Boolean;
    .restart local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_7
    move-object v12, v13

    .end local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto :goto_5

    :cond_8
    move-object v13, v12

    .end local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto/16 :goto_3
.end method

.method public static getMobileDataMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Menu;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1459
    const/4 v4, 0x0

    .line 1460
    .local v4, "result":Lcom/android/internal/telephony/MobileNetwork$Menu;
    const/4 v3, 0x0

    .line 1461
    .local v3, "exception":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1463
    .local v2, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 1465
    .local v0, "checkNextInterface":Z
    if-eqz v0, :cond_1

    .line 1467
    const/4 v5, 0x0

    .line 1469
    .local v5, "results":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    :try_start_0
    const-string v7, "dataSettingMenu"

    invoke-static {p0, p1, v7}, Lcom/android/internal/telephony/MobileNetwork;->getValueAsMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Lcom/android/internal/telephony/MobileNetwork$Menu;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1473
    :goto_0
    if-nez v2, :cond_1

    .line 1474
    if-eqz v5, :cond_0

    array-length v7, v5

    if-gtz v7, :cond_5

    .line 1475
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .end local v2    # "exHtcInterface":Ljava/lang/Throwable;
    const-string v7, "get mobile data menu"

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1484
    .end local v5    # "results":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    .restart local v2    # "exHtcInterface":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v6

    .line 1486
    .local v6, "sdkVersion":I
    if-nez v0, :cond_2

    if-nez v4, :cond_6

    .line 1487
    :cond_2
    if-nez v3, :cond_3

    .line 1488
    move-object v3, v2

    .line 1490
    :cond_3
    if-nez v3, :cond_4

    .line 1491
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    const-string v7, "query mobile data menu"

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1493
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_4
    throw v3

    .line 1470
    .end local v6    # "sdkVersion":I
    .restart local v5    # "results":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    :catch_0
    move-exception v1

    .line 1471
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v2, v1

    goto :goto_0

    .line 1478
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_5
    const/4 v7, 0x0

    aget-object v4, v5, v7

    .line 1479
    const/4 v0, 0x0

    goto :goto_1

    .line 1504
    .end local v5    # "results":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    .restart local v6    # "sdkVersion":I
    :cond_6
    return-object v4
.end method

.method private static getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 3300
    move-object v0, p0

    .line 3301
    .local v0, "originalEx":Ljava/lang/Throwable;
    if-eqz p0, :cond_1

    instance-of v1, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_1

    move-object v1, p0

    .line 3302
    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 3303
    if-nez v0, :cond_0

    move-object v1, p0

    .line 3304
    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 3306
    :cond_0
    if-nez v0, :cond_1

    .line 3307
    move-object v0, p0

    .line 3310
    :cond_1
    return-object v0
.end method

.method private static getUserID()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 3252
    const/4 v3, 0x0

    .line 3254
    .local v3, "userId":Ljava/lang/Long;
    :try_start_0
    const-string v4, "android.os.UserHandle"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3255
    .local v0, "cls":Ljava/lang/Class;
    const-string v4, "myUserId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3256
    .local v2, "mth":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3257
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3258
    .local v1, "id":I
    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3260
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "id":I
    .end local v2    # "mth":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 3259
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3653
    const/4 v14, 0x0

    .line 3654
    .local v14, "result":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    const/4 v6, 0x0

    .line 3655
    .local v6, "exception":Ljava/lang/Throwable;
    invoke-static/range {p0 .. p2}, Lcom/android/internal/telephony/MobileNetwork;->getValueFromSystem(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v13

    .line 3656
    .local v13, "queryResult":[Ljava/lang/Object;
    if-eqz v13, :cond_d

    .line 3657
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->isFrameworkSourceCode()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 3658
    const/4 v3, 0x0

    .line 3659
    .local v3, "client":Landroid/content/ContentProviderClient;
    const/4 v2, 0x0

    .line 3661
    .local v2, "c":Landroid/database/Cursor;
    const/16 v16, 0x0

    :try_start_0
    aget-object v16, v13, v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/content/ContentProviderClient;

    move-object v3, v0

    .line 3662
    const/16 v16, 0x1

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    .line 3663
    const/16 v16, 0x2

    aget-object v16, v13, v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3672
    .local v4, "count":I
    const-string v16, "slot"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 3673
    .local v9, "posSlot":I
    const-string v16, "phoneType"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3674
    .local v8, "posPhoneType":I
    const-string v16, "value"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3675
    .local v12, "posValue":I
    const-string v16, "uiGrayOut"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3676
    .local v10, "posUiGrayOut":I
    const-string v16, "uiHide"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 3677
    .local v11, "posUiHide":I
    new-array v15, v4, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 3678
    .local v15, "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    new-array v14, v4, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 3679
    if-gez v9, :cond_0

    if-gez v8, :cond_0

    if-gez v12, :cond_0

    if-gez v10, :cond_0

    if-ltz v11, :cond_c

    .line 3680
    :cond_0
    const/4 v4, 0x0

    .line 3681
    :goto_0
    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_c

    .line 3682
    if-ltz v9, :cond_2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_2

    .line 3683
    aget-object v16, v15, v4

    if-nez v16, :cond_1

    .line 3684
    new-instance v16, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    aput-object v16, v15, v4

    .line 3686
    :cond_1
    aget-object v16, v15, v4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 3688
    :cond_2
    if-ltz v8, :cond_4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_4

    .line 3689
    aget-object v16, v15, v4

    if-nez v16, :cond_3

    .line 3690
    new-instance v16, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    aput-object v16, v15, v4

    .line 3692
    :cond_3
    aget-object v16, v15, v4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    .line 3694
    :cond_4
    new-instance v16, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    aput-object v16, v14, v4

    .line 3695
    if-ltz v12, :cond_5

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_5

    .line 3696
    aget-object v17, v14, v4

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v16, v18, v20

    if-eqz v16, :cond_8

    const/16 v16, 0x1

    :goto_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    .line 3698
    :cond_5
    if-ltz v10, :cond_6

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_6

    .line 3699
    aget-object v17, v14, v4

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v16, v18, v20

    if-eqz v16, :cond_9

    const/16 v16, 0x1

    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    .line 3701
    :cond_6
    if-ltz v11, :cond_7

    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_7

    .line 3702
    aget-object v17, v14, v4

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v16, v18, v20

    if-eqz v16, :cond_a

    const/16 v16, 0x1

    :goto_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    .line 3704
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 3705
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 3696
    :cond_8
    const/16 v16, 0x0

    goto :goto_1

    .line 3699
    :cond_9
    const/16 v16, 0x0

    goto :goto_2

    .line 3702
    :cond_a
    const/16 v16, 0x0

    goto :goto_3

    .line 3708
    :cond_b
    array-length v4, v14
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3712
    .end local v4    # "count":I
    .end local v8    # "posPhoneType":I
    .end local v9    # "posSlot":I
    .end local v10    # "posUiGrayOut":I
    .end local v11    # "posUiHide":I
    .end local v12    # "posValue":I
    .end local v15    # "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    :catch_0
    move-exception v5

    .line 3713
    .local v5, "exRead":Ljava/lang/Throwable;
    move-object v6, v5

    .line 3716
    .end local v5    # "exRead":Ljava/lang/Throwable;
    :cond_c
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3719
    :goto_4
    :try_start_2
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 3729
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    :cond_d
    :goto_5
    if-eqz v6, :cond_f

    .line 3730
    throw v6

    .line 3723
    :cond_e
    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v14, v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 3724
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_d

    .line 3725
    new-instance v16, Lcom/android/internal/telephony/MobileNetwork$Setting;

    aget-object v17, v13, v7

    invoke-direct/range {v16 .. v17}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    aput-object v16, v14, v7

    .line 3724
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 3717
    .end local v7    # "i":I
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "client":Landroid/content/ContentProviderClient;
    :catch_1
    move-exception v16

    goto :goto_4

    .line 3720
    :catch_2
    move-exception v16

    goto :goto_5

    .line 3732
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    :cond_f
    return-object v14
.end method

.method public static getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .param p3, "objectType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3848
    const/4 v12, 0x0

    .line 3849
    .local v12, "result":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 3850
    .local v6, "exception":Ljava/lang/Throwable;
    invoke-static/range {p0 .. p2}, Lcom/android/internal/telephony/MobileNetwork;->getValueFromSystem(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v11

    .line 3851
    .local v11, "queryResult":[Ljava/lang/Object;
    if-eqz v11, :cond_9

    .line 3852
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->isFrameworkSourceCode()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 3853
    const/4 v3, 0x0

    .line 3854
    .local v3, "client":Landroid/content/ContentProviderClient;
    const/4 v2, 0x0

    .line 3856
    .local v2, "c":Landroid/database/Cursor;
    const/4 v14, 0x0

    :try_start_0
    aget-object v14, v11, v14

    move-object v0, v14

    check-cast v0, Landroid/content/ContentProviderClient;

    move-object v3, v0

    .line 3857
    const/4 v14, 0x1

    aget-object v14, v11, v14

    move-object v0, v14

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    .line 3858
    const/4 v14, 0x2

    aget-object v14, v11, v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3860
    .local v4, "count":I
    const-string v14, "value"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3861
    .local v10, "posValue":I
    const-string v14, "phoneType"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3862
    .local v8, "posPhoneType":I
    const-string v14, "slot"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 3863
    .local v9, "posSlot":I
    new-array v13, v4, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 3864
    .local v13, "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    new-array v12, v4, [Ljava/lang/Object;

    .line 3865
    if-gez v10, :cond_0

    if-gez v9, :cond_0

    if-ltz v8, :cond_8

    .line 3866
    :cond_0
    const/4 v4, 0x0

    .line 3867
    :goto_0
    array-length v14, v12

    if-ge v4, v14, :cond_8

    .line 3868
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_1

    .line 3869
    const-class v14, Ljava/lang/String;

    move-object/from16 v0, p3

    if-ne v0, v14, :cond_7

    .line 3870
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v4

    .line 3876
    :cond_1
    :goto_1
    if-ltz v9, :cond_3

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_3

    .line 3877
    aget-object v14, v13, v4

    if-nez v14, :cond_2

    .line 3878
    new-instance v14, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct {v14}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    aput-object v14, v13, v4

    .line 3880
    :cond_2
    aget-object v14, v13, v4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v14, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 3882
    :cond_3
    if-ltz v8, :cond_5

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_5

    .line 3883
    aget-object v14, v13, v4

    if-nez v14, :cond_4

    .line 3884
    new-instance v14, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct {v14}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    aput-object v14, v13, v4

    .line 3886
    :cond_4
    aget-object v14, v13, v4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v14, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    .line 3888
    :cond_5
    const-string v14, "dataPath"

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3889
    aget-object v14, v13, v4

    aput-object v14, v12, v4

    .line 3891
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 3892
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3872
    :cond_7
    const-class v14, Ljava/lang/Long;

    move-object/from16 v0, p3

    if-ne v0, v14, :cond_1

    .line 3873
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3900
    .end local v4    # "count":I
    .end local v8    # "posPhoneType":I
    .end local v9    # "posSlot":I
    .end local v10    # "posValue":I
    .end local v13    # "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    :catch_0
    move-exception v5

    .line 3901
    .local v5, "exRead":Ljava/lang/Throwable;
    move-object v6, v5

    .line 3904
    .end local v5    # "exRead":Ljava/lang/Throwable;
    :cond_8
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3907
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 3922
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    :cond_9
    :goto_3
    if-eqz v6, :cond_d

    .line 3923
    throw v6

    .line 3895
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "client":Landroid/content/ContentProviderClient;
    .restart local v4    # "count":I
    .restart local v8    # "posPhoneType":I
    .restart local v9    # "posSlot":I
    .restart local v10    # "posValue":I
    .restart local v13    # "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_a
    :try_start_3
    array-length v4, v12
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 3911
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    .end local v4    # "count":I
    .end local v8    # "posPhoneType":I
    .end local v9    # "posSlot":I
    .end local v10    # "posValue":I
    .end local v13    # "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_b
    const-string v14, "dataPath"

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 3912
    array-length v14, v11

    new-array v12, v14, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 3913
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    array-length v14, v11

    if-ge v7, v14, :cond_9

    .line 3914
    new-instance v14, Lcom/android/internal/telephony/MobileNetwork$Selection;

    aget-object v15, v11, v7

    invoke-direct {v14, v15}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>(Ljava/lang/Object;)V

    aput-object v14, v12, v7

    .line 3913
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3918
    .end local v7    # "i":I
    :cond_c
    move-object v12, v11

    goto :goto_3

    .line 3905
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "client":Landroid/content/ContentProviderClient;
    :catch_1
    move-exception v14

    goto :goto_2

    .line 3908
    :catch_2
    move-exception v14

    goto :goto_3

    .line 3925
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    :cond_d
    return-object v12
.end method

.method public static getValueAsMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Lcom/android/internal/telephony/MobileNetwork$Menu;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3753
    const/4 v13, 0x0

    .line 3754
    .local v13, "result":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    const/4 v6, 0x0

    .line 3755
    .local v6, "exception":Ljava/lang/Throwable;
    invoke-static/range {p0 .. p2}, Lcom/android/internal/telephony/MobileNetwork;->getValueFromSystem(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v12

    .line 3756
    .local v12, "queryResult":[Ljava/lang/Object;
    if-eqz v12, :cond_9

    .line 3757
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->isFrameworkSourceCode()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 3758
    const/4 v3, 0x0

    .line 3759
    .local v3, "client":Landroid/content/ContentProviderClient;
    const/4 v2, 0x0

    .line 3761
    .local v2, "c":Landroid/database/Cursor;
    const/4 v15, 0x0

    :try_start_0
    aget-object v15, v12, v15

    move-object v0, v15

    check-cast v0, Landroid/content/ContentProviderClient;

    move-object v3, v0

    .line 3762
    const/4 v15, 0x1

    aget-object v15, v12, v15

    move-object v0, v15

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    .line 3763
    const/4 v15, 0x2

    aget-object v15, v12, v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3771
    .local v4, "count":I
    const-string v15, "slot"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 3772
    .local v9, "posSlot":I
    const-string v15, "phoneType"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3773
    .local v8, "posPhoneType":I
    const-string v15, "title"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 3774
    .local v11, "posTitle":I
    const-string v15, "summary"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3775
    .local v10, "posSummary":I
    new-array v14, v4, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 3776
    .local v14, "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    new-array v13, v4, [Lcom/android/internal/telephony/MobileNetwork$Menu;

    .line 3777
    if-gez v9, :cond_0

    if-gez v8, :cond_0

    if-gez v11, :cond_0

    if-ltz v10, :cond_8

    .line 3778
    :cond_0
    const/4 v4, 0x0

    .line 3779
    :goto_0
    array-length v15, v13

    if-ge v4, v15, :cond_8

    .line 3780
    if-ltz v9, :cond_2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_2

    .line 3781
    aget-object v15, v14, v4

    if-nez v15, :cond_1

    .line 3782
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    aput-object v15, v14, v4

    .line 3784
    :cond_1
    aget-object v15, v14, v4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 3786
    :cond_2
    if-ltz v8, :cond_4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_4

    .line 3787
    aget-object v15, v14, v4

    if-nez v15, :cond_3

    .line 3788
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    aput-object v15, v14, v4

    .line 3790
    :cond_3
    aget-object v15, v14, v4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    .line 3792
    :cond_4
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Menu;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Menu;-><init>()V

    aput-object v15, v13, v4

    .line 3793
    if-ltz v11, :cond_5

    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_5

    .line 3794
    aget-object v15, v13, v4

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    .line 3796
    :cond_5
    if-ltz v10, :cond_6

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_6

    .line 3797
    aget-object v15, v13, v4

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    .line 3799
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 3800
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3803
    :cond_7
    array-length v4, v13
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3807
    .end local v4    # "count":I
    .end local v8    # "posPhoneType":I
    .end local v9    # "posSlot":I
    .end local v10    # "posSummary":I
    .end local v11    # "posTitle":I
    .end local v14    # "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    :catch_0
    move-exception v5

    .line 3808
    .local v5, "exRead":Ljava/lang/Throwable;
    move-object v6, v5

    .line 3811
    .end local v5    # "exRead":Ljava/lang/Throwable;
    :cond_8
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3814
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 3824
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    :cond_9
    :goto_2
    if-eqz v6, :cond_b

    .line 3825
    throw v6

    .line 3818
    :cond_a
    array-length v15, v12

    new-array v13, v15, [Lcom/android/internal/telephony/MobileNetwork$Menu;

    .line 3819
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    array-length v15, v12

    if-ge v7, v15, :cond_9

    .line 3820
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Menu;

    aget-object v16, v12, v7

    invoke-direct/range {v15 .. v16}, Lcom/android/internal/telephony/MobileNetwork$Menu;-><init>(Ljava/lang/Object;)V

    aput-object v15, v13, v7

    .line 3819
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3812
    .end local v7    # "i":I
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "client":Landroid/content/ContentProviderClient;
    :catch_1
    move-exception v15

    goto :goto_1

    .line 3815
    :catch_2
    move-exception v15

    goto :goto_2

    .line 3827
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    :cond_b
    return-object v13
.end method

.method private static getValueFromSystem(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 40
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3950
    const/16 v30, 0x0

    .line 3952
    .local v30, "result":[Ljava/lang/Object;
    const/16 v22, 0x0

    .line 3953
    .local v22, "exception":Ljava/lang/Throwable;
    if-eqz p0, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3954
    :cond_0
    new-instance v22, Ljava/lang/IllegalArgumentException;

    .end local v22    # "exception":Ljava/lang/Throwable;
    const-string v3, "get value from HTC"

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 4219
    .restart local v22    # "exception":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    if-eqz v22, :cond_24

    .line 4220
    throw v22

    .line 3957
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->isFrameworkSourceCode()Z

    move-result v35

    .line 3958
    .local v35, "srcInFramework":Z
    const/16 v32, 0x0

    .line 3960
    .local v32, "sbDebug":Ljava/lang/StringBuilder;
    if-nez v35, :cond_5

    .line 3968
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getFrameworkClassName()Ljava/lang/String;

    move-result-object v23

    .line 3969
    .local v23, "fwMobileNetwork":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 3971
    .local v10, "cls":Ljava/lang/Class;
    const-string v3, "$Selection"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 3972
    .local v11, "clsSelection":Ljava/lang/Class;
    const/16 v29, 0x0

    .line 3973
    .local v29, "ojbSlotNphone":Ljava/lang/Object;
    if-eqz p1, :cond_3

    .line 3974
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v3, v4

    invoke-virtual {v11, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    .line 3975
    .local v12, "cnstrSelection":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/MobileNetwork;->objectToFramework(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v12, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 3978
    .end local v12    # "cnstrSelection":Ljava/lang/reflect/Constructor;
    .end local v29    # "ojbSlotNphone":Ljava/lang/Object;
    :cond_3
    const/16 v28, 0x0

    .line 3979
    .local v28, "mth":Ljava/lang/reflect/Method;
    const-string v3, "dataSetting"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "roamingSetting"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "roamSoundSetting"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3982
    :cond_4
    const-string v3, "getValue"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v38, Landroid/content/Context;

    aput-object v38, v4, v7

    const/4 v7, 0x1

    aput-object v11, v4, v7

    const/4 v7, 0x2

    const-class v38, Ljava/lang/String;

    aput-object v38, v4, v7

    invoke-virtual {v10, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v28

    .line 3983
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3984
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v4, v7

    const/4 v7, 0x1

    aput-object v29, v4, v7

    const/4 v7, 0x2

    aput-object p2, v4, v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v30, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4003
    .end local v10    # "cls":Ljava/lang/Class;
    .end local v11    # "clsSelection":Ljava/lang/Class;
    .end local v23    # "fwMobileNetwork":Ljava/lang/String;
    .end local v28    # "mth":Ljava/lang/reflect/Method;
    :cond_5
    :goto_1
    if-eqz v35, :cond_23

    .line 4004
    const/16 v25, 0x0

    .line 4006
    .local v25, "htcUri":Landroid/net/Uri;
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork;->getHtcMobileNetwork(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v24

    .line 4007
    .local v24, "htcInterface":Landroid/net/Uri$Builder;
    if-eqz v24, :cond_6

    .line 4008
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v25

    .line 4016
    .end local v24    # "htcInterface":Landroid/net/Uri$Builder;
    :cond_6
    :goto_2
    const/4 v15, 0x0

    .line 4017
    .local v15, "exEachTry":Ljava/lang/Throwable;
    const/16 v26, 0x0

    .line 4018
    .local v26, "indexRetry":I
    sget-object v3, Lcom/android/internal/telephony/MobileNetwork;->HTC_CP_QUERY_RETRY_DELAY_MS:[J

    array-length v0, v3

    move/from16 v27, v0

    .line 4019
    .local v27, "maxRetry":I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_22

    .line 4020
    move-object/from16 v15, v22

    .line 4021
    const/16 v24, 0x0

    .line 4022
    .restart local v24    # "htcInterface":Landroid/net/Uri$Builder;
    const/4 v2, 0x0

    .line 4023
    .local v2, "client":Landroid/content/ContentProviderClient;
    if-eqz v25, :cond_8

    .line 4024
    const/4 v14, 0x0

    .line 4026
    .local v14, "cr":Landroid/content/ContentResolver;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 4027
    if-eqz v14, :cond_16

    .line 4028
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 4029
    if-nez v2, :cond_7

    .line 4030
    new-instance v16, Ljava/lang/UnsupportedOperationException;

    const-string v3, "alloc ucpc"

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .end local v15    # "exEachTry":Ljava/lang/Throwable;
    .local v16, "exEachTry":Ljava/lang/Throwable;
    move-object/from16 v15, v16

    .line 4042
    .end local v16    # "exEachTry":Ljava/lang/Throwable;
    .restart local v15    # "exEachTry":Ljava/lang/Throwable;
    :cond_7
    :goto_4
    new-instance v24, Landroid/net/Uri$Builder;

    .end local v24    # "htcInterface":Landroid/net/Uri$Builder;
    invoke-direct/range {v24 .. v24}, Landroid/net/Uri$Builder;-><init>()V

    .line 4043
    .restart local v24    # "htcInterface":Landroid/net/Uri$Builder;
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4044
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4045
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4068
    .end local v14    # "cr":Landroid/content/ContentResolver;
    :cond_8
    if-eqz v2, :cond_1e

    .line 4069
    const/4 v9, 0x0

    .line 4070
    .local v9, "c":Landroid/database/Cursor;
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getUserID()Ljava/lang/Long;

    move-result-object v37

    .line 4072
    .local v37, "userId":Ljava/lang/Long;
    :try_start_3
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    .line 4073
    .local v34, "select":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 4075
    .local v8, "argIndex":I
    if-eqz p1, :cond_c

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->isNull()Z
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$2800(Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 4076
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    if-eqz v3, :cond_a

    .line 4077
    if-lez v8, :cond_9

    .line 4078
    const-string v3, " AND "

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4080
    :cond_9
    const/16 v3, 0x28

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4081
    const-string v3, "slot"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4082
    const-string v3, " = ? OR "

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4083
    const-string v3, "slot"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4084
    const-string v3, " IS NULL)"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4085
    add-int/lit8 v8, v8, 0x1

    .line 4087
    :cond_a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    if-eqz v3, :cond_c

    .line 4088
    if-lez v8, :cond_b

    .line 4089
    const-string v3, " AND "

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4091
    :cond_b
    const/16 v3, 0x28

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4092
    const-string v3, "phoneType"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4093
    const-string v3, " = ? OR "

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4094
    const-string v3, "phoneType"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4095
    const-string v3, " IS NULL)"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4096
    add-int/lit8 v8, v8, 0x1

    .line 4099
    :cond_c
    if-eqz v37, :cond_e

    .line 4100
    if-lez v8, :cond_d

    .line 4101
    const-string v3, " AND "

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4103
    :cond_d
    const/16 v3, 0x28

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4104
    const-string v3, "user"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4105
    const-string v3, " = ? OR "

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4106
    const-string v3, "user"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4107
    const-string v3, " IS NULL)"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4108
    add-int/lit8 v8, v8, 0x1

    .line 4110
    :cond_e
    const/4 v5, 0x0

    .line 4111
    .local v5, "selectCommand":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_f

    .line 4112
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4114
    :cond_f
    const/4 v6, 0x0

    .line 4115
    .local v6, "selectArgs":[Ljava/lang/String;
    if-lez v8, :cond_10

    .line 4116
    new-array v6, v8, [Ljava/lang/String;

    .line 4118
    :cond_10
    if-eqz v37, :cond_11

    .line 4119
    add-int/lit8 v8, v8, -0x1

    .line 4120
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    .line 4122
    :cond_11
    if-eqz p1, :cond_13

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->isNull()Z
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$2800(Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 4123
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    if-eqz v3, :cond_12

    .line 4124
    add-int/lit8 v8, v8, -0x1

    .line 4125
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    .line 4127
    :cond_12
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    if-eqz v3, :cond_13

    .line 4128
    add-int/lit8 v8, v8, -0x1

    .line 4129
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    .line 4132
    :cond_13
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v9

    move-object/from16 v16, v15

    .line 4138
    .end local v5    # "selectCommand":Ljava/lang/String;
    .end local v6    # "selectArgs":[Ljava/lang/String;
    .end local v8    # "argIndex":I
    .end local v15    # "exEachTry":Ljava/lang/Throwable;
    .end local v34    # "select":Ljava/lang/StringBuilder;
    .restart local v16    # "exEachTry":Ljava/lang/Throwable;
    :goto_5
    if-eqz v9, :cond_1d

    .line 4140
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 4142
    .local v13, "count":I
    if-lez v13, :cond_17

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4143
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v30, v0

    .line 4144
    const/4 v3, 0x0

    aput-object v2, v30, v3

    .line 4145
    const/4 v3, 0x1

    aput-object v9, v30, v3

    .line 4146
    const/4 v3, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v30, v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v31, v30

    .line 4223
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v13    # "count":I
    .end local v16    # "exEachTry":Ljava/lang/Throwable;
    .end local v24    # "htcInterface":Landroid/net/Uri$Builder;
    .end local v25    # "htcUri":Landroid/net/Uri;
    .end local v26    # "indexRetry":I
    .end local v27    # "maxRetry":I
    .end local v30    # "result":[Ljava/lang/Object;
    .end local v32    # "sbDebug":Ljava/lang/StringBuilder;
    .end local v35    # "srcInFramework":Z
    .end local v37    # "userId":Ljava/lang/Long;
    .local v31, "result":[Ljava/lang/Object;
    :goto_6
    return-object v31

    .line 3986
    .end local v31    # "result":[Ljava/lang/Object;
    .restart local v10    # "cls":Ljava/lang/Class;
    .restart local v11    # "clsSelection":Ljava/lang/Class;
    .restart local v23    # "fwMobileNetwork":Ljava/lang/String;
    .restart local v28    # "mth":Ljava/lang/reflect/Method;
    .restart local v30    # "result":[Ljava/lang/Object;
    .restart local v32    # "sbDebug":Ljava/lang/StringBuilder;
    .restart local v35    # "srcInFramework":Z
    :cond_14
    :try_start_5
    const-string v3, "dataSettingMenu"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3987
    const-string v3, "getValueAsMenu"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v38, Landroid/content/Context;

    aput-object v38, v4, v7

    const/4 v7, 0x1

    aput-object v11, v4, v7

    const/4 v7, 0x2

    const-class v38, Ljava/lang/String;

    aput-object v38, v4, v7

    invoke-virtual {v10, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v28

    .line 3988
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3989
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v4, v7

    const/4 v7, 0x1

    aput-object v29, v4, v7

    const/4 v7, 0x2

    aput-object p2, v4, v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    goto/16 :goto_1

    .line 3991
    :cond_15
    const-string v3, "dataPath"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3992
    const-string v3, "getValueAsGivenClass"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v38, Landroid/content/Context;

    aput-object v38, v4, v7

    const/4 v7, 0x1

    aput-object v11, v4, v7

    const/4 v7, 0x2

    const-class v38, Ljava/lang/String;

    aput-object v38, v4, v7

    const/4 v7, 0x3

    const-class v38, Ljava/lang/Class;

    aput-object v38, v4, v7

    invoke-virtual {v10, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v28

    .line 3993
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3994
    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v4, v7

    const/4 v7, 0x1

    aput-object v29, v4, v7

    const/4 v7, 0x2

    aput-object p2, v4, v7

    const/4 v7, 0x3

    aput-object v11, v4, v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v30, v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 3996
    .end local v10    # "cls":Ljava/lang/Class;
    .end local v11    # "clsSelection":Ljava/lang/Class;
    .end local v23    # "fwMobileNetwork":Ljava/lang/String;
    .end local v28    # "mth":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v21

    .line 3997
    .local v21, "exRedirect":Ljava/lang/Throwable;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v22

    goto/16 :goto_1

    .line 4010
    .end local v21    # "exRedirect":Ljava/lang/Throwable;
    .restart local v25    # "htcUri":Landroid/net/Uri;
    :catch_1
    move-exception v17

    .line 4011
    .local v17, "exHtcInterface":Ljava/lang/Throwable;
    if-nez v22, :cond_6

    .line 4012
    move-object/from16 v22, v17

    goto/16 :goto_2

    .line 4033
    .end local v17    # "exHtcInterface":Ljava/lang/Throwable;
    .restart local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local v14    # "cr":Landroid/content/ContentResolver;
    .restart local v15    # "exEachTry":Ljava/lang/Throwable;
    .restart local v24    # "htcInterface":Landroid/net/Uri$Builder;
    .restart local v26    # "indexRetry":I
    .restart local v27    # "maxRetry":I
    :cond_16
    if-nez v15, :cond_7

    .line 4034
    :try_start_6
    new-instance v16, Ljava/lang/UnsupportedOperationException;

    const-string v3, "access cr"

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .end local v15    # "exEachTry":Ljava/lang/Throwable;
    .restart local v16    # "exEachTry":Ljava/lang/Throwable;
    move-object/from16 v15, v16

    .end local v16    # "exEachTry":Ljava/lang/Throwable;
    .restart local v15    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_4

    .line 4036
    :catch_2
    move-exception v19

    .line 4037
    .local v19, "exProviderClient":Ljava/lang/Throwable;
    if-nez v15, :cond_7

    .line 4038
    move-object/from16 v15, v19

    goto/16 :goto_4

    .line 4133
    .end local v14    # "cr":Landroid/content/ContentResolver;
    .end local v19    # "exProviderClient":Ljava/lang/Throwable;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v37    # "userId":Ljava/lang/Long;
    :catch_3
    move-exception v18

    .line 4134
    .local v18, "exOpen":Ljava/lang/Throwable;
    if-nez v15, :cond_27

    .line 4135
    move-object/from16 v15, v18

    move-object/from16 v16, v15

    .end local v15    # "exEachTry":Ljava/lang/Throwable;
    .restart local v16    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_5

    .line 4149
    .end local v18    # "exOpen":Ljava/lang/Throwable;
    .restart local v13    # "count":I
    :cond_17
    if-nez v16, :cond_26

    .line 4150
    :try_start_7
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 4151
    .local v33, "sbRead":Ljava/lang/StringBuilder;
    const-string v3, "read value ["

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4152
    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4153
    const/16 v3, 0x5d

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4154
    if-lez v13, :cond_18

    .line 4155
    const/16 v3, 0x2a

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4156
    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4158
    :cond_18
    const-string v3, " from HTC"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4159
    new-instance v15, Ljava/lang/UnsupportedOperationException;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 4167
    .end local v13    # "count":I
    .end local v16    # "exEachTry":Ljava/lang/Throwable;
    .end local v33    # "sbRead":Ljava/lang/StringBuilder;
    .restart local v15    # "exEachTry":Ljava/lang/Throwable;
    :goto_7
    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    .line 4178
    :goto_8
    :try_start_9
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    .line 4189
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v37    # "userId":Ljava/lang/Long;
    :cond_19
    :goto_9
    const/16 v36, 0x0

    .line 4190
    .local v36, "tryToRetry":Z
    if-eqz v15, :cond_1b

    .line 4191
    instance-of v3, v15, Landroid/os/DeadObjectException;

    if-nez v3, :cond_1a

    instance-of v3, v15, Landroid/os/TransactionTooLargeException;

    if-eqz v3, :cond_1f

    .line 4193
    :cond_1a
    const/16 v36, 0x1

    .line 4199
    :cond_1b
    :goto_a
    if-eqz v36, :cond_21

    .line 4200
    if-eqz v32, :cond_1c

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    .line 4201
    const-string v3, "LibMobileNetwork"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4204
    :cond_1c
    :try_start_a
    sget-object v3, Lcom/android/internal/telephony/MobileNetwork;->HTC_CP_QUERY_RETRY_DELAY_MS:[J

    aget-wide v38, v3, v26

    invoke-static/range {v38 .. v39}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    .line 4206
    :goto_b
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 4161
    .end local v15    # "exEachTry":Ljava/lang/Throwable;
    .end local v36    # "tryToRetry":Z
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v16    # "exEachTry":Ljava/lang/Throwable;
    .restart local v37    # "userId":Ljava/lang/Long;
    :catch_4
    move-exception v20

    .line 4162
    .local v20, "exRead":Ljava/lang/Throwable;
    if-nez v16, :cond_26

    .line 4163
    move-object/from16 v15, v20

    .end local v16    # "exEachTry":Ljava/lang/Throwable;
    .restart local v15    # "exEachTry":Ljava/lang/Throwable;
    goto :goto_7

    .line 4170
    .end local v15    # "exEachTry":Ljava/lang/Throwable;
    .end local v20    # "exRead":Ljava/lang/Throwable;
    .restart local v16    # "exEachTry":Ljava/lang/Throwable;
    :cond_1d
    if-nez v16, :cond_25

    .line 4171
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 4172
    .restart local v33    # "sbRead":Ljava/lang/StringBuilder;
    const-string v3, "access value ["

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4173
    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4174
    const-string v3, "] from HTC"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4175
    new-instance v15, Ljava/lang/UnsupportedOperationException;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v16    # "exEachTry":Ljava/lang/Throwable;
    .restart local v15    # "exEachTry":Ljava/lang/Throwable;
    goto :goto_8

    .line 4181
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v33    # "sbRead":Ljava/lang/StringBuilder;
    .end local v37    # "userId":Ljava/lang/Long;
    :cond_1e
    if-nez v15, :cond_19

    .line 4182
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 4183
    .restart local v33    # "sbRead":Ljava/lang/StringBuilder;
    const-string v3, "get value ["

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4184
    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4185
    const-string v3, "] from HTC"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4186
    new-instance v15, Ljava/lang/UnsupportedOperationException;

    .end local v15    # "exEachTry":Ljava/lang/Throwable;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .restart local v15    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_9

    .line 4196
    .end local v33    # "sbRead":Ljava/lang/StringBuilder;
    .restart local v36    # "tryToRetry":Z
    :cond_1f
    if-nez v2, :cond_20

    if-lez v26, :cond_20

    const/16 v36, 0x1

    :goto_c
    goto :goto_a

    :cond_20
    const/16 v36, 0x0

    goto :goto_c

    .line 4209
    :cond_21
    add-int/lit8 v26, v27, 0x1

    goto/16 :goto_3

    .line 4212
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .end local v24    # "htcInterface":Landroid/net/Uri$Builder;
    .end local v36    # "tryToRetry":Z
    :cond_22
    move-object/from16 v22, v15

    .line 4215
    .end local v15    # "exEachTry":Ljava/lang/Throwable;
    .end local v25    # "htcUri":Landroid/net/Uri;
    .end local v26    # "indexRetry":I
    .end local v27    # "maxRetry":I
    :cond_23
    if-eqz v32, :cond_1

    .line 4216
    const-string v3, "LibMobileNetwork"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v32    # "sbDebug":Ljava/lang/StringBuilder;
    .end local v35    # "srcInFramework":Z
    :cond_24
    move-object/from16 v31, v30

    .line 4223
    .end local v30    # "result":[Ljava/lang/Object;
    .restart local v31    # "result":[Ljava/lang/Object;
    goto/16 :goto_6

    .line 4168
    .end local v31    # "result":[Ljava/lang/Object;
    .restart local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v15    # "exEachTry":Ljava/lang/Throwable;
    .restart local v24    # "htcInterface":Landroid/net/Uri$Builder;
    .restart local v25    # "htcUri":Landroid/net/Uri;
    .restart local v26    # "indexRetry":I
    .restart local v27    # "maxRetry":I
    .restart local v30    # "result":[Ljava/lang/Object;
    .restart local v32    # "sbDebug":Ljava/lang/StringBuilder;
    .restart local v35    # "srcInFramework":Z
    .restart local v37    # "userId":Ljava/lang/Long;
    :catch_5
    move-exception v3

    goto/16 :goto_8

    .line 4179
    :catch_6
    move-exception v3

    goto/16 :goto_9

    .line 4205
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v37    # "userId":Ljava/lang/Long;
    .restart local v36    # "tryToRetry":Z
    :catch_7
    move-exception v3

    goto/16 :goto_b

    .end local v15    # "exEachTry":Ljava/lang/Throwable;
    .end local v36    # "tryToRetry":Z
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v16    # "exEachTry":Ljava/lang/Throwable;
    .restart local v37    # "userId":Ljava/lang/Long;
    :cond_25
    move-object/from16 v15, v16

    .end local v16    # "exEachTry":Ljava/lang/Throwable;
    .restart local v15    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_8

    .end local v15    # "exEachTry":Ljava/lang/Throwable;
    .restart local v16    # "exEachTry":Ljava/lang/Throwable;
    :cond_26
    move-object/from16 v15, v16

    .end local v16    # "exEachTry":Ljava/lang/Throwable;
    .restart local v15    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_7

    .restart local v18    # "exOpen":Ljava/lang/Throwable;
    :cond_27
    move-object/from16 v16, v15

    .end local v15    # "exEachTry":Ljava/lang/Throwable;
    .restart local v16    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_5
.end method

.method private static handleIntentInBackgroundHandler(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;)V
    .locals 26
    .param p0, "i"    # Landroid/content/Intent;
    .param p1, "report"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .param p4, "callbackMatchSlotNphone"    # Z
    .param p5, "callbackSlotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p6, "targetAction"    # Ljava/lang/String;
    .param p8, "logPrefix"    # Ljava/lang/String;
    .param p9, "memoryCachedSettings"    # Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Landroid/content/Context;",
            "Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;",
            "Z",
            "Lcom/android/internal/telephony/MobileNetwork$Selection;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4992
    .local p7, "cacheStatus":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    const/16 v22, 0x0

    .line 4993
    .local v22, "updateTime":Ljava/lang/Long;
    const-string v23, "updateTime"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 4994
    const-string v23, "updateTime"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 4995
    .local v18, "updTme":J
    const-wide/16 v24, 0x0

    cmp-long v23, v18, v24

    if-lez v23, :cond_0

    .line 4996
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 4999
    .end local v18    # "updTme":J
    :cond_0
    const-string v23, "actionType"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5000
    .local v4, "actionRequest":Ljava/lang/String;
    const/4 v10, 0x0

    .line 5001
    .local v10, "processAction":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 5002
    if-nez v4, :cond_c

    const/4 v10, 0x1

    .line 5004
    :cond_1
    :goto_0
    if-eqz v10, :cond_b

    .line 5005
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 5006
    .local v17, "slotNphoneString":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->constructFromString(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3200(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v16

    .line 5008
    .local v16, "slotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    const/16 v21, 0x0

    .line 5009
    .local v21, "updateStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    const/4 v7, 0x0

    .line 5010
    .local v7, "exception":Ljava/lang/Throwable;
    const/4 v11, 0x0

    .line 5011
    .local v11, "processResult":Z
    if-nez v4, :cond_19

    .line 5012
    const/4 v12, 0x0

    .line 5013
    .local v12, "queryAllSlotsNphones":Ljava/lang/Boolean;
    const/4 v13, 0x0

    .line 5014
    .local v13, "querySlotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    if-nez p4, :cond_d

    .line 5015
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5016
    move-object/from16 v13, v16

    .line 5023
    :cond_2
    :goto_1
    if-eqz v12, :cond_3

    .line 5024
    move-object/from16 v0, p7

    move-object/from16 v1, v22

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->isUpdateCacheRequired(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Long;)Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    invoke-static {v0, v13, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3700(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Long;)Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    move-result-object v21

    .line 5026
    :cond_3
    if-eqz v21, :cond_6

    .line 5028
    :try_start_0
    const-string v23, "dataSetting"

    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 5031
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/telephony/MobileNetwork;->getMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v5

    .line 5032
    .local v5, "current":Lcom/android/internal/telephony/MobileNetwork$Setting;
    move-object/from16 v0, v21

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3802(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5033
    if-eqz v5, :cond_5

    .line 5034
    const/4 v14, 0x0

    .line 5035
    .local v14, "sameAsPrevious":Ljava/lang/Boolean;
    if-eqz p9, :cond_4

    .line 5036
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->getCachedMobileDataSetting()Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v23

    move-object/from16 v0, v23

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->equals(Lcom/android/internal/telephony/MobileNetwork$Setting;Lcom/android/internal/telephony/MobileNetwork$Setting;)Z
    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$800(Lcom/android/internal/telephony/MobileNetwork$Setting;Lcom/android/internal/telephony/MobileNetwork$Setting;)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 5038
    :cond_4
    if-eqz v14, :cond_f

    .line 5039
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-nez v23, :cond_5

    .line 5040
    new-instance v23, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    .line 5041
    move-object/from16 v0, p9

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->updateCachedMobileDataSetting(Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5115
    .end local v5    # "current":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v14    # "sameAsPrevious":Ljava/lang/Boolean;
    :cond_5
    :goto_2
    const/4 v11, 0x1

    .line 5280
    .end local v12    # "queryAllSlotsNphones":Ljava/lang/Boolean;
    .end local v13    # "querySlotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_6
    :goto_3
    if-eqz v11, :cond_b

    .line 5281
    if-eqz v7, :cond_8

    .line 5282
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 5283
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 5284
    .local v15, "sb":Ljava/lang/StringBuilder;
    if-eqz p8, :cond_7

    .line 5285
    move-object/from16 v0, p8

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5287
    :cond_7
    const-string v23, "fail when "

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5288
    if-nez v4, :cond_27

    const-string v23, "notify "

    :goto_4
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5289
    const/16 v23, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5290
    const-string v23, "LibMobileNetwork"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5294
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    if-eqz v21, :cond_b

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3800(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_b

    .line 5295
    move-object/from16 v0, p7

    move-object/from16 v1, v21

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->updateCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$4000(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v20

    .line 5296
    .local v20, "update":Ljava/lang/String;
    if-eqz v20, :cond_b

    .line 5297
    if-eqz p1, :cond_9

    .line 5298
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5299
    const-string v23, "logTag"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_9

    .line 5300
    const-string v23, "logTag"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5303
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 5304
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 5305
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    if-eqz p8, :cond_a

    .line 5306
    move-object/from16 v0, p8

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5308
    :cond_a
    const-string v23, "cache"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5309
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p6

    move-object/from16 v2, v20

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->logCacheUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$4100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5316
    .end local v7    # "exception":Ljava/lang/Throwable;
    .end local v11    # "processResult":Z
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "slotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .end local v17    # "slotNphoneString":Ljava/lang/String;
    .end local v20    # "update":Ljava/lang/String;
    .end local v21    # "updateStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    :cond_b
    return-void

    .line 5002
    :cond_c
    move-object/from16 v0, p6

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    goto/16 :goto_0

    .line 5018
    .restart local v7    # "exception":Ljava/lang/Throwable;
    .restart local v11    # "processResult":Z
    .restart local v12    # "queryAllSlotsNphones":Ljava/lang/Boolean;
    .restart local v13    # "querySlotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .restart local v16    # "slotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .restart local v17    # "slotNphoneString":Ljava/lang/String;
    .restart local v21    # "updateStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    :cond_d
    if-eqz v16, :cond_e

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->isNull()Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$2800(Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v23

    if-nez v23, :cond_e

    move-object/from16 v0, v16

    move-object/from16 v1, p5

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->equals(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3500(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 5020
    :cond_e
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5021
    move-object/from16 v13, p5

    goto/16 :goto_1

    .line 5045
    .restart local v5    # "current":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v14    # "sameAsPrevious":Ljava/lang/Boolean;
    :cond_f
    :try_start_1
    new-instance v23, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    goto/16 :goto_2

    .line 5112
    .end local v5    # "current":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v14    # "sameAsPrevious":Ljava/lang/Boolean;
    :catch_0
    move-exception v6

    .line 5113
    .local v6, "ex":Ljava/lang/Throwable;
    move-object v7, v6

    goto/16 :goto_2

    .line 5049
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_10
    const-string v23, "dataSettingMenu"

    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 5052
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/telephony/MobileNetwork;->getMobileDataMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Menu;

    move-result-object v5

    .line 5053
    .local v5, "current":Lcom/android/internal/telephony/MobileNetwork$Menu;
    move-object/from16 v0, v21

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3802(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5054
    if-eqz v5, :cond_5

    .line 5055
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13, v5}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateMobileDataMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Menu;)V

    goto/16 :goto_2

    .line 5058
    .end local v5    # "current":Lcom/android/internal/telephony/MobileNetwork$Menu;
    :cond_11
    const-string v23, "roamingSetting"

    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 5061
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v5

    .line 5062
    .local v5, "current":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    move-object/from16 v0, v21

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3802(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5063
    if-eqz v5, :cond_5

    .line 5064
    const/4 v14, 0x0

    .line 5065
    .restart local v14    # "sameAsPrevious":Ljava/lang/Boolean;
    if-eqz p9, :cond_12

    .line 5066
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->getCachedRoamingSetting()Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v23

    move-object/from16 v0, v23

    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->equals(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Z
    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$3900(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 5068
    :cond_12
    if-eqz v14, :cond_13

    .line 5069
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-nez v23, :cond_5

    .line 5070
    new-instance v23, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V

    .line 5071
    move-object/from16 v0, p9

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->updateCachedRoamingSetting(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V

    goto/16 :goto_2

    .line 5075
    :cond_13
    new-instance v23, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V

    goto/16 :goto_2

    .line 5079
    .end local v5    # "current":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .end local v14    # "sameAsPrevious":Ljava/lang/Boolean;
    :cond_14
    const-string v23, "roamSoundSetting"

    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 5082
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v5

    .line 5083
    .local v5, "current":Lcom/android/internal/telephony/MobileNetwork$Setting;
    move-object/from16 v0, v21

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3802(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5084
    if-eqz v5, :cond_5

    .line 5085
    new-instance v23, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    goto/16 :goto_2

    .line 5088
    .end local v5    # "current":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_15
    const-string v23, "dataPath"

    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 5091
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/MobileNetwork;->getDataPath(Landroid/content/Context;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v5

    .line 5092
    .local v5, "current":Lcom/android/internal/telephony/MobileNetwork$Selection;
    move-object/from16 v0, v21

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3802(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5093
    if-eqz v5, :cond_5

    .line 5094
    const/4 v14, 0x0

    .line 5095
    .restart local v14    # "sameAsPrevious":Ljava/lang/Boolean;
    if-eqz p9, :cond_16

    .line 5096
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->getCachedDataPathSetting()Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v23

    move-object/from16 v0, v23

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->equals(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z
    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3500(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 5098
    :cond_16
    if-eqz v14, :cond_17

    .line 5099
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-nez v23, :cond_5

    .line 5100
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateDataPath(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)V

    .line 5101
    move-object/from16 v0, p9

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->updateCachedDataPathSetting(Lcom/android/internal/telephony/MobileNetwork$Selection;)V

    goto/16 :goto_2

    .line 5105
    :cond_17
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateDataPath(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)V

    goto/16 :goto_2

    .line 5109
    .end local v5    # "current":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .end local v14    # "sameAsPrevious":Ljava/lang/Boolean;
    :cond_18
    const-string v23, "dataDialog"

    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 5110
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateDialogDisplay(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 5118
    .end local v12    # "queryAllSlotsNphones":Ljava/lang/Boolean;
    .end local v13    # "querySlotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_19
    const-string v23, "dataSetting"

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 5119
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 5120
    .local v8, "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v8, :cond_1c

    .line 5121
    const-class v23, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->findCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2500(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 5122
    .restart local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v8, :cond_1b

    .line 5124
    :try_start_2
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork;->getMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v8

    .line 5126
    :goto_5
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 5127
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 5128
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    if-eqz p8, :cond_1a

    .line 5129
    move-object/from16 v0, p8

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5131
    :cond_1a
    const-string v23, "invert runtime "

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5132
    move-object/from16 v0, v16

    invoke-static {v4, v0, v8}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5133
    const-string v23, "LibMobileNetwork"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5136
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_1b
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v8

    .line 5138
    :cond_1c
    if-eqz v8, :cond_6

    .line 5139
    const-string v23, "privilege"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5155
    .local v9, "privilege":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1, v8, v9}, Lcom/android/internal/telephony/MobileNetwork;->setMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 5159
    :goto_6
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 5156
    :catch_1
    move-exception v6

    .line 5157
    .restart local v6    # "ex":Ljava/lang/Throwable;
    move-object v7, v6

    goto :goto_6

    .line 5162
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v9    # "privilege":Ljava/lang/String;
    :cond_1d
    const-string v23, "roamingSetting"

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_21

    .line 5163
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .line 5164
    .local v8, "prefer":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    if-nez v8, :cond_20

    .line 5165
    const-class v23, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->findCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2500(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .line 5166
    .restart local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    if-nez v8, :cond_1f

    .line 5168
    :try_start_4
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v8

    .line 5170
    :goto_7
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v23

    if-eqz v23, :cond_1f

    .line 5171
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 5172
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    if-eqz p8, :cond_1e

    .line 5173
    move-object/from16 v0, p8

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5175
    :cond_1e
    const-string v23, "invert runtime "

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5176
    move-object/from16 v0, v16

    invoke-static {v4, v0, v8}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5177
    const-string v23, "LibMobileNetwork"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5180
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_1f
    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$1000(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v8

    .line 5182
    :cond_20
    if-eqz v8, :cond_6

    .line 5183
    const-string v23, "privilege"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5199
    .restart local v9    # "privilege":Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1, v8, v9}, Lcom/android/internal/telephony/MobileNetwork;->setDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 5203
    :goto_8
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 5200
    :catch_2
    move-exception v6

    .line 5201
    .restart local v6    # "ex":Ljava/lang/Throwable;
    move-object v7, v6

    goto :goto_8

    .line 5206
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .end local v9    # "privilege":Ljava/lang/String;
    :cond_21
    const-string v23, "roamSoundSetting"

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_25

    .line 5207
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 5208
    .local v8, "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v8, :cond_24

    .line 5209
    const-class v23, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->findCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2500(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 5210
    .restart local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v8, :cond_23

    .line 5212
    :try_start_6
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v8

    .line 5214
    :goto_9
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v23

    if-eqz v23, :cond_23

    .line 5215
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 5216
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    if-eqz p8, :cond_22

    .line 5217
    move-object/from16 v0, p8

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5219
    :cond_22
    const-string v23, "invert runtime "

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5220
    move-object/from16 v0, v16

    invoke-static {v4, v0, v8}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5221
    const-string v23, "LibMobileNetwork"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5224
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_23
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v8

    .line 5226
    :cond_24
    if-eqz v8, :cond_6

    .line 5227
    const-string v23, "privilege"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5243
    .restart local v9    # "privilege":Ljava/lang/String;
    :try_start_7
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1, v8, v9}, Lcom/android/internal/telephony/MobileNetwork;->setDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 5247
    :goto_a
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 5244
    :catch_3
    move-exception v6

    .line 5245
    .restart local v6    # "ex":Ljava/lang/Throwable;
    move-object v7, v6

    goto :goto_a

    .line 5250
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v9    # "privilege":Ljava/lang/String;
    :cond_25
    const-string v23, "dataPath"

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 5251
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 5252
    .local v8, "prefer":Lcom/android/internal/telephony/MobileNetwork$Selection;
    if-nez v8, :cond_26

    .line 5255
    :cond_26
    if-eqz v8, :cond_6

    .line 5256
    const-string v23, "privilege"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5272
    .restart local v9    # "privilege":Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork;->setDataPath(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 5276
    :goto_b
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 5273
    :catch_4
    move-exception v6

    .line 5274
    .restart local v6    # "ex":Ljava/lang/Throwable;
    move-object v7, v6

    goto :goto_b

    .line 5288
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .end local v9    # "privilege":Ljava/lang/String;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_27
    const-string v23, "set "

    goto/16 :goto_4

    .line 5125
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .local v8, "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catch_5
    move-exception v23

    goto/16 :goto_5

    .line 5169
    .local v8, "prefer":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    :catch_6
    move-exception v23

    goto/16 :goto_7

    .line 5213
    .local v8, "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catch_7
    move-exception v23

    goto/16 :goto_9
.end method

.method private static isFrameworkSourceCode()Z
    .locals 4

    .prologue
    .line 3270
    const/4 v0, 0x0

    .line 3272
    .local v0, "inFramework":Z
    :try_start_0
    const-class v2, Lcom/android/internal/telephony/MobileNetwork;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 3273
    .local v1, "pkg":Ljava/lang/Package;
    if-eqz v1, :cond_0

    .line 3274
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.internal.telephony"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3277
    .end local v1    # "pkg":Ljava/lang/Package;
    :cond_0
    :goto_0
    return v0

    .line 3276
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static logAddVersion(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "postfix"    # Ljava/lang/String;

    .prologue
    .line 5423
    move-object v0, p0

    .line 5424
    .local v0, "verSb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 5425
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "verSb":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5427
    .restart local v0    # "verSb":Ljava/lang/StringBuilder;
    :cond_0
    if-eqz p1, :cond_1

    .line 5428
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5430
    :cond_1
    const-string v1, "2015032801"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5431
    if-eqz p2, :cond_2

    .line 5432
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5434
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 5445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5446
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 5447
    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5452
    :goto_0
    const-string v1, " API"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5453
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5454
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5455
    const-string v1, "2015032801"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5450
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0x20

    .line 5368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5369
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 5370
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5372
    :cond_0
    if-eqz p1, :cond_2

    .line 5373
    if-eqz p0, :cond_1

    .line 5374
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5376
    :cond_1
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5377
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3400(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5378
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5380
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 5381
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5382
    if-eqz p2, :cond_9

    .line 5383
    instance-of v2, p2, Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v2, :cond_4

    .line 5384
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 5385
    .local v1, "writer":Ljava/io/CharArrayWriter;
    check-cast p2, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .end local p2    # "value":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    invoke-static {v1, p2}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$400(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    .line 5386
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5410
    .end local v1    # "writer":Ljava/io/CharArrayWriter;
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 5388
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v2, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    if-eqz v2, :cond_5

    .line 5389
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 5390
    .restart local v1    # "writer":Ljava/io/CharArrayWriter;
    check-cast p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local p2    # "value":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    invoke-static {v1, p2}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$2600(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V

    .line 5391
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5393
    .end local v1    # "writer":Ljava/io/CharArrayWriter;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v2, p2, Lcom/android/internal/telephony/MobileNetwork$Menu;

    if-eqz v2, :cond_6

    .line 5394
    check-cast p2, Lcom/android/internal/telephony/MobileNetwork$Menu;

    .end local p2    # "value":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Menu;->logToStringBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/android/internal/telephony/MobileNetwork$Menu;->access$2700(Lcom/android/internal/telephony/MobileNetwork$Menu;Ljava/lang/StringBuilder;)Ljava/lang/String;

    goto :goto_0

    .line 5396
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 5397
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5399
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 5400
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5403
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5407
    :cond_9
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static matchLongValue(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 1
    .param p0, "value1"    # Ljava/lang/Long;
    .param p1, "value2"    # Ljava/lang/Long;

    .prologue
    .line 4404
    const/4 v0, 0x0

    .line 4405
    .local v0, "matchValue":Z
    if-nez p0, :cond_2

    .line 4406
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 4411
    :cond_0
    :goto_0
    return v0

    .line 4406
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4408
    :cond_2
    if-eqz p1, :cond_0

    .line 4409
    invoke-virtual {p0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static objectToFramework(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4234
    move-object v0, p0

    .line 4235
    .local v0, "result":Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 4236
    instance-of v1, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;

    if-eqz v1, :cond_1

    .line 4237
    check-cast p0, Lcom/android/internal/telephony/MobileNetwork$Selection;

    .end local p0    # "obj":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->convertToObject()Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$2900(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/Object;

    move-result-object v0

    .line 4249
    :cond_0
    :goto_0
    return-object v0

    .line 4239
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_2

    .line 4240
    check-cast p0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .end local p0    # "obj":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->convertToObject()Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$600(Lcom/android/internal/telephony/MobileNetwork$Setting;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 4242
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;

    if-eqz v1, :cond_3

    .line 4243
    check-cast p0, Lcom/android/internal/telephony/MobileNetwork$Menu;

    .end local p0    # "obj":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Menu;->convertToObject()Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$Menu;->access$3000(Lcom/android/internal/telephony/MobileNetwork$Menu;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 4245
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    if-eqz v1, :cond_0

    .line 4246
    check-cast p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local p0    # "obj":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->convertToObject()Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$3100(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static runtimeDebugOn()Z
    .locals 1

    .prologue
    .line 3187
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    return v0
.end method

.method public static setDataPath(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1968
    const/4 v2, 0x0

    .line 1969
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 1970
    .local v1, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 1972
    .local v0, "checkNextInterface":Z
    if-nez p1, :cond_3

    .line 1973
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .end local v2    # "exception":Ljava/lang/Throwable;
    const-string v3, "write data path"

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1987
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1988
    if-nez v2, :cond_1

    .line 1989
    move-object v2, v1

    .line 1991
    :cond_1
    if-nez v2, :cond_2

    .line 1992
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .end local v2    # "exception":Ljava/lang/Throwable;
    const-string v3, "update data path"

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1994
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :cond_2
    throw v2

    .line 1976
    :cond_3
    if-eqz v0, :cond_0

    .line 1978
    const-string v3, "dataPath"

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-static {p0, p1, v3, v4, v5}, Lcom/android/internal/telephony/MobileNetwork;->setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1981
    if-nez v1, :cond_0

    .line 1982
    const/4 v0, 0x0

    goto :goto_0

    .line 1996
    :cond_4
    return-void
.end method

.method public static setDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "roamingSetting"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .param p3, "privilege"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1538
    const/4 v3, 0x0

    .line 1539
    .local v3, "exception":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 1540
    .local v1, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 1542
    .local v0, "checkNextInterface":Z
    if-nez p2, :cond_3

    .line 1543
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    const-string v8, "write data roaming"

    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1644
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_10

    .line 1645
    if-nez v3, :cond_1

    .line 1646
    move-object v3, v1

    .line 1648
    :cond_1
    if-nez v3, :cond_2

    .line 1649
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    const-string v8, "update data roaming"

    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1651
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_2
    throw v3

    .line 1546
    :cond_3
    if-eqz v0, :cond_4

    .line 1548
    const-string v8, "roamingSetting"

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    const/4 v10, 0x0

    iget-object v11, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    aput-object v11, v9, v10

    invoke-static {p0, p1, v8, v9, p3}, Lcom/android/internal/telephony/MobileNetwork;->setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1553
    if-nez v1, :cond_4

    .line 1554
    const/4 v0, 0x0

    .line 1558
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v6

    .line 1560
    .local v6, "sdkVersion":I
    if-eqz v0, :cond_5

    const/16 v8, 0x15

    if-lt v6, v8, :cond_5

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v8, :cond_5

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v8, :cond_5

    .line 1565
    :try_start_0
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    :goto_1
    invoke-static {p0, v8, v1}, Lcom/android/internal/telephony/MobileNetwork;->setDataRoamingInSettings(Landroid/content/Context;ILjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1568
    const/4 v0, 0x0

    .line 1574
    :cond_5
    :goto_2
    if-eqz v0, :cond_0

    const/16 v8, 0x15

    if-ge v6, v8, :cond_0

    .line 1576
    const/4 v3, 0x0

    .line 1577
    if-eqz p1, :cond_a

    iget-object v7, p1, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 1578
    .local v7, "slotSelection":Ljava/lang/Long;
    :goto_3
    if-eqz v7, :cond_7

    .line 1579
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_6

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-ltz v8, :cond_7

    .line 1580
    :cond_6
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update data roaming slot"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1584
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_7
    if-nez v3, :cond_0

    .line 1585
    const/4 v0, 0x0

    .line 1586
    const-string v5, "national_roaming_on"

    .line 1587
    .local v5, "keyNationalRoaming":Ljava/lang/String;
    if-nez v7, :cond_c

    .line 1588
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v8, :cond_8

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v8, :cond_8

    .line 1590
    :try_start_1
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    :goto_4
    invoke-static {p0, v8, v1}, Lcom/android/internal/telephony/MobileNetwork;->setDataRoamingInSettings(Landroid/content/Context;ILjava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1624
    :cond_8
    :goto_5
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v8, :cond_0

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v8, :cond_0

    .line 1634
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    :goto_6
    invoke-static {v9, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1636
    :catch_0
    move-exception v2

    .line 1637
    .local v2, "exSettings":Ljava/lang/Throwable;
    move-object v3, v2

    goto/16 :goto_0

    .line 1565
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    .end local v5    # "keyNationalRoaming":Ljava/lang/String;
    .end local v7    # "slotSelection":Ljava/lang/Long;
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1569
    :catch_1
    move-exception v2

    .line 1570
    .restart local v2    # "exSettings":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    goto/16 :goto_2

    .line 1577
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1590
    .restart local v5    # "keyNationalRoaming":Ljava/lang/String;
    .restart local v7    # "slotSelection":Ljava/lang/Long;
    :cond_b
    const/4 v8, 0x0

    goto :goto_4

    .line 1593
    :catch_2
    move-exception v2

    .line 1594
    .restart local v2    # "exSettings":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 1595
    goto :goto_5

    .line 1599
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    :cond_c
    const-string v4, "data_roaming_slot1"

    .line 1600
    .local v4, "keyDataRoaming":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_d

    .line 1601
    const-string v5, "national_roaming_slot1"

    .line 1607
    :goto_7
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v8, :cond_8

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v8, :cond_8

    .line 1617
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    :goto_8
    invoke-static {v9, v4, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 1619
    :catch_3
    move-exception v2

    .line 1620
    .restart local v2    # "exSettings":Ljava/lang/Throwable;
    move-object v3, v2

    goto :goto_5

    .line 1604
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    :cond_d
    const-string v4, "data_roaming_slot2"

    .line 1605
    const-string v5, "national_roaming_slot2"

    goto :goto_7

    .line 1617
    :cond_e
    const/4 v8, 0x0

    goto :goto_8

    .line 1634
    .end local v4    # "keyDataRoaming":Ljava/lang/String;
    :cond_f
    const/4 v8, 0x0

    goto :goto_6

    .line 1653
    .end local v5    # "keyNationalRoaming":Ljava/lang/String;
    .end local v6    # "sdkVersion":I
    .end local v7    # "slotSelection":Ljava/lang/Long;
    :cond_10
    return-void
.end method

.method private static setDataRoamingInSettings(Landroid/content/Context;ILjava/lang/Throwable;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I
    .param p2, "prevEx"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4304
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v3

    .line 4318
    .local v3, "sdkVersion":I
    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 4319
    const-string v4, "android.provider.Settings$Global"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4320
    .local v0, "cls":Ljava/lang/Class;
    const-string v4, "putInt"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v9

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4321
    .local v2, "mth":Ljava/lang/reflect/Method;
    const-string v4, "DATA_ROAMING"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4322
    .local v1, "fld":Ljava/lang/reflect/Field;
    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    aput-object v4, v5, v7

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v5, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v9

    invoke-virtual {v2, v11, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4327
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "fld":Ljava/lang/reflect/Field;
    .end local v2    # "mth":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 4325
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static setDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;
    .param p3, "privilege"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1826
    const/4 v3, 0x0

    .line 1827
    .local v3, "exception":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 1828
    .local v1, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 1830
    .local v0, "checkNextInterface":Z
    if-nez p2, :cond_3

    .line 1831
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    const-string v5, "write data roaming sound"

    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1866
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    .line 1867
    if-nez v3, :cond_1

    .line 1868
    move-object v3, v1

    .line 1870
    :cond_1
    if-nez v3, :cond_2

    .line 1871
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    const-string v5, "update data roaming sound"

    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1873
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_2
    throw v3

    .line 1834
    :cond_3
    if-eqz v0, :cond_4

    .line 1836
    const-string v7, "roamSoundSetting"

    new-array v8, v5, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    aput-object p2, v8, v6

    invoke-static {p0, p1, v7, v8, p3}, Lcom/android/internal/telephony/MobileNetwork;->setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1838
    if-nez v1, :cond_4

    .line 1839
    const/4 v0, 0x0

    .line 1843
    :cond_4
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v7

    const/16 v8, 0x15

    if-ge v7, v8, :cond_0

    iget-object v7, p2, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v7, :cond_0

    .line 1846
    iget-object v7, p2, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1847
    .local v4, "on":Z
    const/4 v3, 0x0

    .line 1857
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "roaming_sound_on"

    if-eqz v4, :cond_5

    move v7, v5

    :goto_1
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_6

    move v0, v5

    :goto_2
    goto :goto_0

    :cond_5
    move v7, v6

    goto :goto_1

    :cond_6
    move v0, v6

    goto :goto_2

    .line 1860
    :catch_0
    move-exception v2

    .line 1861
    .local v2, "exSettings":Ljava/lang/Throwable;
    move-object v3, v2

    goto :goto_0

    .line 1875
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    .end local v4    # "on":Z
    :cond_7
    return-void
.end method

.method public static setMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/String;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;
    .param p3, "privilege"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1204
    const/4 v8, 0x0

    .line 1205
    .local v8, "exception":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 1206
    .local v6, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v3, 0x1

    .line 1208
    .local v3, "checkNextInterface":Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v13

    .line 1210
    .local v13, "sdkVersion":I
    if-nez p2, :cond_3

    .line 1211
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .end local v8    # "exception":Ljava/lang/Throwable;
    const-string v14, "write mobile data"

    invoke-static {v14}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1313
    .restart local v8    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v3, :cond_8

    .line 1314
    if-nez v8, :cond_1

    .line 1315
    move-object v8, v6

    .line 1317
    :cond_1
    if-nez v8, :cond_2

    .line 1318
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    .end local v8    # "exception":Ljava/lang/Throwable;
    const-string v14, "write mobile data"

    invoke-static {v14}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1320
    .restart local v8    # "exception":Ljava/lang/Throwable;
    :cond_2
    throw v8

    .line 1214
    :cond_3
    if-eqz v3, :cond_4

    .line 1216
    const-string v14, "dataSetting"

    const/4 v15, 0x1

    new-array v15, v15, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    const/16 v16, 0x0

    aput-object p2, v15, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v14, v15, v2}, Lcom/android/internal/telephony/MobileNetwork;->setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v6

    .line 1218
    if-nez v6, :cond_4

    .line 1219
    const/4 v3, 0x0

    .line 1223
    :cond_4
    if-eqz v3, :cond_0

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v14, :cond_0

    .line 1225
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1227
    .local v12, "on":Z
    if-eqz v3, :cond_5

    const/16 v14, 0x15

    if-lt v13, v14, :cond_5

    .line 1229
    const/4 v8, 0x0

    .line 1230
    const/4 v10, 0x0

    .line 1232
    .local v10, "mth":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v14, "android.telephony.TelephonyManager"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1233
    .local v4, "cls":Ljava/lang/Class;
    const-string v14, "setDataEnabled"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v4, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1234
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    .end local v4    # "cls":Ljava/lang/Class;
    :goto_1
    if-eqz v10, :cond_5

    if-nez v8, :cond_5

    .line 1246
    :try_start_1
    const-string v14, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 1247
    .local v9, "mgr":Landroid/telephony/TelephonyManager;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1248
    const/4 v3, 0x0

    .line 1255
    .end local v9    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v10    # "mth":Ljava/lang/reflect/Method;
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    const/16 v14, 0x15

    if-lt v13, v14, :cond_6

    .line 1257
    const/4 v8, 0x0

    .line 1258
    const/4 v10, 0x0

    .line 1259
    .restart local v10    # "mth":Ljava/lang/reflect/Method;
    if-eqz v12, :cond_7

    const-string v11, "enableDataConnectivity"

    .line 1261
    .local v11, "nameMethod":Ljava/lang/String;
    :goto_3
    :try_start_2
    const-string v14, "android.telephony.TelephonyManager"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1262
    .restart local v4    # "cls":Ljava/lang/Class;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v4, v11, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1263
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1267
    .end local v4    # "cls":Ljava/lang/Class;
    :goto_4
    if-eqz v10, :cond_6

    if-nez v8, :cond_6

    .line 1275
    :try_start_3
    const-string v14, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 1276
    .restart local v9    # "mgr":Landroid/telephony/TelephonyManager;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v10, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1277
    const/4 v3, 0x0

    .line 1284
    .end local v9    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v10    # "mth":Ljava/lang/reflect/Method;
    .end local v11    # "nameMethod":Ljava/lang/String;
    :cond_6
    :goto_5
    if-eqz v3, :cond_0

    const/16 v14, 0x8

    if-lt v13, v14, :cond_0

    .line 1285
    const/4 v8, 0x0

    .line 1286
    const/4 v10, 0x0

    .line 1288
    .restart local v10    # "mth":Ljava/lang/reflect/Method;
    :try_start_4
    const-string v14, "android.net.ConnectivityManager"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1289
    .restart local v4    # "cls":Ljava/lang/Class;
    const-string v14, "setMobileDataEnabled"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v4, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1290
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1300
    .end local v4    # "cls":Ljava/lang/Class;
    :goto_6
    if-eqz v10, :cond_0

    if-nez v8, :cond_0

    .line 1302
    :try_start_5
    const-string v14, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 1303
    .local v9, "mgr":Landroid/net/ConnectivityManager;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1304
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1235
    .end local v9    # "mgr":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v7

    .line 1236
    .local v7, "exReflect":Ljava/lang/Throwable;
    move-object v8, v7

    goto/16 :goto_1

    .line 1249
    .end local v7    # "exReflect":Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    .line 1250
    .local v5, "exExecute":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto :goto_2

    .line 1259
    .end local v5    # "exExecute":Ljava/lang/Throwable;
    :cond_7
    const-string v11, "disableDataConnectivity"

    goto :goto_3

    .line 1264
    .restart local v11    # "nameMethod":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 1265
    .restart local v7    # "exReflect":Ljava/lang/Throwable;
    move-object v8, v7

    goto :goto_4

    .line 1278
    .end local v7    # "exReflect":Ljava/lang/Throwable;
    :catch_3
    move-exception v5

    .line 1279
    .restart local v5    # "exExecute":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto :goto_5

    .line 1291
    .end local v5    # "exExecute":Ljava/lang/Throwable;
    .end local v11    # "nameMethod":Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 1292
    .restart local v7    # "exReflect":Ljava/lang/Throwable;
    move-object v8, v7

    goto :goto_6

    .line 1305
    .end local v7    # "exReflect":Ljava/lang/Throwable;
    :catch_5
    move-exception v5

    .line 1306
    .restart local v5    # "exExecute":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto/16 :goto_0

    .line 1322
    .end local v5    # "exExecute":Ljava/lang/Throwable;
    .end local v10    # "mth":Ljava/lang/reflect/Method;
    .end local v12    # "on":Z
    :cond_8
    return-void
.end method

.method public static setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 46
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .param p3, "value"    # [Ljava/lang/Object;
    .param p4, "privilege"    # Ljava/lang/String;

    .prologue
    .line 3349
    const/16 v19, 0x0

    .line 3350
    .local v19, "exception":Ljava/lang/Throwable;
    if-eqz p0, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_2

    .line 3351
    :cond_0
    new-instance v19, Ljava/lang/IllegalArgumentException;

    .end local v19    # "exception":Ljava/lang/Throwable;
    const-string v42, "set invalid value to HTC"

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3623
    .restart local v19    # "exception":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-object v19

    .line 3354
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->isFrameworkSourceCode()Z

    move-result v36

    .line 3355
    .local v36, "srcInFramework":Z
    const/16 v30, 0x0

    .line 3357
    .local v30, "sbDebug":Ljava/lang/StringBuilder;
    if-nez v36, :cond_5

    .line 3364
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getFrameworkClassName()Ljava/lang/String;

    move-result-object v20

    .line 3365
    .local v20, "fwMobileNetwork":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 3367
    .local v6, "cls":Ljava/lang/Class;
    const-string v42, "$Selection"

    move-object/from16 v0, v20

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 3368
    .local v7, "clsSelection":Ljava/lang/Class;
    const/16 v29, 0x0

    .line 3369
    .local v29, "ojbSlotNphone":Ljava/lang/Object;
    if-eqz p1, :cond_3

    .line 3370
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const-class v44, Ljava/lang/Object;

    aput-object v44, v42, v43

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 3371
    .local v10, "cnstrSelection":Ljava/lang/reflect/Constructor;
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/MobileNetwork;->objectToFramework(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 3374
    .end local v10    # "cnstrSelection":Ljava/lang/reflect/Constructor;
    .end local v29    # "ojbSlotNphone":Ljava/lang/Object;
    :cond_3
    const/16 v40, 0x0

    .line 3375
    .local v40, "valueArray":[Ljava/lang/Object;
    if-eqz p3, :cond_16

    .line 3376
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 3377
    .local v31, "sbFwMobileNetworkSetting":Ljava/lang/StringBuilder;
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3378
    const-string v42, "dataPath"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_4

    .line 3379
    const-string v42, "$Selection"

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3384
    :goto_1
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 3385
    .local v8, "clsValue":Ljava/lang/Class;
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v42, v0

    move/from16 v0, v42

    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, [Ljava/lang/Object;

    move-object/from16 v0, v42

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    .line 3386
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v42, v0

    move/from16 v0, v23

    move/from16 v1, v42

    if-ge v0, v1, :cond_16

    .line 3387
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const-class v44, Ljava/lang/Object;

    aput-object v44, v42, v43

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 3388
    .local v9, "cnstr":Ljava/lang/reflect/Constructor;
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aget-object v44, p3, v23

    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/MobileNetwork;->objectToFramework(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, v42

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    aput-object v42, v40, v23

    .line 3386
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 3382
    .end local v8    # "clsValue":Ljava/lang/Class;
    .end local v9    # "cnstr":Ljava/lang/reflect/Constructor;
    .end local v23    # "i":I
    :cond_4
    const-string v42, "$Setting"

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3396
    .end local v6    # "cls":Ljava/lang/Class;
    .end local v7    # "clsSelection":Ljava/lang/Class;
    .end local v19    # "exception":Ljava/lang/Throwable;
    .end local v20    # "fwMobileNetwork":Ljava/lang/String;
    .end local v31    # "sbFwMobileNetworkSetting":Ljava/lang/StringBuilder;
    .end local v40    # "valueArray":[Ljava/lang/Object;
    :catch_0
    move-exception v17

    .line 3397
    .local v17, "exRedirect":Ljava/lang/Throwable;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v19

    .line 3403
    .end local v17    # "exRedirect":Ljava/lang/Throwable;
    .restart local v19    # "exception":Ljava/lang/Throwable;
    :cond_5
    :goto_3
    if-eqz v36, :cond_25

    .line 3404
    const/16 v22, 0x0

    .line 3406
    .local v22, "htcUri":Landroid/net/Uri;
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork;->getHtcMobileNetwork(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v21

    .line 3407
    .local v21, "htcInterface":Landroid/net/Uri$Builder;
    if-eqz v21, :cond_6

    .line 3408
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v22

    .line 3416
    .end local v21    # "htcInterface":Landroid/net/Uri$Builder;
    :cond_6
    :goto_4
    const/4 v13, 0x0

    .line 3417
    .local v13, "exEachTry":Ljava/lang/Throwable;
    const/16 v25, 0x0

    .line 3418
    .local v25, "indexRetry":I
    if-nez p4, :cond_17

    const/16 v27, 0x1

    .line 3419
    .local v27, "maxRetry":I
    :goto_5
    move/from16 v0, v25

    move/from16 v1, v27

    if-gt v0, v1, :cond_24

    .line 3420
    move-object/from16 v13, v19

    .line 3421
    const/16 v21, 0x0

    .line 3422
    .restart local v21    # "htcInterface":Landroid/net/Uri$Builder;
    const/4 v5, 0x0

    .line 3423
    .local v5, "client":Landroid/content/ContentProviderClient;
    if-eqz v22, :cond_8

    .line 3424
    const/4 v11, 0x0

    .line 3426
    .local v11, "cr":Landroid/content/ContentResolver;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 3427
    if-eqz v11, :cond_18

    .line 3428
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    .line 3429
    if-nez v5, :cond_7

    .line 3430
    new-instance v14, Ljava/lang/UnsupportedOperationException;

    const-string v42, "alloc ucpc"

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-direct {v14, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .end local v13    # "exEachTry":Ljava/lang/Throwable;
    .local v14, "exEachTry":Ljava/lang/Throwable;
    move-object v13, v14

    .line 3442
    .end local v14    # "exEachTry":Ljava/lang/Throwable;
    .restart local v13    # "exEachTry":Ljava/lang/Throwable;
    :cond_7
    :goto_6
    new-instance v21, Landroid/net/Uri$Builder;

    .end local v21    # "htcInterface":Landroid/net/Uri$Builder;
    invoke-direct/range {v21 .. v21}, Landroid/net/Uri$Builder;-><init>()V

    .line 3443
    .restart local v21    # "htcInterface":Landroid/net/Uri$Builder;
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3444
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3445
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3468
    .end local v11    # "cr":Landroid/content/ContentResolver;
    :cond_8
    if-eqz v5, :cond_20

    .line 3469
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 3470
    .local v41, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getUserID()Ljava/lang/Long;

    move-result-object v39

    .line 3486
    .local v39, "userId":Ljava/lang/Long;
    if-eqz p1, :cond_a

    .line 3487
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v42, v0

    if-eqz v42, :cond_9

    .line 3488
    const-string v42, "slot"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v43, v0

    invoke-virtual/range {v41 .. v43}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3490
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v42, v0

    if-eqz v42, :cond_a

    .line 3491
    const-string v42, "phoneType"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v41 .. v43}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3494
    :cond_a
    if-eqz v39, :cond_b

    .line 3495
    const-string v42, "user"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3497
    :cond_b
    const-string v42, "dataPath"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_1b

    .line 3498
    if-eqz p3, :cond_e

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v42, v0

    if-lez v42, :cond_e

    .line 3499
    move-object/from16 v0, p3

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v42, v0

    check-cast v42, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    const/16 v43, 0x0

    aget-object v12, v42, v43

    .line 3500
    .local v12, "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    if-eqz v12, :cond_e

    .line 3501
    if-eqz v30, :cond_c

    if-gtz v25, :cond_c

    .line 3502
    const-string v42, " into ["

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3503
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v42, v0

    if-eqz v42, :cond_19

    .line 3504
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v42, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3509
    :goto_7
    const/16 v42, 0x3a

    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3510
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1a

    .line 3511
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v42, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3516
    :goto_8
    const/16 v42, 0x5d

    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3518
    :cond_c
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v42, v0

    if-eqz v42, :cond_d

    .line 3519
    const-string v42, "slot"

    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v43, v0

    invoke-virtual/range {v41 .. v43}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3521
    :cond_d
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v42, v0

    if-eqz v42, :cond_e

    .line 3522
    const-string v42, "phoneType"

    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v41 .. v43}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3561
    .end local v12    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_e
    :goto_9
    if-eqz p4, :cond_10

    .line 3562
    if-eqz v30, :cond_f

    if-gtz v25, :cond_f

    .line 3563
    const-string v42, " by["

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3564
    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3565
    const/16 v42, 0x5d

    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3567
    :cond_f
    const-string v42, "privilege"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3570
    :cond_10
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v42

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    move-object/from16 v2, v43

    move-object/from16 v3, v44

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v38

    .line 3571
    .local v38, "updated":I
    if-gtz v38, :cond_11

    .line 3572
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    .line 3573
    .local v35, "sbWrite":Ljava/lang/StringBuilder;
    const-string v42, "update value ["

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3574
    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3575
    const-string v42, "] to HTC"

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3576
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    .end local v13    # "exEachTry":Ljava/lang/Throwable;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-direct {v13, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 3582
    .end local v35    # "sbWrite":Ljava/lang/StringBuilder;
    .end local v38    # "updated":I
    .restart local v13    # "exEachTry":Ljava/lang/Throwable;
    :cond_11
    :goto_a
    :try_start_4
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 3593
    .end local v39    # "userId":Ljava/lang/Long;
    .end local v41    # "values":Landroid/content/ContentValues;
    :cond_12
    :goto_b
    const/16 v37, 0x0

    .line 3594
    .local v37, "tryToRetry":Z
    if-eqz v13, :cond_14

    .line 3595
    instance-of v0, v13, Landroid/os/DeadObjectException;

    move/from16 v42, v0

    if-nez v42, :cond_13

    instance-of v0, v13, Landroid/os/TransactionTooLargeException;

    move/from16 v42, v0

    if-eqz v42, :cond_21

    .line 3597
    :cond_13
    const/16 v37, 0x1

    .line 3603
    :cond_14
    :goto_c
    if-eqz v37, :cond_23

    .line 3604
    if-eqz v30, :cond_15

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_15

    .line 3605
    const-string v42, "LibMobileNetwork"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-static {v0, v1, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3608
    :cond_15
    :try_start_5
    sget-object v42, Lcom/android/internal/telephony/MobileNetwork;->HTC_CP_UPDATE_RETRY_DELAY_MS:[J

    aget-wide v42, v42, v25

    invoke-static/range {v42 .. v43}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 3610
    :goto_d
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_5

    .line 3392
    .end local v5    # "client":Landroid/content/ContentProviderClient;
    .end local v13    # "exEachTry":Ljava/lang/Throwable;
    .end local v21    # "htcInterface":Landroid/net/Uri$Builder;
    .end local v22    # "htcUri":Landroid/net/Uri;
    .end local v25    # "indexRetry":I
    .end local v27    # "maxRetry":I
    .end local v37    # "tryToRetry":Z
    .restart local v6    # "cls":Ljava/lang/Class;
    .restart local v7    # "clsSelection":Ljava/lang/Class;
    .restart local v20    # "fwMobileNetwork":Ljava/lang/String;
    .restart local v40    # "valueArray":[Ljava/lang/Object;
    :cond_16
    :try_start_6
    const-string v42, "setValue"

    const/16 v43, 0x5

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-class v45, Landroid/content/Context;

    aput-object v45, v43, v44

    const/16 v44, 0x1

    aput-object v7, v43, v44

    const/16 v44, 0x2

    const-class v45, Ljava/lang/String;

    aput-object v45, v43, v44

    const/16 v44, 0x3

    const-class v45, [Ljava/lang/Object;

    aput-object v45, v43, v44

    const/16 v44, 0x4

    const-class v45, Ljava/lang/String;

    aput-object v45, v43, v44

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v28

    .line 3394
    .local v28, "mth":Ljava/lang/reflect/Method;
    const/16 v42, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3395
    const/16 v42, 0x0

    const/16 v43, 0x5

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aput-object p0, v43, v44

    const/16 v44, 0x1

    aput-object v29, v43, v44

    const/16 v44, 0x2

    aput-object p2, v43, v44

    const/16 v44, 0x3

    aput-object v40, v43, v44

    const/16 v44, 0x4

    aput-object p4, v43, v44

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "exception":Ljava/lang/Throwable;
    check-cast v19, Ljava/lang/Throwable;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .restart local v19    # "exception":Ljava/lang/Throwable;
    goto/16 :goto_3

    .line 3410
    .end local v6    # "cls":Ljava/lang/Class;
    .end local v7    # "clsSelection":Ljava/lang/Class;
    .end local v20    # "fwMobileNetwork":Ljava/lang/String;
    .end local v28    # "mth":Ljava/lang/reflect/Method;
    .end local v40    # "valueArray":[Ljava/lang/Object;
    .restart local v22    # "htcUri":Landroid/net/Uri;
    :catch_1
    move-exception v15

    .line 3411
    .local v15, "exHtcInterface":Ljava/lang/Throwable;
    if-nez v19, :cond_6

    .line 3412
    move-object/from16 v19, v15

    goto/16 :goto_4

    .line 3418
    .end local v15    # "exHtcInterface":Ljava/lang/Throwable;
    .restart local v13    # "exEachTry":Ljava/lang/Throwable;
    .restart local v25    # "indexRetry":I
    :cond_17
    sget-object v42, Lcom/android/internal/telephony/MobileNetwork;->HTC_CP_UPDATE_RETRY_DELAY_MS:[J

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v27, v0

    goto/16 :goto_5

    .line 3433
    .restart local v5    # "client":Landroid/content/ContentProviderClient;
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    .restart local v21    # "htcInterface":Landroid/net/Uri$Builder;
    .restart local v27    # "maxRetry":I
    :cond_18
    if-nez v13, :cond_7

    .line 3434
    :try_start_7
    new-instance v14, Ljava/lang/UnsupportedOperationException;

    const-string v42, "access cr"

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-direct {v14, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .end local v13    # "exEachTry":Ljava/lang/Throwable;
    .restart local v14    # "exEachTry":Ljava/lang/Throwable;
    move-object v13, v14

    .end local v14    # "exEachTry":Ljava/lang/Throwable;
    .restart local v13    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_6

    .line 3436
    :catch_2
    move-exception v16

    .line 3437
    .local v16, "exProviderClient":Ljava/lang/Throwable;
    if-nez v13, :cond_7

    .line 3438
    move-object/from16 v13, v16

    goto/16 :goto_6

    .line 3507
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v16    # "exProviderClient":Ljava/lang/Throwable;
    .restart local v12    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .restart local v39    # "userId":Ljava/lang/Long;
    .restart local v41    # "values":Landroid/content/ContentValues;
    :cond_19
    const/16 v42, 0x2d

    :try_start_8
    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 3578
    .end local v12    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .end local v13    # "exEachTry":Ljava/lang/Throwable;
    :catch_3
    move-exception v18

    .line 3579
    .local v18, "exUpdate":Ljava/lang/Throwable;
    move-object/from16 v13, v18

    .restart local v13    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_a

    .line 3514
    .end local v18    # "exUpdate":Ljava/lang/Throwable;
    .restart local v12    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_1a
    const/16 v42, 0x2d

    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 3528
    .end local v12    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_1b
    if-eqz p3, :cond_1f

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v42, v0

    if-lez v42, :cond_1f

    .line 3529
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    .line 3530
    .local v34, "sbValue":Ljava/lang/StringBuilder;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 3531
    .local v32, "sbGrayout":Ljava/lang/StringBuilder;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 3532
    .local v33, "sbHide":Ljava/lang/StringBuilder;
    move-object/from16 v0, p3

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object v4, v0

    .local v4, "arr$":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    array-length v0, v4

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v24, 0x0

    .local v24, "i$":I
    :goto_e
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_1d

    aget-object v12, v4, v24

    .line 3533
    .local v12, "eachValue":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz v12, :cond_1c

    .line 3534
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v42

    move-object/from16 v0, v34

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3535
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v42

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3536
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v42

    move-object/from16 v0, v33

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3532
    :goto_f
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 3539
    :cond_1c
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v42

    move-object/from16 v0, v34

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3540
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v42

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3541
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v42

    move-object/from16 v0, v33

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 3544
    .end local v12    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_1d
    if-eqz v30, :cond_1e

    if-gtz v25, :cond_1e

    .line 3545
    const-string v42, " into ["

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3546
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3547
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3548
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3549
    const/16 v42, 0x5d

    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3551
    :cond_1e
    const-string v42, "value"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v41 .. v43}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3552
    const-string v42, "uiGrayOut"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v41 .. v43}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    const-string v42, "uiHide"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v41 .. v43}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 3556
    .end local v4    # "arr$":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v24    # "i$":I
    .end local v26    # "len$":I
    .end local v32    # "sbGrayout":Ljava/lang/StringBuilder;
    .end local v33    # "sbHide":Ljava/lang/StringBuilder;
    .end local v34    # "sbValue":Ljava/lang/StringBuilder;
    :cond_1f
    const-string v42, "value"

    invoke-virtual/range {v41 .. v42}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3557
    const-string v42, "uiGrayOut"

    invoke-virtual/range {v41 .. v42}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3558
    const-string v42, "uiHide"

    invoke-virtual/range {v41 .. v42}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_9

    .line 3585
    .end local v39    # "userId":Ljava/lang/Long;
    .end local v41    # "values":Landroid/content/ContentValues;
    :cond_20
    if-nez v13, :cond_12

    .line 3586
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    .line 3587
    .restart local v35    # "sbWrite":Ljava/lang/StringBuilder;
    const-string v42, "set value ["

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3588
    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3589
    const-string v42, "] to HTC"

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3590
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    .end local v13    # "exEachTry":Ljava/lang/Throwable;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-direct {v13, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .restart local v13    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_b

    .line 3600
    .end local v35    # "sbWrite":Ljava/lang/StringBuilder;
    .restart local v37    # "tryToRetry":Z
    :cond_21
    if-nez v5, :cond_22

    if-lez v25, :cond_22

    const/16 v37, 0x1

    :goto_10
    goto/16 :goto_c

    :cond_22
    const/16 v37, 0x0

    goto :goto_10

    .line 3613
    :cond_23
    add-int/lit8 v25, v27, 0x1

    goto/16 :goto_5

    .line 3616
    .end local v5    # "client":Landroid/content/ContentProviderClient;
    .end local v21    # "htcInterface":Landroid/net/Uri$Builder;
    .end local v37    # "tryToRetry":Z
    :cond_24
    move-object/from16 v19, v13

    .line 3619
    .end local v13    # "exEachTry":Ljava/lang/Throwable;
    .end local v22    # "htcUri":Landroid/net/Uri;
    .end local v25    # "indexRetry":I
    .end local v27    # "maxRetry":I
    :cond_25
    if-eqz v30, :cond_1

    .line 3620
    const-string v42, "LibMobileNetwork"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3583
    .restart local v5    # "client":Landroid/content/ContentProviderClient;
    .restart local v13    # "exEachTry":Ljava/lang/Throwable;
    .restart local v21    # "htcInterface":Landroid/net/Uri$Builder;
    .restart local v22    # "htcUri":Landroid/net/Uri;
    .restart local v25    # "indexRetry":I
    .restart local v27    # "maxRetry":I
    .restart local v39    # "userId":Ljava/lang/Long;
    .restart local v41    # "values":Landroid/content/ContentValues;
    :catch_4
    move-exception v42

    goto/16 :goto_b

    .line 3609
    .end local v39    # "userId":Ljava/lang/Long;
    .end local v41    # "values":Landroid/content/ContentValues;
    .restart local v37    # "tryToRetry":Z
    :catch_5
    move-exception v42

    goto/16 :goto_d
.end method
