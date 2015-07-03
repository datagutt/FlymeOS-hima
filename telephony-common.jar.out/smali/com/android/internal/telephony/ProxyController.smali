.class public Lcom/android/internal/telephony/ProxyController;
.super Ljava/lang/Object;
.source "ProxyController.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ProxyController"

.field private static mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

.field private static sProxyController:Lcom/android/internal/telephony/ProxyController;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

.field private mProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

.field private mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "Constructor - Enter"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 96
    iput-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 97
    iput-object p4, p0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 99
    check-cast p2, [Lcom/android/internal/telephony/PhoneProxy;

    .end local p2    # "phoneProxy":[Lcom/android/internal/telephony/Phone;
    check-cast p2, [Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DctController;->makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/UiccPhoneBookController;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/UiccPhoneBookController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfoController;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/UiccSmsController;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/UiccSmsController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;

    .line 105
    const-string v0, "Constructor - Exit"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/ProxyController;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 80
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/android/internal/telephony/ProxyController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/ProxyController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 83
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v0, "ProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method


# virtual methods
.method public disableDataConnectivity(ILandroid/os/Message;)V
    .locals 2
    .param p1, "sub"    # I
    .param p2, "dataCleanedUpMsg"    # Landroid/os/Message;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 119
    return-void
.end method

.method public enableDataConnectivity(I)V
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(Z)V

    .line 114
    return-void
.end method

.method public getAllDeviceInfo()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "slot1_imei"

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getGenericIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "slot1_meid"

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getGenericMEID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v3

    if-eqz v1, :cond_1

    .line 164
    const-string v1, "slot2_imei"

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getGenericIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "slot2_meid"

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getGenericMEID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    return-object v0
.end method

.method public getAllIMSI()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 173
    const-string v1, "ProxyController"

    const-string v2, "Angela getAllIMSI"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v4

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    const-string v2, "slot1_gsm_imsi"

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v4

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getGsmIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v2, "slot1_cdma_imsi"

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v4

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getCdmaIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v3

    if-eqz v1, :cond_1

    .line 181
    const-string v2, "slot2_gsm_imsi"

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v3

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getGsmIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v2, "slot2_cdma_imsi"

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v3

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getCdmaIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1
    return-object v0
.end method

.method public isDataDisconnected(J)Z
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 142
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v1

    .line 144
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 146
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v2

    .line 148
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerForAllDataDisconnected(JLandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "subId"    # J
    .param p3, "h"    # Landroid/os/Handler;
    .param p4, "what"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .prologue
    .line 126
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v0

    .line 128
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1, p3, p4, p5}, Lcom/android/internal/telephony/PhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 131
    :cond_0
    return-void
.end method

.method public unregisterForAllDataDisconnected(JLandroid/os/Handler;)V
    .locals 3
    .param p1, "subId"    # J
    .param p3, "h"    # Landroid/os/Handler;

    .prologue
    .line 134
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v0

    .line 136
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 139
    :cond_0
    return-void
.end method

.method public updateCurrentCarrierInProvider(I)V
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateCurrentCarrierInProvider()Z

    .line 123
    return-void
.end method

.method public updateDataConnectionTracker(I)V
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    .line 110
    return-void
.end method
