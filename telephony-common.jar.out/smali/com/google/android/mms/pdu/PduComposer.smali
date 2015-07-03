.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$1;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;,
        Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
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


# instance fields
.field protected mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    .line 169
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 172
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 176
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 178
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 144
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 149
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 154
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 164
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 187
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 189
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 190
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 192
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 193
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 194
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/mms/pdu/PduComposer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4
    .param p1, "address"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 546
    const/4 v2, 0x0

    .line 549
    .local v2, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 550
    .local v0, "addressType":I
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 551
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 553
    const-string v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    :cond_0
    :goto_0
    move-object v3, v2

    .line 565
    .end local v0    # "addressType":I
    :goto_1
    return-object v3

    .line 554
    .restart local v0    # "addressType":I
    :cond_1
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2

    .line 556
    const-string v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_0

    .line 561
    .end local v0    # "addressType":I
    :catch_0
    move-exception v1

    .line 562
    .local v1, "e":Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_1

    .line 557
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "addressType":I
    :cond_2
    const/4 v3, 0x4

    if-ne v3, v0, :cond_0

    .line 559
    const-string v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private appendHeader(I)I
    .locals 24
    .param p1, "field"    # I

    .prologue
    .line 572
    packed-switch p1, :pswitch_data_0

    .line 733
    :pswitch_0
    const/16 v21, 0x3

    .line 736
    :goto_0
    return v21

    .line 574
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v20

    .line 577
    .local v20, "version":I
    if-nez v20, :cond_1

    .line 578
    const/16 v21, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 736
    .end local v20    # "version":I
    :cond_0
    :goto_1
    const/16 v21, 0x0

    goto :goto_0

    .line 580
    .restart local v20    # "version":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_1

    .line 587
    .end local v20    # "version":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 588
    .local v19, "textString":[B
    if-nez v19, :cond_2

    .line 589
    const/16 v21, 0x2

    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 593
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_1

    .line 599
    .end local v19    # "textString":[B
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 601
    .local v4, "addr":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v4, :cond_3

    .line 602
    const/16 v21, 0x2

    goto :goto_0

    .line 606
    :cond_3
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_0

    .line 607
    aget-object v21, v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v18

    .line 608
    .local v18, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v18, :cond_4

    .line 609
    const/16 v21, 0x1

    goto :goto_0

    .line 612
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 613
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 606
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 619
    .end local v4    # "addr":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15    # "i":I
    .end local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    .line 622
    .local v13, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5

    new-instance v21, Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    const-string v22, "insert-address-token"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 627
    :cond_5
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 629
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_1

    .line 631
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v14

    .line 635
    .local v14, "fstart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v21, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 637
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v18

    .line 638
    .restart local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v18, :cond_7

    .line 639
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 642
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 644
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v12

    .line 645
    .local v12, "flen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 646
    int-to-long v0, v12

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 657
    .end local v12    # "flen":I
    .end local v13    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v14    # "fstart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 658
    .local v17, "octet":I
    if-nez v17, :cond_8

    .line 659
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 662
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 663
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 667
    .end local v17    # "octet":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v6

    .line 668
    .local v6, "date":J
    const-wide/16 v22, -0x1

    cmp-long v21, v22, v6

    if-nez v21, :cond_9

    .line 669
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 672
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 673
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_1

    .line 677
    .end local v6    # "date":J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 679
    .local v5, "enString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v5, :cond_a

    .line 680
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 683
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 684
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_1

    .line 688
    .end local v5    # "enString":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 689
    .local v16, "messageClass":[B
    if-nez v16, :cond_b

    .line 690
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 693
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 694
    const-string v21, "advertisement"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 696
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 697
    :cond_c
    const-string v21, "auto"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 699
    const/16 v21, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 700
    :cond_d
    const-string v21, "personal"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 702
    const/16 v21, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 703
    :cond_e
    const-string v21, "informational"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 705
    const/16 v21, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 707
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_1

    .line 713
    .end local v16    # "messageClass":[B
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v8

    .line 714
    .local v8, "expiry":J
    const-wide/16 v22, -0x1

    cmp-long v21, v22, v8

    if-nez v21, :cond_10

    .line 715
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 718
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 723
    .local v11, "expiryStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 724
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 726
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v10

    .line 727
    .local v10, "expiryLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 728
    int-to-long v0, v10

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x5

    .line 1382
    if-nez p0, :cond_1

    .line 1400
    :cond_0
    :goto_0
    return v0

    .line 1386
    :cond_1
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1388
    const/4 v0, 0x3

    goto :goto_0

    .line 1389
    :cond_2
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1391
    const/4 v0, 0x1

    goto :goto_0

    .line 1392
    :cond_3
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1394
    const/4 v0, 0x2

    goto :goto_0

    .line 1395
    :cond_4
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1397
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private makeAckInd()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 843
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v2, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 846
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 850
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 851
    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 854
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 866
    :cond_1
    :goto_0
    return v0

    .line 859
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 864
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 866
    goto :goto_0
.end method

.method private makeDeliveryInd()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 873
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 875
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 879
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 880
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 883
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 886
    const/16 v0, 0x8b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 889
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 892
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 895
    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 897
    return v1
.end method

.method private makeMessageBody(I)I
    .locals 34
    .param p1, "pduType"    # I

    .prologue
    .line 1026
    const/16 v29, 0x0

    .line 1027
    .local v29, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    const/16 v28, 0x0

    .line 1029
    .local v28, "retrieve":Lcom/google/android/mms/pdu/RetrieveConf;
    const/16 v31, 0x80

    move/from16 v0, p1

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v29, v0

    .end local v29    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    check-cast v29, Lcom/google/android/mms/pdu/SendReq;

    .line 1037
    .restart local v29    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v16

    .line 1042
    .local v16, "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v31, v0

    const/16 v32, 0x84

    invoke-virtual/range {v31 .. v32}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 1043
    .local v10, "contentType":Ljava/lang/String;
    sget-object v31, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1044
    .local v12, "contentTypeIdentifier":Ljava/lang/Integer;
    if-nez v12, :cond_2

    .line 1046
    const/16 v31, 0x1

    .line 1241
    :cond_0
    :goto_1
    return v31

    .line 1032
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v12    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v16    # "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v28, v0

    .end local v28    # "retrieve":Lcom/google/android/mms/pdu/RetrieveConf;
    check-cast v28, Lcom/google/android/mms/pdu/RetrieveConf;

    .restart local v28    # "retrieve":Lcom/google/android/mms/pdu/RetrieveConf;
    goto :goto_0

    .line 1049
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v12    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v16    # "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    :cond_2
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 1052
    const/4 v5, 0x0

    .line 1053
    .local v5, "body":Lcom/google/android/mms/pdu/PduBody;
    if-eqz v29, :cond_4

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v31, v0

    check-cast v31, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 1059
    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v31

    if-nez v31, :cond_5

    .line 1061
    :cond_3
    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1064
    const/16 v31, 0x0

    goto :goto_1

    .line 1056
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v31, v0

    check-cast v31, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    goto :goto_2

    .line 1069
    :cond_5
    const/16 v31, 0x0

    :try_start_0
    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v23

    .line 1071
    .local v23, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v30

    .line 1072
    .local v30, "start":[B
    if-eqz v30, :cond_6

    .line 1073
    const/16 v31, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1074
    const/16 v31, 0x3c

    const/16 v32, 0x0

    aget-byte v32, v30, v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    const/16 v31, 0x3e

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    aget-byte v32, v30, v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 1075
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1082
    :cond_6
    :goto_3
    const/16 v31, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1083
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v30    # "start":[B
    :goto_4
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v15

    .line 1090
    .local v15, "ctLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1091
    int-to-long v0, v15

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1095
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v27

    .line 1096
    .local v27, "partNum":I
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1097
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_17

    .line 1098
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v23

    .line 1099
    .restart local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 1102
    .local v4, "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 1105
    .local v11, "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v24

    .line 1107
    .local v24, "partContentType":[B
    if-nez v24, :cond_8

    .line 1109
    const/16 v31, 0x1

    goto/16 :goto_1

    .line 1077
    .end local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v15    # "ctLength":I
    .end local v20    # "i":I
    .end local v24    # "partContentType":[B
    .end local v27    # "partNum":I
    .restart local v30    # "start":[B
    :cond_7
    :try_start_1
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    new-instance v32, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ">"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1085
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v30    # "start":[B
    :catch_0
    move-exception v18

    .line 1086
    .local v18, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_4

    .line 1113
    .end local v18    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v15    # "ctLength":I
    .restart local v20    # "i":I
    .restart local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v24    # "partContentType":[B
    .restart local v27    # "partNum":I
    :cond_8
    sget-object v31, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v32, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v31 .. v32}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 1115
    .local v25, "partContentTypeIdentifier":Ljava/lang/Integer;
    if-nez v25, :cond_f

    .line 1116
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1125
    :goto_6
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v22

    .line 1127
    .local v22, "name":[B
    if-nez v22, :cond_9

    .line 1128
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v22

    .line 1130
    if-nez v22, :cond_9

    .line 1131
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v22

    .line 1133
    if-nez v22, :cond_9

    .line 1140
    const-string v31, "application/smil"

    new-instance v32, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 1151
    :cond_9
    if-eqz v22, :cond_a

    .line 1152
    const/16 v31, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1153
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1158
    :cond_a
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v7

    .line 1159
    .local v7, "charset":I
    if-eqz v7, :cond_b

    .line 1160
    const/16 v31, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1162
    const/16 v31, 0x7f

    move/from16 v0, v31

    if-le v7, v0, :cond_11

    .line 1163
    int-to-long v0, v7

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 1170
    :cond_b
    :goto_7
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 1171
    .local v13, "contentTypeLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1172
    int-to-long v0, v13

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1176
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    .line 1178
    .local v8, "contentId":[B
    if-eqz v8, :cond_c

    .line 1179
    const/16 v31, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1180
    const/16 v31, 0x3c

    const/16 v32, 0x0

    aget-byte v32, v8, v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    const/16 v31, 0x3e

    array-length v0, v8

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    aget-byte v32, v8, v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    .line 1181
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 1188
    :cond_c
    :goto_8
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    .line 1189
    .local v9, "contentLocation":[B
    if-eqz v9, :cond_d

    .line 1190
    const/16 v31, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1191
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1195
    :cond_d
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v19

    .line 1197
    .local v19, "headerLength":I
    const/16 v17, 0x0

    .line 1198
    .local v17, "dataLength":I
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v26

    .line 1200
    .local v26, "partData":[B
    if-eqz v26, :cond_13

    .line 1201
    const/16 v31, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1202
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v17, v0

    .line 1231
    :cond_e
    :goto_9
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v31

    sub-int v31, v31, v19

    move/from16 v0, v17

    move/from16 v1, v31

    if-eq v0, v1, :cond_16

    .line 1232
    new-instance v31, Ljava/lang/RuntimeException;

    const-string v32, "BUG: Length sanity check failed"

    invoke-direct/range {v31 .. v32}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 1118
    .end local v7    # "charset":I
    .end local v8    # "contentId":[B
    .end local v9    # "contentLocation":[B
    .end local v13    # "contentTypeLength":I
    .end local v17    # "dataLength":I
    .end local v19    # "headerLength":I
    .end local v22    # "name":[B
    .end local v26    # "partData":[B
    :cond_f
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto/16 :goto_6

    .line 1145
    .restart local v22    # "name":[B
    :cond_10
    const/16 v31, 0x1

    goto/16 :goto_1

    .line 1165
    .restart local v7    # "charset":I
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto/16 :goto_7

    .line 1183
    .restart local v8    # "contentId":[B
    .restart local v13    # "contentTypeLength":I
    :cond_12
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    new-instance v32, Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ">"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1204
    .restart local v9    # "contentLocation":[B
    .restart local v17    # "dataLength":I
    .restart local v19    # "headerLength":I
    .restart local v26    # "partData":[B
    :cond_13
    const/4 v14, 0x0

    .line 1206
    .local v14, "cr":Ljava/io/InputStream;
    const/16 v31, 0x400

    :try_start_2
    move/from16 v0, v31

    new-array v6, v0, [B

    .line 1207
    .local v6, "buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v31, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1208
    const/16 v21, 0x0

    .line 1209
    .local v21, "len":I
    :goto_a
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v21

    const/16 v31, -0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-eq v0, v1, :cond_14

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write([BII)V

    .line 1212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    move/from16 v31, v0

    add-int v31, v31, v21

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1213
    add-int v17, v17, v21

    goto :goto_a

    .line 1222
    :cond_14
    if-eqz v14, :cond_e

    .line 1224
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_9

    .line 1225
    :catch_1
    move-exception v31

    goto/16 :goto_9

    .line 1215
    .end local v6    # "buffer":[B
    .end local v21    # "len":I
    :catch_2
    move-exception v18

    .line 1216
    .local v18, "e":Ljava/io/FileNotFoundException;
    const/16 v31, 0x1

    .line 1222
    if-eqz v14, :cond_0

    .line 1224
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 1225
    :catch_3
    move-exception v32

    goto/16 :goto_1

    .line 1217
    .end local v18    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v18

    .line 1218
    .local v18, "e":Ljava/io/IOException;
    const/16 v31, 0x1

    .line 1222
    if-eqz v14, :cond_0

    .line 1224
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    .line 1225
    :catch_5
    move-exception v32

    goto/16 :goto_1

    .line 1219
    .end local v18    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v18

    .line 1220
    .local v18, "e":Ljava/lang/RuntimeException;
    const/16 v31, 0x1

    .line 1222
    if-eqz v14, :cond_0

    .line 1224
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_1

    .line 1225
    :catch_7
    move-exception v32

    goto/16 :goto_1

    .line 1222
    .end local v18    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v31

    if-eqz v14, :cond_15

    .line 1224
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 1226
    :cond_15
    :goto_b
    throw v31

    .line 1235
    .end local v14    # "cr":Ljava/io/InputStream;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1236
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1237
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1097
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_5

    .line 1241
    .end local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v7    # "charset":I
    .end local v8    # "contentId":[B
    .end local v9    # "contentLocation":[B
    .end local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v13    # "contentTypeLength":I
    .end local v17    # "dataLength":I
    .end local v19    # "headerLength":I
    .end local v22    # "name":[B
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v24    # "partContentType":[B
    .end local v25    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .end local v26    # "partData":[B
    :cond_17
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 1225
    .restart local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v7    # "charset":I
    .restart local v8    # "contentId":[B
    .restart local v9    # "contentLocation":[B
    .restart local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v13    # "contentTypeLength":I
    .restart local v14    # "cr":Ljava/io/InputStream;
    .restart local v17    # "dataLength":I
    .restart local v19    # "headerLength":I
    .restart local v22    # "name":[B
    .restart local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v24    # "partContentType":[B
    .restart local v25    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .restart local v26    # "partData":[B
    :catch_8
    move-exception v32

    goto :goto_b
.end method

.method private makeNotifyResp()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 808
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v2, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 811
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 815
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 816
    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 819
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 836
    :cond_1
    :goto_0
    return v0

    .line 824
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 829
    const/16 v2, 0x95

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 834
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 836
    goto :goto_0
.end method

.method private makePdu(I)I
    .locals 9
    .param p1, "pduType"    # I

    .prologue
    const/16 v8, 0x98

    const/16 v7, 0x92

    const/16 v6, 0x8b

    const/16 v5, 0x83

    const/4 v3, 0x1

    .line 919
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v4, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 922
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 926
    :cond_0
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 927
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 931
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v4, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 932
    .local v2, "trid":[B
    if-nez v2, :cond_1

    const/16 v4, 0x80

    if-ne p1, v4, :cond_1

    .line 934
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Transaction-ID is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 937
    :cond_1
    if-eqz v2, :cond_2

    .line 938
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 939
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 943
    :cond_2
    const/16 v4, 0x8d

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_4

    .line 1017
    :cond_3
    :goto_0
    return v3

    .line 948
    :cond_4
    const/16 v4, 0x85

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 951
    const/16 v4, 0x89

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 955
    const/4 v1, 0x0

    .line 958
    .local v1, "recipient":Z
    const/16 v4, 0x97

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v3, :cond_5

    .line 959
    const/4 v1, 0x1

    .line 963
    :cond_5
    const/16 v4, 0x82

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v3, :cond_6

    .line 964
    const/4 v1, 0x1

    .line 968
    :cond_6
    const/16 v4, 0x81

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v3, :cond_7

    .line 969
    const/4 v1, 0x1

    .line 973
    :cond_7
    if-eqz v1, :cond_3

    .line 978
    const/16 v3, 0x96

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 982
    const/16 v3, 0x8a

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 985
    const/16 v3, 0x88

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 988
    const/16 v3, 0x8f

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 991
    const/16 v3, 0x86

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 994
    const/16 v3, 0x90

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 997
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-eqz v3, :cond_8

    .line 998
    invoke-direct {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1002
    :cond_8
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    if-lez v3, :cond_9

    .line 1003
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1007
    :cond_9
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1008
    .local v0, "contentLocation":[B
    if-eqz v0, :cond_a

    .line 1009
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1010
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1014
    :cond_a
    const/16 v3, 0x84

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1017
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    move-result v3

    goto :goto_0
.end method

.method private makeReadOrigInd()I
    .locals 1

    .prologue
    .line 751
    const/16 v0, 0x88

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadReport(I)I

    move-result v0

    return v0
.end method

.method private makeReadRecInd()I
    .locals 1

    .prologue
    .line 744
    const/16 v0, 0x87

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadReport(I)I

    move-result v0

    return v0
.end method

.method private makeReadReport(I)I
    .locals 3
    .param p1, "pduType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 759
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v2, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 762
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 766
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 767
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 770
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 801
    :cond_1
    :goto_0
    return v0

    .line 775
    :cond_2
    const/16 v2, 0x8b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 780
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 785
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 790
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 793
    const/16 v2, 0x9b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 801
    goto :goto_0
.end method

.method private makeRetrievePdu()I
    .locals 1

    .prologue
    .line 911
    const/16 v0, 0x84

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makePdu(I)I

    move-result v0

    return v0
.end method

.method private makeSendReqPdu()I
    .locals 1

    .prologue
    .line 904
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makePdu(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected append(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 286
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write(I)V

    .line 287
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 288
    return-void
.end method

.method protected appendDateValue(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 487
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 488
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 6
    .param p1, "enStr"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 415
    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 417
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 418
    .local v0, "charset":I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 419
    .local v3, "textString":[B
    if-nez v3, :cond_1

    .line 438
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 429
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 431
    .local v2, "start":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 432
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 434
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 435
    .local v1, "len":I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 436
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 437
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_0
.end method

.method protected appendLongInteger(J)V
    .locals 11
    .param p1, "longInt"    # J

    .prologue
    const/16 v8, 0x8

    .line 348
    move-wide v4, p1

    .line 351
    .local v4, "temp":J
    const/4 v2, 0x0

    .local v2, "size":I
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    if-ge v2, v8, :cond_0

    .line 352
    ushr-long/2addr v4, v8

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 360
    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v1, v3, 0x8

    .line 362
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 363
    ushr-long v6, p1, v1

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v3, v6

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 364
    add-int/lit8 v1, v1, -0x8

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 366
    :cond_1
    return-void
.end method

.method protected appendOctet(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 317
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 542
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 543
    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2
    .param p1, "text"    # [B

    .prologue
    const/4 v1, 0x0

    .line 525
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 526
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 527
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 528
    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 305
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 306
    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 330
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 403
    return-void
.end method

.method protected appendTextString([B)V
    .locals 3
    .param p1, "text"    # [B

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 381
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_0

    .line 382
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 385
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 386
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 387
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 13
    .param p1, "value"    # J

    .prologue
    const-wide/16 v10, 0x7f

    .line 455
    const-wide/16 v2, 0x7f

    .line 457
    .local v2, "max":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 458
    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 465
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 466
    mul-int/lit8 v1, v0, 0x7

    ushr-long v4, p1, v1

    .line 467
    .local v4, "temp":J
    and-long/2addr v4, v10

    .line 469
    const-wide/16 v6, 0x80

    or-long/2addr v6, v4

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v1, v6

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 471
    add-int/lit8 v0, v0, -0x1

    .line 472
    goto :goto_1

    .line 462
    .end local v4    # "temp":J
    :cond_1
    const/4 v1, 0x7

    shl-long v6, v2, v1

    or-long v2, v6, v10

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_2
    and-long v6, p1, v10

    long-to-int v1, v6

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 475
    return-void
.end method

.method protected appendValueLength(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 504
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 505
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 510
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_0
.end method

.method protected arraycopy([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "length"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/mms/pdu/PduComposer;->extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 277
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write([BII)V

    .line 278
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 279
    return-void
.end method

.method protected createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1408
    const/high16 v1, 0x80000

    .line 1410
    .local v1, "size":I
    :try_start_0
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    const/4 v4, 0x0

    const/high16 v5, 0x80000

    invoke-direct {v2, p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;-><init>(Lcom/google/android/mms/pdu/PduComposer;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    :goto_0
    return-object v2

    .line 1411
    :catch_0
    move-exception v0

    .line 1412
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 1413
    goto :goto_0
.end method

.method protected extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    .locals 6
    .param p1, "mf"    # Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    .param p2, "toWriteLegnth"    # I

    .prologue
    .line 1424
    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/2addr v3, p2

    iget v4, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mSize:I

    if-lt v3, v4, :cond_1

    .line 1426
    :try_start_0
    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mSize:I

    mul-int/lit8 v2, v3, 0x2

    .line 1427
    .local v2, "newsize":I
    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/2addr v3, p2

    if-lt v3, v2, :cond_0

    .line 1428
    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/2addr v3, p2

    add-int/lit8 v2, v3, 0x1

    .line 1430
    :cond_0
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;-><init>(Lcom/google/android/mms/pdu/PduComposer;Ljava/lang/String;I)V

    .line 1432
    .local v1, "newMF":Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write([BII)V

    .line 1433
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    .end local v1    # "newMF":Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    .end local v2    # "newsize":I
    :goto_0
    return-object v1

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    move-object v1, p1

    .line 1439
    goto :goto_0
.end method

.method public make()[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v2

    .line 208
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 210
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    move-result v3

    if-nez v3, :cond_0

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->toByteArray()[B

    move-result-object v1

    .line 251
    .local v1, "t":[B
    :try_start_0
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V

    .line 252
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    # getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$100(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 254
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    # getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$100(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-eqz v3, :cond_2

    .line 255
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    # getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$100(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V

    .line 258
    :cond_2
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    # getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$200(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 259
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    # getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$200(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-eqz v3, :cond_3

    .line 260
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    # getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$200(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V

    .line 263
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PduComposer"

    const-string v4, "Unexpected IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "t":[B
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeRetrievePdu()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 220
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 225
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 230
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 235
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadOrigInd()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 240
    :pswitch_7
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeDeliveryInd()I

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
