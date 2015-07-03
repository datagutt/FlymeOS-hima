.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final ADN:I = 0x1

.field protected static final ADN_ALL:I = 0x7

.field protected static final ADN_SUB:I = 0x2

.field private static final DBG:Z = true

.field private static final DELETE_RAW_CONTACT_WHERE:Ljava/lang/String; = "sourceid=? AND account_name=\'SIM\' AND account_type=\'com.htc.contacts.sim\'"

.field private static final DELETE_SLOT1_RAW_CONTACT_WHERE:Ljava/lang/String; = "sourceid=? AND account_name=\'SIM\' AND account_type=\'com.htc.contacts.sim\'"

.field private static final DELETE_SLOT2_RAW_CONTACT_WHERE:Ljava/lang/String; = "sourceid=? AND account_name=\'SIM\' AND account_type=\'com.htc.contacts.sim_slot2\'"

.field protected static final FDN:I = 0x3

.field protected static final FDN_SUB:I = 0x4

.field private static final HTC_FDN:I = 0xb

.field private static final HTC_SDN:I = 0xa

.field private static final PHONEBOOK_ENTRY:I = 0x8

.field private static final PHONEBOOK_ENTRY_ID:I = 0x9

.field private static final PHONEBOOK_ENTRY_ID_SUB:I = 0xd

.field private static final PHONEBOOK_ENTRY_SUB:I = 0xc

.field protected static final SDN:I = 0x5

.field protected static final SDN_SUB:I = 0x6

.field protected static final STR_EMAILS:Ljava/lang/String; = "emails"

.field protected static final STR_NUMBER:Ljava/lang/String; = "number"

.field protected static final STR_PIN2:Ljava/lang/String; = "pin2"

.field protected static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;

.field static VERIZON_WPHONE_CONFIG:Z

.field private static mUrl:I

.field private static mUrl_ADN:I


