.class public Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;
.super Ljava/lang/Object;
.source "HtcDataCustomizationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;
    }
.end annotation


# static fields
.field public static ATT_CONFIG:Z = false

.field private static final PROP_KEY_NEW_SPCS_ROAMING_GUARD_ENABLED:Ljava/lang/String; = "ro.chameleon.Menu.enable"

.field private static final PROP_KEY_SPCS_ROAMING_GUARD_ENABLED:Ljava/lang/String; = "ro.chameleon.MenuDisplay.enable"

.field private static final PROP_KEY_WORLD_PHONE_UI_ENABLED:Ljava/lang/String; = "persist.radio.worldphone"

.field public static SPRINT_CONFIG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcDataCustomizationManager"

.field private static bSPCSNewRoamingGuard:Z

.field private static bSPCSRoamingGuard:Z

.field private static mAllowNationalRoaming:Z

.field private static mCheckApnWhenRoamingOnOff:Z

.field private static mCustErrorCauselist:Ljava/lang/String;

.field private static mCustomerId:Ljava/lang/String;

.field private static mCustomerMCCMNC:Ljava/lang/String;

.field private static mCustomizeCDMALteProfile:I

.field private static mCustomizeLteConfig:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

.field private static mDataRetryTimer:Ljava/lang/String;

.field private static mDualSimDataRoamingPreferredSlot:Z

.field private static mDualSimSingleDataCapable:Z

.field private static mFilterApnTypeList:Ljava/lang/String;

.field private static mFixedDunApn:Ljava/lang/String;

.field private static mGlobalRoamingConfig:Z

.field private static mIgnoreDNSCheckMCCList:Ljava/lang/String;

.field private static mIsCTSku:Z

.field private static mIsIccCardProxyEnabled:Z

.field private static mIsLAESNTELCELSku:Z

.field private static mIsSupportSprintChameleon:Z

.field private static mNationalRoamingList:Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

.field private static mPdpLimitPolicy:I

