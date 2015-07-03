.class public Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;
.super Landroid/os/Handler;
.source "HtcCdmaOperatorName.java"


# static fields
.field public static final Customize_MCCMNC:Ljava/lang/String; = "40400"

.field private static final DBG_DETAIL:Z

.field private static final EVENT_FIND_DUAL_MODE_INTENT:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field public static final SPN_TATA:Ljava/lang/String; = "TATA DOCOMO"


# instance fields
.field private banner_Eri:Ljava/lang/String;

.field private banner_Plmn:Ljava/lang/String;

.field private banner_Spn:Ljava/lang/String;

.field private banner_lastTime:Ljava/lang/String;

.field private date_Eri:Ljava/util/Date;

.field private display_Eri:Ljava/lang/Integer;

.field private display_lastTime:Ljava/lang/Integer;

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mDualPhoneIntentExtra:Ljava/lang/String;

.field private service_lastTime:Ljava/lang/Integer;

.field private show_Plmn:Ljava/lang/Boolean;

.field private show_Spn:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->DBG_DETAIL:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 1
    .param p1, "p"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 52
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->sendEmptyMessage(I)Z

    .line 53
    return-void
.end method

.method private forceOperatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "originalOperatorName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 178
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    .line 181
    const-string v3, "persist.cdmafake.opname"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "fakeOpName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 183
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "fakeItems":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 185
    aget-object v3, v0, v5

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    aget-object v2, v0, v6

    .line 204
    .end local v0    # "fakeItems":[Ljava/lang/String;
    .end local v1    # "fakeOpName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 194
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    const-string v4, "sku_id"

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_2

    .line 196
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingIndicator()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 198
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x3070154

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "newOperatorName":Ljava/lang/String;
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->DBG_DETAIL:Z

    if-eqz v3, :cond_0

    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "customize OperatorName for KDDI in roaming:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "newOperatorName":Ljava/lang/String;
    :cond_2
    move-object v2, p1

    .line 204
    goto :goto_0
.end method

