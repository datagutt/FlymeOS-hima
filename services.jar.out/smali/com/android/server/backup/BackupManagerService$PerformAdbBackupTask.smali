.class Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformAdbBackupTask"
.end annotation


# instance fields
.field mAllApps:Z

.field mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

.field mCompress:Z

.field mCurrentPassword:Ljava/lang/String;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mDoWidgets:Z

.field mEncryptPassword:Ljava/lang/String;

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field mIncludeSystem:Z

.field final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, p1, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z

    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    iput-boolean p10, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    iput-boolean p11, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez p13, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    if-eqz p9, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    :goto_1
    iput-boolean p12, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static/range {p13 .. p13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    iput-object p9, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_1
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    # invokes: Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->access$2000(Lcom/android/server/backup/BackupManagerService;I)[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string v20, "PBKDF2WithHmacSHA1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move/from16 v4, v22

    # invokes: Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->access$2100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v18

    const/16 v19, 0x20

    move/from16 v0, v19

    new-array v13, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->access$2200(Lcom/android/server/backup/BackupManagerService;)Ljava/security/SecureRandom;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    # invokes: Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->access$2000(Lcom/android/server/backup/BackupManagerService;I)[B

    move-result-object v9

    const-string v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string v19, "AES"

    move-object/from16 v0, v19

    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v11, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const-string v19, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$2300(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/android/server/backup/BackupManagerService;->access$2300(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v19, 0x2710

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/server/backup/BackupManagerService;->access$2300(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string v20, "PBKDF2WithHmacSHA1"

    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v21

    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    # invokes: Lcom/android/server/backup/BackupManagerService;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    invoke-static {v0, v1, v2, v9, v3}, Lcom/android/server/backup/BackupManagerService;->access$2400(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B

    move-result-object v8

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v0, v5

    move/from16 v19, v0

    array-length v0, v14

    move/from16 v20, v0

    add-int v19, v19, v20

    array-length v0, v8

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v0, v5

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, v14

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, v8

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->access$2300(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v11
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .locals 4

    const/16 v2, 0x400

    :try_start_0
    new-array v1, v2, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "BackupManagerService"

    const-string v3, "Error attempting to finalize backup stream"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->access$1100(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", skipping"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public run()V
    .locals 32

    const-string v28, "BackupManagerService"

    const-string v29, "--- Performing full-dataset adb backup ---"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Ljava/util/TreeMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/TreeMap;-><init>()V

    new-instance v19, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendStartBackup()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v28 .. v28}, Lcom/android/server/backup/BackupManagerService;->access$1100(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v28

    const/16 v29, 0x40

    invoke-virtual/range {v28 .. v29}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v15, v0, :cond_2

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x1

    if-nez v28, :cond_1

    :cond_0
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v25

    if-eqz v25, :cond_5

    # getter for: Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$000()Z

    move-result v28

    if-eqz v28, :cond_4

    const-string v28, "BackupManagerService"

    const-string v29, "Adding widget participants to backup set:"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v27, Ljava/lang/StringBuilder;

    const/16 v28, 0x80

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v28, "   "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v28, 0x20

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v28, "BackupManagerService"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    :cond_6
    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_7
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v28

    if-nez v28, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/16 v22, 0x0

    const/16 v24, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_b

    const/4 v10, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/backup/BackupManagerService;->deviceIsEncrypted()Z

    move-result v28

    if-eqz v28, :cond_c

    if-nez v10, :cond_c

    const-string v28, "BackupManagerService"

    const-string v29, "Unencrypted backup of encrypted device; aborting"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    if-eqz v22, :cond_9

    :try_start_1
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->clear()V

    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    # getter for: Lcom/android/server/backup/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$300()Z

    move-result v28

    if-eqz v28, :cond_a

    const-string v28, "BackupManagerService"

    const-string v29, "Full backup pass complete."

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupRunning:Z

    monitor-exit v29
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_5
    return-void

    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_3

    :catchall_0
    move-exception v28

    :try_start_5
    monitor-exit v29
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v28

    :catchall_1
    move-exception v28

    :try_start_6
    monitor-exit v29
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v28

    :catchall_2
    move-exception v28

    :try_start_7
    monitor-exit v29
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v28

    :cond_c
    move-object/from16 v11, v21

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v29, v0

    # invokes: Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z
    invoke-static/range {v28 .. v29}, Lcom/android/server/backup/BackupManagerService;->access$2500(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_10

    # getter for: Lcom/android/server/backup/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$300()Z

    move-result v28

    if-eqz v28, :cond_d

    const-string v28, "BackupManagerService"

    const-string v29, "Backup password mismatch; aborting"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_12

    :cond_d
    if-eqz v22, :cond_e

    :try_start_9
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->clear()V

    monitor-exit v29
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v29
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    # getter for: Lcom/android/server/backup/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$300()Z

    move-result v28

    if-eqz v28, :cond_f

    const-string v28, "BackupManagerService"

    const-string v29, "Full backup pass complete."

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupRunning:Z

    monitor-exit v29
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5

    :catchall_3
    move-exception v28

    :try_start_d
    monitor-exit v29
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v28

    :catchall_4
    move-exception v28

    :try_start_e
    monitor-exit v29
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v28

    :catchall_5
    move-exception v28

    :try_start_f
    monitor-exit v29
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v28

    :cond_10
    :try_start_10
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v28, 0x400

    move/from16 v0, v28

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v28, "ANDROID BACKUP\n"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    move/from16 v28, v0

    if-eqz v28, :cond_14

    const-string v28, "\n1\n"

    :goto_7
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_12

    if-eqz v10, :cond_15

    :try_start_11
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_12

    move-result-object v11

    move-object v12, v11

    :goto_8
    :try_start_12
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const-string v29, "UTF-8"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    move/from16 v28, v0

    if-eqz v28, :cond_21

    new-instance v8, Ljava/util/zip/Deflater;

    const/16 v28, 0x9

    move/from16 v0, v28

    invoke-direct {v8, v0}, Ljava/util/zip/Deflater;-><init>(I)V

    new-instance v11, Ljava/util/zip/DeflaterOutputStream;

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-direct {v11, v12, v8, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    :goto_9
    move-object/from16 v22, v11

    :try_start_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z

    move/from16 v28, v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_12

    if-eqz v28, :cond_11

    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v28 .. v28}, Lcom/android/server/backup/BackupManagerService;->access$1100(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v28

    const-string v29, "com.android.sharedstoragebackup"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_12

    :cond_11
    :goto_a
    :try_start_15
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v5, :cond_1c

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "com.android.sharedstoragebackup"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    new-instance v28, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    move/from16 v31, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    move-object/from16 v3, v30

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    if-eqz v17, :cond_1a

    const-string v28, "Shared storage"

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->backupOnePackage(Landroid/content/pm/PackageInfo;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1b

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v20

    if-nez v20, :cond_1b

    new-instance v28, Ljava/lang/RuntimeException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Failure writing OBB stack for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_12

    :catch_0
    move-exception v9

    :try_start_16
    const-string v28, "BackupManagerService"

    const-string v29, "App died during full backup"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_12

    if-eqz v22, :cond_12

    :try_start_17
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->clear()V

    monitor-exit v29
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v29
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    # getter for: Lcom/android/server/backup/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$300()Z

    move-result v28

    if-eqz v28, :cond_13

    const-string v28, "BackupManagerService"

    const-string v29, "Full backup pass complete."

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupRunning:Z

    monitor-exit v29
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5

    :cond_14
    :try_start_1b
    const-string v28, "\n0\n"
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_3
    .catchall {:try_start_1b .. :try_end_1b} :catchall_12

    goto/16 :goto_7

    :cond_15
    :try_start_1c
    const-string v28, "none\n"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_12

    move-object v12, v11

    goto/16 :goto_8

    :catch_1
    move-exception v9

    :goto_e
    :try_start_1d
    const-string v28, "BackupManagerService"

    const-string v29, "Unable to emit archive header"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    if-eqz v22, :cond_16

    :try_start_1e
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_8

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->clear()V

    monitor-exit v29
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v29
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    # getter for: Lcom/android/server/backup/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$300()Z

    move-result v28

    if-eqz v28, :cond_17

    const-string v28, "BackupManagerService"

    const-string v29, "Full backup pass complete."

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupRunning:Z

    monitor-exit v29
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5

    :catchall_6
    move-exception v28

    :try_start_22
    monitor-exit v29
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    throw v28

    :catchall_7
    move-exception v28

    :try_start_23
    monitor-exit v29
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    throw v28

    :catchall_8
    move-exception v28

    :try_start_24
    monitor-exit v29
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    throw v28

    :catch_2
    move-exception v9

    :try_start_25
    const-string v28, "BackupManagerService"

    const-string v29, "Unable to find shared-storage backup handler"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_0
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_3
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    goto/16 :goto_a

    :catch_3
    move-exception v9

    :try_start_26
    const-string v28, "BackupManagerService"

    const-string v29, "Internal exception during full backup"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    if-eqz v22, :cond_18

    :try_start_27
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_5

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->clear()V

    monitor-exit v29
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v29
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    # getter for: Lcom/android/server/backup/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$300()Z

    move-result v28

    if-eqz v28, :cond_19

    const-string v28, "BackupManagerService"

    const-string v29, "Full backup pass complete."

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupRunning:Z

    monitor-exit v29
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5

    :cond_1a
    :try_start_2b
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    goto/16 :goto_c

    :cond_1b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_3
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    if-eqz v22, :cond_1d

    :try_start_2c
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_7

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->clear()V

    monitor-exit v29
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v29
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    # getter for: Lcom/android/server/backup/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$300()Z

    move-result v28

    if-eqz v28, :cond_1e

    const-string v28, "BackupManagerService"

    const-string v29, "Full backup pass complete."

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupRunning:Z

    monitor-exit v29
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5

    :catchall_9
    move-exception v28

    :try_start_30
    monitor-exit v29
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_9

    throw v28

    :catchall_a
    move-exception v28

    :try_start_31
    monitor-exit v29
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_a

    throw v28

    :catchall_b
    move-exception v28

    :try_start_32
    monitor-exit v29
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_b

    throw v28

    :catchall_c
    move-exception v28

    :try_start_33
    monitor-exit v29
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_c

    throw v28

    :catchall_d
    move-exception v28

    :try_start_34
    monitor-exit v29
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_d

    throw v28

    :catchall_e
    move-exception v28

    :try_start_35
    monitor-exit v29
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_e

    throw v28

    :catchall_f
    move-exception v28

    :try_start_36
    monitor-exit v29
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_f

    throw v28

    :catchall_10
    move-exception v28

    :try_start_37
    monitor-exit v29
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_10

    throw v28

    :catchall_11
    move-exception v28

    :try_start_38
    monitor-exit v29
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_11

    throw v28

    :catchall_12
    move-exception v28

    if-eqz v22, :cond_1f

    :try_start_39
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_4

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/SparseArray;->clear()V

    monitor-exit v29
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v29
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    # getter for: Lcom/android/server/backup/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$300()Z

    move-result v29

    if-eqz v29, :cond_20

    const-string v29, "BackupManagerService"

    const-string v30, "Full backup pass complete."

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupRunning:Z

    monitor-exit v29
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v28

    :catchall_13
    move-exception v28

    :try_start_3d
    monitor-exit v29
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_13

    throw v28

    :catchall_14
    move-exception v28

    :try_start_3e
    monitor-exit v29
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_14

    throw v28

    :catchall_15
    move-exception v28

    :try_start_3f
    monitor-exit v29
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_15

    throw v28

    :catch_4
    move-exception v29

    goto/16 :goto_12

    :catch_5
    move-exception v28

    goto/16 :goto_10

    :catch_6
    move-exception v28

    goto/16 :goto_d

    :catch_7
    move-exception v28

    goto/16 :goto_11

    :catch_8
    move-exception v28

    goto/16 :goto_f

    :catch_9
    move-exception v9

    move-object v11, v12

    goto/16 :goto_e

    :catch_a
    move-exception v28

    goto/16 :goto_6

    :catch_b
    move-exception v28

    goto/16 :goto_4

    :cond_21
    move-object v11, v12

    goto/16 :goto_9
.end method