.field private static mPreferSpecificTypeList:[Ljava/lang/String;

.field private static mQCTMMConfig:Z

.field private static mResetRetryCounterScreenOn:Z

.field private static mRoamingEnhanceConfig:Z

.field private static mSetPreferredApnByDefault:Z

.field private static mSupportEUDataRoaming:Z

.field private static mSupportFixedCdmaDNS:Z

.field private static mSwapApnSettingWhenRoaming:Z

.field private static mTurnoffLTEWhenMobileOff:Z

.field private static mUpdateProfilePolicy:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

.field private static mUseDefaultProfileForTethering:Z

.field private static preferSpecificNetworkTypes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 96
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->bSPCSRoamingGuard:Z

    .line 97
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->bSPCSNewRoamingGuard:Z

    .line 99
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mGlobalRoamingConfig:Z

    .line 100
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mRoamingEnhanceConfig:Z

    .line 101
    sget-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeLteConfig:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    .line 102
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mQCTMMConfig:Z

    .line 103
    sput v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeCDMALteProfile:I

    .line 104
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsSupportSprintChameleon:Z

    .line 105
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsIccCardProxyEnabled:Z

    .line 108
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mAllowNationalRoaming:Z

    .line 109
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCheckApnWhenRoamingOnOff:Z

    .line 110
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSetPreferredApnByDefault:Z

    .line 111
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mTurnoffLTEWhenMobileOff:Z

    .line 112
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUseDefaultProfileForTethering:Z

    .line 113
    const-string v7, ""

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFixedDunApn:Ljava/lang/String;

    .line 114
    const-string v7, ""

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFilterApnTypeList:Ljava/lang/String;

    .line 116
    sput-object v10, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mNationalRoamingList:Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    .line 118
    sput-object v10, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUpdateProfilePolicy:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    .line 120
    const-string v7, ""

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerMCCMNC:Ljava/lang/String;

    .line 122
    sput v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPdpLimitPolicy:I

    .line 124
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportEUDataRoaming:Z

    .line 126
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsCTSku:Z

    .line 130
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mResetRetryCounterScreenOn:Z

    .line 132
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimDataRoamingPreferredSlot:Z

    .line 133
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSwapApnSettingWhenRoaming:Z

    .line 136
    const-string v7, ""

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerId:Ljava/lang/String;

    .line 137
    const-string v7, ""

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIgnoreDNSCheckMCCList:Ljava/lang/String;

    .line 138
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportFixedCdmaDNS:Z

    .line 139
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsLAESNTELCELSku:Z

    .line 141
    const-string v7, ""

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDataRetryTimer:Ljava/lang/String;

    .line 145
    const-string v7, ""

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustErrorCauselist:Ljava/lang/String;

    .line 148
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimSingleDataCapable:Z

    .line 149
    const-string v7, ""

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->preferSpecificNetworkTypes:Ljava/lang/String;

    .line 150
    sput-object v10, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    .line 156
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v4

    .line 157
    .local v4, "mHCmanager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v7, "Android_Ril"

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v7, v10, v11}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    .line 158
    .local v5, "mHCreader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v7, "Phone"

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v7, v10, v11}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 160
    .local v3, "mHCPhonereader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v7, "Nationalroaming"

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v7, v10, v11}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 163
    .local v2, "mHCNationalRoamingreader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v7, "global_roaming_config"

    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mGlobalRoamingConfig:Z

    .line 164
    const-string v7, "roaming_enhance_config"

    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mRoamingEnhanceConfig:Z

    .line 165
    const-string v7, "cdma_lte_mm_config"

    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mQCTMMConfig:Z

    .line 166
    const-string v7, "customize_cdma_lte_profile"

    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeCDMALteProfile:I

    .line 167
    sget v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeCDMALteProfile:I

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->values()[Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v10

    array-length v10, v10

    if-ge v7, v10, :cond_0

    .line 169
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->values()[Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v7

    sget v10, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeCDMALteProfile:I

    aget-object v7, v7, v10

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeLteConfig:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    .line 171
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v7

    const-string v10, "cdma_telephony_chameleon"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsSupportSprintChameleon:Z

    .line 172
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v7

    const-string v10, "sim_card_proxy"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsIccCardProxyEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, "SPCSNewRoamingGuard":Ljava/lang/String;
    :try_start_1
    const-string v7, "ro.chameleon.MenuDisplay.enable"

    const/4 v10, 0x0

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_3

    move v7, v9

    :goto_0
    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->bSPCSRoamingGuard:Z

    .line 177
    const-string v7, "ro.chameleon.Menu.enable"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 182
    :goto_1
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v7

    if-nez v7, :cond_1

    .line 184
    :try_start_3
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "mSPCSNewRoamingGuard":[Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_4

    move v7, v9

    :goto_2
    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->bSPCSNewRoamingGuard:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 197
    .end local v6    # "mSPCSNewRoamingGuard":[Ljava/lang/String;
    :cond_1
    :goto_3
    :try_start_4
    const-string v7, "allow_national_roaming"

    const/4 v10, 0x0

    invoke-interface {v2, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mAllowNationalRoaming:Z

    .line 198
    new-instance v7, Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    const-string v10, "national_roaming_mccmnc"

    const/4 v11, 0x0

    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/ACCCustomizationReader;->readStringArray(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;-><init>([Ljava/lang/String;)V

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mNationalRoamingList:Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    .line 200
    const-string v7, "check_apn_records_when_roaming_on_off"

    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCheckApnWhenRoamingOnOff:Z

    .line 201
    const-string v7, "fixed_apn_for_dun"

    const-string v10, ""

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFixedDunApn:Ljava/lang/String;

    .line 202
    const-string v7, "set_preferred_apn_by_default"

    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSetPreferredApnByDefault:Z

    .line 203
    const-string v7, "turnoff_lte_when_mobile_off"

    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mTurnoffLTEWhenMobileOff:Z

    .line 204
    const-string v7, "use_default_profile_for_tethering"

    const/4 v10, 0x1

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUseDefaultProfileForTethering:Z

    .line 205
    new-instance v7, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    const-string v10, "umts_update_profile_slot_policy"

    const-string v11, "10"

    invoke-interface {v5, v10, v11}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "umts_update_profile_action_policy"

    const-string v12, "4,3"

    invoke-interface {v5, v11, v12}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUpdateProfilePolicy:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    .line 208
    const-string v7, "customer_mcc_mnc_list"

    const-string v10, ""

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerMCCMNC:Ljava/lang/String;

    .line 209
    const-string v7, "pdplimit_policy"

    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPdpLimitPolicy:I

    .line 210
    const-string v7, "filter_apn_type_list"

    const-string v10, ""

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFilterApnTypeList:Ljava/lang/String;

    .line 211
    const-string v7, "support_eu_data_roaming"

    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportEUDataRoaming:Z

    .line 213
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsCTSku:Z

    .line 217
    const-string v7, "reset_retry_counter_screen_on"

    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mResetRetryCounterScreenOn:Z

    .line 218
    const-string v7, "swap_apn_setting_when_roaming"

    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSwapApnSettingWhenRoaming:Z

    .line 219
    const-string v7, "dualSimDataRoamingPreferredSlot"

    const/4 v10, 0x0

    invoke-interface {v3, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimDataRoamingPreferredSlot:Z

    .line 222
    invoke-virtual {v4}, Lcom/htc/customization/HtcCustomizationManager;->readCID()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerId:Ljava/lang/String;

    .line 223
    const-string v7, "ignore_dns_check_mcc_list"

    const-string v10, ""

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIgnoreDNSCheckMCCList:Ljava/lang/String;

    .line 224
    const-string v7, "support_fixed_cdma_dns"

    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportFixedCdmaDNS:Z

    .line 225
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isLAESNTELCELSku()Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsLAESNTELCELSku:Z

    .line 227
    const-string v7, "data_retry_config"

    const-string v10, ""

    invoke-interface {v5, v7, v10}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDataRetryTimer:Ljava/lang/String;

    .line 231
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getRilReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v7

    const-string v10, "customize_error_cause_list"

    const-string v11, ""

    invoke-static {v7, v10, v11}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustErrorCauselist:Ljava/lang/String;

    .line 234
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getRilReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v7

    const-string v10, "dual_sim_single_data_capable"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimSingleDataCapable:Z

    .line 235
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getRilReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v7

    const-string v10, "prefer_specific_network_types"

    const-string v11, ""

    invoke-static {v7, v10, v11}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->preferSpecificNetworkTypes:Ljava/lang/String;

    .line 238
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->createSpecificTypeList()V

    .line 241
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->dump()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 328
    .end local v0    # "SPCSNewRoamingGuard":Ljava/lang/String;
    .end local v2    # "mHCNationalRoamingreader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v3    # "mHCPhonereader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v5    # "mHCreader":Lcom/htc/customization/HtcCustomizationReader;
    :goto_4
    sget v7, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v10, 0xa

    if-eq v7, v10, :cond_2

    sget v7, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v10, 0x62

    if-eq v7, v10, :cond_2

    sget v7, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v10, 0x55

    if-ne v7, v10, :cond_5

    :cond_2
    move v7, v9

    :goto_5
    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->SPRINT_CONFIG:Z

    .line 337
    sget v7, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/4 v10, 0x7

    if-ne v7, v10, :cond_6

    :goto_6
    sput-boolean v9, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->ATT_CONFIG:Z

    return-void

    .restart local v0    # "SPCSNewRoamingGuard":Ljava/lang/String;
    .restart local v2    # "mHCNationalRoamingreader":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v3    # "mHCPhonereader":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v5    # "mHCreader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_3
    move v7, v8

    .line 176
    goto/16 :goto_0

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v7, "HtcDataCustomizationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error to get the prop e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 242
    .end local v0    # "SPCSNewRoamingGuard":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "mHCNationalRoamingreader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v3    # "mHCPhonereader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v5    # "mHCreader":Lcom/htc/customization/HtcCustomizationReader;
    :catch_1
    move-exception v1

    .line 243
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v7, "HtcDataCustomizationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot read customization value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "SPCSNewRoamingGuard":Ljava/lang/String;
    .restart local v2    # "mHCNationalRoamingreader":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v3    # "mHCPhonereader":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v5    # "mHCreader":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v6    # "mSPCSNewRoamingGuard":[Ljava/lang/String;
    :cond_4
    move v7, v8

    .line 185
    goto/16 :goto_2

    .line 186
    .end local v6    # "mSPCSNewRoamingGuard":[Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 187
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v7, "HtcDataCustomizationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SPCSNewRoamingGuard="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .end local v0    # "SPCSNewRoamingGuard":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "mHCNationalRoamingreader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v3    # "mHCPhonereader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v5    # "mHCreader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_5
    move v7, v8

    .line 328
    goto :goto_5

    :cond_6
    move v9, v8

    .line 337
    goto :goto_6
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static CKT_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 322
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->CKT:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static CSPIRE_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 304
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->CSPIRE:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeLteConfig:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    return-object v0
.end method

.method public static GENERIC_WPHONE_CONFIG()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 286
    const/high16 v1, -0x80000000

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "persist.radio.worldphone"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static KDDI_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->KDDI:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static LRA_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->LRA:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static MPCS_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 326
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->MPCS:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static OM_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 267
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->OPEN_MOBILE:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static QCT_MM_CONFIG()Z
    .locals 1

    .prologue
    .line 251
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mQCTMMConfig:Z

    return v0
.end method

.method public static SPRINT_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->SPRINT:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SPRINT_LTE_WPHONE_CONFIG()Z
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->SPRINT_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SPRINT_ROAMING_ENHANCE_CONFIG()Z
    .locals 1

    .prologue
    .line 310
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->isSupportSprintChameleon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mRoamingEnhanceConfig:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->bSPCSRoamingGuard:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->bSPCSNewRoamingGuard:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    .line 311
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :cond_2
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mRoamingEnhanceConfig:Z

    goto :goto_0
.end method

.method public static SPRINT_WPHONE_CONFIG()Z
    .locals 1

    .prologue
    .line 294
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->SPRINT_CONFIG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SupportProvisionCheck()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public static VERIZON_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->VERIZON:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static VERIZON_LTE_WPHONE_CONFIG()Z
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->VERIZON_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final VZW_GLOBAL_ROAMING_CONFIG()Z
    .locals 1

    .prologue
    .line 254
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mGlobalRoamingConfig:Z

    return v0
.end method

.method private static createSpecificTypeList()V
    .locals 4

    .prologue
    .line 456
    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->preferSpecificNetworkTypes:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    .line 457
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 458
    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->isInteger(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 472
    :goto_1
    const-string v1, "HtcDataCustomizationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSpecificTypeList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :sswitch_0
    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    const-string v2, "mms"

    aput-object v2, v1, v0

    goto :goto_1

    .line 466
    :sswitch_1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    const-string v2, "fota"

    aput-object v2, v1, v0

    goto :goto_1

    .line 474
    :cond_0
    return-void

    .line 458
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_1
        0x35 -> :sswitch_1
    .end sparse-switch
.end method

.method public static dump()V
    .locals 3

    .prologue
    .line 490
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGlobalRoamingConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mGlobalRoamingConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRoamingEnhanceConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mRoamingEnhanceConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCustomizeLteConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeLteConfig:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQCTMMConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mQCTMMConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCustomizeCDMALteProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeCDMALteProfile:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportSprintChameleon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsSupportSprintChameleon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsIccCardProxyEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsIccCardProxyEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bSPCSRoamingGuard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->bSPCSRoamingGuard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bSPCSNewRoamingGuard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->bSPCSNewRoamingGuard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllowNationalRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mAllowNationalRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckApnWhenRoamingOnOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCheckApnWhenRoamingOnOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSetPreferredApnByDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSetPreferredApnByDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTurnoffLTEWhenMobileOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mTurnoffLTEWhenMobileOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUseDefaultProfileForTethering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUseDefaultProfileForTethering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFixedDunApn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFixedDunApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFilterApnTypeList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFilterApnTypeList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNationalRoamingList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mNationalRoamingList:Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUpdateProfilePolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUpdateProfilePolicy:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCustomerMCCMNC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerMCCMNC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPdpLimitPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPdpLimitPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportEUDataRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportEUDataRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsCTSku="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsCTSku:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mResetRetryCounterScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mResetRetryCounterScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDualSimDataRoamingPreferredSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimDataRoamingPreferredSlot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSwapApnSettingWhenRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSwapApnSettingWhenRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCustomerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIgnoreDNSCheckMCCList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIgnoreDNSCheckMCCList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportFixedCdmaDNS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportFixedCdmaDNS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataRetryTimer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDataRetryTimer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCustErrorCauselist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustErrorCauselist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDualSimSingleDataCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimSingleDataCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferSpecificNetworkTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->preferSpecificNetworkTypes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-void
.end method

.method public static getAllowNationalRoaming()Z
    .locals 1

    .prologue
    .line 367
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mAllowNationalRoaming:Z

    return v0
.end method

.method public static getCheckApnWhenRoamingOnOff()Z
    .locals 1

    .prologue
    .line 374
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCheckApnWhenRoamingOnOff:Z

    return v0
.end method

.method public static getCustErrorCauseList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustErrorCauselist:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerId:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomerMCCMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerMCCMNC:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomerRetryTimer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDataRetryTimer:Ljava/lang/String;

    return-object v0
.end method

.method public static getDualSimDataRoamingPreferredSlot()Z
    .locals 1

    .prologue
    .line 415
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimDataRoamingPreferredSlot:Z

    return v0
.end method

.method public static getDualSimSingleDataCapable()Z
    .locals 1

    .prologue
    .line 447
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimSingleDataCapable:Z

    return v0
.end method

.method public static getFilterApnTypeList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFilterApnTypeList:Ljava/lang/String;

    return-object v0
.end method

.method public static getFixedDunApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFixedDunApn:Ljava/lang/String;

    return-object v0
.end method

.method public static getIgnoreDNSCheckMCCList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIgnoreDNSCheckMCCList:Ljava/lang/String;

    return-object v0
.end method

.method public static getIsCTSku()Z
    .locals 1

    .prologue
    .line 406
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsCTSku:Z

    return v0
.end method

.method public static getIsLAESNTELCELSku()Z
    .locals 1

    .prologue
    .line 432
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsLAESNTELCELSku:Z

    return v0
.end method

.method public static getNationalRoamingList()Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;
    .locals 2

    .prologue
    .line 370
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mNationalRoamingList:Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    if-nez v0, :cond_0

    const-string v0, "HtcDataCustomizationManager"

    const-string v1, "NationalRoamingList get ACC value failed!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mNationalRoamingList:Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mNationalRoamingList:Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;-><init>([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPdpLimitPolicy()I
    .locals 1

    .prologue
    .line 396
    sget v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPdpLimitPolicy:I

    return v0
.end method

.method public static getPreferSpecificTypeList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 450
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "HtcDataCustomizationManager"

    const-string v1, "PreferSpecificTypeList get ACC value failed!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public static getResetRetryCounterScreenOn()Z
    .locals 1

    .prologue
    .line 412
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mResetRetryCounterScreenOn:Z

    return v0
.end method

.method public static getSetPreferredApnByDefault()Z
    .locals 1

    .prologue
    .line 380
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSetPreferredApnByDefault:Z

    return v0
.end method

.method public static getSupportEUDataRoaming()Z
    .locals 1

    .prologue
    .line 402
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportEUDataRoaming:Z

    return v0
.end method

.method public static getSupportFixedCdmaDNS()Z
    .locals 1

    .prologue
    .line 429
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportFixedCdmaDNS:Z

    return v0
.end method

.method public static getSwapApnSettingWhenRoaming()Z
    .locals 1

    .prologue
    .line 418
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSwapApnSettingWhenRoaming:Z

    return v0
.end method

.method public static getTurnoffLTEWhenMobileOff()Z
    .locals 1

    .prologue
    .line 383
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mTurnoffLTEWhenMobileOff:Z

    return v0
.end method

.method public static getUpdateProfilePolicy()Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;
    .locals 3

    .prologue
    .line 389
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUpdateProfilePolicy:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    if-nez v0, :cond_0

    const-string v0, "HtcDataCustomizationManager"

    const-string v1, "UpdateProfilePolicy get ACC value failed!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUpdateProfilePolicy:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUpdateProfilePolicy:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    const-string v1, "10"

    const-string v2, "4,3"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUseDefaultProfileForTethering()Z
    .locals 1

    .prologue
    .line 386
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUseDefaultProfileForTethering:Z

    return v0
.end method

.method public static isIccCardProxyEnabled()Z
    .locals 1

    .prologue
    .line 340
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsIccCardProxyEnabled:Z

    return v0
.end method

.method private static isInteger(Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 477
    const/4 v0, -0x1

    .line 479
    .local v0, "i":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 483
    :goto_0
    return v0

    .line 480
    :catch_0
    move-exception v1

    .line 481
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isSupportCG2GGPhoneModeChange()Z
    .locals 5

    .prologue
    .line 349
    const/high16 v3, -0x80000000

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v2

    .line 352
    .local v2, "isWphone":Z
    const/high16 v3, 0x40000000    # 2.0f

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    .line 355
    .local v0, "isDSDA":Z
    const/high16 v3, 0x20000000

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    .line 358
    .local v1, "isDSDS":Z
    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 360
    :cond_0
    const/4 v3, 0x1

    .line 362
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSupportSprintChameleon()Z
    .locals 1

    .prologue
    .line 307
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsSupportSprintChameleon:Z

    return v0
.end method
