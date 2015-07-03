.class public Lcom/htc/customization/HtcCustomizationSystemReaderImpl;
.super Ljava/lang/Object;
.source "HtcCustomizationSystemReaderImpl.java"


# static fields
.field static mSystemReader:Lcom/htc/customization/HtcCustomizationReader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    const-string v1, "System"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    sput-object v0, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->mSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBoolean(Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->mSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readByte(Ljava/lang/String;B)B
    .locals 1

    sget-object v0, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->mSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static readIntArray(Ljava/lang/String;[I)[I
    .locals 1

    sget-object v0, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->mSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static readInteger(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->mSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static readNullableBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->mSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readNullableBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->mSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->mSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
