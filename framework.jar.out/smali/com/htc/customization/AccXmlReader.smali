.class public Lcom/htc/customization/AccXmlReader;
.super Ljava/lang/Object;
.source "AccXmlReader.java"

# interfaces
.implements Lcom/htc/customization/HtcCustomizationReader;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccXmlReader"


# instance fields
.field protected mBooleanMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mByteMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntArrayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field protected mStringArrayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mStringMap:Ljava/util/HashMap;
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
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/AccXmlReader;->mName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/AccXmlReader;->mStringMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/AccXmlReader;->mIntMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/AccXmlReader;->mBooleanMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/AccXmlReader;->mByteMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/AccXmlReader;->mIntArrayMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/AccXmlReader;->mStringArrayMap:Ljava/util/HashMap;

    return-void
.end method

.method private toPrimitive([Ljava/lang/Integer;)[I
    .locals 3

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    array-length v2, p1

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dumpValues()V
    .locals 2

    sget v0, Lcom/htc/customization/Utils;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const-string v0, "AccXmlReader"

    iget-object v1, p0, Lcom/htc/customization/AccXmlReader;->mStringMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/htc/customization/Utils;->dumpValues(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "AccXmlReader"

    iget-object v1, p0, Lcom/htc/customization/AccXmlReader;->mIntMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/htc/customization/Utils;->dumpValues(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "AccXmlReader"

    iget-object v1, p0, Lcom/htc/customization/AccXmlReader;->mBooleanMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/htc/customization/Utils;->dumpValues(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "AccXmlReader"

    iget-object v1, p0, Lcom/htc/customization/AccXmlReader;->mByteMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/htc/customization/Utils;->dumpValues(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "AccXmlReader"

    iget-object v1, p0, Lcom/htc/customization/AccXmlReader;->mStringArrayMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/htc/customization/Utils;->dumpStringArrayValues(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "AccXmlReader"

    iget-object v1, p0, Lcom/htc/customization/AccXmlReader;->mIntArrayMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/htc/customization/Utils;->dumpIntArrayValues(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/customization/AccXmlReader;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public handleBoolean(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/customization/AccXmlReader;->mBooleanMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public handleByte(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p2}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/htc/customization/AccXmlReader;->mByteMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    const-string v2, "AccXmlReader"

    const-string v3, "Byte value is invalid, use default 0x00"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleIntArray(Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/customization/AccXmlReader;->mIntArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public handleInteger(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/htc/customization/AccXmlReader;->mIntMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    const-string v2, "AccXmlReader"

    const-string v3, "int value is invalid, use default 0"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/customization/AccXmlReader;->mStringMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public handleStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/customization/AccXmlReader;->mStringArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/AccXmlReader;->mBooleanMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_0
    return p2
.end method

.method public readByte(Ljava/lang/String;B)B
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/AccXmlReader;->mByteMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    :cond_0
    return p2
.end method

.method public readIntArray(Ljava/lang/String;[I)[I
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/AccXmlReader;->mIntArrayMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    check-cast v0, [Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/htc/customization/AccXmlReader;->toPrimitive([Ljava/lang/Integer;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    check-cast v1, [I

    check-cast v1, [I

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public readInteger(Ljava/lang/String;I)I
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/AccXmlReader;->mIntMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    return p2
.end method

.method public readNullableBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/AccXmlReader;->mBooleanMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/AccXmlReader;->mStringMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/AccXmlReader;->mStringArrayMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/customization/AccXmlReader;->mName:Ljava/lang/String;

    return-void
.end method
