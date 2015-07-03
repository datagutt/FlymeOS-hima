.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x61

.field static final TRANSACTION_addCrossProfileWidgetProvider:I = 0x83

.field static final TRANSACTION_addEasAccount:I = 0x89

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x5a

.field static final TRANSACTION_addVPN:I = 0x8c

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x62

.field static final TRANSACTION_clearDeviceOwner:I = 0x4e

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x5b

.field static final TRANSACTION_clearProfileOwner:I = 0x54

.field static final TRANSACTION_createAndInitializeUser:I = 0x6c

.field static final TRANSACTION_createUser:I = 0x6b

.field static final TRANSACTION_deleteEasAccount:I = 0x8a

.field static final TRANSACTION_deleteVPN:I = 0x8d

.field static final TRANSACTION_enableSystemApp:I = 0x6f

.field static final TRANSACTION_enableSystemAppWithIntent:I = 0x70

.field static final TRANSACTION_encryptSDcards:I = 0x91

.field static final TRANSACTION_enforceCanManageCaCerts:I = 0x58

.field static final TRANSACTION_getAccountTypesWithManagementDisabled:I = 0x72

.field static final TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0x73

.field static final TRANSACTION_getActiveAdmins:I = 0x40

.field static final TRANSACTION_getActiveSyncDeviceId:I = 0x8b

.field static final TRANSACTION_getAllowBTStatus:I = 0x1d

.field static final TRANSACTION_getAllowBrowserStatus:I = 0x23

.field static final TRANSACTION_getAllowInternetSharingStatus:I = 0x1f

.field static final TRANSACTION_getAllowStorageCardStatus:I = 0x25

.field static final TRANSACTION_getAllowTextMessagingStatus:I = 0x21

.field static final TRANSACTION_getAllowWifiStatus:I = 0x1b

.field static final TRANSACTION_getApplicationRestrictions:I = 0x5d

.field static final TRANSACTION_getAutoTimeRequired:I = 0x87

.field static final TRANSACTION_getCameraDisabled:I = 0x39

.field static final TRANSACTION_getCrossProfileCallerIdDisabled:I = 0x7f

.field static final TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0x80

.field static final TRANSACTION_getCrossProfileWidgetProviders:I = 0x85

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x2a

.field static final TRANSACTION_getDeviceAdminRestrictedStatus:I = 0x94

.field static final TRANSACTION_getDeviceOwner:I = 0x4c

.field static final TRANSACTION_getDeviceOwnerName:I = 0x4d

.field static final TRANSACTION_getEdmVersion:I = 0x92

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x33

.field static final TRANSACTION_getHtcSecureRule:I = 0x96

.field static final TRANSACTION_getHtcSecureRuleVerifyCode:I = 0x97

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x3d

.field static final TRANSACTION_getLockTaskPackages:I = 0x75

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x2c

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x2f

.field static final TRANSACTION_getPasswordAllowSimple:I = 0x19

.field static final TRANSACTION_getPasswordComplexity:I = 0x17

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPermittedAccessibilityServices:I = 0x64

.field static final TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x65

.field static final TRANSACTION_getPermittedInputMethods:I = 0x67

.field static final TRANSACTION_getPermittedInputMethodsForCurrentUser:I = 0x68

.field static final TRANSACTION_getProfileOwner:I = 0x50

.field static final TRANSACTION_getProfileOwnerName:I = 0x51

.field static final TRANSACTION_getRemoveWarning:I = 0x42

.field static final TRANSACTION_getRestrictionsProvider:I = 0x5f

.field static final TRANSACTION_getScreenCaptureDisabled:I = 0x3b

.field static final TRANSACTION_getStorageEncryption:I = 0x36

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x37

.field static final TRANSACTION_getTrustAgentFeaturesEnabled:I = 0x82

.field static final TRANSACTION_getVPNByConfigId:I = 0x8e

.field static final TRANSACTION_hasGrantedPolicy:I = 0x44

.field static final TRANSACTION_hasUserSetupCompleted:I = 0x55

.field static final TRANSACTION_htcSetActivePasswordState:I = 0x47

.field static final TRANSACTION_installCaCert:I = 0x56

