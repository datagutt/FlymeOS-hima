.class public final Lcom/android/internal/telephony/uicc/ChinaMVNOTable;
.super Ljava/lang/Object;
.source "ChinaMVNOTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;
    }
.end annotation


# static fields
.field private static final BOM_LENGTH:I = 0x3

.field private static final CARRIER_INFO_FILE_NAME:Ljava/lang/String; = "default.xml"

.field private static final CARRIER_INFO_FILE_PATH:Ljava/lang/String; = "/system/customize/CID/"

.field private static final CARRIER_NAME:Ljava/lang/String; = "carrier name"

.field private static final DBG:Z

.field private static MAX_CHINA_CARRIERS:I = 0x0

.field private static final MCCMNC:Ljava/lang/String; = "mccmnc"

.field private static final SDBG:Z = false

.field private static final SPNNAME:Ljava/lang/String; = "spnname"

.field private static final TAG:Ljava/lang/String; = "ChinaMVNOTable"

.field private static final TAG_CUSTOMIZATION_FORM:Ljava/lang/String; = "customization_form"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_LEVEL_BEFORE_ITEM:I

.field private static final TAG_SET:Ljava/lang/String; = "set"

.field private static carriercount:I

.field private static mCarrierMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mTagArray:[Ljava/lang/String;

.field private static mTapNameArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 50
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->DBG:Z

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->mCarrierMap:Ljava/util/Map;

    .line 62
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "category"

    aput-object v1, v0, v2

    const-string v1, "module"

    aput-object v1, v0, v4

    const-string v1, "function"

    aput-object v1, v0, v5

    const-string v1, "set"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->mTagArray:[Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->mTagArray:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->TAG_LEVEL_BEFORE_ITEM:I

    .line 66
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "application"

    aput-object v1, v0, v2

    const-string v1, "phone"

    aput-object v1, v0, v4

    const-string v1, "MVNO_SPN"

    aput-object v1, v0, v5

    const-string v1, "single"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->mTapNameArray:[Ljava/lang/String;

    .line 81
    sput v2, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->carriercount:I

    .line 83
    sput v3, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->MAX_CHINA_CARRIERS:I

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->loadCarrierInfoData()V

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    return-void
.end method

.method public static isChinaMVNOSIM(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "mccmnc"    # Ljava/lang/String;
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 302
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v2

    .line 304
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->mCarrierMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 307
    sget-object v3, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->mCarrierMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;

    .line 308
    .local v1, "info":Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;->getMccMncList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;->getSPNList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    const/4 v2, 0x1

    goto :goto_0

    .line 306
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static loadCarrierInfoData()V
    .locals 22

    .prologue
    .line 93
    const-string v12, "/system/customize/CID/"

    .line 94
    .local v12, "filepath":Ljava/lang/String;
    const-string v9, "default.xml"

    .line 95
    .local v9, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v2, "carrierInfoFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    .line 98
    .local v6, "fileExists":Z
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 99
    .local v10, "fileSize":J
    sget-boolean v18, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->DBG:Z

    if-eqz v18, :cond_0

    const-string v18, "ChinaMVNOTable"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "default.xml exists: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", size: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    if-eqz v6, :cond_a

    .line 102
    const/4 v7, 0x0

    .line 103
    .local v7, "fileReader":Ljava/io/InputStreamReader;
    const/16 v17, 0x0

    .line 106
    .local v17, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 108
    .local v14, "inputStream":Ljava/io/FileInputStream;
    new-instance v15, Ljava/io/PushbackInputStream;

    invoke-direct {v15, v14}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 109
    .local v15, "is":Ljava/io/PushbackInputStream;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v13, v0, :cond_1

    .line 110
    invoke-virtual {v15}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    .line 111
    .local v3, "ch":I
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v3, v0, :cond_3

    .line 112
    invoke-virtual {v15, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 116
    .end local v3    # "ch":I
    :cond_1
    new-instance v8, Ljava/io/InputStreamReader;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v8, v15, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v7    # "fileReader":Ljava/io/InputStreamReader;
    .local v8, "fileReader":Ljava/io/InputStreamReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    .line 120
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 123
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 124
    .local v5, "eventType":I
    :goto_1
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_5

    .line 125
    if-nez v5, :cond_4

    .line 143
    :cond_2
    :goto_2
    :try_start_2
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    goto :goto_1

    .line 109
    .end local v5    # "eventType":I
    .end local v8    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v3    # "ch":I
    .restart local v7    # "fileReader":Ljava/io/InputStreamReader;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 127
    .end local v3    # "ch":I
    .end local v7    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v5    # "eventType":I
    .restart local v8    # "fileReader":Ljava/io/InputStreamReader;
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    .line 129
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v5, v0, :cond_8

    .line 130
    :try_start_3
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 131
    .local v16, "name":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "customization_form"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 132
    const/16 v18, 0x0

    sput v18, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->carriercount:I

    .line 133
    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->parseTag(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    .end local v16    # "name":Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    .line 163
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_6
    move-object v7, v8

    .line 172
    .end local v5    # "eventType":I
    .end local v8    # "fileReader":Ljava/io/InputStreamReader;
    .end local v13    # "i":I
    .end local v14    # "inputStream":Ljava/io/FileInputStream;
    .end local v15    # "is":Ljava/io/PushbackInputStream;
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_7
    :goto_4
    return-void

    .line 136
    .restart local v5    # "eventType":I
    .restart local v8    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v13    # "i":I
    .restart local v14    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "is":Ljava/io/PushbackInputStream;
    .restart local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    .line 138
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v5, v0, :cond_2

    goto :goto_2

    .line 144
    :catch_0
    move-exception v4

    .line 145
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string v18, "ChinaMVNOTable"

    const-string v19, "XmlPullParserException"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 152
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5    # "eventType":I
    :catch_1
    move-exception v4

    move-object v7, v8

    .line 153
    .end local v8    # "fileReader":Ljava/io/InputStreamReader;
    .end local v13    # "i":I
    .end local v14    # "inputStream":Ljava/io/FileInputStream;
    .end local v15    # "is":Ljava/io/PushbackInputStream;
    .local v4, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "fileReader":Ljava/io/InputStreamReader;
    :goto_5
    :try_start_6
    const-string v18, "ChinaMVNOTable"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "carrier-info xml file not found "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 162
    if-eqz v7, :cond_7

    .line 163
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 165
    :catch_2
    move-exception v4

    .line 166
    .local v4, "e":Ljava/io/IOException;
    const-string v18, "ChinaMVNOTable"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fileReader.close exception "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 147
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v5    # "eventType":I
    .restart local v8    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v13    # "i":I
    .restart local v14    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "is":Ljava/io/PushbackInputStream;
    :catch_3
    move-exception v4

    .line 148
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_8
    const-string v18, "ChinaMVNOTable"

    const-string v19, "IOException"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 154
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "eventType":I
    :catch_4
    move-exception v4

    move-object v7, v8

    .line 155
    .end local v8    # "fileReader":Ljava/io/InputStreamReader;
    .end local v13    # "i":I
    .end local v14    # "inputStream":Ljava/io/FileInputStream;
    .end local v15    # "is":Ljava/io/PushbackInputStream;
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "fileReader":Ljava/io/InputStreamReader;
    :goto_6
    :try_start_9
    const-string v18, "ChinaMVNOTable"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "xmlPullParser.setInput exception "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 162
    if-eqz v7, :cond_7

    .line 163
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_4

    .line 165
    :catch_5
    move-exception v4

    .line 166
    .local v4, "e":Ljava/io/IOException;
    const-string v18, "ChinaMVNOTable"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fileReader.close exception "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 165
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v5    # "eventType":I
    .restart local v8    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v13    # "i":I
    .restart local v14    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "is":Ljava/io/PushbackInputStream;
    :catch_6
    move-exception v4

    .line 166
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v18, "ChinaMVNOTable"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fileReader.close exception "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 168
    .end local v8    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v7    # "fileReader":Ljava/io/InputStreamReader;
    goto/16 :goto_4

    .line 156
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "eventType":I
    .end local v13    # "i":I
    .end local v14    # "inputStream":Ljava/io/FileInputStream;
    .end local v15    # "is":Ljava/io/PushbackInputStream;
    :catch_7
    move-exception v4

    .line 157
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_b
    const-string v18, "ChinaMVNOTable"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "XmlUtils.beginDocument exception "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 162
    if-eqz v7, :cond_7

    .line 163
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_4

    .line 165
    :catch_8
    move-exception v4

    .line 166
    const-string v18, "ChinaMVNOTable"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fileReader.close exception "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 158
    .end local v4    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 159
    .local v4, "e":Ljava/lang/NumberFormatException;
    :goto_8
    :try_start_d
    const-string v18, "ChinaMVNOTable"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "parse carrier id failed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 162
    if-eqz v7, :cond_7

    .line 163
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto/16 :goto_4

    .line 165
    :catch_a
    move-exception v4

    .line 166
    .local v4, "e":Ljava/io/IOException;
    const-string v18, "ChinaMVNOTable"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fileReader.close exception "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 161
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 162
    :goto_9
    if-eqz v7, :cond_9

    .line 163
    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 167
    :cond_9
    :goto_a
    throw v18

    .line 165
    :catch_b
    move-exception v4

    .line 166
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v19, "ChinaMVNOTable"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "fileReader.close exception "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 170
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "fileReader":Ljava/io/InputStreamReader;
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_a
    const-string v18, "ChinaMVNOTable"

    const-string v19, "cat not find /system/customize/CID/default.xml"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 161
    .restart local v8    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v13    # "i":I
    .restart local v14    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "is":Ljava/io/PushbackInputStream;
    .restart local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v18

    move-object v7, v8

    .end local v8    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v7    # "fileReader":Ljava/io/InputStreamReader;
    goto :goto_9

    .line 158
    .end local v7    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v8    # "fileReader":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v4

    move-object v7, v8

    .end local v8    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v7    # "fileReader":Ljava/io/InputStreamReader;
    goto :goto_8

    .line 156
    .end local v7    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v8    # "fileReader":Ljava/io/InputStreamReader;
    :catch_d
    move-exception v4

    move-object v7, v8

    .end local v8    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v7    # "fileReader":Ljava/io/InputStreamReader;
    goto/16 :goto_7

    .line 154
    .end local v13    # "i":I
    .end local v14    # "inputStream":Ljava/io/FileInputStream;
    .end local v15    # "is":Ljava/io/PushbackInputStream;
    :catch_e
    move-exception v4

    goto/16 :goto_6

    .line 152
    :catch_f
    move-exception v4

    goto/16 :goto_5
.end method

.method private static parseItemInfo(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;I)V
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "info"    # Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;
    .param p2, "count"    # I

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 241
    .local v0, "bEnd":Z
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 252
    .local v2, "eventType":I
    const/4 v7, 0x2

    if-ne v2, v7, :cond_4

    .line 253
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "name":Ljava/lang/String;
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 255
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 256
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {p0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "itemName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 259
    :try_start_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    .line 269
    const/4 v7, 0x4

    if-ne v2, v7, :cond_1

    .line 270
    const-string v7, "carrier name"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 271
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;->setOperator(Ljava/lang/String;)V

    .line 296
    .end local v3    # "itemName":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 297
    .end local v2    # "eventType":I
    :goto_1
    return-void

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 244
    const/4 v0, 0x1

    .line 245
    goto :goto_1

    .line 246
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 247
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 248
    const/4 v0, 0x1

    .line 249
    goto :goto_1

    .line 260
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    .restart local v3    # "itemName":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 261
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 262
    const/4 v0, 0x1

    .line 263
    goto :goto_1

    .line 264
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v1

    .line 265
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 266
    const/4 v0, 0x1

    .line 267
    goto :goto_1

    .line 272
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    const-string v7, "mccmnc"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 273
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 274
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "mccmnc":[Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;->setMccMncList([Ljava/lang/String;)V

    goto :goto_0

    .line 277
    .end local v4    # "mccmnc":[Ljava/lang/String;
    :cond_3
    const-string v7, "spnname"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 278
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 279
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, "spn":[Ljava/lang/String;
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;->setSPNList([Ljava/lang/String;)V

    goto :goto_0

    .line 287
    .end local v3    # "itemName":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "spn":[Ljava/lang/String;
    :cond_4
    const/4 v7, 0x3

    if-ne v2, v7, :cond_5

    .line 288
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 290
    .restart local v5    # "name":Ljava/lang/String;
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 291
    const/4 v0, 0x1

    goto :goto_0

    .line 293
    .end local v5    # "name":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x1

    if-ne v2, v7, :cond_1

    .line 294
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static parseTag(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "level"    # I

    .prologue
    const/4 v9, 0x3

    .line 177
    const/4 v0, 0x0

    .line 181
    .local v0, "bEnd":Z
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 192
    .local v2, "eventType":I
    const/4 v7, 0x2

    if-ne v2, v7, :cond_5

    .line 193
    sget v7, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->TAG_LEVEL_BEFORE_ITEM:I

    if-ge p1, v7, :cond_3

    .line 194
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "name":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->mTagArray:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 196
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 197
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {p0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "tagName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->mTapNameArray:[Ljava/lang/String;

    array-length v7, v7

    if-ge p1, v7, :cond_3

    sget-object v7, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->mTapNameArray:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 201
    const-string v7, "set"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 202
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_2

    .line 203
    const/4 v4, 0x0

    .line 204
    .local v4, "info":Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;
    sget-object v7, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->mCarrierMap:Ljava/util/Map;

    sget v8, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->carriercount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 205
    sget-object v7, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->mCarrierMap:Ljava/util/Map;

    sget v8, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->carriercount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "info":Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;
    check-cast v4, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;

    .line 209
    .restart local v4    # "info":Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;
    :goto_1
    sget v7, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->carriercount:I

    invoke-static {p0, v4, v7}, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->parseItemInfo(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;I)V

    .line 211
    sget-object v7, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->mCarrierMap:Ljava/util/Map;

    sget v8, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->carriercount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    .end local v2    # "eventType":I
    .end local v3    # "i":I
    .end local v4    # "info":Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 184
    const/4 v0, 0x1

    .line 232
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    return-void

    .line 186
    :catch_1
    move-exception v1

    .line 187
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    const/4 v0, 0x1

    .line 189
    goto :goto_2

    .line 207
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    .restart local v3    # "i":I
    .restart local v4    # "info":Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "tagName":Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;

    .end local v4    # "info":Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;
    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;-><init>()V

    .restart local v4    # "info":Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;
    goto :goto_1

    .line 213
    .end local v4    # "info":Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;
    :cond_2
    sget v7, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->carriercount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->carriercount:I

    .line 230
    .end local v3    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v0, :cond_0

    goto :goto_2

    .line 215
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "tagName":Ljava/lang/String;
    :cond_4
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->parseTag(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 216
    const/4 v0, 0x1

    goto :goto_3

    .line 222
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_5
    if-ne v2, v9, :cond_6

    .line 223
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 224
    .restart local v5    # "name":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->mTagArray:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget v7, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->carriercount:I

    sget v8, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->MAX_CHINA_CARRIERS:I

    if-ne v7, v8, :cond_3

    .line 225
    const/4 v0, 0x1

    goto :goto_3

    .line 227
    .end local v5    # "name":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    .line 228
    const/4 v0, 0x1

    goto :goto_3
.end method
