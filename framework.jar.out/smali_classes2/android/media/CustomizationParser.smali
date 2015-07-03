.class Landroid/media/CustomizationParser;
.super Ljava/lang/Object;
.source "CustomizationParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomizationParser"


# instance fields
.field private mDepth:I

.field private mItems:Ljava/util/HashMap;
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

.field private mKeyPairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/CustomizationParser;->mKeyPairs:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/CustomizationParser;->mItems:Ljava/util/HashMap;

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CustomizationParser"

    const-string v2, "can\'t create parser for input stream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private matchTagAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v3, "CustomizationParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+matchTagAttribute["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CustomizationParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_1

    if-eqz v2, :cond_4

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    const/4 v0, 0x1

    iget v3, p0, Landroid/media/CustomizationParser;->mDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/media/CustomizationParser;->mDepth:I

    :cond_2
    if-nez v0, :cond_3

    iget v3, p0, Landroid/media/CustomizationParser;->mDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/media/CustomizationParser;->mDepth:I

    :cond_3
    const-string v3, "CustomizationParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-matchTagAttribute["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    invoke-direct {p0}, Landroid/media/CustomizationParser;->skip()V

    goto/16 :goto_0
.end method

.method private readItems()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v8, :cond_3

    iget-object v3, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v7, :cond_0

    iget-object v3, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v4, "item"

    invoke-interface {v3, v7, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v4, "name"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CUST_AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/media/CustomizationParser;->mItems:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    iget-object v3, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v4, "item"

    invoke-interface {v3, v8, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/media/CustomizationParser;->skip()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/media/CustomizationParser;->skip()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private skip()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addKeyPairs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/media/CustomizationParser;->mKeyPairs:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public parseResult()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    iget-object v2, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x2

    const-string v4, "customization_form"

    invoke-interface {v2, v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput v2, p0, Landroid/media/CustomizationParser;->mDepth:I

    :cond_0
    iget-object v2, p0, Landroid/media/CustomizationParser;->mKeyPairs:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/CustomizationParser;->mDepth:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/media/CustomizationParser;->mKeyPairs:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/CustomizationParser;->mDepth:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Landroid/media/CustomizationParser;->matchTagAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    iget v2, p0, Landroid/media/CustomizationParser;->mDepth:I

    iget-object v3, p0, Landroid/media/CustomizationParser;->mKeyPairs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Landroid/media/CustomizationParser;->readItems()V

    iget v2, p0, Landroid/media/CustomizationParser;->mDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/media/CustomizationParser;->mDepth:I

    :cond_1
    iget v2, p0, Landroid/media/CustomizationParser;->mDepth:I

    if-gez v2, :cond_0

    iget-object v2, p0, Landroid/media/CustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x3

    const-string v4, "customization_form"

    invoke-interface {v2, v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public queryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/CustomizationParser;->mItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