.field static final TRANSACTION_installCertification:I = 0x90

.field static final TRANSACTION_installKeyPair:I = 0x59

.field static final TRANSACTION_isActivePasswordLengthSufficient:I = 0x29

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x28

.field static final TRANSACTION_isAdminActive:I = 0x3f

.field static final TRANSACTION_isApplicationHidden:I = 0x6a

.field static final TRANSACTION_isCameraKeepOff:I = 0x9a

.field static final TRANSACTION_isDeviceOwner:I = 0x4b

.field static final TRANSACTION_isLockTaskPermitted:I = 0x76

.field static final TRANSACTION_isMasterVolumeMuted:I = 0x7a

.field static final TRANSACTION_isSDEncryptionEnable:I = 0x27

.field static final TRANSACTION_isUninstallBlocked:I = 0x7d

.field static final TRANSACTION_lockNow:I = 0x30

.field static final TRANSACTION_notifyLockTaskModeChanged:I = 0x7b

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x41

.field static final TRANSACTION_removeActiveAdmin:I = 0x43

.field static final TRANSACTION_removeCrossProfileWidgetProvider:I = 0x84

.field static final TRANSACTION_removeUser:I = 0x6d

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x48

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x49

.field static final TRANSACTION_resetPassword:I = 0x2d

.field static final TRANSACTION_responseAsyncResult:I = 0x88

.field static final TRANSACTION_setAccountManagementDisabled:I = 0x71

.field static final TRANSACTION_setActiveAdmin:I = 0x3e

.field static final TRANSACTION_setActivePasswordState:I = 0x45

.field static final TRANSACTION_setActivePasswordState2:I = 0x46

.field static final TRANSACTION_setAllowBT:I = 0x1c

.field static final TRANSACTION_setAllowBrowser:I = 0x22

.field static final TRANSACTION_setAllowInternetSharing:I = 0x1e

.field static final TRANSACTION_setAllowStorageCard:I = 0x24

.field static final TRANSACTION_setAllowTextMessaging:I = 0x20

.field static final TRANSACTION_setAllowWifi:I = 0x1a

.field static final TRANSACTION_setApplicationHidden:I = 0x69

.field static final TRANSACTION_setApplicationRestrictions:I = 0x5c

.field static final TRANSACTION_setAutoTimeRequired:I = 0x86

.field static final TRANSACTION_setCameraDisabled:I = 0x38

.field static final TRANSACTION_setCrossProfileCallerIdDisabled:I = 0x7e

.field static final TRANSACTION_setDeviceAdminRestricted:I = 0x93

.field static final TRANSACTION_setDeviceOwner:I = 0x4a

.field static final TRANSACTION_setEncodedCodeByEncryptedCode:I = 0x99

.field static final TRANSACTION_setGlobalProxy:I = 0x32

.field static final TRANSACTION_setGlobalSetting:I = 0x77

.field static final TRANSACTION_setHtcEncryptedCode:I = 0x98

.field static final TRANSACTION_setHtcSecureRule:I = 0x95

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x3c

.field static final TRANSACTION_setLockTaskPackages:I = 0x74

.field static final TRANSACTION_setMasterVolumeMuted:I = 0x79

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x2b

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x2e

.field static final TRANSACTION_setPasswordAllowSimple:I = 0x18

.field static final TRANSACTION_setPasswordComplexity:I = 0x16

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPermittedAccessibilityServices:I = 0x63

.field static final TRANSACTION_setPermittedInputMethods:I = 0x66

.field static final TRANSACTION_setProfileEnabled:I = 0x52

.field static final TRANSACTION_setProfileName:I = 0x53

.field static final TRANSACTION_setProfileOwner:I = 0x4f

.field static final TRANSACTION_setRecommendedGlobalProxy:I = 0x34

.field static final TRANSACTION_setRestrictionsProvider:I = 0x5e

.field static final TRANSACTION_setSDEncryptionEnable:I = 0x26

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x3a

.field static final TRANSACTION_setSecureSetting:I = 0x78

.field static final TRANSACTION_setStorageEncryption:I = 0x35

.field static final TRANSACTION_setTrustAgentFeaturesEnabled:I = 0x81

.field static final TRANSACTION_setUninstallBlocked:I = 0x7c