.method public static getCtMvnoOperatorName(Lcom/android/internal/telephony/uicc/IccRecords;Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 4
    .param p0, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "value":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->isChinaMVNOSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCombinedRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v1

    if-nez v1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 508
    :cond_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCtMvnoOperatorName, ss: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-object v0
.end method

.method public static getCustomizeSPNString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;
    .locals 4
    .param p0, "operatorNumeric"    # Ljava/lang/String;
    .param p1, "cdmasst"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "value":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v1, "40400"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x21

    if-ne v1, v2, :cond_0

    .line 467
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getIndiaHomeOperatorName(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomizeSPNString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-object v0
.end method

.method public static getIndiaHomeOperatorName(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;
    .locals 4
    .param p0, "cdmasst"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    .line 488
    const-string v1, "gsm.sim.operator.alpha"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "TATA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    const-string v0, "TATA DOCOMO"

    .line 494
    :cond_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIndiaHomeOperatorName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-object v0
.end method

.method private notifyOperatorNameUpdate(ZLjava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "forceUpdate"    # Z
    .param p2, "logTag"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v12, 0x0

    .line 262
    move v1, p1

    .line 264
    .local v1, "displayChanged":Z
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    .line 266
    .local v6, "ss":Landroid/telephony/ServiceState;
    if-nez v6, :cond_a

    move v5, v7

    .line 269
    .local v5, "serviceStatus":I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->service_lastTime:Ljava/lang/Integer;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->service_lastTime:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v5, :cond_1

    .line 270
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->service_lastTime:Ljava/lang/Integer;

    .line 271
    const/4 v1, 0x1

    .line 274
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    if-eqz v9, :cond_3

    .line 275
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_lastTime:Ljava/lang/Integer;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_lastTime:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 277
    :cond_2
    const/4 v1, 0x1

    .line 281
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "opName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_lastTime:Ljava/lang/String;

    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 283
    const/4 v1, 0x1

    .line 286
    :cond_4
    sget-boolean v9, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->DBG_DETAIL:Z

    if-eqz v9, :cond_5

    .line 287
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " N-check - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->service_lastTime:Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_lastTime:Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_5
    if-eqz v1, :cond_9

    .line 292
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "networkState"

    invoke-virtual {v2, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v9

    invoke-static {v2, v9}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 297
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDualPhoneIntentExtra:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 298
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDualPhoneIntentExtra:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    :cond_6
    if-nez p1, :cond_7

    if-nez v5, :cond_e

    .line 302
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getOperatorInfo()Lcom/android/internal/telephony/gsm/OperatorInfo;

    move-result-object v3

    .line 303
    .local v3, "opInfo":Lcom/android/internal/telephony/gsm/OperatorInfo;
    const-string v8, "showSpn"

    iget-boolean v9, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 304
    iget-boolean v8, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-eqz v8, :cond_b

    .line 305
    const-string v8, "spn"

    iget-object v9, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    :goto_1
    const-string v8, "showPlmn"

    iget-boolean v9, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    iget-boolean v8, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-eqz v8, :cond_c

    .line 312
    const-string v8, "plmn"

    iget-object v9, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->forceOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_8

    .line 318
    const-string v8, "flashPlmn"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    :cond_8
    const-string v8, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " N-update - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Eri:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->date_Eri:Ljava/util/Date;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Plmn:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Spn:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "REAL"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->forceOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingIndicator()I

    move-result v7

    :goto_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_lastTime:Ljava/lang/String;

    .line 331
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_lastTime:Ljava/lang/Integer;

    .line 332
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 352
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "opInfo":Lcom/android/internal/telephony/gsm/OperatorInfo;
    :cond_9
    :goto_4
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_lastTime:Ljava/lang/String;

    return-object v7

    .line 266
    .end local v4    # "opName":Ljava/lang/String;
    .end local v5    # "serviceStatus":I
    :cond_a
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v5

    goto/16 :goto_0

    .line 308
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "opInfo":Lcom/android/internal/telephony/gsm/OperatorInfo;
    .restart local v4    # "opName":Ljava/lang/String;
    .restart local v5    # "serviceStatus":I
    :cond_b
    const-string v8, "spn"

    iget-object v9, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->forceOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 315
    :cond_c
    const-string v8, "plmn"

    iget-object v9, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 320
    :cond_d
    const/4 v7, -0x1

    goto :goto_3

    .line 336
    .end local v3    # "opInfo":Lcom/android/internal/telephony/gsm/OperatorInfo;
    :cond_e
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "airplane_mode_on"

    invoke-static {v7, v9, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 340
    .local v0, "airplaneMode":I
    const/4 v7, 0x3

    if-ne v5, v7, :cond_f

    if-eqz v0, :cond_9

    .line 342
    :cond_f
    const-string v7, "showSpn"

    invoke-virtual {v2, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    const-string v9, "spn"

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v7, "showPlmn"

    invoke-virtual {v2, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    const-string v9, "plmn"

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v7, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " N-update - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_lastTime:Ljava/lang/String;

    .line 348
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public getOperatorInfo()Lcom/android/internal/telephony/gsm/OperatorInfo;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    new-instance v0, Lcom/android/internal/telephony/gsm/OperatorInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/OperatorInfo;-><init>()V

    .line 234
    .local v0, "operatorInfo":Lcom/android/internal/telephony/gsm/OperatorInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 235
    .local v1, "ss":Landroid/telephony/ServiceState;
    if-nez v1, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    .line 236
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Eri:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 237
    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    .line 238
    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    .line 239
    const-string v2, ""

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    .line 240
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Eri:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->forceOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    .line 254
    :goto_1
    return-object v0

    .line 235
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    .line 243
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_2
    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    .line 244
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    .line 245
    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-eqz v2, :cond_5

    .line 246
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Spn:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    .line 247
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Plmn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->forceOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v2, v3

    .line 243
    goto :goto_2

    :cond_4
    move v4, v3

    .line 244
    goto :goto_3

    .line 250
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Spn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->forceOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    .line 251
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Plmn:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    goto :goto_1
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    const-string v0, ""

    .line 212
    .local v0, "opName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Eri:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Eri:Ljava/lang/String;

    .line 226
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->forceOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Plmn:Ljava/lang/String;

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Plmn:Ljava/lang/String;

    goto :goto_0

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Spn:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 366
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 421
    :pswitch_0
    const/high16 v3, 0x40000000    # 2.0f

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 425
    :try_start_0
    const-string v3, "android.provider.Telephony$Intents"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 426
    .local v0, "cls":Ljava/lang/Class;
    const-string v3, "EXTRA_PHONE_TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 427
    .local v2, "fld":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 428
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDualPhoneIntentExtra:Ljava/lang/String;

    .line 429
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dual extra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDualPhoneIntentExtra:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "fld":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 432
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dual extra ex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDualPhoneIntentExtra:Ljava/lang/String;

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public updateFromEri(Ljava/util/Date;Ljava/lang/String;I)V
    .locals 3
    .param p1, "timeStamp"    # Ljava/util/Date;
    .param p2, "banner"    # Ljava/lang/String;
    .param p3, "displayType"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "updated":Z
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->date_Eri:Ljava/util/Date;

    .line 87
    if-eqz p2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Eri:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Eri:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p3, :cond_2

    .line 94
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    .line 95
    const/4 v0, 0x1

    .line 97
    :cond_2
    if-eqz v0, :cond_3

    .line 98
    const/4 v1, 0x0

    const-string v2, "ERI"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->notifyOperatorNameUpdate(ZLjava/lang/String;)Ljava/lang/String;

    .line 105
    :cond_3
    return-void
.end method

.method public updateFromRuim(Ljava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "showPlmn"    # Z
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "showSpn"    # Z

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "currOpName":Ljava/lang/String;
    return-object v0
.end method

.method public updateFromServiceState(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "showPlmn"    # Z
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "showSpn"    # Z
    .param p5, "forceUpdate"    # Z
    .param p6, "logTag"    # Ljava/lang/String;

    .prologue
    .line 117
    move v1, p5

    .line 119
    .local v1, "updated":Z
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Plmn:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Plmn:Ljava/lang/String;

    .line 121
    const/4 v1, 0x1

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, p2, :cond_2

    .line 124
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    .line 125
    const/4 v1, 0x1

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Spn:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 128
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Spn:Ljava/lang/String;

    .line 129
    const/4 v1, 0x1

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, p4, :cond_5

    .line 132
    :cond_4
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    .line 133
    const/4 v1, 0x1

    .line 135
    :cond_5
    const/4 v0, 0x0

    .line 136
    .local v0, "currOpName":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 137
    invoke-direct {p0, p5, p6}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->notifyOperatorNameUpdate(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    .line 140
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
