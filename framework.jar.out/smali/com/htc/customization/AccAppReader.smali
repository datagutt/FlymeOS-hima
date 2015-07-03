.class public Lcom/htc/customization/AccAppReader;
.super Lcom/htc/customization/SystemReader;
.source "AccAppReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccAppReader"


# instance fields
.field private mDefaultReader:Lcom/htc/customization/SystemReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/customization/SystemReader;-><init>()V

    return-void
.end method


# virtual methods
.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mBooleanMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, p1, p2}, Lcom/htc/customization/SystemReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public readByte(Ljava/lang/String;B)B
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mByteMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, p1, p2}, Lcom/htc/customization/SystemReader;->readByte(Ljava/lang/String;B)B

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_0
.end method

.method public readIntArray(Ljava/lang/String;[I)[I
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mIntArrayMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, p1, p2}, Lcom/htc/customization/SystemReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    check-cast v0, [Ljava/lang/Integer;

    check-cast v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/htc/customization/AccAppReader;->toPrimitive([Ljava/lang/Integer;)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    goto :goto_0
.end method

.method public readInteger(Ljava/lang/String;I)I
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mIntMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, p1, p2}, Lcom/htc/customization/SystemReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public readNullableBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mBooleanMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, p1, p2}, Lcom/htc/customization/SystemReader;->readNullableBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mStringMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, p1, p2}, Lcom/htc/customization/SystemReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mStringArrayMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, p1, p2}, Lcom/htc/customization/SystemReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultReader(Lcom/htc/customization/SystemReader;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    return-void
.end method