# instance fields
.field private mAdnError:Lcom/android/internal/telephony/ADNErrorType;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    sput-boolean v2, Lcom/android/internal/telephony/IccProvider;->VERIZON_WPHONE_CONFIG:Z

    .line 73
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 92
    sput v2, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    .line 96
    sput v2, Lcom/android/internal/telephony/IccProvider;->mUrl_ADN:I

    .line 125
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 129
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/subId/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/subId/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn/subId/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "htc_sdn"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "phonebook"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "phonebook/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "phonebook/subId/#"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "phonebook/#/subId/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "htc_fdn"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 14
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # J

    .prologue
    .line 1073
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addIccRecordToEf: efType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", emails="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscription="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1076
    const/4 v12, 0x0

    .line 1084
    .local v12, "success":Z
    :try_start_0
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 1086
    .local v3, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_0

    .line 1087
    const-string v7, ""

    const-string v8, ""

    move-wide/from16 v4, p6

    move v6, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 1095
    .end local v3    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addIccRecordToEf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1096
    return v12

    .line 1092
    :catch_0
    move-exception v2

    .line 1093
    .local v2, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1090
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 14
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # J

    .prologue
    .line 1128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteIccRecordFromEf: efType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", emails="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pin2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscription="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1132
    const/4 v12, 0x0

    .line 1135
    .local v12, "success":Z
    :try_start_0
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 1137
    .local v3, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_0

    .line 1138
    const-string v9, ""

    const-string v10, ""

    move-wide/from16 v4, p6

    move v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v11, p5

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 1146
    .end local v3    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteIccRecordFromEf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1147
    return v12

    .line 1143
    :catch_0
    move-exception v2

    .line 1144
    .local v2, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1141
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private static deleteRawContact(JLandroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 12
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "recordNumber"    # Ljava/lang/String;

    .prologue
    .line 1481
    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p3, v3, v9

    .line 1483
    .local v3, "deleteArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1485
    .local v7, "result":I
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1486
    .local v4, "deleteUri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "caller_is_syncadapter"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1487
    .local v2, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1489
    const-string v5, "sourceid=? AND account_name=\'SIM\' AND account_type=\'com.htc.contacts.sim\'"

    .line 1490
    .local v5, "deleteWhere":Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 1491
    const-string v5, "sourceid=? AND account_name=\'SIM\' AND account_type=\'com.htc.contacts.sim_slot2\'"

    .line 1494
    :cond_0
    invoke-virtual {p2, v4, v5, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1499
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1500
    const-string v1, "com.htc.contacts.sim"

    .line 1502
    .local v1, "accountType":Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 1503
    const-string v1, "com.htc.contacts.sim_slot2"

    .line 1506
    :cond_1
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1508
    .local v6, "recordNumber_id":Ljava/lang/Long;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recordNumber="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "accountType"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1513
    .local v0, "WHERE":Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1514
    .local v8, "updateValues":Landroid/content/ContentValues;
    const-string v9, "raw_contact_id"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1515
    const-string v9, "data_id"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1516
    const-string v9, "recordNumber"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1517
    const-string v9, "recordLocation"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1519
    const-string v9, "accountType"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1522
    sget-object v9, Lcom/android/internal/telephony/IccContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v8, v0, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1525
    .end local v0    # "WHERE":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v6    # "recordNumber_id":Ljava/lang/Long;
    .end local v8    # "updateValues":Landroid/content/ContentValues;
    :cond_2
    return v7
.end method

.method private static deleteRawContact(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "recordNumber"    # Ljava/lang/String;

    .prologue
    .line 1657
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v2, v7

    .line 1659
    .local v2, "deleteArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1661
    .local v5, "result":I
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1662
    .local v3, "deleteUri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "caller_is_syncadapter"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1663
    .local v1, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1665
    const-string v7, "sourceid=? AND account_name=\'SIM\' AND account_type=\'com.htc.contacts.sim\'"

    invoke-virtual {p0, v3, v7, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1670
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1671
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1672
    .local v4, "recordNumber_id":Ljava/lang/Long;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recordNumber="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1674
    .local v0, "WHERE":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1675
    .local v6, "updateValues":Landroid/content/ContentValues;
    const-string v7, "raw_contact_id"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1676
    const-string v7, "data_id"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1677
    const-string v7, "recordNumber"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1678
    const-string v7, "recordLocation"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1680
    sget-object v7, Lcom/android/internal/telephony/IccContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v6, v0, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1683
    .end local v0    # "WHERE":Ljava/lang/String;
    .end local v4    # "recordNumber_id":Ljava/lang/Long;
    .end local v6    # "updateValues":Landroid/content/ContentValues;
    :cond_0
    return v5
.end method

.method private filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string v2, ""

    .line 313
    .local v2, "rtn":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 314
    const/4 p1, 0x0

    .line 335
    .end local p1    # "dialString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 317
    .restart local p1    # "dialString":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 318
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 319
    .local v0, "c":C
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_3

    .line 317
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 322
    :cond_3
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_2

    .line 325
    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 331
    .end local v0    # "c":C
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    move-object p1, v2

    .line 335
    goto :goto_0
.end method

.method private getLastError()Lcom/android/internal/telephony/ADNErrorType;
    .locals 4

    .prologue
    .line 1573
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1575
    .local v1, "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1576
    const-string v2, "SimProvider"

    const-string v3, "getLastError"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getLastError()Lcom/android/internal/telephony/ADNErrorType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1584
    .end local v1    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return-object v2

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1584
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1579
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private getRequestSubId(Landroid/net/Uri;)J
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 1561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestSubId url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1564
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1565
    :catch_0
    move-exception v0

    .line 1566
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static insertIntoContact(JLandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "hidden"    # Z
    .param p6, "recordNumber"    # J
    .param p8, "number1"    # Ljava/lang/String;
    .param p9, "number2"    # Ljava/lang/String;
    .param p10, "emails"    # Ljava/lang/String;
    .param p11, "rawContactId"    # I

    .prologue
    .line 1445
    new-instance v10, Landroid/accounts/Account;

    const-string v0, "SIM"

    const-string v1, "com.htc.contacts.sim"

    invoke-direct {v10, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    .local v10, "account":Landroid/accounts/Account;
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1449
    new-instance v10, Landroid/accounts/Account;

    .end local v10    # "account":Landroid/accounts/Account;
    const-string v0, "SIM"

    const-string v1, "com.htc.contacts.sim_slot2"

    invoke-direct {v10, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v10    # "account":Landroid/accounts/Account;
    :cond_0
    move-object v0, p2

    move-object v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    .line 1453
    invoke-static/range {v0 .. v10}, Lcom/android/internal/telephony/IccProvider;->insertIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/accounts/Account;)V

    .line 1455
    return-void
.end method

.method private static insertIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "hidden"    # Z
    .param p4, "recordNumber"    # J
    .param p6, "number1"    # Ljava/lang/String;
    .param p7, "number2"    # Ljava/lang/String;
    .param p8, "emails"    # Ljava/lang/String;
    .param p9, "rawContactId"    # I

    .prologue
    .line 1623
    new-instance v10, Landroid/accounts/Account;

    const-string v0, "SIM"

    const-string v1, "com.htc.contacts.sim"

    invoke-direct {v10, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lcom/android/internal/telephony/IccProvider;->insertIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/accounts/Account;)V

    .line 1625
    return-void
.end method

.method private static insertIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/accounts/Account;)V
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "hidden"    # Z
    .param p4, "recordNumber"    # J
    .param p6, "number1"    # Ljava/lang/String;
    .param p7, "number2"    # Ljava/lang/String;
    .param p8, "emails"    # Ljava/lang/String;
    .param p9, "rawContactId"    # I
    .param p10, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1638
    invoke-static/range {p1 .. p8}, Lcom/android/internal/telephony/ImportUtils;->generateSimCursorToUpdate(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1646
    .local v0, "simCursor":Landroid/database/Cursor;
    if-lez p9, :cond_1

    .line 1647
    invoke-static {v0, p0, p10, p9}, Lcom/android/internal/telephony/ImportUtils;->insertSimDataIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;I)I

    .line 1651
    :goto_0
    if-eqz v0, :cond_0

    .line 1652
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1654
    :cond_0
    return-void

    .line 1649
    :cond_1
    invoke-static {v0, p0, p10}, Lcom/android/internal/telephony/ImportUtils;->importSimIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)I

    goto :goto_0
.end method

.method private loadAllSimContacts(I)Landroid/database/Cursor;
    .locals 9
    .param p1, "efType"    # I

    .prologue
    .line 274
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v5

    .line 276
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 277
    :cond_0
    const/4 v6, 0x0

    new-array v1, v6, [Landroid/database/Cursor;

    .line 290
    .local v1, "result":[Landroid/database/Cursor;
    :cond_1
    new-instance v6, Landroid/database/MergeCursor;

    invoke-direct {v6, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v6

    .line 279
    .end local v1    # "result":[Landroid/database/Cursor;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 280
    .local v4, "subIdCount":I
    new-array v1, v4, [Landroid/database/Cursor;

    .line 283
    .restart local v1    # "result":[Landroid/database/Cursor;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 284
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubInfoRecord;

    iget-wide v2, v6, Landroid/telephony/SubInfoRecord;->subId:J

    .line 285
    .local v2, "subId":J
    invoke-direct {p0, p1, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v6

    aput-object v6, v1, v0

    .line 286
    const-string v6, "IccProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADN Records loaded for Subscription ::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadFromEf(IJ)Landroid/database/MatrixCursor;
    .locals 10
    .param p1, "efType"    # I
    .param p2, "subId"    # J

    .prologue
    const/16 v9, 0xb

    const/16 v8, 0xa

    .line 1033
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromEf: efType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", subscription="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1035
    const/4 v1, 0x0

    .line 1037
    .local v1, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 1039
    .local v5, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_0

    .line 1040
    invoke-interface {v5, p2, p3, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfForSubscriber(JI)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1048
    .end local v5    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 1050
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1053
    .local v0, "N":I
    sget v6, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    if-eq v6, v8, :cond_1

    sget v6, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    if-ne v6, v9, :cond_2

    :cond_1
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/ImportUtils;->PB_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1056
    .local v2, "cursor":Landroid/database/MatrixCursor;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adnRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1057
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_5

    .line 1058
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v6, v2, v4}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 1057
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1044
    .end local v0    # "N":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 1045
    .local v3, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1053
    .end local v3    # "ex":Ljava/lang/SecurityException;
    .restart local v0    # "N":I
    :cond_2
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    goto :goto_1

    .line 1063
    .end local v0    # "N":I
    :cond_3
    const-string v6, "IccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    sget v6, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    if-eq v6, v8, :cond_4

    sget v6, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    if-ne v6, v9, :cond_6

    :cond_4
    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/internal/telephony/ImportUtils;->PB_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :goto_3
    move-object v2, v6

    :cond_5
    return-object v2

    :cond_6
    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_3

    .line 1042
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private loadPBKEntry(Lcom/android/internal/telephony/PhoneBookEntry;Landroid/database/MatrixCursor;I)V
    .locals 10
    .param p1, "record"    # Lcom/android/internal/telephony/PhoneBookEntry;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .prologue
    .line 1334
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1335
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 1336
    .local v0, "alphaTag":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 1337
    .local v4, "number":Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v5, v8, v9

    .line 1338
    .local v5, "number1":Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v6, v8, v9

    .line 1339
    .local v6, "number2":Ljava/lang/String;
    iget v8, p1, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1340
    .local v3, "hidden":Ljava/lang/String;
    iget v8, p1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1341
    .local v7, "recordNumber":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 1342
    .local v2, "email":Ljava/lang/String;
    sget v8, Lcom/android/internal/telephony/IccProvider;->mUrl_ADN:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1343
    const/4 v8, 0x4

    new-array v1, v8, [Ljava/lang/Object;

    .line 1346
    .local v1, "contact":[Ljava/lang/Object;
    const/4 v8, 0x0

    aput-object v0, v1, v8

    .line 1347
    const/4 v8, 0x1

    aput-object v4, v1, v8

    .line 1348
    const/4 v8, 0x2

    aput-object v2, v1, v8

    .line 1349
    const/4 v8, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v8

    .line 1351
    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1370
    .end local v0    # "alphaTag":Ljava/lang/String;
    .end local v1    # "contact":[Ljava/lang/Object;
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "hidden":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "number1":Ljava/lang/String;
    .end local v6    # "number2":Ljava/lang/String;
    .end local v7    # "recordNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1352
    .restart local v0    # "alphaTag":Ljava/lang/String;
    .restart local v2    # "email":Ljava/lang/String;
    .restart local v3    # "hidden":Ljava/lang/String;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "number1":Ljava/lang/String;
    .restart local v6    # "number2":Ljava/lang/String;
    .restart local v7    # "recordNumber":Ljava/lang/String;
    :cond_1
    sget v8, Lcom/android/internal/telephony/IccProvider;->mUrl_ADN:I

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    sget v8, Lcom/android/internal/telephony/IccProvider;->mUrl_ADN:I

    const/16 v9, 0xc

    if-ne v8, v9, :cond_0

    .line 1356
    :cond_2
    const/4 v8, 0x7

    new-array v1, v8, [Ljava/lang/Object;

    .line 1359
    .restart local v1    # "contact":[Ljava/lang/Object;
    const/4 v8, 0x0

    aput-object v0, v1, v8

    .line 1360
    const/4 v8, 0x1

    aput-object v4, v1, v8

    .line 1361
    const/4 v8, 0x2

    aput-object v3, v1, v8

    .line 1362
    const/4 v8, 0x3

    aput-object v7, v1, v8

    .line 1363
    const/4 v8, 0x4

    aput-object v5, v1, v8

    .line 1364
    const/4 v8, 0x5

    aput-object v6, v1, v8

    .line 1365
    const/4 v8, 0x6

    aput-object v2, v1, v8

    .line 1367
    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadPBKEntryFromRIL()Landroid/database/MatrixCursor;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1292
    const/4 v4, 0x0

    .line 1294
    .local v4, "phoneBookEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    const-string v6, "loadPBKEntryFromRIL"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1297
    :try_start_0
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 1299
    .local v5, "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_0

    .line 1300
    invoke-interface {v5}, Lcom/android/internal/telephony/IIccPhoneBook;->getPBKEntries()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1309
    .end local v5    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v4, :cond_3

    .line 1311
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 1313
    .local v0, "N":I
    sget v6, Lcom/android/internal/telephony/IccProvider;->mUrl_ADN:I

    if-ne v6, v8, :cond_1

    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1316
    .local v1, "cursor":Landroid/database/MatrixCursor;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phoneBookEntries.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1317
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 1318
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct {p0, v6, v1, v3}, Lcom/android/internal/telephony/IccProvider;->loadPBKEntry(Lcom/android/internal/telephony/PhoneBookEntry;Landroid/database/MatrixCursor;I)V

    .line 1317
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1304
    .end local v0    # "N":I
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 1305
    .local v2, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1313
    .end local v2    # "ex":Ljava/lang/SecurityException;
    .restart local v0    # "N":I
    :cond_1
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/ImportUtils;->PB_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    goto :goto_1

    .line 1320
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    .restart local v3    # "i":I
    :cond_2
    const-string v6, "loadFromEf: return cursor"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1325
    .end local v0    # "N":I
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v3    # "i":I
    :goto_3
    return-object v1

    .line 1324
    :cond_3
    const-string v6, "IccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    sget v6, Lcom/android/internal/telephony/IccProvider;->mUrl_ADN:I

    if-ne v6, v8, :cond_4

    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/internal/telephony/ImportUtils;->PB_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :goto_4
    move-object v1, v6

    goto :goto_3

    :cond_4
    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/internal/telephony/ImportUtils;->PB_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_4

    .line 1302
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private loadPBKEntryFromRIL(J)Landroid/database/MatrixCursor;
    .locals 9
    .param p1, "subId"    # J

    .prologue
    const/4 v8, 0x1

    .line 1374
    const/4 v4, 0x0

    .line 1376
    .local v4, "phoneBookEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadPBKEntryFromRIL subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1379
    :try_start_0
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 1381
    .local v5, "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_0

    .line 1382
    invoke-interface {v5, p1, p2}, Lcom/android/internal/telephony/IIccPhoneBook;->getPBKEntriesForSubscriber(J)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1391
    .end local v5    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v4, :cond_3

    .line 1393
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 1395
    .local v0, "N":I
    sget v6, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    if-ne v6, v8, :cond_1

    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1398
    .local v1, "cursor":Landroid/database/MatrixCursor;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phoneBookEntries.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1399
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 1400
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct {p0, v6, v1, v3}, Lcom/android/internal/telephony/IccProvider;->loadPBKEntry(Lcom/android/internal/telephony/PhoneBookEntry;Landroid/database/MatrixCursor;I)V

    .line 1399
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1386
    .end local v0    # "N":I
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 1387
    .local v2, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1395
    .end local v2    # "ex":Ljava/lang/SecurityException;
    .restart local v0    # "N":I
    :cond_1
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/ImportUtils;->PB_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    goto :goto_1

    .line 1402
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    .restart local v3    # "i":I
    :cond_2
    const-string v6, "loadFromEf: return cursor"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1407
    .end local v0    # "N":I
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v3    # "i":I
    :goto_3
    return-object v1

    .line 1406
    :cond_3
    const-string v6, "IccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    sget v6, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    if-ne v6, v8, :cond_4

    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/internal/telephony/ImportUtils;->PB_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :goto_4
    move-object v1, v6

    goto :goto_3

    :cond_4
    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/internal/telephony/ImportUtils;->PB_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_4

    .line 1384
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 13
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .prologue
    .line 1157
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1159
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, "alphaTag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v9

    .line 1161
    .local v9, "number":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1163
    .local v4, "emailData":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadRecord: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    .line 1170
    .local v6, "emails":[Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    .local v5, "emailString":Ljava/lang/StringBuilder;
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v3, v1, v7

    .line 1173
    .local v3, "email":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding email:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1179
    .end local v3    # "email":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1190
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "emailString":Ljava/lang/StringBuilder;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_1
    sget v11, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    const/16 v12, 0xa

    if-eq v11, v12, :cond_2

    sget v11, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    const/16 v12, 0xb

    if-ne v11, v12, :cond_4

    .line 1192
    :cond_2
    const/4 v11, 0x7

    new-array v2, v11, [Ljava/lang/Object;

    .line 1194
    .local v2, "contact":[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 1195
    .local v10, "recordnumber":Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v0, v2, v11

    .line 1196
    const/4 v11, 0x1

    aput-object v9, v2, v11

    .line 1197
    const/4 v11, 0x2

    const/4 v12, 0x0

    aput-object v12, v2, v11

    .line 1198
    const/4 v11, 0x3

    aput-object v10, v2, v11

    .line 1199
    const/4 v11, 0x4

    const/4 v12, 0x0

    aput-object v12, v2, v11

    .line 1200
    const/4 v11, 0x5

    const/4 v12, 0x0

    aput-object v12, v2, v11

    .line 1201
    const/4 v11, 0x6

    aput-object v4, v2, v11

    .line 1202
    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1215
    .end local v0    # "alphaTag":Ljava/lang/String;
    .end local v2    # "contact":[Ljava/lang/Object;
    .end local v4    # "emailData":Ljava/lang/String;
    .end local v6    # "emails":[Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    .end local v10    # "recordnumber":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 1205
    .restart local v0    # "alphaTag":Ljava/lang/String;
    .restart local v4    # "emailData":Ljava/lang/String;
    .restart local v6    # "emails":[Ljava/lang/String;
    .restart local v9    # "number":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x4

    new-array v2, v11, [Ljava/lang/Object;

    .line 1207
    .restart local v2    # "contact":[Ljava/lang/Object;
    const/4 v11, 0x0

    aput-object v0, v2, v11

    .line 1208
    const/4 v11, 0x1

    aput-object v9, v2, v11

    .line 1209
    const/4 v11, 0x2

    aput-object v4, v2, v11

    .line 1210
    const/4 v11, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    .line 1211
    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1557
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inVal"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    .line 571
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 573
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 574
    const-string v2, "len of input String is 0"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 583
    .end local p1    # "inVal":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 577
    .restart local p1    # "inVal":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .line 579
    .local v1, "retVal":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 580
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object p1, v1

    .line 583
    goto :goto_0
.end method

.method private obtainsPbkEntryRecordNumberBySearch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "targetNumber"    # Ljava/lang/String;

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->loadPBKEntryFromRIL()Landroid/database/MatrixCursor;

    move-result-object v2

    .line 1700
    .local v2, "cursor":Landroid/database/MatrixCursor;
    const/4 v0, -0x1

    .line 1701
    .local v0, "bestmatch":I
    const/4 v5, 0x0

    .line 1703
    .local v5, "recordnumber":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 1704
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 1706
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1707
    .local v3, "name":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1709
    .local v4, "number":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1710
    .local v1, "count":I
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1711
    add-int/lit8 v1, v1, 0x1

    .line 1714
    :cond_1
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1715
    add-int/lit8 v1, v1, 0x1

    .line 1718
    :cond_2
    if-eqz v1, :cond_3

    if-ge v0, v1, :cond_3

    .line 1719
    move v0, v1

    .line 1720
    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1722
    const/4 v7, 0x2

    if-ne v0, v7, :cond_3

    move-object v6, v5

    .line 1728
    .end local v1    # "count":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "recordnumber":Ljava/lang/String;
    .local v6, "recordnumber":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1726
    .end local v6    # "recordnumber":Ljava/lang/String;
    .restart local v1    # "count":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "recordnumber":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .end local v1    # "count":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    :cond_4
    move-object v6, v5

    .line 1728
    .end local v5    # "recordnumber":Ljava/lang/String;
    .restart local v6    # "recordnumber":Ljava/lang/String;
    goto :goto_0
.end method

.method private udateSpeedDialList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 14
    .param p1, "recordNumber"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "number1"    # Ljava/lang/String;
    .param p4, "number2"    # Ljava/lang/String;
    .param p5, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 972
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/IccContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "updatelist"

    invoke-static {v2, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 975
    .local v3, "CONTENT_URI_UPDATELIST":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordNumber="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 978
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "number"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "recordNumber"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "recordLocation"

    aput-object v6, v4, v2

    .line 983
    .local v4, "PROJECTION_MAP":[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p5

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 986
    .local v9, "cur_updateList":Landroid/database/Cursor;
    if-eqz v9, :cond_5

    .line 987
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 989
    :cond_0
    const/4 v12, 0x0

    .line 990
    .local v12, "updateLocation":I
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 991
    .local v11, "speeddial":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 992
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 993
    const/4 v12, 0x1

    .line 996
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 997
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 998
    const/4 v12, 0x2

    .line 1001
    :cond_2
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1002
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1003
    const/4 v12, 0x3

    .line 1007
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1009
    .local v8, "WHERE":Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1011
    .local v13, "updateValues":Landroid/content/ContentValues;
    if-nez v12, :cond_6

    .line 1012
    const-string v2, "raw_contact_id"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1013
    const-string v2, "data_id"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1014
    const-string v2, "recordNumber"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1015
    const-string v2, "recordLocation"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1020
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/IccContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v13, v8, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1023
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1025
    .end local v8    # "WHERE":Ljava/lang/String;
    .end local v11    # "speeddial":Ljava/lang/String;
    .end local v12    # "updateLocation":I
    .end local v13    # "updateValues":Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1030
    .end local v3    # "CONTENT_URI_UPDATELIST":Landroid/net/Uri;
    .end local v4    # "PROJECTION_MAP":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v9    # "cur_updateList":Landroid/database/Cursor;
    :cond_5
    :goto_1
    return-void

    .line 1018
    .restart local v3    # "CONTENT_URI_UPDATELIST":Landroid/net/Uri;
    .restart local v4    # "PROJECTION_MAP":[Ljava/lang/String;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v8    # "WHERE":Ljava/lang/String;
    .restart local v9    # "cur_updateList":Landroid/database/Cursor;
    .restart local v11    # "speeddial":Ljava/lang/String;
    .restart local v12    # "updateLocation":I
    .restart local v13    # "updateValues":Landroid/content/ContentValues;
    :cond_6
    const-string v2, "recordLocation"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1027
    .end local v3    # "CONTENT_URI_UPDATELIST":Landroid/net/Uri;
    .end local v4    # "PROJECTION_MAP":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v8    # "WHERE":Ljava/lang/String;
    .end local v9    # "cur_updateList":Landroid/database/Cursor;
    .end local v11    # "speeddial":Ljava/lang/String;
    .end local v12    # "updateLocation":I
    .end local v13    # "updateValues":Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 1028
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "IccProvider"

    const-string v6, "update Speed dial list Failed:"

    invoke-static {v2, v6, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 13
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "subId"    # J

    .prologue
    .line 1102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIccRecordInEf: efType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldnumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newnumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscription="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1107
    const/4 v12, 0x0

    .line 1110
    .local v12, "success":Z
    :try_start_0
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 1112
    .local v3, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_0

    move-wide/from16 v4, p7

    move v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 1113
    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 1121
    .end local v3    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIccRecordInEf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1122
    return v12

    .line 1118
    :catch_0
    move-exception v2

    .line 1119
    .local v2, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1116
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private static updateIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "hidden"    # Z
    .param p4, "recordNumber"    # J
    .param p6, "number1"    # Ljava/lang/String;
    .param p7, "number2"    # Ljava/lang/String;
    .param p8, "emails"    # Ljava/lang/String;

    .prologue
    .line 1596
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "SIM"

    const-string v3, "com.htc.contacts.sim"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    .local v0, "account":Landroid/accounts/Account;
    invoke-static/range {p1 .. p8}, Lcom/android/internal/telephony/ImportUtils;->generateSimCursorToUpdate(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1608
    .local v1, "simCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1609
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1611
    :cond_0
    return-void
.end method


# virtual methods
.method addSimPbkEntry(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 11
    .param p1, "subId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "number1"    # Ljava/lang/String;
    .param p6, "number2"    # Ljava/lang/String;
    .param p7, "email"    # Ljava/lang/String;

    .prologue
    .line 1413
    const/4 v0, 0x0

    .line 1415
    .local v0, "error":Lcom/android/internal/telephony/ADNErrorType;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSimPbkEntry subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1418
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1421
    .local v1, "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 1422
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->addSimPbkEntryForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v0

    .line 1433
    .end local v1    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return-object v0

    .line 1425
    .restart local v1    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    const-string v2, "no simphonebook service"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1427
    .end local v1    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v9

    .line 1429
    .local v9, "ex":Landroid/os/RemoteException;
    const-string v2, "IccProvider"

    const-string v3, "[IccProvider]"

    invoke-static {v2, v3, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1430
    .end local v9    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 1431
    .local v9, "ex":Ljava/lang/SecurityException;
    const-string v2, "IccProvider"

    const-string v3, "[IccProvider]"

    invoke-static {v2, v3, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method addSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "number1"    # Ljava/lang/String;
    .param p4, "number2"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;

    .prologue
    .line 1219
    const/4 v6, 0x0

    .line 1221
    .local v6, "error":Lcom/android/internal/telephony/ADNErrorType;
    const-string v1, "addSimPbkEntry"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1224
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1227
    .local v0, "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1228
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->addSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v6

    .line 1239
    .end local v0    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return-object v6

    .line 1231
    .restart local v0    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    const-string v1, "no simphonebook service"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1233
    .end local v0    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v7

    .line 1235
    .local v7, "ex":Landroid/os/RemoteException;
    const-string v1, "IccProvider"

    const-string v2, "[IccProvider]"

    invoke-static {v1, v2, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1236
    .end local v7    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 1237
    .local v7, "ex":Ljava/lang/SecurityException;
    const-string v1, "IccProvider"

    const-string v2, "[IccProvider]"

    invoke-static {v1, v2, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 26
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 590
    const/4 v4, 0x0

    sput v4, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    .line 592
    const/4 v4, 0x0

    sput v4, Lcom/android/internal/telephony/IccProvider;->mUrl_ADN:I

    .line 595
    const-string v4, "delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 598
    sget-object v4, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 601
    .local v14, "match":I
    const/4 v4, 0x1

    if-eq v14, v4, :cond_0

    const/16 v4, 0x9

    if-eq v14, v4, :cond_0

    const/16 v4, 0xd

    if-ne v14, v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSimPhonebook()Z

    move-result v4

    if-nez v4, :cond_1

    .line 606
    const-string v4, "IccProvider"

    const-string v23, "This project does not support SIM phonebook."

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v4, 0x0

    .line 758
    :goto_0
    return v4

    .line 613
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v4

    if-nez v4, :cond_3

    .line 615
    sget-object v4, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/16 v23, 0xd

    move/from16 v0, v23

    if-ne v4, v0, :cond_2

    .line 616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/16 v23, 0x5

    move/from16 v0, v23

    if-eq v4, v0, :cond_3

    .line 618
    const-string v4, "IccProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "slot "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " SIM state is not ready. Can not access SIM phonebook."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v4, 0x0

    goto :goto_0

    .line 624
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/16 v23, 0x5

    move/from16 v0, v23

    if-eq v4, v0, :cond_3

    .line 626
    const-string v4, "IccProvider"

    const-string v23, "SIM state is not ready. Can not access SIM phonebook."

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v4, 0x0

    goto :goto_0

    .line 637
    :cond_3
    const/16 v4, 0x9

    if-eq v14, v4, :cond_4

    const/16 v4, 0xd

    if-ne v14, v4, :cond_8

    .line 641
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 643
    .local v18, "recordNumber":Ljava/lang/String;
    const/16 v4, 0x9

    if-ne v14, v4, :cond_5

    .line 644
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->deleteSimPbkEntry(Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v12

    .line 645
    .local v12, "error":Lcom/android/internal/telephony/ADNErrorType;
    if-eqz v12, :cond_7

    iget-boolean v4, v12, Lcom/android/internal/telephony/ADNErrorType;->mSuccess:Z

    if-eqz v4, :cond_7

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/internal/telephony/IccProvider;->deleteRawContact(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 651
    .end local v12    # "error":Lcom/android/internal/telephony/ADNErrorType;
    :cond_5
    const/16 v4, 0xd

    if-ne v14, v4, :cond_7

    .line 652
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccProvider;->deleteSimPbkEntry(JLjava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v12

    .line 653
    .restart local v12    # "error":Lcom/android/internal/telephony/ADNErrorType;
    if-eqz v12, :cond_6

    iget-boolean v4, v12, Lcom/android/internal/telephony/ADNErrorType;->mSuccess:Z

    if-eqz v4, :cond_7

    .line 654
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-wide/from16 v0, v24

    move-object/from16 v2, v18

    invoke-static {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccProvider;->deleteRawContact(JLandroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 659
    .end local v12    # "error":Lcom/android/internal/telephony/ADNErrorType;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 662
    .end local v18    # "recordNumber":Ljava/lang/String;
    :cond_8
    packed-switch v14, :pswitch_data_0

    .line 684
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot insert into URL: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 664
    :pswitch_0
    const/16 v5, 0x6f3a

    .line 665
    .local v5, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v10

    .line 688
    .local v10, "subId":J
    :goto_1
    const-string v4, "delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 691
    const/4 v6, 0x0

    .line 692
    .local v6, "tag":Ljava/lang/String;
    const/4 v7, 0x0

    .line 693
    .local v7, "number":Ljava/lang/String;
    const/4 v8, 0x0

    .line 694
    .local v8, "emails":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 696
    .local v9, "pin2":Ljava/lang/String;
    const-string v4, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 697
    .local v21, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v15, v0

    .line 699
    .local v15, "n":I
    :cond_9
    :goto_2
    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_e

    .line 700
    aget-object v17, v21, v15

    .line 701
    .local v17, "param":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parsing \'"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v23, "\'"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 703
    const-string v4, "="

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 705
    .local v16, "pair":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v4, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v4, v0, :cond_a

    .line 706
    const-string v4, "IccProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 669
    .end local v5    # "efType":I
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "emails":[Ljava/lang/String;
    .end local v9    # "pin2":Ljava/lang/String;
    .end local v10    # "subId":J
    .end local v15    # "n":I
    .end local v16    # "pair":[Ljava/lang/String;
    .end local v17    # "param":Ljava/lang/String;
    .end local v21    # "tokens":[Ljava/lang/String;
    :pswitch_1
    const/16 v5, 0x6f3a

    .line 670
    .restart local v5    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 671
    .restart local v10    # "subId":J
    goto :goto_1

    .line 674
    .end local v5    # "efType":I
    .end local v10    # "subId":J
    :pswitch_2
    const/16 v5, 0x6f3b

    .line 675
    .restart local v5    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v10

    .line 676
    .restart local v10    # "subId":J
    goto :goto_1

    .line 679
    .end local v5    # "efType":I
    .end local v10    # "subId":J
    :pswitch_3
    const/16 v5, 0x6f3b

    .line 680
    .restart local v5    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 681
    .restart local v10    # "subId":J
    goto/16 :goto_1

    .line 709
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "number":Ljava/lang/String;
    .restart local v8    # "emails":[Ljava/lang/String;
    .restart local v9    # "pin2":Ljava/lang/String;
    .restart local v15    # "n":I
    .restart local v16    # "pair":[Ljava/lang/String;
    .restart local v17    # "param":Ljava/lang/String;
    .restart local v21    # "tokens":[Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    aget-object v4, v16, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 710
    .local v13, "key":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v16, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 712
    .local v22, "val":Ljava/lang/String;
    const-string v4, "tag"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 713
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 714
    :cond_b
    const-string v4, "number"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 715
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 716
    :cond_c
    const-string v4, "emails"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 718
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 719
    :cond_d
    const-string v4, "pin2"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 720
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 724
    .end local v13    # "key":Ljava/lang/String;
    .end local v16    # "pair":[Ljava/lang/String;
    .end local v17    # "param":Ljava/lang/String;
    .end local v22    # "val":Ljava/lang/String;
    :cond_e
    const/4 v4, 0x3

    if-ne v5, v4, :cond_f

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 725
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 732
    :cond_f
    const/4 v4, 0x1

    if-ne v14, v4, :cond_11

    .line 733
    const/16 v4, 0x8

    sput v4, Lcom/android/internal/telephony/IccProvider;->mUrl_ADN:I

    .line 734
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/internal/telephony/IccProvider;->obtainsPbkEntryRecordNumberBySearch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 735
    .local v19, "recordnumber":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 736
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->deleteSimPbkEntry(Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v12

    .line 737
    .restart local v12    # "error":Lcom/android/internal/telephony/ADNErrorType;
    if-eqz v12, :cond_10

    iget-boolean v4, v12, Lcom/android/internal/telephony/ADNErrorType;->mSuccess:Z

    if-eqz v4, :cond_10

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/internal/telephony/IccProvider;->deleteRawContact(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 741
    .end local v12    # "error":Lcom/android/internal/telephony/ADNErrorType;
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_0

    .end local v19    # "recordnumber":Ljava/lang/String;
    :cond_11
    move-object/from16 v4, p0

    .line 744
    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v20

    .line 745
    .local v20, "success":Z
    if-nez v20, :cond_12

    .line 746
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 749
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isHTCLASku()Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x3

    if-ne v14, v4, :cond_13

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v23, "SIM_FDN"

    move-object/from16 v0, v23

    invoke-static {v4, v6, v7, v0}, Lcom/android/internal/telephony/ImportUtils;->deleteRawContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 757
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 758
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 662
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method deleteSimPbkEntry(JLjava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 5
    .param p1, "subId"    # J
    .param p3, "recordNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1457
    const-string v3, "deleteSimPbkEntry"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1458
    const/4 v0, 0x0

    .line 1461
    .local v0, "error":Lcom/android/internal/telephony/ADNErrorType;
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1464
    .local v2, "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 1465
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->deleteSimPbkEntryForSubscriber(JI)Lcom/android/internal/telephony/ADNErrorType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1477
    .end local v2    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return-object v0

    .line 1467
    :catch_0
    move-exception v1

    .line 1468
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v0, Lcom/android/internal/telephony/ADNErrorType;

    .end local v0    # "error":Lcom/android/internal/telephony/ADNErrorType;
    invoke-direct {v0}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 1469
    .restart local v0    # "error":Lcom/android/internal/telephony/ADNErrorType;
    iput-boolean v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mSuccess:Z

    goto :goto_0

    .line 1471
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1472
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1473
    new-instance v0, Lcom/android/internal/telephony/ADNErrorType;

    .end local v0    # "error":Lcom/android/internal/telephony/ADNErrorType;
    invoke-direct {v0}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 1474
    .restart local v0    # "error":Lcom/android/internal/telephony/ADNErrorType;
    iput-boolean v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mSuccess:Z

    goto :goto_0
.end method

.method deleteSimPbkEntry(Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 5
    .param p1, "recordNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1243
    const-string v3, "deleteSimPbkEntry"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1244
    const/4 v0, 0x0

    .line 1247
    .local v0, "error":Lcom/android/internal/telephony/ADNErrorType;
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1250
    .local v2, "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 1251
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->deleteSimPbkEntry(I)Lcom/android/internal/telephony/ADNErrorType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1263
    .end local v2    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return-object v0

    .line 1253
    :catch_0
    move-exception v1

    .line 1254
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v0, Lcom/android/internal/telephony/ADNErrorType;

    .end local v0    # "error":Lcom/android/internal/telephony/ADNErrorType;
    invoke-direct {v0}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 1255
    .restart local v0    # "error":Lcom/android/internal/telephony/ADNErrorType;
    iput-boolean v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mSuccess:Z

    goto :goto_0

    .line 1257
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1258
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1259
    new-instance v0, Lcom/android/internal/telephony/ADNErrorType;

    .end local v0    # "error":Lcom/android/internal/telephony/ADNErrorType;
    invoke-direct {v0}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 1260
    .restart local v0    # "error":Lcom/android/internal/telephony/ADNErrorType;
    iput-boolean v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mSuccess:Z

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 295
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 33
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 344
    const/16 v30, 0x0

    .line 347
    .local v30, "pin2":Ljava/lang/String;
    const-string v2, "insert"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 349
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v29

    .line 351
    .local v29, "match":I
    const/4 v2, 0x1

    move/from16 v0, v29

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    move/from16 v0, v29

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    move/from16 v0, v29

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSimPhonebook()Z

    move-result v2

    if-nez v2, :cond_1

    .line 356
    const-string v2, "IccProvider"

    const-string v8, "This project does not support SIM phonebook."

    invoke-static {v2, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/16 v31, 0x0

    move-object/from16 v13, v30

    .line 566
    .end local v30    # "pin2":Ljava/lang/String;
    .local v13, "pin2":Ljava/lang/String;
    :goto_0
    return-object v31

    .line 366
    .end local v13    # "pin2":Ljava/lang/String;
    .restart local v30    # "pin2":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x8

    move/from16 v0, v29

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    move/from16 v0, v29

    if-eq v0, v2, :cond_2

    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_13

    .line 371
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_5

    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "name":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_6

    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "number":Ljava/lang/String;
    :goto_2
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_7

    const-string v5, ""

    .line 374
    .local v5, "number1":Ljava/lang/String;
    :goto_3
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_8

    const-string v6, ""

    .line 375
    .local v6, "number2":Ljava/lang/String;
    :goto_4
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_9

    const-string v7, ""

    .line 377
    .local v7, "emails":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 379
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 382
    const/16 v28, 0x0

    .line 383
    .local v28, "error":Lcom/android/internal/telephony/ADNErrorType;
    const/16 v2, 0x8

    move/from16 v0, v29

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_a

    :cond_3
    move-object/from16 v2, p0

    .line 384
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->addSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v28

    .line 391
    :cond_4
    :goto_6
    if-eqz v28, :cond_f

    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/telephony/ADNErrorType;->mSuccess:Z

    if-nez v2, :cond_f

    .line 393
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_c

    .line 394
    if-eqz v28, :cond_b

    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_b

    .line 395
    sget-object v31, Lcom/android/internal/telephony/IccContract$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    move-object/from16 v13, v30

    .end local v30    # "pin2":Ljava/lang/String;
    .restart local v13    # "pin2":Ljava/lang/String;
    goto :goto_0

    .line 371
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "number1":Ljava/lang/String;
    .end local v6    # "number2":Ljava/lang/String;
    .end local v7    # "emails":Ljava/lang/String;
    .end local v13    # "pin2":Ljava/lang/String;
    .end local v28    # "error":Lcom/android/internal/telephony/ADNErrorType;
    .restart local v30    # "pin2":Ljava/lang/String;
    :cond_5
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 372
    .restart local v3    # "name":Ljava/lang/String;
    :cond_6
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 373
    .restart local v4    # "number":Ljava/lang/String;
    :cond_7
    const-string v2, "number1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 374
    .restart local v5    # "number1":Ljava/lang/String;
    :cond_8
    const-string v2, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 375
    .restart local v6    # "number2":Ljava/lang/String;
    :cond_9
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 386
    .restart local v7    # "emails":Ljava/lang/String;
    .restart local v28    # "error":Lcom/android/internal/telephony/ADNErrorType;
    :cond_a
    const/16 v2, 0xc

    move/from16 v0, v29

    if-ne v0, v2, :cond_4

    .line 387
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v10

    move-object/from16 v9, p0

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/telephony/IccProvider;->addSimPbkEntry(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v28

    goto :goto_6

    .line 397
    :cond_b
    const/16 v31, 0x0

    move-object/from16 v13, v30

    .end local v30    # "pin2":Ljava/lang/String;
    .restart local v13    # "pin2":Ljava/lang/String;
    goto/16 :goto_0

    .line 401
    .end local v13    # "pin2":Ljava/lang/String;
    .restart local v30    # "pin2":Ljava/lang/String;
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->getHtcSenseVersion()F

    move-result v2

    const v8, 0x3fcccccd    # 1.6f

    cmpl-float v2, v2, v8

    if-lez v2, :cond_d

    .line 403
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    packed-switch v2, :pswitch_data_0

    .line 411
    :pswitch_0
    sget-object v31, Lcom/android/internal/telephony/IccContract$SimContacts;->ERROR_URI:Landroid/net/Uri;

    .local v31, "resultUri":Landroid/net/Uri;
    :goto_7
    move-object/from16 v13, v30

    .line 467
    .end local v30    # "pin2":Ljava/lang/String;
    .restart local v13    # "pin2":Ljava/lang/String;
    goto/16 :goto_0

    .line 405
    .end local v13    # "pin2":Ljava/lang/String;
    .end local v31    # "resultUri":Landroid/net/Uri;
    .restart local v30    # "pin2":Ljava/lang/String;
    :pswitch_1
    sget-object v31, Lcom/android/internal/telephony/IccContract$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    .line 406
    .restart local v31    # "resultUri":Landroid/net/Uri;
    goto :goto_7

    .line 408
    .end local v31    # "resultUri":Landroid/net/Uri;
    :pswitch_2
    sget-object v2, Lcom/android/internal/telephony/IccContract$SimContacts;->EMAIL_ANR_FULL_URI:Landroid/net/Uri;

    move-object/from16 v0, v28

    iget v8, v0, Lcom/android/internal/telephony/ADNErrorType;->mError_type:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 409
    .restart local v31    # "resultUri":Landroid/net/Uri;
    goto :goto_7

    .line 414
    .end local v31    # "resultUri":Landroid/net/Uri;
    :cond_d
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_e

    .line 417
    sget-object v31, Lcom/android/internal/telephony/IccContract$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    .restart local v31    # "resultUri":Landroid/net/Uri;
    goto :goto_7

    .line 422
    .end local v31    # "resultUri":Landroid/net/Uri;
    :cond_e
    sget-object v31, Lcom/android/internal/telephony/IccContract$SimContacts;->ERROR_URI:Landroid/net/Uri;

    .restart local v31    # "resultUri":Landroid/net/Uri;
    goto :goto_7

    .line 432
    .end local v31    # "resultUri":Landroid/net/Uri;
    :cond_f
    if-nez v28, :cond_11

    .line 433
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_10

    const/16 v31, 0x0

    .restart local v31    # "resultUri":Landroid/net/Uri;
    :goto_8
    goto :goto_7

    .end local v31    # "resultUri":Landroid/net/Uri;
    :cond_10
    sget-object v31, Lcom/android/internal/telephony/IccContract$SimContacts;->ERROR_URI:Landroid/net/Uri;

    goto :goto_8

    .line 438
    :cond_11
    sget-object v2, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/internal/telephony/ADNErrorType;->mIndex:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v31

    .line 442
    .restart local v31    # "resultUri":Landroid/net/Uri;
    const/16 v2, 0xc

    move/from16 v0, v29

    if-ne v0, v2, :cond_12

    .line 443
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v13, 0x0

    move-object/from16 v0, v28

    iget-wide v14, v0, Lcom/android/internal/telephony/ADNErrorType;->mIndex:J

    const/16 v19, 0x0

    move-object v11, v3

    move-object v12, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-static/range {v8 .. v19}, Lcom/android/internal/telephony/IccProvider;->insertIntoContact(JLandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_7

    .line 454
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v11, 0x0

    move-object/from16 v0, v28

    iget-wide v12, v0, Lcom/android/internal/telephony/ADNErrorType;->mIndex:J

    const/16 v17, 0x0

    move-object v9, v3

    move-object v10, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    invoke-static/range {v8 .. v17}, Lcom/android/internal/telephony/IccProvider;->insertIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_7

    .line 472
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "number1":Ljava/lang/String;
    .end local v6    # "number2":Ljava/lang/String;
    .end local v7    # "emails":Ljava/lang/String;
    .end local v28    # "error":Lcom/android/internal/telephony/ADNErrorType;
    .end local v31    # "resultUri":Landroid/net/Uri;
    :cond_13
    packed-switch v29, :pswitch_data_1

    .line 496
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot insert into URL: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    :pswitch_3
    const/16 v9, 0x6f3a

    .line 475
    .local v9, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    .local v14, "subId":J
    move-object/from16 v13, v30

    .line 500
    .end local v30    # "pin2":Ljava/lang/String;
    .restart local v13    # "pin2":Ljava/lang/String;
    :goto_9
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 501
    .local v10, "tag":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 503
    .restart local v4    # "number":Ljava/lang/String;
    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object v11, v4

    invoke-direct/range {v8 .. v15}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v32

    .line 505
    .local v32, "success":Z
    if-nez v32, :cond_15

    .line 507
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getLastError()Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v28

    .line 509
    .restart local v28    # "error":Lcom/android/internal/telephony/ADNErrorType;
    if-eqz v28, :cond_14

    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_14

    .line 511
    sget-object v31, Lcom/android/internal/telephony/IccContract$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 479
    .end local v4    # "number":Ljava/lang/String;
    .end local v9    # "efType":I
    .end local v10    # "tag":Ljava/lang/String;
    .end local v13    # "pin2":Ljava/lang/String;
    .end local v14    # "subId":J
    .end local v28    # "error":Lcom/android/internal/telephony/ADNErrorType;
    .end local v32    # "success":Z
    .restart local v30    # "pin2":Ljava/lang/String;
    :pswitch_4
    const/16 v9, 0x6f3a

    .line 480
    .restart local v9    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    .restart local v14    # "subId":J
    move-object/from16 v13, v30

    .line 481
    .end local v30    # "pin2":Ljava/lang/String;
    .restart local v13    # "pin2":Ljava/lang/String;
    goto :goto_9

    .line 484
    .end local v9    # "efType":I
    .end local v13    # "pin2":Ljava/lang/String;
    .end local v14    # "subId":J
    .restart local v30    # "pin2":Ljava/lang/String;
    :pswitch_5
    const/16 v9, 0x6f3b

    .line 485
    .restart local v9    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    .line 486
    .restart local v14    # "subId":J
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 487
    .end local v30    # "pin2":Ljava/lang/String;
    .restart local v13    # "pin2":Ljava/lang/String;
    goto :goto_9

    .line 490
    .end local v9    # "efType":I
    .end local v13    # "pin2":Ljava/lang/String;
    .end local v14    # "subId":J
    .restart local v30    # "pin2":Ljava/lang/String;
    :pswitch_6
    const/16 v9, 0x6f3b

    .line 491
    .restart local v9    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 492
    .restart local v14    # "subId":J
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 493
    .end local v30    # "pin2":Ljava/lang/String;
    .restart local v13    # "pin2":Ljava/lang/String;
    goto :goto_9

    .line 514
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v10    # "tag":Ljava/lang/String;
    .restart local v28    # "error":Lcom/android/internal/telephony/ADNErrorType;
    .restart local v32    # "success":Z
    :cond_14
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 517
    .end local v28    # "error":Lcom/android/internal/telephony/ADNErrorType;
    :cond_15
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isHTCLASku()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x3

    move/from16 v0, v29

    if-ne v0, v2, :cond_16

    .line 518
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getLastError()Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v28

    .line 520
    .restart local v28    # "error":Lcom/android/internal/telephony/ADNErrorType;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v19, 0x0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/internal/telephony/ADNErrorType;->mIndex:J

    move-wide/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    new-instance v26, Landroid/accounts/Account;

    const-string v2, "SIM_FDN"

    const-string v8, "com.htc.contacts.sim"

    move-object/from16 v0, v26

    invoke-direct {v0, v2, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v10

    move-object/from16 v18, v4

    invoke-static/range {v16 .. v26}, Lcom/android/internal/telephony/IccProvider;->insertIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/accounts/Account;)V

    .line 535
    .end local v28    # "error":Lcom/android/internal/telephony/ADNErrorType;
    :cond_16
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .local v27, "buf":Ljava/lang/StringBuilder;
    packed-switch v29, :pswitch_data_2

    .line 555
    :goto_a
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 559
    .restart local v31    # "resultUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 538
    .end local v31    # "resultUri":Landroid/net/Uri;
    :pswitch_7
    const-string v2, "adn/"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 542
    :pswitch_8
    const-string v2, "adn/subId/"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 546
    :pswitch_9
    const-string v2, "fdn/"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 550
    :pswitch_a
    const-string v2, "fdn/subId/"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 472
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 536
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/16 v6, 0x6f49

    const/16 v5, 0x6f3b

    const/16 v4, 0xc

    .line 177
    const-string v1, "query"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 181
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-ne v1, v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSimPhonebook()Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    const-string v1, "IccProvider"

    const-string v2, "This project does not support SIM phonebook."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return-object v0

    .line 193
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_4

    .line 195
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-eq v1, v4, :cond_2

    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 198
    const-string v1, "IccProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SIM state is not ready. Can not access SIM phonebook."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 206
    const-string v1, "IccProvider"

    const-string v2, "SIM state is not ready. Can not access SIM phonebook."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_4
    sput v7, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    .line 220
    sput v7, Lcom/android/internal/telephony/IccProvider;->mUrl_ADN:I

    .line 223
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 268
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :pswitch_1
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/IccProvider;->mUrl_ADN:I

    .line 228
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->loadPBKEntryFromRIL()Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    .line 231
    :pswitch_2
    const/16 v0, 0x6f3a

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    .line 234
    :pswitch_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    invoke-direct {p0, v5, v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    .line 237
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v5, v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    .line 240
    :pswitch_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    invoke-direct {p0, v6, v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    .line 243
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v6, v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    .line 246
    :pswitch_7
    const/16 v0, 0x6f3a

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->loadAllSimContacts(I)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 249
    :pswitch_8
    const/16 v0, 0xa

    sput v0, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    .line 250
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    invoke-direct {p0, v6, v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    .line 254
    :pswitch_9
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/telephony/IccProvider;->mUrl_ADN:I

    .line 255
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->loadPBKEntryFromRIL()Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    .line 259
    :pswitch_a
    sput v4, Lcom/android/internal/telephony/IccProvider;->mUrl_ADN:I

    .line 260
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadPBKEntryFromRIL(J)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    .line 264
    :pswitch_b
    const/16 v0, 0xb

    sput v0, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    .line 265
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    invoke-direct {p0, v5, v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 40
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 763
    const/16 v31, 0x0

    .line 766
    .local v31, "pin2":Ljava/lang/String;
    const/16 v34, 0x0

    .line 767
    .local v34, "error":Lcom/android/internal/telephony/ADNErrorType;
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    .line 769
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/telephony/IccProvider;->mUrl_ADN:I

    .line 772
    const-string v2, "update"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 774
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v35

    .line 776
    .local v35, "match":I
    const/4 v2, 0x1

    move/from16 v0, v35

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    move/from16 v0, v35

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    move/from16 v0, v35

    if-ne v0, v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSimPhonebook()Z

    move-result v2

    if-nez v2, :cond_2

    .line 781
    const-string v2, "IccProvider"

    const-string v9, "This project does not support SIM phonebook."

    invoke-static {v2, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/16 v37, 0x0

    .line 964
    :cond_1
    :goto_0
    return v37

    .line 788
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_4

    .line 790
    const/16 v2, 0xd

    move/from16 v0, v35

    if-ne v0, v2, :cond_3

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v9, 0x5

    if-eq v2, v9, :cond_4

    .line 793
    const-string v2, "IccProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slot "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " SIM state is not ready. Can not access SIM phonebook."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/16 v37, 0x0

    goto :goto_0

    .line 799
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v9, 0x5

    if-eq v2, v9, :cond_4

    .line 801
    const-string v2, "IccProvider"

    const-string v9, "SIM state is not ready. Can not access SIM phonebook."

    invoke-static {v2, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/16 v37, 0x0

    goto :goto_0

    .line 811
    :cond_4
    const/16 v2, 0x9

    move/from16 v0, v35

    if-eq v0, v2, :cond_5

    const/4 v2, 0x1

    move/from16 v0, v35

    if-eq v0, v2, :cond_5

    const/16 v2, 0xd

    move/from16 v0, v35

    if-ne v0, v2, :cond_16

    .line 816
    :cond_5
    const/16 v37, 0x1

    .line 817
    .local v37, "numerOfUpdate":I
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_6

    .line 818
    const/16 v2, 0x8

    sput v2, Lcom/android/internal/telephony/IccProvider;->mUrl_ADN:I

    .line 820
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_7

    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/android/internal/telephony/IccProvider;->obtainsPbkEntryRecordNumberBySearch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 824
    .local v3, "recordNumber":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 825
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 820
    .end local v3    # "recordNumber":Ljava/lang/String;
    :cond_7
    const-string v2, "recordNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 828
    .restart local v3    # "recordNumber":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_c

    const-string v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 829
    .local v4, "name":Ljava/lang/String;
    :goto_2
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_d

    const-string v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 830
    .local v5, "number":Ljava/lang/String;
    :goto_3
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_e

    const-string v6, ""

    .line 831
    .local v6, "number1":Ljava/lang/String;
    :goto_4
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_f

    const-string v7, ""

    .line 832
    .local v7, "number2":Ljava/lang/String;
    :goto_5
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_10

    const-string v8, ""

    .line 835
    .local v8, "emails":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 836
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 837
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 842
    const/16 v2, 0x9

    move/from16 v0, v35

    if-eq v0, v2, :cond_9

    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_11

    :cond_9
    move-object/from16 v2, p0

    .line 843
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/IccProvider;->updateSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v34

    .line 850
    :cond_a
    :goto_7
    if-eqz v34, :cond_12

    move-object/from16 v0, v34

    iget-boolean v2, v0, Lcom/android/internal/telephony/ADNErrorType;->mSuccess:Z

    if-nez v2, :cond_12

    .line 851
    const/16 v37, 0x0

    .line 853
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->getHtcSenseVersion()F

    move-result v2

    const v9, 0x3fcccccd    # 1.6f

    cmpl-float v2, v2, v9

    if-lez v2, :cond_1

    .line 854
    const/16 v2, 0x9

    move/from16 v0, v35

    if-eq v0, v2, :cond_b

    const/16 v2, 0xd

    move/from16 v0, v35

    if-ne v0, v2, :cond_1

    .line 860
    :cond_b
    move-object/from16 v0, v34

    iget v2, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    packed-switch v2, :pswitch_data_0

    .line 865
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    sget-object v9, Lcom/android/internal/telephony/IccContract$SimContacts;->ERROR_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 828
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "number1":Ljava/lang/String;
    .end local v7    # "number2":Ljava/lang/String;
    .end local v8    # "emails":Ljava/lang/String;
    :cond_c
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 829
    .restart local v4    # "name":Ljava/lang/String;
    :cond_d
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 830
    .restart local v5    # "number":Ljava/lang/String;
    :cond_e
    const-string v2, "number1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 831
    .restart local v6    # "number1":Ljava/lang/String;
    :cond_f
    const-string v2, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    .line 832
    .restart local v7    # "number2":Ljava/lang/String;
    :cond_10
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6

    .line 845
    .restart local v8    # "emails":Ljava/lang/String;
    :cond_11
    const/16 v2, 0xd

    move/from16 v0, v35

    if-ne v0, v2, :cond_a

    .line 846
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v10

    move-object/from16 v9, p0

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/android/internal/telephony/IccProvider;->updateSimPbkEntry(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v34

    goto :goto_7

    .line 862
    :pswitch_0
    sget-object v2, Lcom/android/internal/telephony/IccContract$SimContacts;->EMAIL_ANR_FULL_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    iget v9, v0, Lcom/android/internal/telephony/ADNErrorType;->mError_type:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    .line 863
    .local v38, "resultUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual/range {v38 .. v38}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 872
    .end local v38    # "resultUri":Landroid/net/Uri;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 875
    .local v14, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v9, p0

    move-object v10, v3

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    .line 876
    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/IccProvider;->udateSpeedDialList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 881
    :cond_13
    const/16 v2, 0x9

    move/from16 v0, v35

    if-eq v0, v2, :cond_14

    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_15

    .line 882
    :cond_14
    invoke-static {v14, v3}, Lcom/android/internal/telephony/ImportUtils;->deleteSimContactData(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v23

    .line 885
    .local v23, "rawId":I
    if-lez v23, :cond_1

    .line 886
    const/16 v17, 0x0

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/android/internal/telephony/ADNErrorType;->mIndex:J

    move-wide/from16 v18, v0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    invoke-static/range {v14 .. v23}, Lcom/android/internal/telephony/IccProvider;->insertIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 890
    .end local v23    # "rawId":I
    :cond_15
    const/16 v2, 0xd

    move/from16 v0, v35

    if-ne v0, v2, :cond_1

    .line 891
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-static {v10, v11, v14, v3}, Lcom/android/internal/telephony/ImportUtils;->deleteSimContactData(JLandroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v23

    .line 894
    .restart local v23    # "rawId":I
    if-lez v23, :cond_1

    .line 895
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v12

    const/16 v17, 0x0

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/android/internal/telephony/ADNErrorType;->mIndex:J

    move-wide/from16 v18, v0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    invoke-static/range {v12 .. v23}, Lcom/android/internal/telephony/IccProvider;->insertIntoContact(JLandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 905
    .end local v3    # "recordNumber":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "number1":Ljava/lang/String;
    .end local v7    # "number2":Ljava/lang/String;
    .end local v8    # "emails":Ljava/lang/String;
    .end local v14    # "resolver":Landroid/content/ContentResolver;
    .end local v23    # "rawId":I
    .end local v37    # "numerOfUpdate":I
    :cond_16
    packed-switch v35, :pswitch_data_1

    .line 929
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot insert into URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 907
    :pswitch_1
    const/16 v26, 0x6f3a

    .line 908
    .local v26, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v32

    .line 933
    .local v32, "subId":J
    :goto_8
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 934
    .local v27, "tag":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 935
    .restart local v5    # "number":Ljava/lang/String;
    const/4 v8, 0x0

    .line 936
    .local v8, "emails":[Ljava/lang/String;
    const-string v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 937
    .local v29, "newTag":Ljava/lang/String;
    const-string v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 938
    .local v30, "newNumber":Ljava/lang/String;
    const/16 v36, 0x0

    .local v36, "newEmails":[Ljava/lang/String;
    move-object/from16 v25, p0

    move-object/from16 v28, v5

    .line 940
    invoke-direct/range {v25 .. v33}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v39

    .line 943
    .local v39, "success":Z
    if-nez v39, :cond_17

    .line 944
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 912
    .end local v5    # "number":Ljava/lang/String;
    .end local v8    # "emails":[Ljava/lang/String;
    .end local v26    # "efType":I
    .end local v27    # "tag":Ljava/lang/String;
    .end local v29    # "newTag":Ljava/lang/String;
    .end local v30    # "newNumber":Ljava/lang/String;
    .end local v32    # "subId":J
    .end local v36    # "newEmails":[Ljava/lang/String;
    .end local v39    # "success":Z
    :pswitch_2
    const/16 v26, 0x6f3a

    .line 913
    .restart local v26    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v32

    .line 914
    .restart local v32    # "subId":J
    goto :goto_8

    .line 917
    .end local v26    # "efType":I
    .end local v32    # "subId":J
    :pswitch_3
    const/16 v26, 0x6f3b

    .line 918
    .restart local v26    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v32

    .line 919
    .restart local v32    # "subId":J
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 920
    goto :goto_8

    .line 923
    .end local v26    # "efType":I
    .end local v32    # "subId":J
    :pswitch_4
    const/16 v26, 0x6f3b

    .line 924
    .restart local v26    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v32

    .line 925
    .restart local v32    # "subId":J
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 926
    goto :goto_8

    .line 948
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v8    # "emails":[Ljava/lang/String;
    .restart local v27    # "tag":Ljava/lang/String;
    .restart local v29    # "newTag":Ljava/lang/String;
    .restart local v30    # "newNumber":Ljava/lang/String;
    .restart local v36    # "newEmails":[Ljava/lang/String;
    .restart local v39    # "success":Z
    :cond_17
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isHTCLASku()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x3

    move/from16 v0, v35

    if-ne v0, v2, :cond_18

    .line 949
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getLastError()Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v34

    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 952
    .restart local v14    # "resolver":Landroid/content/ContentResolver;
    const-string v2, "SIM_FDN"

    move-object/from16 v0, v27

    invoke-static {v14, v0, v5, v2}, Lcom/android/internal/telephony/ImportUtils;->deleteSimContactData(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 955
    .restart local v23    # "rawId":I
    if-lez v23, :cond_18

    .line 956
    const/16 v17, 0x0

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/android/internal/telephony/ADNErrorType;->mIndex:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    new-instance v24, Landroid/accounts/Account;

    const-string v2, "SIM_FDN"

    const-string v9, "com.htc.contacts.sim"

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v15, v29

    move-object/from16 v16, v30

    invoke-static/range {v14 .. v24}, Lcom/android/internal/telephony/IccProvider;->insertIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/accounts/Account;)V

    .line 963
    .end local v14    # "resolver":Landroid/content/ContentResolver;
    .end local v23    # "rawId":I
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 964
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 860
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 905
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method updateSimPbkEntry(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 11
    .param p1, "subId"    # J
    .param p3, "recordNumber"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "number1"    # Ljava/lang/String;
    .param p7, "number2"    # Ljava/lang/String;
    .param p8, "email"    # Ljava/lang/String;

    .prologue
    .line 1533
    const/4 v0, 0x0

    .line 1535
    .local v0, "error":Lcom/android/internal/telephony/ADNErrorType;
    const-string v2, "updateSimPbkEntry"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1538
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1540
    .local v1, "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1541
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-wide v2, p1

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IIccPhoneBook;->updateSimPbkEntryForSubscriber(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1552
    .end local v1    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return-object v0

    .line 1543
    :catch_0
    move-exception v10

    .line 1544
    .local v10, "ex":Landroid/os/RemoteException;
    new-instance v0, Lcom/android/internal/telephony/ADNErrorType;

    .end local v0    # "error":Lcom/android/internal/telephony/ADNErrorType;
    invoke-direct {v0}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 1545
    .restart local v0    # "error":Lcom/android/internal/telephony/ADNErrorType;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/telephony/ADNErrorType;->mSuccess:Z

    goto :goto_0

    .line 1547
    .end local v10    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 1548
    .local v10, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v10}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1549
    new-instance v0, Lcom/android/internal/telephony/ADNErrorType;

    .end local v0    # "error":Lcom/android/internal/telephony/ADNErrorType;
    invoke-direct {v0}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 1550
    .restart local v0    # "error":Lcom/android/internal/telephony/ADNErrorType;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/telephony/ADNErrorType;->mSuccess:Z

    goto :goto_0
.end method

.method updateSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 9
    .param p1, "recordNumber"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "number1"    # Ljava/lang/String;
    .param p5, "number2"    # Ljava/lang/String;
    .param p6, "email"    # Ljava/lang/String;

    .prologue
    .line 1268
    const/4 v7, 0x0

    .line 1270
    .local v7, "error":Lcom/android/internal/telephony/ADNErrorType;
    const-string v1, "updateSimPbkEntry"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1273
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1275
    .local v0, "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 1276
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateSimPbkEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 1287
    .end local v0    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return-object v7

    .line 1278
    :catch_0
    move-exception v8

    .line 1279
    .local v8, "ex":Landroid/os/RemoteException;
    new-instance v7, Lcom/android/internal/telephony/ADNErrorType;

    .end local v7    # "error":Lcom/android/internal/telephony/ADNErrorType;
    invoke-direct {v7}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 1280
    .restart local v7    # "error":Lcom/android/internal/telephony/ADNErrorType;
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/internal/telephony/ADNErrorType;->mSuccess:Z

    goto :goto_0

    .line 1282
    .end local v8    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 1283
    .local v8, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1284
    new-instance v7, Lcom/android/internal/telephony/ADNErrorType;

    .end local v7    # "error":Lcom/android/internal/telephony/ADNErrorType;
    invoke-direct {v7}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 1285
    .restart local v7    # "error":Lcom/android/internal/telephony/ADNErrorType;
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/internal/telephony/ADNErrorType;->mSuccess:Z

    goto :goto_0
.end method
