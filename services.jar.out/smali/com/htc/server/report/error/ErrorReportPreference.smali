.class public Lcom/htc/server/report/error/ErrorReportPreference;
.super Ljava/lang/Object;
.source "ErrorReportPreference.java"


# static fields
.field private static KEY_INITIALIZATION_VECTOR:Ljava/lang/String; = null

.field private static KEY_SECRET_KEY:Ljava/lang/String; = null

.field private static final PROPERTY_FILE_NAME:Ljava/lang/String; = "/data/system/error_report/errorreport.xml"

.field private static final TAG:Ljava/lang/String; = "ErrorReportPreference"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SecretKey"

    sput-object v0, Lcom/htc/server/report/error/ErrorReportPreference;->KEY_SECRET_KEY:Ljava/lang/String;

    const-string v0, "InitializationVector"

    sput-object v0, Lcom/htc/server/report/error/ErrorReportPreference;->KEY_INITIALIZATION_VECTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v2, ""

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method protected static generateIV()[B
    .locals 3

    const/16 v2, 0x10

    new-array v0, v2, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method protected static generateRawKey()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/16 v4, 0x100

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    return-object v1
.end method

.method public static getIV()[B
    .locals 4

    const/4 v0, 0x0

    sget-object v2, Lcom/htc/server/report/error/ErrorReportPreference;->KEY_INITIALIZATION_VECTOR:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/server/report/error/ErrorReportPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/htc/server/report/error/ErrorReportPreference;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/htc/server/report/error/ErrorReportPreference;->generateIV()[B

    move-result-object v0

    sget-object v2, Lcom/htc/server/report/error/ErrorReportPreference;->KEY_INITIALIZATION_VECTOR:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/server/report/error/ErrorReportPreference;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/server/report/error/ErrorReportPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-class v3, Lcom/htc/server/report/error/ErrorReportPreference;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/htc/server/report/error/ErrorReportPreference;->readProperty()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    return-object v1

    :cond_1
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getSecretKey()[B
    .locals 5

    const/4 v1, 0x0

    sget-object v3, Lcom/htc/server/report/error/ErrorReportPreference;->KEY_SECRET_KEY:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/server/report/error/ErrorReportPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/htc/server/report/error/ErrorReportPreference;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/htc/server/report/error/ErrorReportPreference;->generateRawKey()[B

    move-result-object v1

    sget-object v3, Lcom/htc/server/report/error/ErrorReportPreference;->KEY_SECRET_KEY:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/server/report/error/ErrorReportPreference;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/server/report/error/ErrorReportPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    const/16 v6, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static readProperty()Ljava/util/Properties;
    .locals 6

    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/error_report/errorreport.xml"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, v3}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    :cond_1
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method protected static setIV([B)V
    .locals 2

    invoke-static {}, Lcom/htc/server/report/error/ErrorReportPreference;->getIV()[B

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/htc/server/report/error/ErrorReportPreference;->KEY_INITIALIZATION_VECTOR:Ljava/lang/String;

    invoke-static {p0}, Lcom/htc/server/report/error/ErrorReportPreference;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/server/report/error/ErrorReportPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v3, Lcom/htc/server/report/error/ErrorReportPreference;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/htc/server/report/error/ErrorReportPreference;->readProperty()Ljava/util/Properties;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {v1}, Lcom/htc/server/report/error/ErrorReportPreference;->writeProperty(Ljava/util/Properties;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected static setSecretKey([B)V
    .locals 2

    invoke-static {}, Lcom/htc/server/report/error/ErrorReportPreference;->getSecretKey()[B

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/htc/server/report/error/ErrorReportPreference;->KEY_SECRET_KEY:Ljava/lang/String;

    invoke-static {p0}, Lcom/htc/server/report/error/ErrorReportPreference;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/server/report/error/ErrorReportPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static writeProperty(Ljava/util/Properties;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/system/error_report/errorreport.xml"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    throw v3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
