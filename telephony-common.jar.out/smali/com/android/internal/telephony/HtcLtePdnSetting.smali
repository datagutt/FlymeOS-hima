.class public Lcom/android/internal/telephony/HtcLtePdnSetting;
.super Landroid/os/Handler;
.source "HtcLtePdnSetting.java"


# static fields
.field private static final DEBUG_PDN_SETTING_INTERFACE:Z

.field private static final DEVELOPMENT_DEBUG:Z = false

.field private static final EVENT_HTC_GET_PDN_SETTING2:I = 0x6a

.field private static final EVENT_HTC_GET_PDN_SETTING2_CONT:I = 0x6b

.field private static final EVENT_HTC_GET_PDN_SETTING2_RESULT:I = 0x6c

.field private static final EVENT_HTC_SET_PDN_SETTING2:I = 0x6d

.field private static final EVENT_HTC_SET_PDN_SETTING2_RESULT:I = 0x6e

.field private static final EVENT_INTERNAL__DESTROY:I = 0x2

.field private static final EVENT_INTERNAL__INIT:I = 0x1

.field private static final FAKE_MODE_ERROR_PREFIX:Ljava/lang/String;

.field private static final FAKE_MODE_SUPPORT:Ljava/lang/Boolean;

.field private static final FAKE_MODE_SYSTEM_PROP:Ljava/lang/String;

.field private static final GET_APNPARAM_REQ_TYPE__DCT_BY_RAT:I = 0x1

.field private static final GET_APNPARAM_REQ_TYPE__DCT_COMBINE:I = 0x2

.field private static final GET_APNPARAM_REQ_TYPE__RIL:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "LtePdnIf"

.field private static final PDN_INDEX_LABLE:I = 0x2

.field private static final PDN_INDEX_NAME:I = 0x5

.field private static final PDN_INDEX_RAT:I = 0x1

.field private static final PDN_INDEX_TYPE:I = 0x6

.field private static final PDN_XML_DIR_PATH:Ljava/lang/String; = "/carrier/PDN/"

.field private static final PDN_XML_FILE_NAME:Ljava/lang/String; = "pdns.xml"

.field public static final RESTORE_CARRIERS_URI_CDMA:Landroid/net/Uri;

.field public static final RESTORE_CARRIERS_URI_GSM:Landroid/net/Uri;

.field private static final SET_APNPARAM_REQ_TYPE__DCT_BY_RAT:I = 0x1

.field private static final SET_APNPARAM_REQ_TYPE__DCT_COMBINE:I = 0x2

.field private static final SET_APNPARAM_REQ_TYPE__RIL:I = 0x3

