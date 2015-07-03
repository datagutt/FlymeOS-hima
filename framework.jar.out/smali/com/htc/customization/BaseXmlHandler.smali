.class public Lcom/htc/customization/BaseXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BaseXmlHandler.java"


# static fields
.field public static final DATA_ACC:Ljava/lang/String; = "ACC"

.field public static final DATA_APPLICATION:Ljava/lang/String; = "application"

.field public static final DATA_SYSTEM:Ljava/lang/String; = "system"

.field public static final XML_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field public static final XML_ATTRIBUTE_TYPE:Ljava/lang/String; = "type"

.field public static final XML_NODE_APP:Ljava/lang/String; = "app"

.field public static final XML_NODE_CATEGORY:Ljava/lang/String; = "category"

.field public static final XML_NODE_FUNCTION:Ljava/lang/String; = "function"

.field public static final XML_NODE_ITEM:Ljava/lang/String; = "item"

.field public static final XML_NODE_MODULE:Ljava/lang/String; = "module"

.field public static final XML_NODE_SET:Ljava/lang/String; = "set"

.field public static final XML_NODE_SYS:Ljava/lang/String; = "system"

.field public static final XML_TYPE_BOOLEAN:Ljava/lang/String; = "boolean"

.field public static final XML_TYPE_BYTE:Ljava/lang/String; = "byte"

.field public static final XML_TYPE_INT:Ljava/lang/String; = "int"

.field public static final XML_TYPE_INTEGER:Ljava/lang/String; = "integer"

.field public static final XML_TYPE_INTEGER_ARRAY:Ljava/lang/String; = "integer-array"

.field public static final XML_TYPE_STRING:Ljava/lang/String; = "string"

.field public static final XML_TYPE_STRING_ARRAY:Ljava/lang/String; = "string-array"


# instance fields
.field public mCurrentBuffer:Ljava/lang/StringBuffer;

.field public mCurrentValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/BaseXmlHandler;->mCurrentBuffer:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/customization/BaseXmlHandler;->mCurrentBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/htc/customization/BaseXmlHandler;->mCurrentBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/customization/BaseXmlHandler;->mCurrentValue:Ljava/lang/String;

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/htc/customization/BaseXmlHandler;->mCurrentBuffer:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/customization/BaseXmlHandler;->mCurrentBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/customization/BaseXmlHandler;->mCurrentBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/BaseXmlHandler;->mCurrentValue:Ljava/lang/String;

    :cond_0
    return-void
.end method
