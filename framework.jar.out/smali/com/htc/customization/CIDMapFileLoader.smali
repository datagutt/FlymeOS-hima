.class public Lcom/htc/customization/CIDMapFileLoader;
.super Lcom/htc/customization/BaseLoader;
.source "CIDMapFileLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default.xml"

.field private static final TAG:Ljava/lang/String; = "CIDMapFileReader"


# instance fields
.field private mProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/customization/BaseLoader;-><init>()V

    iput-object p1, p0, Lcom/htc/customization/CIDMapFileLoader;->mConfigName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/htc/customization/CIDMapFileLoader;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/customization/CIDMapFileLoader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/htc/customization/CIDMapFileLoader;->mProfiles:Ljava/util/HashMap;

    return-object v0
.end method

.method private init()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/CIDMapFileLoader;->mProfiles:Ljava/util/HashMap;

    new-instance v0, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;

    invoke-direct {v0, p0}, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;-><init>(Lcom/htc/customization/CIDMapFileLoader;)V

    invoke-virtual {p0, v0}, Lcom/htc/customization/CIDMapFileLoader;->parseConfig(Lorg/xml/sax/helpers/DefaultHandler;)V

    return-void
.end method


# virtual methods
.method public getCustomizationConfig(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getXMLWithCID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/CIDMapFileLoader;->mProfiles:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "default.xml"

    :cond_0
    return-object v0
.end method