.field private static final apnIpTypes:[Ljava/lang/String;

.field private static mName:[Ljava/lang/String;

.field private static final pdnIpTypes:[Ljava/lang/String;

.field private static final pdnLables_Att:[Ljava/lang/String;

.field private static final pdnLables_Spcs:[Ljava/lang/String;

.field private static final pdnLables_Vzw:[Ljava/lang/String;


# instance fields
.field private SUPPORT_RESET_PDN_SETTING_ASYNC_RESPONSE:Z

.field private mHtcTelephonyPhone:Lcom/android/internal/telephony/Phone;

.field private mPhonePxy:Lcom/android/internal/telephony/PhoneProxy;

.field private methodResetRadioForDisconnectingPdnResult_reg:Ljava/lang/reflect/Method;

.field private methodResetRadioForDisconnectingPdnResult_unreg:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    .line 622
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "IPv4"

    aput-object v1, v0, v3

    const-string v1, "IPv6"

    aput-object v1, v0, v4

    const-string v1, "IPv4v6"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    .line 1025
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "2"

    aput-object v1, v0, v4

    const-string v1, "3"

    aput-object v1, v0, v5

    const-string v1, "4"

    aput-object v1, v0, v6

    const-string v1, "5"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnLables_Vzw:[Ljava/lang/String;

    .line 1027
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "ota"

    aput-object v1, v0, v3

    const-string v1, "internet"

    aput-object v1, v0, v4

    const-string v1, "pam"

    aput-object v1, v0, v5

    const-string v1, "qchat"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnLables_Spcs:[Ljava/lang/String;

    .line 1029
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ims_att"

    aput-object v1, v0, v3

    const-string v1, "sos_att"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnLables_Att:[Ljava/lang/String;

    .line 1599
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_SUPPORT:Ljava/lang/Boolean;

    .line 1600
    sget-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_SUPPORT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.fakepdn.param"

    :goto_0
    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_SYSTEM_PROP:Ljava/lang/String;

    .line 1601
    sget-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_SUPPORT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "error:"

    :goto_1
    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_ERROR_PREFIX:Ljava/lang/String;

    .line 1793
    const-string v0, "content://gsmapn/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->RESTORE_CARRIERS_URI_GSM:Landroid/net/Uri;

    .line 1794
    const-string v0, "content://gsmapn/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->RESTORE_CARRIERS_URI_CDMA:Landroid/net/Uri;

    .line 1796
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "project"

    aput-object v1, v0, v3

    const-string v1, "rat"

    aput-object v1, v0, v4

    const-string v1, "pdn_label"

    aput-object v1, v0, v5

    const-string v1, "id"

    aput-object v1, v0, v6

    const-string v1, "state"

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "timer"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "authType"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "user"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pcscf_addr_via_pco"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pcscf_via_dhcp"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "is_pcscf_addr_needed"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "support_emergency_calls"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "apn_maxconn"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "apn_maxconn_t"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "wait_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->mName:[Ljava/lang/String;

    .line 2016
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "IP"

    aput-object v1, v0, v3

    const-string v1, "IPV6"

    aput-object v1, v0, v4

    const-string v1, "IPV4V6"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->apnIpTypes:[Ljava/lang/String;

    return-void

    .line 1600
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1601
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 449
    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->SUPPORT_RESET_PDN_SETTING_ASYNC_RESPONSE:Z

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->mHtcTelephonyPhone:Lcom/android/internal/telephony/Phone;

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->sendEmptyMessage(I)Z

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 1
    .param p1, "phonePxy"    # Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 449
    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->SUPPORT_RESET_PDN_SETTING_ASYNC_RESPONSE:Z

    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->mPhonePxy:Lcom/android/internal/telephony/PhoneProxy;

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->sendEmptyMessage(I)Z

    .line 72
    return-void
.end method

.method private destroy_handling()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 507
    iget-object v2, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->methodResetRadioForDisconnectingPdnResult_unreg:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 508
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getMMDataConnectionTrackerClass()Ljava/lang/Object;

    move-result-object v0

    .line 509
    .local v0, "cls":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 510
    .local v1, "mmdt":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 511
    instance-of v2, v1, Ljava/lang/Exception;

    if-nez v2, :cond_0

    .line 513
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->methodResetRadioForDisconnectingPdnResult_unreg:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :cond_0
    :goto_0
    iput-object v5, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->methodResetRadioForDisconnectingPdnResult_unreg:Ljava/lang/reflect/Method;

    .line 520
    .end local v0    # "cls":Ljava/lang/Object;
    .end local v1    # "mmdt":Ljava/lang/Object;
    :cond_1
    iput-object v5, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->methodResetRadioForDisconnectingPdnResult_reg:Ljava/lang/reflect/Method;

    .line 521
    return-void

    .line 514
    .restart local v0    # "cls":Ljava/lang/Object;
    .restart local v1    # "mmdt":Ljava/lang/Object;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private expandsQueryResults([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 12
    .param p1, "prevResults"    # [Ljava/lang/String;
    .param p2, "expandFields"    # I

    .prologue
    const/4 v11, 0x0

    .line 746
    const/4 v1, 0x0

    .line 747
    .local v1, "expandedResults":[Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v8, p1

    const/4 v9, 0x1

    if-gt v8, v9, :cond_2

    .line 748
    :cond_0
    add-int/lit8 v8, p2, 0x1

    new-array v1, v8, [Ljava/lang/String;

    .line 749
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v11

    .line 750
    if-eqz p1, :cond_1

    .line 751
    const-string v8, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN result overwrite : len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_1
    return-object v1

    .line 755
    :cond_2
    const/4 v5, 0x0

    .line 757
    .local v5, "prevItemsAdd":Ljava/lang/Integer;
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, p1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 762
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v8, p2, :cond_3

    .line 763
    array-length v8, p1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    new-array v1, v8, [Ljava/lang/String;

    .line 764
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    array-length v8, p1

    if-ge v2, v8, :cond_1

    .line 765
    aget-object v8, p1, v2

    aput-object v8, v1, v2

    .line 764
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 758
    .end local v2    # "index":I
    :catch_0
    move-exception v0

    .line 759
    .local v0, "ex":Ljava/lang/Exception;
    const-string v8, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p1, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "](exp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") result exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 769
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    const-string v8, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN result expand : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    div-int v7, v8, v9

    .line 771
    .local v7, "segments":I
    mul-int v8, v7, p2

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v8, p2

    new-array v1, v8, [Ljava/lang/String;

    .line 772
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v11

    .line 773
    const/4 v6, 0x0

    .local v6, "seg":I
    :goto_2
    if-ge v6, v7, :cond_1

    .line 774
    mul-int v8, v6, p2

    add-int/lit8 v3, v8, 0x1

    .line 775
    .local v3, "offsetExpanded":I
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/2addr v8, v6

    add-int/lit8 v4, v8, 0x1

    .line 776
    .local v4, "offsetPrevious":I
    const/4 v2, 0x0

    .restart local v2    # "index":I
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 777
    add-int v8, v3, v2

    add-int v9, v4, v2

    aget-object v9, p1, v9

    aput-object v9, v1, v8

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 773
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "mmdctClass"    # Ljava/lang/Object;

    .prologue
    .line 597
    move-object v0, p1

    .line 598
    .local v0, "mmdt":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 599
    instance-of v2, p1, Ljava/lang/Exception;

    if-nez v2, :cond_0

    .line 600
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPhoneInUse()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 601
    .local v1, "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_0

    .line 602
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .end local v1    # "targetPhone":Lcom/android/internal/telephony/Phone;
    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 606
    .end local v0    # "mmdt":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method private getMMDataConnectionTrackerClass()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 587
    const/4 v0, 0x0

    .line 589
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "com.android.internal.telephony.dataconnection.DcTracker"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 593
    :goto_0
    return-object v1

    .line 590
    :catch_0
    move-exception v1

    .line 591
    .local v1, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getPdnSettings2Cont_handling(IILandroid/os/AsyncResult;Landroid/os/Handler;)V
    .locals 13
    .param p1, "parameterFormat"    # I
    .param p2, "resultType"    # I
    .param p3, "ar"    # Landroid/os/AsyncResult;
    .param p4, "remainingHandling"    # Landroid/os/Handler;

    .prologue
    .line 1227
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v9

    .line 1228
    .local v9, "rilSupportingType":I
    if-ltz v9, :cond_1

    .line 1229
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    move-object v4, v10

    check-cast v4, [Ljava/lang/Object;

    .line 1230
    .local v4, "msgDataArray":[Ljava/lang/Object;
    const/4 v10, 0x1

    aget-object v10, v4, v10

    check-cast v10, Lcom/android/internal/telephony/dataconnection/APNParam;

    move-object v5, v10

    check-cast v5, Lcom/android/internal/telephony/dataconnection/APNParam;

    .line 1231
    .local v5, "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/4 v10, 0x2

    aget-object v10, v4, v10

    check-cast v10, Landroid/os/Message;

    move-object v7, v10

    check-cast v7, Landroid/os/Message;

    .line 1232
    .local v7, "request":Landroid/os/Message;
    const/4 v10, 0x3

    aget-object v10, v4, v10

    check-cast v10, [Ljava/lang/String;

    move-object v8, v10

    check-cast v8, [Ljava/lang/String;

    .line 1234
    .local v8, "result":[Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_3

    .line 1236
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p2, v10, v8}, Lcom/android/internal/telephony/HtcLtePdnSetting;->processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1239
    const/4 v10, 0x0

    aget-object v10, v4, v10

    check-cast v10, [Ljava/lang/String;

    move-object v2, v10

    check-cast v2, [Ljava/lang/String;

    .line 1240
    .local v2, "knownPdns":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1241
    .local v1, "index":I
    :goto_0
    array-length v10, v2

    if-ge v1, v10, :cond_0

    iget-object v10, v5, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    aget-object v11, v2, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1244
    :cond_0
    array-length v10, v2

    if-ge v1, v10, :cond_2

    .line 1245
    const-string v10, "LtePdnIf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Query PDN(cont) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    new-instance v6, Lcom/android/internal/telephony/dataconnection/APNParam;

    aget-object v10, v2, v1

    iget v11, v5, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    invoke-direct {v6, v10, v11}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(Ljava/lang/String;I)V

    .line 1247
    .end local v5    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .local v6, "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/16 v10, 0x6b

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1248
    .local v3, "msg":Landroid/os/Message;
    const/4 v10, 0x1

    aput-object v6, v4, v10

    .line 1249
    const/4 v10, 0x3

    aput-object v8, v4, v10

    .line 1250
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 1251
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1252
    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-direct {p0, v6, v3, v10}, Lcom/android/internal/telephony/HtcLtePdnSetting;->queryPdnFromModem(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object v10

    move-object/from16 v0, p3

    iput-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v6

    .line 1262
    .end local v1    # "index":I
    .end local v2    # "knownPdns":[Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v6    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .restart local v5    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :goto_1
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_1

    .line 1263
    invoke-direct {p0, p1, p2, v8}, Lcom/android/internal/telephony/HtcLtePdnSetting;->processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v7, v10, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1266
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1269
    .end local v4    # "msgDataArray":[Ljava/lang/Object;
    .end local v5    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .end local v7    # "request":Landroid/os/Message;
    .end local v8    # "result":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1255
    .restart local v1    # "index":I
    .restart local v2    # "knownPdns":[Ljava/lang/String;
    .restart local v4    # "msgDataArray":[Ljava/lang/Object;
    .restart local v5    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .restart local v7    # "request":Landroid/os/Message;
    .restart local v8    # "result":[Ljava/lang/String;
    :cond_2
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "End of query PDN(cont)"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iput-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_1

    .line 1259
    .end local v1    # "index":I
    .end local v2    # "knownPdns":[Ljava/lang/String;
    :cond_3
    const-string v10, "LtePdnIf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Query PDN(cont) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ex: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V
    .locals 8
    .param p1, "parameterFormat"    # I
    .param p2, "resultType"    # I
    .param p3, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1272
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v4

    .line 1273
    .local v4, "rilSupportingType":I
    if-ltz v4, :cond_0

    .line 1274
    iget-object v5, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, [Ljava/lang/Object;

    .line 1275
    .local v1, "msgDataArray":[Ljava/lang/Object;
    const/4 v5, 0x1

    aget-object v5, v1, v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/APNParam;

    check-cast v5, Lcom/android/internal/telephony/dataconnection/APNParam;

    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    .line 1276
    .local v0, "currPdn":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, v1, v5

    check-cast v5, Landroid/os/Message;

    move-object v2, v5

    check-cast v2, Landroid/os/Message;

    .line 1277
    .local v2, "request":Landroid/os/Message;
    const/4 v5, 0x3

    aget-object v5, v1, v5

    check-cast v5, [Ljava/lang/String;

    move-object v3, v5

    check-cast v3, [Ljava/lang/String;

    .line 1279
    .local v3, "result":[Ljava/lang/String;
    iget-object v5, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    .line 1280
    const-string v5, "LtePdnIf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Query PDN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " result"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v5, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p2, v5, v3}, Lcom/android/internal/telephony/HtcLtePdnSetting;->processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1287
    :goto_0
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/telephony/HtcLtePdnSetting;->processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v3, :cond_2

    iget-object v5, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :goto_1
    invoke-static {v2, v6, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1290
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1292
    .end local v0    # "currPdn":Ljava/lang/String;
    .end local v1    # "msgDataArray":[Ljava/lang/Object;
    .end local v2    # "request":Landroid/os/Message;
    .end local v3    # "result":[Ljava/lang/String;
    :cond_0
    return-void

    .line 1284
    .restart local v0    # "currPdn":Ljava/lang/String;
    .restart local v1    # "msgDataArray":[Ljava/lang/Object;
    .restart local v2    # "request":Landroid/os/Message;
    .restart local v3    # "result":[Ljava/lang/String;
    :cond_1
    const-string v5, "LtePdnIf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Query PDN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1287
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 18
    .param p1, "parameterFormat"    # I
    .param p2, "requestObj"    # [Ljava/lang/Object;
    .param p3, "remainingHandling"    # Landroid/os/Handler;

    .prologue
    .line 1037
    const/4 v15, 0x1

    aget-object v13, p2, v15

    check-cast v13, Landroid/os/Message;

    .line 1038
    .local v13, "request":Landroid/os/Message;
    if-eqz v13, :cond_3

    .line 1039
    const/4 v1, 0x0

    .line 1040
    .local v1, "errorResult":Ljava/lang/Exception;
    const/4 v15, 0x0

    aget-object v15, p2, v15

    check-cast v15, [Ljava/lang/String;

    move-object v12, v15

    check-cast v12, [Ljava/lang/String;

    .line 1041
    .local v12, "queryCmds":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v14

    .line 1042
    .local v14, "rilSupportingType":I
    if-ltz v14, :cond_8

    if-eqz v12, :cond_8

    .line 1043
    const/4 v3, 0x0

    .line 1044
    .local v3, "givenProjectId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1045
    .local v2, "givenNetworkType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1047
    .local v4, "givenQueryPdn":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1064
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 1065
    .local v6, "msg":Landroid/os/Message;
    const/4 v15, 0x4

    new-array v7, v15, [Ljava/lang/Object;

    .line 1067
    .local v7, "msgDataArray":[Ljava/lang/Object;
    move-object v10, v4

    .line 1068
    .local v10, "pdnType":Ljava/lang/String;
    const-string v15, "LtePdnIf"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Query PDN "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_5

    .line 1070
    :cond_1
    const/4 v11, -0x1

    .line 1072
    .local v11, "project":I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1074
    :goto_1
    const/4 v5, 0x0

    .line 1075
    .local v5, "knownPdns":[Ljava/lang/String;
    sparse-switch v11, :sswitch_data_0

    .line 1080
    :goto_2
    if-eqz v5, :cond_4

    .line 1081
    const/4 v15, 0x0

    aput-object v5, v7, v15

    .line 1082
    const/4 v15, 0x0

    aget-object v10, v5, v15

    .line 1083
    const/16 v15, 0x6b

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1093
    .end local v5    # "knownPdns":[Ljava/lang/String;
    .end local v11    # "project":I
    :goto_3
    const/4 v9, 0x0

    .line 1094
    .local v9, "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/4 v8, 0x0

    .line 1095
    .local v8, "networkType":I
    if-eqz v10, :cond_2

    .line 1097
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 1099
    :goto_4
    sparse-switch v8, :sswitch_data_1

    .line 1112
    :cond_2
    :goto_5
    if-eqz v9, :cond_6

    .line 1113
    const/4 v15, 0x1

    aput-object v9, v7, v15

    .line 1114
    const/4 v15, 0x2

    aput-object v13, v7, v15

    .line 1115
    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v7, v15

    .line 1116
    move/from16 v0, p1

    iput v0, v6, Landroid/os/Message;->arg1:I

    .line 1117
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1118
    const/4 v15, 0x0

    aget-object v15, v7, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v15}, Lcom/android/internal/telephony/HtcLtePdnSetting;->queryPdnFromModem(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object v1

    .line 1130
    .end local v2    # "givenNetworkType":Ljava/lang/String;
    .end local v3    # "givenProjectId":Ljava/lang/String;
    .end local v4    # "givenQueryPdn":Ljava/lang/String;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "msgDataArray":[Ljava/lang/Object;
    .end local v8    # "networkType":I
    .end local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .end local v10    # "pdnType":Ljava/lang/String;
    :goto_6
    if-eqz v1, :cond_3

    .line 1131
    const/4 v15, 0x0

    invoke-static {v13, v15, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1132
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 1136
    .end local v1    # "errorResult":Ljava/lang/Exception;
    .end local v12    # "queryCmds":[Ljava/lang/String;
    .end local v14    # "rilSupportingType":I
    :cond_3
    return-void

    .line 1049
    .restart local v1    # "errorResult":Ljava/lang/Exception;
    .restart local v2    # "givenNetworkType":Ljava/lang/String;
    .restart local v3    # "givenProjectId":Ljava/lang/String;
    .restart local v4    # "givenQueryPdn":Ljava/lang/String;
    .restart local v12    # "queryCmds":[Ljava/lang/String;
    .restart local v14    # "rilSupportingType":I
    :pswitch_0
    array-length v15, v12

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1050
    const/16 v15, 0xa8

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1051
    const/4 v15, 0x0

    aget-object v2, v12, v15

    .line 1052
    const/4 v15, 0x1

    aget-object v4, v12, v15

    goto/16 :goto_0

    .line 1056
    :pswitch_1
    array-length v15, v12

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1057
    const/4 v15, 0x0

    aget-object v3, v12, v15

    .line 1058
    const/4 v15, 0x1

    aget-object v2, v12, v15

    .line 1059
    const/4 v15, 0x2

    aget-object v4, v12, v15

    goto/16 :goto_0

    .line 1076
    .restart local v5    # "knownPdns":[Ljava/lang/String;
    .restart local v6    # "msg":Landroid/os/Message;
    .restart local v7    # "msgDataArray":[Ljava/lang/Object;
    .restart local v10    # "pdnType":Ljava/lang/String;
    .restart local v11    # "project":I
    :sswitch_0
    sget-object v5, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnLables_Vzw:[Ljava/lang/String;

    goto :goto_2

    .line 1077
    :sswitch_1
    sget-object v5, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnLables_Spcs:[Ljava/lang/String;

    goto :goto_2

    .line 1078
    :sswitch_2
    sget-object v5, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnLables_Att:[Ljava/lang/String;

    goto :goto_2

    .line 1086
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 1090
    .end local v5    # "knownPdns":[Ljava/lang/String;
    .end local v11    # "project":I
    :cond_5
    const/16 v15, 0x6c

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    goto :goto_3

    .line 1101
    .restart local v8    # "networkType":I
    .restart local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :sswitch_3
    new-instance v9, Lcom/android/internal/telephony/dataconnection/APNParam;

    .end local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/4 v15, 0x1

    invoke-direct {v9, v10, v15}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(Ljava/lang/String;I)V

    .line 1102
    .restart local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    goto :goto_5

    .line 1104
    :sswitch_4
    new-instance v9, Lcom/android/internal/telephony/dataconnection/APNParam;

    .end local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/4 v15, 0x2

    invoke-direct {v9, v10, v15}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(Ljava/lang/String;I)V

    .line 1105
    .restart local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    goto :goto_5

    .line 1107
    :sswitch_5
    new-instance v9, Lcom/android/internal/telephony/dataconnection/APNParam;

    .end local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/4 v15, 0x4

    invoke-direct {v9, v10, v15}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(Ljava/lang/String;I)V

    .restart local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    goto :goto_5

    .line 1121
    :cond_6
    const-string v16, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Query PDN parm incorrect "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v12, :cond_7

    array-length v15, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    new-instance v1, Ljava/lang/Exception;

    .end local v1    # "errorResult":Ljava/lang/Exception;
    const-string v15, "Incorrect Format"

    invoke-direct {v1, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v1    # "errorResult":Ljava/lang/Exception;
    goto/16 :goto_6

    .line 1121
    :cond_7
    const-string v15, "null"

    goto :goto_7

    .line 1126
    .end local v2    # "givenNetworkType":Ljava/lang/String;
    .end local v3    # "givenProjectId":Ljava/lang/String;
    .end local v4    # "givenQueryPdn":Ljava/lang/String;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "msgDataArray":[Ljava/lang/Object;
    .end local v8    # "networkType":I
    .end local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .end local v10    # "pdnType":Ljava/lang/String;
    :cond_8
    const-string v16, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Query PDN parm incorrect "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v12, :cond_9

    array-length v15, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    new-instance v1, Ljava/lang/Exception;

    .end local v1    # "errorResult":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Incorrect Parameters - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v1    # "errorResult":Ljava/lang/Exception;
    goto/16 :goto_6

    .line 1126
    :cond_9
    const-string v15, "null"

    goto :goto_8

    .line 1073
    .restart local v2    # "givenNetworkType":Ljava/lang/String;
    .restart local v3    # "givenProjectId":Ljava/lang/String;
    .restart local v4    # "givenQueryPdn":Ljava/lang/String;
    .restart local v6    # "msg":Landroid/os/Message;
    .restart local v7    # "msgDataArray":[Ljava/lang/Object;
    .restart local v10    # "pdnType":Ljava/lang/String;
    .restart local v11    # "project":I
    :catch_0
    move-exception v15

    goto/16 :goto_1

    .line 1098
    .end local v11    # "project":I
    .restart local v8    # "networkType":I
    .restart local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :catch_1
    move-exception v15

    goto/16 :goto_4

    .line 1047
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1075
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x94 -> :sswitch_1
        0xa8 -> :sswitch_0
    .end sparse-switch

    .line 1099
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_3
        0xd -> :sswitch_5
        0xe -> :sswitch_4
    .end sparse-switch
.end method

.method private getPhoneInUse()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "targetPhone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->mPhonePxy:Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->mPhonePxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->mHtcTelephonyPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method private getRilClass()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 610
    const/4 v0, 0x0

    .line 612
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "com.android.internal.telephony.RIL"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 616
    :goto_0
    return-object v1

    .line 613
    :catch_0
    move-exception v1

    .line 614
    .local v1, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getRilSupportingType()I
    .locals 3

    .prologue
    .line 567
    const/4 v0, -0x1

    .line 568
    .local v0, "type":I
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_1

    .line 570
    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RAT_CAPABILITIES:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 573
    const/4 v0, 0x1

    .line 583
    :goto_0
    return v0

    .line 577
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 581
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getSenseVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 526
    const/4 v2, 0x0

    .line 537
    .local v2, "senseVer":Ljava/lang/String;
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 538
    .local v0, "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_0

    .line 539
    const-string v3, "System"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 541
    .local v1, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v1, :cond_0

    .line 542
    const-string v3, "sense_version"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 547
    .end local v1    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    return-object v2
.end method

.method private init_handling()V
    .locals 4

    .prologue
    .line 454
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 455
    .local v1, "verCode":I
    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    .line 504
    :goto_0
    return-void

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v0, "sbLog":Ljava/lang/StringBuilder;
    const-string v2, "init"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v2, "LtePdnIf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pdnIPToApnIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pdnProtocol"    # Ljava/lang/String;

    .prologue
    .line 2019
    const/4 v0, 0x0

    .line 2020
    .local v0, "apnProtocol":Ljava/lang/String;
    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    array-length v2, v2

    sget-object v3, Lcom/android/internal/telephony/HtcLtePdnSetting;->apnIpTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 2021
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2022
    sget-object v2, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2023
    sget-object v2, Lcom/android/internal/telephony/HtcLtePdnSetting;->apnIpTypes:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 2028
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 2021
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private pdnIpTypeLookup(Ljava/lang/String;)I
    .locals 2
    .param p1, "givenType"    # Ljava/lang/String;

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 627
    sget-object v1, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 628
    :goto_0
    if-lez v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 629
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 632
    :cond_0
    return v0
.end method

.method private processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "resultType"    # I
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "prevResults"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x2

    .line 839
    move-object v0, p3

    .line 840
    .local v0, "currResults":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v6

    if-ltz v6, :cond_11

    move-object v3, p2

    .line 841
    check-cast v3, Lcom/android/internal/telephony/dataconnection/APNParam;

    .line 842
    .local v3, "resultAPNParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    sget-boolean v6, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v6, :cond_0

    .line 843
    const-string v6, "LtePdnIf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query PDN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_0
    if-eqz v3, :cond_14

    .line 846
    const/4 v2, 0x6

    .line 847
    .local v2, "itemsAdd":I
    if-ne p1, v9, :cond_1

    .line 857
    const/16 v2, 0x10

    .line 859
    :cond_1
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/HtcLtePdnSetting;->expandsQueryResults([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 861
    if-lt v2, v4, :cond_2

    .line 862
    :try_start_0
    array-length v6, v0

    sub-int/2addr v6, v2

    iget-object v7, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    aput-object v7, v0, v6

    .line 864
    :cond_2
    if-lt v2, v9, :cond_3

    .line 865
    array-length v6, v0

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x1

    iget v7, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 867
    :cond_3
    const/4 v6, 0x3

    if-lt v2, v6, :cond_4

    iget v6, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    if-ltz v6, :cond_4

    .line 868
    array-length v6, v0

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x2

    iget v7, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    if-eqz v7, :cond_12

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 870
    :cond_4
    const/4 v4, 0x4

    if-lt v2, v4, :cond_5

    .line 871
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x3

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 873
    :cond_5
    const/4 v4, 0x5

    if-lt v2, v4, :cond_6

    .line 874
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v5, v4, 0x4

    iget v4, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    if-ltz v4, :cond_13

    iget v4, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    sget-object v6, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_13

    sget-object v4, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    iget v6, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    aget-object v4, v4, v6

    :goto_1
    aput-object v4, v0, v5

    .line 877
    :cond_6
    const/4 v4, 0x6

    if-lt v2, v4, :cond_7

    .line 878
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x5

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->timer:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 880
    :cond_7
    const/4 v4, 0x7

    if-lt v2, v4, :cond_8

    .line 881
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x6

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->authType:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 883
    :cond_8
    const/16 v4, 0x8

    if-lt v2, v4, :cond_9

    .line 884
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x7

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->user:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 886
    :cond_9
    const/16 v4, 0x9

    if-lt v2, v4, :cond_a

    .line 887
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x8

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->password:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 889
    :cond_a
    const/16 v4, 0xa

    if-lt v2, v4, :cond_b

    iget-object v4, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_addr_via_pco:Ljava/lang/Boolean;

    if-eqz v4, :cond_b

    .line 890
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x9

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_addr_via_pco:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 892
    :cond_b
    const/16 v4, 0xb

    if-lt v2, v4, :cond_c

    iget-object v4, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_via_dhcp:Ljava/lang/Boolean;

    if-eqz v4, :cond_c

    .line 893
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0xa

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_via_dhcp:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 895
    :cond_c
    const/16 v4, 0xc

    if-lt v2, v4, :cond_d

    iget-object v4, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->is_pcscf_addr_needed:Ljava/lang/Boolean;

    if-eqz v4, :cond_d

    .line 896
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0xb

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->is_pcscf_addr_needed:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 898
    :cond_d
    const/16 v4, 0xd

    if-lt v2, v4, :cond_e

    iget-object v4, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->support_emergency_calls:Ljava/lang/Boolean;

    if-eqz v4, :cond_e

    .line 899
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0xc

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->support_emergency_calls:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 901
    :cond_e
    const/16 v4, 0xe

    if-lt v2, v4, :cond_f

    .line 902
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0xd

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 904
    :cond_f
    const/16 v4, 0xf

    if-lt v2, v4, :cond_10

    .line 905
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0xe

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn_t:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 907
    :cond_10
    const/16 v4, 0x10

    if-lt v2, v4, :cond_11

    .line 908
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0xf

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->wait_time:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 923
    .end local v2    # "itemsAdd":I
    .end local v3    # "resultAPNParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_11
    :goto_2
    return-object v0

    .restart local v2    # "itemsAdd":I
    .restart local v3    # "resultAPNParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_12
    move v4, v5

    .line 868
    goto/16 :goto_0

    .line 874
    :cond_13
    sget-object v4, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v4, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 910
    :catch_0
    move-exception v1

    .line 911
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "LtePdnIf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsing PDN ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 916
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "itemsAdd":I
    :cond_14
    const/4 v2, 0x6

    .line 917
    .restart local v2    # "itemsAdd":I
    if-ne p1, v9, :cond_15

    .line 918
    const/16 v2, 0x9

    .line 920
    :cond_15
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/HtcLtePdnSetting;->expandsQueryResults([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .param p1, "parameterFormat"    # I
    .param p2, "resultType"    # I
    .param p3, "prevResults"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 1163
    const/4 v0, 0x0

    .line 1164
    .local v0, "currResults":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v4

    .line 1165
    .local v4, "rilSupportingType":I
    if-ltz v4, :cond_0

    .line 1166
    packed-switch p1, :pswitch_data_0

    .line 1223
    .end local v0    # "currResults":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 1169
    .restart local v0    # "currResults":Ljava/lang/Object;
    :pswitch_0
    const/4 v1, 0x0

    .line 1170
    .local v1, "formattedResult":Ljava/lang/String;
    packed-switch p2, :pswitch_data_1

    .line 1188
    :cond_1
    :goto_1
    move-object v0, v1

    .line 1190
    .local v0, "currResults":Ljava/lang/String;
    goto :goto_0

    .line 1172
    .local v0, "currResults":Ljava/lang/Object;
    :pswitch_1
    if-eqz p3, :cond_1

    array-length v5, p3

    if-le v5, v6, :cond_1

    .line 1173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v7

    const-string v7, "0"

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/HtcLtePdnSetting;->responseBooleanStringValueFromModem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v9

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1180
    :pswitch_2
    if-eqz p3, :cond_1

    array-length v5, p3

    if-le v5, v6, :cond_1

    .line 1181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v7

    const-string v7, "0"

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/HtcLtePdnSetting;->responseBooleanStringValueFromModem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v9

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1193
    .end local v1    # "formattedResult":Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .line 1194
    .local v1, "formattedResult":[Ljava/lang/String;
    if-eqz p3, :cond_2

    array-length v5, p3

    if-le v5, v6, :cond_2

    .line 1195
    packed-switch p2, :pswitch_data_2

    .line 1218
    :cond_2
    move-object v0, v1

    .local v0, "currResults":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1198
    .local v0, "currResults":Ljava/lang/Object;
    :pswitch_4
    const/4 v3, -0x1

    .line 1200
    .local v3, "profLen":I
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1202
    :goto_2
    if-lez v3, :cond_2

    .line 1203
    array-length v5, p3

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 1204
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_3
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 1205
    add-int/lit8 v5, v2, 0x1

    aget-object v5, p3, v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p3, v5

    :goto_4
    aput-object v5, v1, v2

    .line 1204
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1205
    :cond_3
    const-string v5, ""

    goto :goto_4

    .line 1211
    .end local v2    # "index":I
    .end local v3    # "profLen":I
    :pswitch_5
    array-length v5, p3

    new-array v1, v5, [Ljava/lang/String;

    .line 1212
    const/4 v2, 0x0

    .restart local v2    # "index":I
    :goto_5
    array-length v5, p3

    if-ge v2, v5, :cond_2

    .line 1213
    aget-object v5, p3, v2

    if-eqz v5, :cond_4

    aget-object v5, p3, v2

    :goto_6
    aput-object v5, v1, v2

    .line 1212
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1213
    :cond_4
    const-string v5, ""

    goto :goto_6

    .line 1201
    .end local v2    # "index":I
    .restart local v3    # "profLen":I
    :catch_0
    move-exception v5

    goto :goto_2

    .line 1166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1170
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1195
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private protocolIntToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 2071
    sget-object v1, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 2072
    .local v0, "result":Ljava/lang/String;
    if-ltz p1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 2073
    sget-object v1, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 2075
    :cond_0
    return-object v0
.end method

.method private queryFromFakeModeModem(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)Ljava/lang/Exception;
    .locals 17
    .param p1, "pdnParam"    # Lcom/android/internal/telephony/dataconnection/APNParam;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 1606
    const/4 v5, 0x0

    .line 1607
    .local v5, "result":Ljava/lang/Exception;
    sget-object v14, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_SUPPORT:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1653
    sget-object v14, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_SYSTEM_PROP:Ljava/lang/String;

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1654
    .local v3, "fakeSdr":Ljava/lang/String;
    if-eqz p2, :cond_7

    .line 1655
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_7

    .line 1658
    const-string v14, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FAKE modem response - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    sget-object v14, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_ERROR_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 1660
    new-instance v6, Lcom/android/internal/telephony/dataconnection/APNParam;

    invoke-direct {v6}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>()V

    .line 1662
    .local v6, "resultAPNParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const-string v14, ","

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1663
    .local v2, "fakeItems":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "item_index":I
    :goto_0
    array-length v14, v2

    if-ge v4, v14, :cond_5

    .line 1664
    packed-switch v4, :pswitch_data_0

    .line 1663
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1666
    :pswitch_0
    aget-object v14, v2, v4

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    goto :goto_1

    .line 1669
    :pswitch_1
    const/4 v13, 0x0

    .line 1671
    .local v13, "valTreeNode":I
    :try_start_0
    aget-object v14, v2, v4

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 1675
    :goto_2
    iput v13, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->id:I

    goto :goto_1

    .line 1672
    :catch_0
    move-exception v1

    .line 1673
    .local v1, "ex":Ljava/lang/Exception;
    const-string v14, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FAKE modem response - (default value for tree node) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1678
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v13    # "valTreeNode":I
    :pswitch_2
    aget-object v14, v2, v4

    if-eqz v14, :cond_0

    aget-object v14, v2, v4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_1

    .line 1679
    :cond_0
    const/4 v14, -0x1

    iput v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    goto :goto_1

    .line 1682
    :cond_1
    const/4 v7, 0x0

    .line 1683
    .local v7, "valApnEnabled":Ljava/lang/Boolean;
    aget-object v14, v2, v4

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1684
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1692
    :goto_3
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v7, v14, :cond_4

    const/4 v14, 0x1

    :goto_4
    iput v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    goto :goto_1

    .line 1686
    :cond_2
    aget-object v14, v2, v4

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1687
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .line 1690
    :cond_3
    const-string v14, "LtePdnIf"

    const-string v15, "FAKE modem response - (default value for apn enable) 0"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1692
    :cond_4
    const/4 v14, 0x0

    goto :goto_4

    .line 1696
    .end local v7    # "valApnEnabled":Ljava/lang/Boolean;
    :pswitch_3
    aget-object v14, v2, v4

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    goto :goto_1

    .line 1699
    :pswitch_4
    aget-object v14, v2, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v14

    iput v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    goto :goto_1

    .line 1702
    :pswitch_5
    const/4 v10, 0x0

    .line 1704
    .local v10, "valApnTimeout":I
    :try_start_1
    aget-object v14, v2, v4

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 1708
    :goto_5
    iput v10, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->timer:I

    goto/16 :goto_1

    .line 1705
    :catch_1
    move-exception v1

    .line 1706
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v14, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FAKE modem response - (default value for apn timeout) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1711
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v10    # "valApnTimeout":I
    :pswitch_6
    const/4 v12, 0x0

    .line 1713
    .local v12, "valAuthType":I
    :try_start_2
    aget-object v14, v2, v4

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v12

    .line 1717
    :goto_6
    iput v12, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->authType:I

    goto/16 :goto_1

    .line 1714
    :catch_2
    move-exception v1

    .line 1715
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v14, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FAKE modem response - (default value for auth type) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1720
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v12    # "valAuthType":I
    :pswitch_7
    aget-object v14, v2, v4

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->user:Ljava/lang/String;

    goto/16 :goto_1

    .line 1723
    :pswitch_8
    aget-object v14, v2, v4

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->password:Ljava/lang/String;

    goto/16 :goto_1

    .line 1726
    :pswitch_9
    aget-object v14, v2, v4

    const-string v15, "FAKE modem response - (default value for PCSCF PCO)"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_addr_via_pco:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1730
    :pswitch_a
    aget-object v14, v2, v4

    const-string v15, "FAKE modem response - (default value for PCSCF HDCP)"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_via_dhcp:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1734
    :pswitch_b
    aget-object v14, v2, v4

    const-string v15, "FAKE modem response - (default value for PCSCF PDSN)"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->is_pcscf_addr_needed:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1738
    :pswitch_c
    aget-object v14, v2, v4

    const-string v15, "FAKE modem response - (default value for emg call)"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->support_emergency_calls:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1742
    :pswitch_d
    const/4 v8, -0x1

    .line 1744
    .local v8, "valApnMaxConn":I
    :try_start_3
    aget-object v14, v2, v4

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    .line 1748
    :goto_7
    iput v8, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn:I

    goto/16 :goto_1

    .line 1745
    :catch_3
    move-exception v1

    .line 1746
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v14, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FAKE modem response - (default value for apn maxconn) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1751
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v8    # "valApnMaxConn":I
    :pswitch_e
    const/4 v9, -0x1

    .line 1753
    .local v9, "valApnMaxConnT":I
    :try_start_4
    aget-object v14, v2, v4

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v9

    .line 1757
    :goto_8
    iput v9, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn_t:I

    goto/16 :goto_1

    .line 1754
    :catch_4
    move-exception v1

    .line 1755
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v14, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FAKE modem response - (default value for apn maxconn_t) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1760
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v9    # "valApnMaxConnT":I
    :pswitch_f
    const/4 v11, -0x1

    .line 1762
    .local v11, "valApnWaitTime":I
    :try_start_5
    aget-object v14, v2, v4

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result v11

    .line 1766
    :goto_9
    iput v11, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->wait_time:I

    goto/16 :goto_1

    .line 1763
    :catch_5
    move-exception v1

    .line 1764
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v14, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FAKE modem response - (default value for apn wait_time) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1773
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v11    # "valApnWaitTime":I
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->sendToTarget()V

    .line 1776
    .end local v2    # "fakeItems":[Ljava/lang/String;
    .end local v4    # "item_index":I
    .end local v6    # "resultAPNParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_6
    new-instance v5, Ljava/lang/Exception;

    .end local v5    # "result":Ljava/lang/Exception;
    invoke-direct {v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1780
    .end local v3    # "fakeSdr":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/Exception;
    :cond_7
    return-object v5

    .line 1664
    nop

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private queryPdnFromModem(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;
    .locals 12
    .param p1, "pdnParam"    # Lcom/android/internal/telephony/dataconnection/APNParam;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "pdnArray"    # Ljava/lang/Object;

    .prologue
    .line 642
    const/4 v5, 0x0

    .line 644
    .local v5, "queryFail":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 645
    .local v3, "fakeModeExecuted":Z
    sget-object v8, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_SUPPORT:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 646
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/HtcLtePdnSetting;->queryFromFakeModeModem(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)Ljava/lang/Exception;

    move-result-object v5

    .line 647
    if-eqz v5, :cond_1

    .line 648
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "failReason":Ljava/lang/String;
    if-eqz v2, :cond_0

    sget-object v8, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_ERROR_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 650
    const/4 v5, 0x0

    .line 652
    :cond_0
    const/4 v3, 0x1

    .line 655
    .end local v2    # "failReason":Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_2

    .line 656
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v6

    .line 657
    .local v6, "rilSupportingType":I
    packed-switch v6, :pswitch_data_0

    .line 738
    new-instance v5, Ljava/lang/Exception;

    .end local v5    # "queryFail":Ljava/lang/Exception;
    const-string v8, "Not support in this modem"

    invoke-direct {v5, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 742
    .end local v6    # "rilSupportingType":I
    .restart local v5    # "queryFail":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-object v5

    .line 661
    .restart local v6    # "rilSupportingType":I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPhoneInUse()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 662
    .local v7, "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v7, :cond_6

    instance-of v8, v7, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v8, :cond_6

    move-object v8, v7

    .line 663
    check-cast v8, Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v8, :cond_5

    .line 664
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilClass()Ljava/lang/Object;

    move-result-object v0

    .line 666
    .local v0, "cls":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 668
    .local v4, "methodAPNParam_get":Ljava/lang/reflect/Method;
    :try_start_0
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "cls":Ljava/lang/Object;
    const-string v8, "requestGetAPNParams"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lcom/android/internal/telephony/dataconnection/APNParam;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/os/Message;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 673
    :goto_1
    if-eqz v4, :cond_4

    .line 674
    const/4 v8, 0x2

    iput v8, p2, Landroid/os/Message;->arg2:I

    .line 675
    sget-boolean v8, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v8, :cond_3

    .line 676
    const-string v8, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query Ril PDN2 with : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_3
    :try_start_1
    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    .end local v7    # "targetPhone":Lcom/android/internal/telephony/Phone;
    iget-object v8, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v8, Lcom/android/internal/telephony/RIL;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 680
    :catch_0
    move-exception v1

    .line 681
    .local v1, "ex":Ljava/lang/Exception;
    const-string v8, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query Ril PDN2 error Mth "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    move-object v5, v1

    .line 683
    goto :goto_0

    .line 669
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v7    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :catch_1
    move-exception v1

    .line 670
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v8, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query Ril PDN2 error If "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 686
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    new-instance v5, Ljava/lang/Exception;

    .end local v5    # "queryFail":Ljava/lang/Exception;
    const-string v8, "Ril not existed"

    invoke-direct {v5, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v5    # "queryFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 690
    .end local v4    # "methodAPNParam_get":Ljava/lang/reflect/Method;
    :cond_5
    new-instance v5, Ljava/lang/Exception;

    .end local v5    # "queryFail":Ljava/lang/Exception;
    const-string v8, "RIL not existed"

    invoke-direct {v5, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v5    # "queryFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 694
    :cond_6
    new-instance v5, Ljava/lang/Exception;

    .end local v5    # "queryFail":Ljava/lang/Exception;
    const-string v8, "Phone not existed"

    invoke-direct {v5, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v5    # "queryFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 700
    .end local v7    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPhoneInUse()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 701
    .restart local v7    # "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v7, :cond_a

    instance-of v8, v7, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v8, :cond_a

    move-object v8, v7

    .line 702
    check-cast v8, Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v8, :cond_9

    .line 703
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilClass()Ljava/lang/Object;

    move-result-object v0

    .line 705
    .restart local v0    # "cls":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 707
    .restart local v4    # "methodAPNParam_get":Ljava/lang/reflect/Method;
    :try_start_2
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "cls":Ljava/lang/Object;
    const-string v8, "requestGetAPNParamsExt"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lcom/android/internal/telephony/dataconnection/APNParam;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/os/Message;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v4

    .line 712
    :goto_2
    if-eqz v4, :cond_8

    .line 713
    const/4 v8, 0x2

    iput v8, p2, Landroid/os/Message;->arg2:I

    .line 714
    sget-boolean v8, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v8, :cond_7

    .line 715
    const-string v8, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query RilExt PDN2 with : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_7
    :try_start_3
    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    .end local v7    # "targetPhone":Lcom/android/internal/telephony/Phone;
    iget-object v8, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v8, Lcom/android/internal/telephony/RIL;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 719
    :catch_2
    move-exception v1

    .line 720
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v8, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query RilExt PDN2 error Mth "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    move-object v5, v1

    .line 722
    goto/16 :goto_0

    .line 708
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v7    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :catch_3
    move-exception v1

    .line 709
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v8, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query RilExt PDN2 error If "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 725
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_8
    new-instance v5, Ljava/lang/Exception;

    .end local v5    # "queryFail":Ljava/lang/Exception;
    const-string v8, "RilExt not existed"

    invoke-direct {v5, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v5    # "queryFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 729
    .end local v4    # "methodAPNParam_get":Ljava/lang/reflect/Method;
    :cond_9
    new-instance v5, Ljava/lang/Exception;

    .end local v5    # "queryFail":Ljava/lang/Exception;
    const-string v8, "RIL not existed"

    invoke-direct {v5, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v5    # "queryFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 733
    :cond_a
    new-instance v5, Ljava/lang/Exception;

    .end local v5    # "queryFail":Ljava/lang/Exception;
    const-string v8, "Phone not existed"

    invoke-direct {v5, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v5    # "queryFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ratToBearer(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1994
    if-nez p1, :cond_0

    .line 2011
    :goto_0
    return-object v1

    .line 1998
    :cond_0
    const/4 v0, -0x1

    .line 2000
    .local v0, "networkType":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2003
    :goto_1
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2005
    :sswitch_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2007
    :sswitch_1
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2009
    :sswitch_2
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2001
    :catch_0
    move-exception v2

    goto :goto_1

    .line 2003
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xd -> :sswitch_2
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method private ratToNetworkType(I)I
    .locals 1
    .param p1, "rat"    # I

    .prologue
    .line 2055
    const/4 v0, -0x1

    .line 2056
    .local v0, "result":I
    packed-switch p1, :pswitch_data_0

    .line 2067
    :goto_0
    :pswitch_0
    return v0

    .line 2058
    :pswitch_1
    const/4 v0, 0x3

    .line 2059
    goto :goto_0

    .line 2061
    :pswitch_2
    const/16 v0, 0xe

    .line 2062
    goto :goto_0

    .line 2064
    :pswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 2056
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private responseBooleanStringValueFromModem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "modemValue"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1139
    move-object v1, p2

    .line 1140
    .local v1, "responseString":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1142
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "1"

    .line 1150
    :goto_0
    return-object v1

    .line 1142
    :cond_0
    const-string v1, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "ex":Ljava/lang/Exception;
    move-object v1, p2

    .line 1145
    goto :goto_0

    .line 1148
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method private setPdnFromModem(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)Ljava/lang/Exception;
    .locals 11
    .param p1, "pdnParam"    # Lcom/android/internal/telephony/dataconnection/APNParam;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x2

    .line 931
    const/4 v4, 0x0

    .line 933
    .local v4, "setFail":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v3

    .line 934
    .local v3, "rilSupportingType":I
    packed-switch v3, :pswitch_data_0

    .line 1015
    new-instance v4, Ljava/lang/Exception;

    .end local v4    # "setFail":Ljava/lang/Exception;
    const-string v6, "Not support in this modem"

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1018
    .restart local v4    # "setFail":Ljava/lang/Exception;
    :goto_0
    return-object v4

    .line 938
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPhoneInUse()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 939
    .local v5, "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v5, :cond_3

    instance-of v6, v5, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v6, :cond_3

    move-object v6, v5

    .line 940
    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v6, :cond_2

    .line 941
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilClass()Ljava/lang/Object;

    move-result-object v0

    .line 943
    .local v0, "cls":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 945
    .local v2, "methodAPNParam_set":Ljava/lang/reflect/Method;
    :try_start_0
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "cls":Ljava/lang/Object;
    const-string v6, "requestSetAPNParams"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lcom/android/internal/telephony/dataconnection/APNParam;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/Message;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 950
    :goto_1
    if-eqz v2, :cond_1

    .line 951
    iput v10, p2, Landroid/os/Message;->arg2:I

    .line 952
    sget-boolean v6, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v6, :cond_0

    .line 953
    const-string v6, "LtePdnIf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set Ril PDN2 with : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_0
    :try_start_1
    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    .end local v5    # "targetPhone":Lcom/android/internal/telephony/Phone;
    iget-object v6, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v6, Lcom/android/internal/telephony/RIL;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 957
    :catch_0
    move-exception v1

    .line 958
    .local v1, "ex":Ljava/lang/Exception;
    const-string v6, "LtePdnIf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set Ril PDN2 error Mth "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    move-object v4, v1

    .line 960
    goto :goto_0

    .line 946
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v5    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :catch_1
    move-exception v1

    .line 947
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v6, "LtePdnIf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set Ril PDN2 error If "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 963
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    new-instance v4, Ljava/lang/Exception;

    .end local v4    # "setFail":Ljava/lang/Exception;
    const-string v6, "Ril not existed"

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v4    # "setFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 967
    .end local v2    # "methodAPNParam_set":Ljava/lang/reflect/Method;
    :cond_2
    new-instance v4, Ljava/lang/Exception;

    .end local v4    # "setFail":Ljava/lang/Exception;
    const-string v6, "RIL not existed"

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v4    # "setFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 971
    :cond_3
    new-instance v4, Ljava/lang/Exception;

    .end local v4    # "setFail":Ljava/lang/Exception;
    const-string v6, "Phone not existed"

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v4    # "setFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 977
    .end local v5    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPhoneInUse()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 978
    .restart local v5    # "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v5, :cond_7

    instance-of v6, v5, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v6, :cond_7

    move-object v6, v5

    .line 979
    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v6, :cond_6

    .line 980
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilClass()Ljava/lang/Object;

    move-result-object v0

    .line 982
    .restart local v0    # "cls":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 984
    .restart local v2    # "methodAPNParam_set":Ljava/lang/reflect/Method;
    :try_start_2
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "cls":Ljava/lang/Object;
    const-string v6, "requestSetAPNParamsExt"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lcom/android/internal/telephony/dataconnection/APNParam;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/Message;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    .line 989
    :goto_2
    if-eqz v2, :cond_5

    .line 990
    iput v10, p2, Landroid/os/Message;->arg2:I

    .line 991
    sget-boolean v6, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v6, :cond_4

    .line 992
    const-string v6, "LtePdnIf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set RilExt PDN2 with : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_4
    :try_start_3
    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    .end local v5    # "targetPhone":Lcom/android/internal/telephony/Phone;
    iget-object v6, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v6, Lcom/android/internal/telephony/RIL;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 996
    :catch_2
    move-exception v1

    .line 997
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v6, "LtePdnIf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set RilExt PDN2 error Mth "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    move-object v4, v1

    .line 999
    goto/16 :goto_0

    .line 985
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v5    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :catch_3
    move-exception v1

    .line 986
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v6, "LtePdnIf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set RilExt PDN2 error If "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1002
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_5
    new-instance v4, Ljava/lang/Exception;

    .end local v4    # "setFail":Ljava/lang/Exception;
    const-string v6, "RilExt not existed"

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v4    # "setFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1006
    .end local v2    # "methodAPNParam_set":Ljava/lang/reflect/Method;
    :cond_6
    new-instance v4, Ljava/lang/Exception;

    .end local v4    # "setFail":Ljava/lang/Exception;
    const-string v6, "RIL not existed"

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v4    # "setFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1010
    :cond_7
    new-instance v4, Ljava/lang/Exception;

    .end local v4    # "setFail":Ljava/lang/Exception;
    const-string v6, "Phone not existed"

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v4    # "setFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "valueBoolean"    # Ljava/lang/String;
    .param p2, "errDebugMsg"    # Ljava/lang/String;

    .prologue
    .line 1297
    const/4 v0, 0x0

    .line 1298
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1299
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1300
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1309
    :cond_0
    :goto_0
    return-object v0

    .line 1302
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1303
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1305
    :cond_2
    if-eqz p2, :cond_0

    .line 1306
    const-string v1, "LtePdnIf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V
    .locals 4
    .param p1, "parameterFormat"    # I
    .param p2, "resultType"    # I
    .param p3, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1459
    iget-object v0, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 1460
    .local v0, "request":Landroid/os/Message;
    const-string v2, "LtePdnIf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set PDN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v1, ", resp"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ex: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    if-eqz v0, :cond_0

    .line 1462
    const/4 v1, 0x0

    iget-object v2, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1463
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1465
    :cond_0
    return-void

    .line 1460
    :cond_1
    const-string v1, ", no-resp"

    goto :goto_0
.end method

.method private setPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 12
    .param p1, "parameterFormat"    # I
    .param p2, "requestObj"    # [Ljava/lang/Object;
    .param p3, "remainingHandling"    # Landroid/os/Handler;

    .prologue
    .line 1322
    const/4 v0, 0x0

    .line 1323
    .local v0, "errorResult":Ljava/lang/Exception;
    const/4 v9, 0x0

    aget-object v9, p2, v9

    check-cast v9, [Ljava/lang/String;

    move-object v6, v9

    check-cast v6, [Ljava/lang/String;

    .line 1324
    .local v6, "queryCmds":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v7, p2, v9

    check-cast v7, Landroid/os/Message;

    .line 1325
    .local v7, "request":Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v8

    .line 1326
    .local v8, "rilSupportingType":I
    if-ltz v8, :cond_f

    if-eqz v6, :cond_f

    .line 1327
    new-instance v4, Lcom/android/internal/telephony/dataconnection/APNParam;

    invoke-direct {v4}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>()V

    .line 1328
    .local v4, "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/16 v9, 0x6e

    invoke-virtual {p3, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1329
    .local v2, "msg":Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 1437
    const-string v10, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set PDN parm incorrect "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v6, :cond_e

    array-length v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    new-instance v0, Ljava/lang/Exception;

    .end local v0    # "errorResult":Ljava/lang/Exception;
    const-string v9, "Incorrect Parameters"

    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1441
    .restart local v0    # "errorResult":Ljava/lang/Exception;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 1442
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 1443
    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1444
    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnFromModem(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)Ljava/lang/Exception;

    move-result-object v0

    .line 1452
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    .line 1453
    const/4 v9, 0x0

    invoke-static {v7, v9, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1454
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1456
    :cond_2
    return-void

    .line 1332
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v4    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :pswitch_0
    const-string v10, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set PDN "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x2

    aget-object v11, v6, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v7, :cond_3

    const-string v9, ".(resp)"

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const/4 v3, 0x0

    .line 1335
    .local v3, "networkType":I
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    move-result v3

    .line 1337
    :goto_4
    sparse-switch v3, :sswitch_data_0

    .line 1346
    const/4 v9, 0x4

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    .line 1350
    :goto_5
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1354
    :goto_6
    if-nez v0, :cond_0

    .line 1355
    const/4 v9, 0x2

    aget-object v9, v6, v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    .line 1357
    const/4 v9, 0x3

    :try_start_2
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    :goto_7
    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    .line 1359
    :goto_8
    const/4 v9, 0x4

    aget-object v9, v6, v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    .line 1361
    const/4 v9, 0x5

    :try_start_3
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->timer:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 1363
    :goto_9
    const/4 v9, 0x6

    aget-object v9, v6, v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 1332
    .end local v3    # "networkType":I
    :cond_3
    const-string v9, ".(no-resp)"

    goto :goto_3

    .line 1339
    .restart local v3    # "networkType":I
    :sswitch_0
    const/4 v9, 0x1

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    goto :goto_5

    .line 1342
    :sswitch_1
    const/4 v9, 0x2

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    goto :goto_5

    .line 1351
    :catch_0
    move-exception v1

    .line 1352
    .local v1, "ex":Ljava/lang/Exception;
    move-object v0, v1

    goto :goto_6

    .line 1357
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    const/4 v9, 0x0

    goto :goto_7

    .line 1369
    .end local v3    # "networkType":I
    :pswitch_1
    const-string v10, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set PDN2 "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x2

    aget-object v11, v6, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v7, :cond_c

    const-string v9, ".(resp)"

    :goto_a
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/4 v3, 0x0

    .line 1372
    .restart local v3    # "networkType":I
    const/4 v9, 0x1

    :try_start_4
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    move-result v3

    .line 1374
    :goto_b
    sparse-switch v3, :sswitch_data_1

    .line 1383
    const/4 v9, 0x4

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    .line 1386
    :goto_c
    const/4 v9, 0x2

    aget-object v9, v6, v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    .line 1388
    const/4 v9, 0x3

    :try_start_5
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->id:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 1390
    :goto_d
    const/4 v5, -0x1

    .line 1391
    .local v5, "pdnState":I
    const/4 v9, 0x4

    aget-object v9, v6, v9

    if-eqz v9, :cond_5

    const/4 v9, 0x4

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 1393
    const/4 v9, 0x4

    :try_start_6
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result v9

    if-eqz v9, :cond_d

    const/4 v5, 0x1

    .line 1396
    :cond_5
    :goto_e
    iput v5, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    .line 1397
    const/4 v9, 0x5

    aget-object v9, v6, v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    .line 1398
    const/4 v9, 0x6

    aget-object v9, v6, v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    .line 1400
    const/4 v9, 0x7

    :try_start_7
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->timer:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1403
    :goto_f
    const/16 v9, 0x8

    :try_start_8
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->authType:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1405
    :goto_10
    const/16 v9, 0x9

    aget-object v9, v6, v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->user:Ljava/lang/String;

    .line 1406
    const/16 v9, 0xa

    aget-object v9, v6, v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->password:Ljava/lang/String;

    .line 1407
    array-length v9, v6

    const/16 v10, 0xb

    if-le v9, v10, :cond_6

    .line 1408
    const/16 v9, 0xb

    aget-object v9, v6, v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_addr_via_pco:Ljava/lang/Boolean;

    .line 1410
    :cond_6
    array-length v9, v6

    const/16 v10, 0xc

    if-le v9, v10, :cond_7

    .line 1411
    const/16 v9, 0xc

    aget-object v9, v6, v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_via_dhcp:Ljava/lang/Boolean;

    .line 1413
    :cond_7
    array-length v9, v6

    const/16 v10, 0xd

    if-le v9, v10, :cond_8

    .line 1414
    const/16 v9, 0xd

    aget-object v9, v6, v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->is_pcscf_addr_needed:Ljava/lang/Boolean;

    .line 1416
    :cond_8
    array-length v9, v6

    const/16 v10, 0xe

    if-le v9, v10, :cond_9

    .line 1417
    const/16 v9, 0xe

    aget-object v9, v6, v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->support_emergency_calls:Ljava/lang/Boolean;

    .line 1419
    :cond_9
    array-length v9, v6

    const/16 v10, 0xf

    if-le v9, v10, :cond_a

    .line 1421
    const/16 v9, 0xf

    :try_start_9
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1424
    :cond_a
    :goto_11
    array-length v9, v6

    const/16 v10, 0x10

    if-le v9, v10, :cond_b

    .line 1426
    const/16 v9, 0x10

    :try_start_a
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn_t:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 1429
    :cond_b
    :goto_12
    array-length v9, v6

    const/16 v10, 0x11

    if-le v9, v10, :cond_0

    .line 1431
    const/16 v9, 0x11

    :try_start_b
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->wait_time:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_1

    .line 1432
    :catch_1
    move-exception v9

    goto/16 :goto_1

    .line 1369
    .end local v3    # "networkType":I
    .end local v5    # "pdnState":I
    :cond_c
    const-string v9, ".(no-resp)"

    goto/16 :goto_a

    .line 1376
    .restart local v3    # "networkType":I
    :sswitch_2
    const/4 v9, 0x1

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    goto/16 :goto_c

    .line 1379
    :sswitch_3
    const/4 v9, 0x2

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    goto/16 :goto_c

    .line 1393
    .restart local v5    # "pdnState":I
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_e

    .line 1437
    .end local v3    # "networkType":I
    .end local v5    # "pdnState":I
    :cond_e
    const-string v9, "null"

    goto/16 :goto_0

    .line 1448
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_f
    const-string v10, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set PDN parm incorrect "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v6, :cond_10

    array-length v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_13
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    new-instance v0, Ljava/lang/Exception;

    .end local v0    # "errorResult":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Incorrect Parameters - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v0    # "errorResult":Ljava/lang/Exception;
    goto/16 :goto_2

    .line 1448
    :cond_10
    const-string v9, "null"

    goto :goto_13

    .line 1427
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "networkType":I
    .restart local v4    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .restart local v5    # "pdnState":I
    :catch_2
    move-exception v9

    goto :goto_12

    .line 1422
    :catch_3
    move-exception v9

    goto/16 :goto_11

    .line 1404
    :catch_4
    move-exception v9

    goto/16 :goto_10

    .line 1401
    :catch_5
    move-exception v9

    goto/16 :goto_f

    .line 1394
    :catch_6
    move-exception v9

    goto/16 :goto_e

    .line 1389
    .end local v5    # "pdnState":I
    :catch_7
    move-exception v9

    goto/16 :goto_d

    .line 1373
    :catch_8
    move-exception v9

    goto/16 :goto_b

    .line 1362
    :catch_9
    move-exception v9

    goto/16 :goto_9

    .line 1358
    :catch_a
    move-exception v9

    goto/16 :goto_8

    .line 1336
    :catch_b
    move-exception v9

    goto/16 :goto_4

    .line 1329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1337
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch

    .line 1374
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private storePdnSettingsToXml(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 28
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "name"    # [Ljava/lang/String;
    .param p4, "value"    # [Ljava/lang/String;

    .prologue
    .line 1820
    :try_start_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p3

    array-length v11, v0

    .line 1822
    .local v11, "length":I
    :goto_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1823
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v25

    if-nez v25, :cond_3

    .line 1824
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v25

    if-nez v25, :cond_2

    .line 1825
    const-string v25, "LtePdnIf"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Fail to create directory: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    .end local v3    # "dir":Ljava/io/File;
    .end local v11    # "length":I
    :goto_1
    return-void

    .line 1820
    :cond_1
    move-object/from16 v0, p4

    array-length v11, v0

    goto :goto_0

    .line 1828
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v11    # "length":I
    :cond_2
    const/16 v25, 0x1

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1829
    const/16 v25, 0x1

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1833
    :cond_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 1834
    .local v6, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 1835
    .local v5, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/16 v21, 0x0

    .line 1837
    .local v21, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    .local v24, "xmlFile":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 1839
    const/16 v25, 0x1

    aget-object v14, p4, v25

    .line 1840
    .local v14, "newRat":Ljava/lang/String;
    const/16 v25, 0x2

    aget-object v13, p4, v25

    .line 1841
    .local v13, "newPdnLabel":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1842
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->normalize()V

    .line 1843
    const-string v25, "pdn"

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 1844
    .local v17, "pdnList":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x1

    .line 1845
    .local v9, "isInsertCase":Z
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    .local v12, "listLength":I
    :goto_2
    if-ge v8, v12, :cond_7

    .line 1846
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 1847
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 1848
    .local v15, "pdn":Lorg/w3c/dom/Element;
    const/16 v25, 0x1

    aget-object v25, p3, v25

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1849
    .local v18, "rat":Ljava/lang/String;
    const/16 v25, 0x2

    aget-object v25, p3, v25

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1850
    .local v16, "pdnLabel":Ljava/lang/String;
    if-eqz v13, :cond_6

    if-eqz v14, :cond_6

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 1851
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    if-ge v10, v11, :cond_5

    .line 1852
    aget-object v25, p4, v10

    if-eqz v25, :cond_4

    .line 1853
    aget-object v25, p3, v10

    aget-object v26, p4, v10

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1856
    :cond_5
    const/4 v9, 0x0

    .line 1845
    .end local v10    # "j":I
    .end local v15    # "pdn":Lorg/w3c/dom/Element;
    .end local v16    # "pdnLabel":Ljava/lang/String;
    .end local v18    # "rat":Ljava/lang/String;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1860
    :cond_7
    if-eqz v9, :cond_9

    .line 1861
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v20

    .line 1862
    .local v20, "root":Lorg/w3c/dom/Node;
    const-string v25, "pdn"

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 1863
    .restart local v15    # "pdn":Lorg/w3c/dom/Element;
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1865
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v11, :cond_9

    .line 1866
    aget-object v25, p4, v8

    if-eqz v25, :cond_8

    .line 1867
    aget-object v25, p3, v8

    aget-object v26, p4, v8

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1871
    .end local v15    # "pdn":Lorg/w3c/dom/Element;
    .end local v20    # "root":Lorg/w3c/dom/Node;
    :cond_9
    new-instance v21, Ljavax/xml/transform/dom/DOMSource;

    .end local v21    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1889
    .end local v9    # "isInsertCase":Z
    .end local v12    # "listLength":I
    .end local v13    # "newPdnLabel":Ljava/lang/String;
    .end local v14    # "newRat":Ljava/lang/String;
    .end local v17    # "pdnList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_5
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v23

    .line 1890
    .local v23, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v22

    .line 1891
    .local v22, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v19, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1892
    .local v19, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1894
    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1895
    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1897
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v19    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v21    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v22    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v23    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v24    # "xmlFile":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 1898
    .local v7, "e":Ljava/lang/Exception;
    const-string v25, "LtePdnIf"

    const-string v26, "storePdnSettingsToXml exception"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1874
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v11    # "length":I
    .restart local v21    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v24    # "xmlFile":Ljava/io/File;
    :cond_a
    :try_start_1
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1875
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    const-string v25, "pdns"

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v20

    .line 1876
    .local v20, "root":Lorg/w3c/dom/Element;
    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1878
    const-string v25, "pdn"

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 1879
    .restart local v15    # "pdn":Lorg/w3c/dom/Element;
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1881
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    if-ge v8, v11, :cond_c

    .line 1882
    aget-object v25, p4, v8

    if-eqz v25, :cond_b

    .line 1883
    aget-object v25, p3, v8

    aget-object v26, p4, v8

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1886
    :cond_c
    new-instance v21, Ljavax/xml/transform/dom/DOMSource;

    .end local v21    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v21    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto :goto_5
.end method


# virtual methods
.method public backupPdnSettingsToXml([Lcom/android/internal/telephony/dataconnection/APNParam;)V
    .locals 9
    .param p1, "apnParams"    # [Lcom/android/internal/telephony/dataconnection/APNParam;

    .prologue
    .line 2032
    const/4 v5, 0x1

    .line 2033
    .local v5, "result":Z
    if-eqz p1, :cond_4

    .line 2034
    array-length v6, p1

    if-lez v6, :cond_0

    .line 2035
    move-object v1, p1

    .local v1, "arr$":[Lcom/android/internal/telephony/dataconnection/APNParam;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 2036
    .local v0, "apnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    sget-object v6, Lcom/android/internal/telephony/HtcLtePdnSetting;->mName:[Ljava/lang/String;

    array-length v6, v6

    new-array v4, v6, [Ljava/lang/String;

    .line 2037
    .local v4, "profile":[Ljava/lang/String;
    const/4 v6, 0x1

    iget v7, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HtcLtePdnSetting;->ratToNetworkType(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 2038
    const/4 v6, 0x2

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    aput-object v7, v4, v6

    .line 2039
    const/4 v6, 0x5

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    aput-object v7, v4, v6

    .line 2040
    const/4 v6, 0x6

    iget v7, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HtcLtePdnSetting;->protocolIntToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 2041
    const-string v6, "/carrier/PDN/"

    const-string v7, "pdns.xml"

    sget-object v8, Lcom/android/internal/telephony/HtcLtePdnSetting;->mName:[Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8, v4}, Lcom/android/internal/telephony/HtcLtePdnSetting;->storePdnSettingsToXml(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 2035
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2044
    .end local v0    # "apnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .end local v1    # "arr$":[Lcom/android/internal/telephony/dataconnection/APNParam;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "profile":[Ljava/lang/String;
    :cond_0
    sget-boolean v6, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v6, :cond_1

    const-string v6, "LtePdnIf"

    const-string v7, "backupPdnDataToXml: getModemProfileValues() array length is 0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    :cond_1
    const/4 v5, 0x0

    .line 2051
    :cond_2
    :goto_1
    sget-boolean v6, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v6, :cond_3

    const-string v6, "LtePdnIf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backupPdnDataToXml: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_3
    return-void

    .line 2048
    :cond_4
    sget-boolean v6, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v6, :cond_5

    const-string v6, "LtePdnIf"

    const-string v7, "backupPdnDataToXml: getModemProfileValues() return null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->destroy_handling()V

    .line 88
    return-void
.end method

.method public getPdnSettings(ILandroid/os/Message;)V
    .locals 7
    .param p1, "profileSlot"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    new-array v0, v5, [Ljava/lang/String;

    .line 109
    .local v0, "request":[Ljava/lang/String;
    if-ltz p1, :cond_0

    if-gt p1, v6, :cond_0

    .line 110
    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 111
    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 125
    :goto_0
    new-array v1, v5, [Ljava/lang/Object;

    .line 126
    .local v1, "requestArray":[Ljava/lang/Object;
    aput-object v0, v1, v3

    .line 127
    aput-object p2, v1, v4

    .line 128
    const/16 v2, 0x6a

    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcLtePdnSetting;->sendMessage(Landroid/os/Message;)Z

    .line 129
    return-void

    .line 113
    .end local v1    # "requestArray":[Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x5

    if-gt v2, p1, :cond_1

    const/16 v2, 0x8

    if-gt p1, v2, :cond_1

    .line 114
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 115
    add-int/lit8 v2, p1, -0x5

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0

    .line 117
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xc8

    if-gt v2, p1, :cond_2

    const/16 v2, 0xcc

    if-gt p1, v2, :cond_2

    .line 119
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 120
    add-int/lit16 v2, p1, -0xc8

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0
.end method

.method public getPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "profile"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 258
    new-array v0, v4, [Ljava/lang/Object;

    .line 259
    .local v0, "requestArray":[Ljava/lang/Object;
    aput-object p1, v0, v3

    .line 260
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 265
    const/16 v1, 0x6a

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v4, v3, v2}, Lcom/android/internal/telephony/HtcLtePdnSetting;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->sendMessage(Landroid/os/Message;)Z

    .line 267
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 445
    :goto_0
    return-void

    .line 403
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->init_handling()V

    goto :goto_0

    .line 406
    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->destroy_handling()V

    goto :goto_0

    .line 413
    :sswitch_2
    if-nez v0, :cond_0

    .line 414
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 416
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v1, p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V

    goto :goto_0

    .line 420
    :sswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v2, v3, v1, p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPdnSettings2Cont_handling(IILandroid/os/AsyncResult;Landroid/os/Handler;)V

    goto :goto_0

    .line 423
    :sswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 430
    :sswitch_5
    if-nez v0, :cond_1

    .line 431
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 433
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v1, p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V

    goto :goto_0

    .line 437
    :sswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6a -> :sswitch_2
        0x6b -> :sswitch_3
        0x6c -> :sswitch_4
        0x6d -> :sswitch_5
        0x6e -> :sswitch_6
    .end sparse-switch
.end method

.method public parsePdnXmlToApnDb()V
    .locals 23

    .prologue
    .line 1903
    const-string v20, "LtePdnIf"

    const-string v21, "parsePdnXmlToApnDb: /carrier/PDN/pdns.xml"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    new-instance v19, Ljava/io/File;

    const-string v20, "/carrier/PDN/pdns.xml"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1905
    .local v19, "xmlFile":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1906
    const/4 v7, 0x0

    .line 1907
    .local v7, "customFileReader":Ljava/io/FileReader;
    const/4 v10, 0x0

    .line 1909
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1910
    .end local v7    # "customFileReader":Ljava/io/FileReader;
    .local v8, "customFileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 1911
    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1912
    const-string v20, "pdns"

    move-object/from16 v0, v20

    invoke-static {v10, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1913
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1915
    :goto_0
    const-string v20, "pdn"

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v20

    if-nez v20, :cond_2

    .line 1982
    :goto_1
    if-eqz v8, :cond_0

    .line 1983
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    move-object v7, v8

    .line 1991
    .end local v8    # "customFileReader":Ljava/io/FileReader;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :goto_2
    return-void

    .line 1919
    .restart local v8    # "customFileReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    const/16 v20, 0x0

    :try_start_3
    const-string v21, "rat"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1920
    .local v14, "rat":Ljava/lang/String;
    if-nez v14, :cond_3

    .line 1921
    const-string v20, "LtePdnIf"

    const-string v21, "parsePdnXmlToApnDb: rat is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1978
    .end local v14    # "rat":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v7, v8

    .line 1979
    .end local v8    # "customFileReader":Ljava/io/FileReader;
    .restart local v7    # "customFileReader":Ljava/io/FileReader;
    .local v9, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v20, "LtePdnIf"

    const-string v21, "parsePdnXmlToApnDb exception"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1982
    if-eqz v7, :cond_1

    .line 1983
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1985
    :catch_1
    move-exception v20

    goto :goto_2

    .line 1924
    .end local v7    # "customFileReader":Ljava/io/FileReader;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "customFileReader":Ljava/io/FileReader;
    .restart local v14    # "rat":Ljava/lang/String;
    :cond_3
    const/16 v20, 0x0

    :try_start_6
    const-string v21, "pdn_label"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1925
    .local v12, "pdn_label":Ljava/lang/String;
    if-nez v12, :cond_5

    .line 1926
    const-string v20, "LtePdnIf"

    const-string v21, "parsePdnXmlToApnDb: pdn_label is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1981
    .end local v12    # "pdn_label":Ljava/lang/String;
    .end local v14    # "rat":Ljava/lang/String;
    :catchall_0
    move-exception v20

    move-object v7, v8

    .line 1982
    .end local v8    # "customFileReader":Ljava/io/FileReader;
    .restart local v7    # "customFileReader":Ljava/io/FileReader;
    :goto_4
    if-eqz v7, :cond_4

    .line 1983
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1986
    :cond_4
    :goto_5
    throw v20

    .line 1930
    .end local v7    # "customFileReader":Ljava/io/FileReader;
    .restart local v8    # "customFileReader":Ljava/io/FileReader;
    .restart local v12    # "pdn_label":Ljava/lang/String;
    .restart local v14    # "rat":Ljava/lang/String;
    :cond_5
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/HtcLtePdnSetting;->ratToBearer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1931
    .local v5, "bearer":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 1932
    const-string v20, "LtePdnIf"

    const-string v21, "parsePdnXmlToApnDb: bearer is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1936
    :cond_6
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1937
    .local v17, "values":Landroid/content/ContentValues;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "(htc_bearer LIKE \'%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%\' OR bearer = ?) AND pdn_label = ?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1938
    .local v18, "where":Ljava/lang/String;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    aput-object v5, v15, v20

    const/16 v20, 0x1

    aput-object v12, v15, v20

    .line 1939
    .local v15, "selectionArgs":[Ljava/lang/String;
    const/4 v6, -0x1

    .line 1941
    .local v6, "count":I
    const/16 v20, 0x0

    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1942
    .local v4, "apn":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 1943
    const-string v20, "apn"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    :cond_7
    const/16 v20, 0x0

    const-string v21, "type"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIPToApnIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1947
    .local v13, "protocol":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 1948
    const-string v20, "protocol"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    :cond_8
    const/16 v20, 0x0

    const-string v21, "user"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1953
    .local v16, "user":Ljava/lang/String;
    if-eqz v16, :cond_9

    .line 1954
    const-string v20, "user"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    :cond_9
    const/16 v20, 0x0

    const-string v21, "password"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1958
    .local v11, "password":Ljava/lang/String;
    if-eqz v11, :cond_a

    .line 1959
    const-string v20, "password"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1963
    :cond_a
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->size()I

    move-result v20

    if-lez v20, :cond_b

    .line 1964
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPhoneInUse()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1965
    const-string v20, "LtePdnIf"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "parsePdnXmlToApnDb count="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    const/4 v6, -0x1

    .line 1969
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPhoneInUse()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Landroid/provider/Telephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1970
    const-string v20, "LtePdnIf"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "parsePdnXmlToApnDb count="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1976
    :cond_b
    :goto_6
    :try_start_a
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1972
    :catch_2
    move-exception v9

    .line 1973
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v20, "LtePdnIf"

    const-string v21, "parsePdnXmlToApnDb exception"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    .line 1985
    .end local v4    # "apn":Ljava/lang/String;
    .end local v5    # "bearer":Ljava/lang/String;
    .end local v6    # "count":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "pdn_label":Ljava/lang/String;
    .end local v13    # "protocol":Ljava/lang/String;
    .end local v14    # "rat":Ljava/lang/String;
    .end local v15    # "selectionArgs":[Ljava/lang/String;
    .end local v16    # "user":Ljava/lang/String;
    .end local v17    # "values":Landroid/content/ContentValues;
    .end local v18    # "where":Ljava/lang/String;
    :catch_3
    move-exception v20

    move-object v7, v8

    .line 1987
    .end local v8    # "customFileReader":Ljava/io/FileReader;
    .restart local v7    # "customFileReader":Ljava/io/FileReader;
    goto/16 :goto_2

    .line 1989
    .end local v7    # "customFileReader":Ljava/io/FileReader;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_c
    const-string v20, "LtePdnIf"

    const-string v21, "PDN xml file not exist"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1985
    .restart local v7    # "customFileReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v21

    goto/16 :goto_5

    .line 1981
    :catchall_1
    move-exception v20

    goto/16 :goto_4

    .line 1978
    :catch_5
    move-exception v9

    goto/16 :goto_3
.end method

.method public resetPdnForSettingsChange()V
    .locals 6

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v1

    .line 341
    .local v1, "supportingType":I
    if-ltz v1, :cond_0

    .line 342
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 343
    .local v2, "verCode":I
    const-string v3, "LtePdnIf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changePdnSettings in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->parsePdnXmlToApnDb()V

    .line 347
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.WRITE_PDN_COMMITTED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "broadcast":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPhoneInUse()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 384
    .end local v0    # "broadcast":Landroid/content/Intent;
    .end local v2    # "verCode":I
    :cond_0
    return-void
.end method

.method public setPdnSettings(ILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "profileSlot"    # I
    .param p2, "settings"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 148
    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/String;

    .line 149
    .local v2, "request":[Ljava/lang/String;
    if-ltz p1, :cond_1

    if-gt p1, v10, :cond_1

    .line 150
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 151
    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .line 165
    :goto_0
    aget-object v4, v2, v8

    if-eqz v4, :cond_0

    .line 166
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "apnSettings":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 169
    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 172
    :goto_1
    const/4 v4, 0x3

    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v0, v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    :goto_2
    const/4 v4, 0x4

    :try_start_2
    sget-object v5, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    aput-object v5, v2, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 182
    :goto_3
    const/4 v4, 0x5

    const/4 v5, 0x3

    :try_start_3
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 185
    :goto_4
    const/4 v4, 0x6

    const/4 v5, 0x4

    :try_start_4
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 190
    .end local v0    # "apnSettings":[Ljava/lang/String;
    :cond_0
    :goto_5
    new-array v3, v11, [Ljava/lang/Object;

    .line 191
    .local v3, "requestArray":[Ljava/lang/Object;
    aput-object v2, v3, v7

    .line 192
    aput-object p3, v3, v8

    .line 193
    const/16 v4, 0x6d

    invoke-virtual {p0, v4, v8, v7, v3}, Lcom/android/internal/telephony/HtcLtePdnSetting;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HtcLtePdnSetting;->sendMessage(Landroid/os/Message;)Z

    .line 194
    return-void

    .line 153
    .end local v3    # "requestArray":[Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x5

    if-gt v4, p1, :cond_2

    const/16 v4, 0x9

    if-gt p1, v4, :cond_2

    .line 154
    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 155
    add-int/lit8 v4, p1, -0x5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xc8

    if-gt v4, p1, :cond_3

    const/16 v4, 0xcc

    if-gt p1, v4, :cond_3

    .line 159
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 160
    add-int/lit16 v4, p1, -0xc8

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    goto/16 :goto_0

    .line 163
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    goto/16 :goto_0

    .line 173
    .restart local v0    # "apnSettings":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    goto :goto_2

    .line 178
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 179
    .restart local v1    # "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v2, v10

    goto :goto_3

    .line 186
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_5

    .line 183
    :catch_3
    move-exception v4

    goto :goto_4

    .line 170
    :catch_4
    move-exception v4

    goto/16 :goto_1
.end method

.method public setPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "profile"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 323
    new-array v0, v5, [Ljava/lang/Object;

    .line 324
    .local v0, "requestArray":[Ljava/lang/Object;
    aput-object p1, v0, v4

    .line 325
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 330
    const-string v1, "/carrier/PDN/"

    const-string v2, "pdns.xml"

    sget-object v3, Lcom/android/internal/telephony/HtcLtePdnSetting;->mName:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->storePdnSettingsToXml(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 332
    const/16 v1, 0x6d

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v5, v4, v2}, Lcom/android/internal/telephony/HtcLtePdnSetting;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->sendMessage(Landroid/os/Message;)Z

    .line 334
    return-void
.end method