.field static final TRANSACTION_setUserRestriction:I = 0x60

.field static final TRANSACTION_switchUser:I = 0x6e

.field static final TRANSACTION_uninstallCaCert:I = 0x57

.field static final TRANSACTION_wipeAllSDcards:I = 0x8f

.field static final TRANSACTION_wipeData:I = 0x31


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_1
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :sswitch_2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :sswitch_3
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :sswitch_4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :sswitch_5
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    :sswitch_6
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    :sswitch_7
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_7

    :sswitch_8
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    goto :goto_8

    :sswitch_9
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    :sswitch_a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x0

    goto :goto_a

    :sswitch_b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v5, 0x0

    goto :goto_b

    :sswitch_c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v5, 0x0

    goto :goto_c

    :sswitch_d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x0

    goto :goto_d

    :sswitch_e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v5, 0x0

    goto :goto_e

    :sswitch_f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v5, 0x0

    goto :goto_f

    :sswitch_10
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v5, 0x0

    goto :goto_10

    :sswitch_11
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v5, 0x0

    goto :goto_11

    :sswitch_12
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v5, 0x0

    goto :goto_12

    :sswitch_13
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v5, v1, v2, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_12
    const/4 v5, 0x0

    goto :goto_13

    :sswitch_14
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v5, 0x0

    goto :goto_14

    :sswitch_15
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;I)J

    move-result-wide v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v5, 0x0

    goto :goto_15

    :sswitch_16
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordComplexity(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_15
    const/4 v5, 0x0

    goto :goto_16

    :sswitch_17
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordComplexity(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v5, 0x0

    goto :goto_17

    :sswitch_18
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    const/4 v6, 0x1

    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordAllowSimple(Landroid/content/ComponentName;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_17
    const/4 v5, 0x0

    goto :goto_18

    :cond_18
    const/4 v6, 0x0

    goto :goto_19

    :sswitch_19
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordAllowSimple(Landroid/content/ComponentName;I)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_1a

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_19
    const/4 v5, 0x0

    goto :goto_1a

    :cond_1a
    const/4 v4, 0x0

    goto :goto_1b

    :sswitch_1a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowWifi(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1b
    const/4 v5, 0x0

    goto :goto_1c

    :sswitch_1b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowWifiStatus(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1c
    const/4 v5, 0x0

    goto :goto_1d

    :sswitch_1c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBT(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1d
    const/4 v5, 0x0

    goto :goto_1e

    :sswitch_1d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBTStatus(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v5, 0x0

    goto :goto_1f

    :sswitch_1e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowInternetSharing(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1f
    const/4 v5, 0x0

    goto :goto_20

    :sswitch_1f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowInternetSharingStatus(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_20
    const/4 v5, 0x0

    goto :goto_21

    :sswitch_20
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowTextMessaging(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_21
    const/4 v5, 0x0

    goto :goto_22

    :sswitch_21
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowTextMessagingStatus(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_22
    const/4 v5, 0x0

    goto :goto_23

    :sswitch_22
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBrowser(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_23
    const/4 v5, 0x0

    goto :goto_24

    :sswitch_23
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBrowserStatus(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_24
    const/4 v5, 0x0

    goto :goto_25

    :sswitch_24
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowStorageCard(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_25
    const/4 v5, 0x0

    goto :goto_26

    :sswitch_25
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowStorageCardStatus(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_26
    const/4 v5, 0x0

    goto :goto_27

    :sswitch_26
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    const/4 v6, 0x1

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSDEncryptionEnable(Landroid/content/ComponentName;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_27
    const/4 v5, 0x0

    goto :goto_28

    :cond_28
    const/4 v6, 0x0

    goto :goto_29

    :sswitch_27
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSDEncryptionEnable(Landroid/content/ComponentName;I)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_2a

    const/4 v4, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_29
    const/4 v5, 0x0

    goto :goto_2a

    :cond_2a
    const/4 v4, 0x0

    goto :goto_2b

    :sswitch_28
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(I)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_2b

    const/4 v4, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2b
    const/4 v4, 0x0

    goto :goto_2c

    :sswitch_29
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordLengthSufficient(I)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_2c

    const/4 v4, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2c
    const/4 v4, 0x0

    goto :goto_2d

    :sswitch_2a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_2b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2d
    const/4 v5, 0x0

    goto :goto_2e

    :sswitch_2c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2e
    const/4 v5, 0x0

    goto :goto_2f

    :sswitch_2d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;II)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_2f

    const/4 v4, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2f
    const/4 v4, 0x0

    goto :goto_30

    :sswitch_2e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v5, v1, v2, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;JI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_30
    const/4 v5, 0x0

    goto :goto_31

    :sswitch_2f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_31
    const/4 v5, 0x0

    goto :goto_32

    :sswitch_30
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_31
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_32
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_33

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_34
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_32
    const/4 v5, 0x0

    goto :goto_33

    :cond_33
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    :sswitch_33
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_34

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_35
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_34
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_35

    :sswitch_34
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    sget-object v4, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ProxyInfo;

    :goto_37
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_35
    const/4 v5, 0x0

    goto :goto_36

    :cond_36
    const/4 v6, 0x0

    goto :goto_37

    :sswitch_35
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_38

    const/4 v6, 0x1

    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;ZI)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_37
    const/4 v5, 0x0

    goto :goto_38

    :cond_38
    const/4 v6, 0x0

    goto :goto_39

    :sswitch_36
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_3a

    const/4 v4, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_39
    const/4 v5, 0x0

    goto :goto_3a

    :cond_3a
    const/4 v4, 0x0

    goto :goto_3b

    :sswitch_37
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_38
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    const/4 v6, 0x1

    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_3b
    const/4 v5, 0x0

    goto :goto_3c

    :cond_3c
    const/4 v6, 0x0

    goto :goto_3d

    :sswitch_39
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_3e

    const/4 v4, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_3d
    const/4 v5, 0x0

    goto :goto_3e

    :cond_3e
    const/4 v4, 0x0

    goto :goto_3f

    :sswitch_3a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    const/4 v7, 0x1

    :goto_41
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_3f
    const/4 v5, 0x0

    goto :goto_40

    :cond_40
    const/4 v7, 0x0

    goto :goto_41

    :sswitch_3b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_42

    const/4 v4, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_41
    const/4 v5, 0x0

    goto :goto_42

    :cond_42
    const/4 v4, 0x0

    goto :goto_43

    :sswitch_3c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_43

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_43
    const/4 v5, 0x0

    goto :goto_44

    :sswitch_3d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_44

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_44
    const/4 v5, 0x0

    goto :goto_45

    :sswitch_3e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_46

    const/4 v6, 0x1

    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_45
    const/4 v5, 0x0

    goto :goto_46

    :cond_46
    const/4 v6, 0x0

    goto :goto_47

    :sswitch_3f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_47

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_48

    const/4 v4, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_47
    const/4 v5, 0x0

    goto :goto_48

    :cond_48
    const/4 v4, 0x0

    goto :goto_49

    :sswitch_40
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_41
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_49

    const/4 v4, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_49
    const/4 v4, 0x0

    goto :goto_4a

    :sswitch_42
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4a

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4b

    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RemoteCallback;

    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_4a
    const/4 v5, 0x0

    goto :goto_4b

    :cond_4b
    const/4 v6, 0x0

    goto :goto_4c

    :sswitch_43
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4c

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_4c
    const/4 v5, 0x0

    goto :goto_4d

    :sswitch_44
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4d

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_4e

    const/4 v4, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_4d
    const/4 v5, 0x0

    goto :goto_4e

    :cond_4e
    const/4 v4, 0x0

    goto :goto_4f

    :sswitch_45
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_46
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState2(IIIIIIIIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_47
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v14, 0x1

    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->htcSetActivePasswordState(IIIIIIIIIZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_4f
    const/4 v14, 0x0

    goto :goto_50

    :sswitch_48
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_49
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_4a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_50

    const/4 v4, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_50
    const/4 v4, 0x0

    goto :goto_51

    :sswitch_4b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_51

    const/4 v4, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_51
    const/4 v4, 0x0

    goto :goto_52

    :sswitch_4c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwner()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_4d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_4e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_4f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_52

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_53

    const/4 v4, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_52
    const/4 v5, 0x0

    goto :goto_53

    :cond_53
    const/4 v4, 0x0

    goto :goto_54

    :sswitch_50
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_54

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_55
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_54
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_55

    :sswitch_51
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_52
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_55

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_56
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_55
    const/4 v5, 0x0

    goto :goto_56

    :sswitch_53
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_56

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_56
    const/4 v5, 0x0

    goto :goto_57

    :sswitch_54
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_57

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_58
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_57
    const/4 v5, 0x0

    goto :goto_58

    :sswitch_55
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_58

    const/4 v4, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_58
    const/4 v4, 0x0

    goto :goto_59

    :sswitch_56
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_59

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;[B)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_5a

    const/4 v4, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_59
    const/4 v5, 0x0

    goto :goto_5a

    :cond_5a
    const/4 v4, 0x0

    goto :goto_5b

    :sswitch_57
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5b

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCert(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_5b
    const/4 v5, 0x0

    goto :goto_5c

    :sswitch_58
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5c

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_5d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_5c
    const/4 v5, 0x0

    goto :goto_5d

    :sswitch_59
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5d

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;[B[BLjava/lang/String;)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_5e

    const/4 v4, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_5d
    const/4 v5, 0x0

    goto :goto_5e

    :cond_5e
    const/4 v4, 0x0

    goto :goto_5f

    :sswitch_5a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5f

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_60

    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_61

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    :goto_62
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_5f
    const/4 v5, 0x0

    goto :goto_60

    :cond_60
    const/4 v6, 0x0

    goto :goto_61

    :cond_61
    const/4 v7, 0x0

    goto :goto_62

    :sswitch_5b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_62

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_62
    const/4 v5, 0x0

    goto :goto_63

    :sswitch_5c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_63

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_64

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    :goto_65
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_63
    const/4 v5, 0x0

    goto :goto_64

    :cond_64
    const/4 v7, 0x0

    goto :goto_65

    :sswitch_5d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_65

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_66

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_67
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_65
    const/4 v5, 0x0

    goto :goto_66

    :cond_66
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_67

    :sswitch_5e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_67

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_68

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    :goto_69
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_67
    const/4 v5, 0x0

    goto :goto_68

    :cond_68
    const/4 v6, 0x0

    goto :goto_69

    :sswitch_5f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_69

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6a
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_69
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6a

    :sswitch_60
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6a

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6b

    const/4 v7, 0x1

    :goto_6c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6a
    const/4 v5, 0x0

    goto :goto_6b

    :cond_6b
    const/4 v7, 0x0

    goto :goto_6c

    :sswitch_61
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6c

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6d

    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6c
    const/4 v5, 0x0

    goto :goto_6d

    :cond_6d
    const/4 v6, 0x0

    goto :goto_6e

    :sswitch_62
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6e

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_6f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6e
    const/4 v5, 0x0

    goto :goto_6f

    :sswitch_63
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6f

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_70
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_70

    const/4 v4, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6f
    const/4 v5, 0x0

    goto :goto_70

    :cond_70
    const/4 v4, 0x0

    goto :goto_71

    :sswitch_64
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_71

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_72
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_71
    const/4 v5, 0x0

    goto :goto_72

    :sswitch_65
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_66
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_72

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_73
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_73

    const/4 v4, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_72
    const/4 v5, 0x0

    goto :goto_73

    :cond_73
    const/4 v4, 0x0

    goto :goto_74

    :sswitch_67
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_74

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_75
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_74
    const/4 v5, 0x0

    goto :goto_75

    :sswitch_68
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_69
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_75

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_76

    const/4 v7, 0x1

    :goto_77
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_77

    const/4 v4, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_75
    const/4 v5, 0x0

    goto :goto_76

    :cond_76
    const/4 v7, 0x0

    goto :goto_77

    :cond_77
    const/4 v4, 0x0

    goto :goto_78

    :sswitch_6a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_78

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_79

    const/4 v4, 0x1

    :goto_7a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_78
    const/4 v5, 0x0

    goto :goto_79

    :cond_79
    const/4 v4, 0x0

    goto :goto_7a

    :sswitch_6b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7a

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_7b

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7c
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_7a
    const/4 v5, 0x0

    goto :goto_7b

    :cond_7b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7c

    :sswitch_6c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7c

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7d

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    :goto_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7e

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    :goto_7f
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_7f

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_80
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_7c
    const/4 v5, 0x0

    goto :goto_7d

    :cond_7d
    const/4 v8, 0x0

    goto :goto_7e

    :cond_7e
    const/4 v9, 0x0

    goto :goto_7f

    :cond_7f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_80

    :sswitch_6d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_80

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_81

    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    :goto_82
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_82

    const/4 v4, 0x1

    :goto_83
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_80
    const/4 v5, 0x0

    goto :goto_81

    :cond_81
    const/4 v6, 0x0

    goto :goto_82

    :cond_82
    const/4 v4, 0x0

    goto :goto_83

    :sswitch_6e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_83

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_84

    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    :goto_85
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_85

    const/4 v4, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_83
    const/4 v5, 0x0

    goto :goto_84

    :cond_84
    const/4 v6, 0x0

    goto :goto_85

    :cond_85
    const/4 v4, 0x0

    goto :goto_86

    :sswitch_6f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_86

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_86
    const/4 v5, 0x0

    goto :goto_87

    :sswitch_70
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_87

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_88

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    :goto_89
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_87
    const/4 v5, 0x0

    goto :goto_88

    :cond_88
    const/4 v6, 0x0

    goto :goto_89

    :sswitch_71
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_89

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8a

    const/4 v7, 0x1

    :goto_8b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_89
    const/4 v5, 0x0

    goto :goto_8a

    :cond_8a
    const/4 v7, 0x0

    goto :goto_8b

    :sswitch_72
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_73
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_74
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8b

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8b
    const/4 v5, 0x0

    goto :goto_8c

    :sswitch_75
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8c

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_8d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8c
    const/4 v5, 0x0

    goto :goto_8d

    :sswitch_76
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_8d

    const/4 v4, 0x1

    :goto_8e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8d
    const/4 v4, 0x0

    goto :goto_8e

    :sswitch_77
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8e

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8e
    const/4 v5, 0x0

    goto :goto_8f

    :sswitch_78
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8f

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8f
    const/4 v5, 0x0

    goto :goto_90

    :sswitch_79
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_90

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_91

    const/4 v6, 0x1

    :goto_92
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_90
    const/4 v5, 0x0

    goto :goto_91

    :cond_91
    const/4 v6, 0x0

    goto :goto_92

    :sswitch_7a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_92

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_93
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_93

    const/4 v4, 0x1

    :goto_94
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_92
    const/4 v5, 0x0

    goto :goto_93

    :cond_93
    const/4 v4, 0x0

    goto :goto_94

    :sswitch_7b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_94

    const/4 v5, 0x1

    :goto_95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_94
    const/4 v5, 0x0

    goto :goto_95

    :sswitch_7c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_95

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_96

    const/4 v7, 0x1

    :goto_97
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_95
    const/4 v5, 0x0

    goto :goto_96

    :cond_96
    const/4 v7, 0x0

    goto :goto_97

    :sswitch_7d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_97

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_98

    const/4 v4, 0x1

    :goto_99
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_97
    const/4 v5, 0x0

    goto :goto_98

    :cond_98
    const/4 v4, 0x0

    goto :goto_99

    :sswitch_7e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_99

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9a

    const/4 v6, 0x1

    :goto_9b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_99
    const/4 v5, 0x0

    goto :goto_9a

    :cond_9a
    const/4 v6, 0x0

    goto :goto_9b

    :sswitch_7f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9b

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_9c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_9c

    const/4 v4, 0x1

    :goto_9d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9b
    const/4 v5, 0x0

    goto :goto_9c

    :cond_9c
    const/4 v4, 0x0

    goto :goto_9d

    :sswitch_80
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_9d

    const/4 v4, 0x1

    :goto_9e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9d
    const/4 v4, 0x0

    goto :goto_9e

    :sswitch_81
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9e

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9f

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    :goto_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v6, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentFeaturesEnabled(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9e
    const/4 v5, 0x0

    goto :goto_9f

    :cond_9f
    const/4 v6, 0x0

    goto :goto_a0

    :sswitch_82
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a0

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a1

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    :goto_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentFeaturesEnabled(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a0
    const/4 v5, 0x0

    goto :goto_a1

    :cond_a1
    const/4 v6, 0x0

    goto :goto_a2

    :sswitch_83
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a2

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_a3

    const/4 v4, 0x1

    :goto_a4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a2
    const/4 v5, 0x0

    goto :goto_a3

    :cond_a3
    const/4 v4, 0x0

    goto :goto_a4

    :sswitch_84
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a4

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_a5

    const/4 v4, 0x1

    :goto_a6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a4
    const/4 v5, 0x0

    goto :goto_a5

    :cond_a5
    const/4 v4, 0x0

    goto :goto_a6

    :sswitch_85
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a6

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_a7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a6
    const/4 v5, 0x0

    goto :goto_a7

    :sswitch_86
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a7

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a8

    const/4 v7, 0x1

    :goto_a9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a7
    const/4 v5, 0x0

    goto :goto_a8

    :cond_a8
    const/4 v7, 0x0

    goto :goto_a9

    :sswitch_87
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_a9

    const/4 v4, 0x1

    :goto_aa
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a9
    const/4 v4, 0x0

    goto :goto_aa

    :sswitch_88
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_aa

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    :goto_ab
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->responseAsyncResult(IILandroid/content/Intent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_aa
    const/4 v7, 0x0

    goto :goto_ab

    :sswitch_89
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ab

    sget-object v4, Lcom/htc/app/admin/EasAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/app/admin/EasAccountInfo;

    :goto_ac
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->addEasAccount(Lcom/htc/app/admin/EasAccountInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_ab
    const/4 v5, 0x0

    goto :goto_ac

    :sswitch_8a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->deleteEasAccount(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_8b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveSyncDeviceId()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_8c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ac

    sget-object v4, Lcom/htc/app/admin/VpnConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/app/admin/VpnConfigInfo;

    :goto_ad
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->addVPN(Lcom/htc/app/admin/VpnConfigInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_ac
    const/4 v5, 0x0

    goto :goto_ad

    :sswitch_8d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ad

    sget-object v4, Lcom/htc/app/admin/VpnConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/app/admin/VpnConfigInfo;

    :goto_ae
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->deleteVPN(Lcom/htc/app/admin/VpnConfigInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_ad
    const/4 v5, 0x0

    goto :goto_ae

    :sswitch_8e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getVPNByConfigId(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_8f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeAllSDcards()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_90
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ae

    sget-object v4, Lcom/htc/app/admin/CertInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/app/admin/CertInfo;

    :goto_af
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCertification(Lcom/htc/app/admin/CertInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_ae
    const/4 v5, 0x0

    goto :goto_af

    :sswitch_91
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->encryptSDcards()I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_92
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEdmVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_93
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_af

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceAdminRestricted(Landroid/content/ComponentName;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_af
    const/4 v5, 0x0

    goto :goto_b0

    :sswitch_94
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b0

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceAdminRestrictedStatus(Landroid/content/ComponentName;I)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_b0
    const/4 v5, 0x0

    goto :goto_b1

    :sswitch_95
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b1

    const/4 v5, 0x1

    :goto_b2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setHtcSecureRule(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_b1
    const/4 v5, 0x0

    goto :goto_b2

    :sswitch_96
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getHtcSecureRule()Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_b2

    const/4 v4, 0x1

    :goto_b3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_b2
    const/4 v4, 0x0

    goto :goto_b3

    :sswitch_97
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getHtcSecureRuleVerifyCode()[B

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_98
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setHtcEncryptedCode([B)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_b3

    const/4 v4, 0x1

    :goto_b4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_b3
    const/4 v4, 0x0

    goto :goto_b4

    :sswitch_99
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setEncodedCodeByEncryptedCode([B)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_b4

    const/4 v4, 0x1

    :goto_b5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_b4
    const/4 v4, 0x0

    goto :goto_b5

    :sswitch_9a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCameraKeepOff()Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_b5

    const/4 v4, 0x1

    :goto_b6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_b5
    const/4 v4, 0x0

    goto :goto_b6

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
