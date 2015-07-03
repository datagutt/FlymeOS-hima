.class public final Lcom/htc/server/report/error/LogStream;
.super Ljava/lang/Object;
.source "LogStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/report/error/LogStream$CipherStream;
    }
.end annotation


# static fields
.field private static final ENTITY_BUFFER_SIZE:I = 0x1000

.field private static final HEAD_BUFFER_SIZE:I = 0x14

.field private static final SIG0:I = 0x6716e3aa

.field private static final SIG1:I = 0x11d74057

.field private static final SIG2:I = -0x7d594989

.field private static final SIG3:I = -0x3c46f836

.field private static final TAG:Ljava/lang/String; = "LogStream"

.field private static final VERSION:I = 0x3

.field private static final ZIP_FILE_ENTITY:Ljava/lang/String; = "file_entity"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concatenateOutputStream(Ljava/io/OutputStream;Z[B[B)Ljava/io/OutputStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x0

    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x14

    invoke-direct {v0, p0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lcom/htc/server/report/error/LogStream;->writeLogStreamSignature(Ljava/io/DataOutputStream;)V

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    const/4 v2, 0x0

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x1000

    invoke-direct {v0, p0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-static {v0, p2, v8, p3}, Lcom/htc/server/report/error/LogStream$CipherStream;->getCipherOutputStream(Ljava/io/OutputStream;[BI[B)Ljavax/crypto/CipherOutputStream;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz v5, :cond_0

    new-instance v4, Ljava/util/zip/ZipEntry;

    const-string v6, "file_entity"

    invoke-direct {v4, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    move-object v3, v5

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private static writeLogStreamSignature(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x6716e3aa

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const v0, 0x11d74057

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const v0, -0x7d594989

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const v0, -0x3c46f836

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method
