.class public Lcom/htc/customization/HtcCustomizationManager;
.super Ljava/lang/Object;
.source "HtcCustomizationManager.java"


# static fields
.field public static final CUSTOMIZE_TYPE_CUSTOMER:I = 0x10011

.field public static final CUSTOMIZE_TYPE_DEVICE:I = 0x10010

.field private static final DEBUG_CID:Ljava/lang/String; = "htc.customization.cid"

.field public static final HTC_ACC_READER:Ljava/lang/String; = "acc"

.field public static final HTC_CID_MAP:Ljava/lang/String; = "cid_map"

.field public static final READER_TYPE_BINARY:I = 0x2

.field public static final READER_TYPE_XML:I = 0x1

.field private static final RO_CID:Ljava/lang/String; = "ro.cid"

.field private static final TAG:Ljava/lang/String; = "CustomizationManager"

.field private static final mInstance:Lcom/htc/customization/HtcCustomizationManager;


# instance fields
.field private mAccLoader:Lcom/htc/customization/CustomizationAccLoader;

.field private mCIDLoader:Lcom/htc/customization/CustomizationCIDLoader;

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/customization/HtcCustomizationManager;

    invoke-direct {v0}, Lcom/htc/customization/HtcCustomizationManager;-><init>()V

    sput-object v0, Lcom/htc/customization/HtcCustomizationManager;->mInstance:Lcom/htc/customization/HtcCustomizationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "CustomizationManager"

    invoke-static {v3}, Lcom/htc/customization/Utils;->startRecUseTime(Ljava/lang/String;)V

    const-string v3, "htc.customization.log.level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/customization/Utils;->setCustomizationLogLevel(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/customization/HtcCustomizationManager;->readCID()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/htc/customization/CustomizationAccLoader;

    invoke-direct {v3, v0}, Lcom/htc/customization/CustomizationAccLoader;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/customization/HtcCustomizationManager;->mAccLoader:Lcom/htc/customization/CustomizationAccLoader;

    const-string v3, "CustomizationManager"

    const-string v4, "Read ACC file"

    invoke-static {v3, v4}, Lcom/htc/customization/Utils;->printUseTime(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/htc/customization/CIDMapFileLoader;

    const-string v3, "cid_map"

    invoke-direct {v1, v3}, Lcom/htc/customization/CIDMapFileLoader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/htc/customization/CIDMapFileLoader;->getXMLWithCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/customization/CustomizationCIDLoader;

    invoke-direct {v3, v2}, Lcom/htc/customization/CustomizationCIDLoader;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/customization/HtcCustomizationManager;->mCIDLoader:Lcom/htc/customization/CustomizationCIDLoader;

    const-string v3, "CustomizationManager"

    const-string v4, "Read CID file"

    invoke-static {v3, v4}, Lcom/htc/customization/Utils;->printUseTime(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CustomizationManager"

    const-string v4, "All configurations done"

    invoke-static {v3, v4}, Lcom/htc/customization/Utils;->printUseTime(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/htc/customization/HtcCustomizationManager;
    .locals 1

    sget-object v0, Lcom/htc/customization/HtcCustomizationManager;->mInstance:Lcom/htc/customization/HtcCustomizationManager;

    return-object v0
.end method

.method private isSIMReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    const-string p1, ""

    :goto_0
    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/htc/customization/HtcCustomizationManager;->isSIMReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :cond_0
    :goto_1
    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/customization/HtcCustomizationManager;->mCIDLoader:Lcom/htc/customization/CustomizationCIDLoader;

    invoke-virtual {v3, p1}, Lcom/htc/customization/CustomizationCIDLoader;->getCustomizationConfig(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/customization/HtcCustomizationManager;->mAccLoader:Lcom/htc/customization/CustomizationAccLoader;

    invoke-virtual {v3, p1}, Lcom/htc/customization/CustomizationAccLoader;->getCustomizationConfig(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-nez v2, :cond_4

    move-object v2, v1

    :cond_3
    :goto_2
    if-nez v2, :cond_0

    new-instance v2, Lcom/htc/customization/SystemReader;

    invoke-direct {v2}, Lcom/htc/customization/SystemReader;-><init>()V

    const-string v3, "CustomizationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reader is null,return default reader"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_4
    if-eqz v1, :cond_3

    :try_start_2
    move-object v0, v2

    check-cast v0, Lcom/htc/customization/ModuleReader;

    move-object v3, v0

    check-cast v1, Lcom/htc/customization/AccAppReader;

    invoke-virtual {v3, v1}, Lcom/htc/customization/ModuleReader;->setDefaultReader(Lcom/htc/customization/SystemReader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public getStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readCID()Ljava/lang/String;
    .locals 3

    const-string v1, "htc.customization.cid"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
