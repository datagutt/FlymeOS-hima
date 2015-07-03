.class public Lcom/android/server/pm/FacebookPackageUtil;
.super Ljava/lang/Object;
.source "FacebookPackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;
    }
.end annotation


# instance fields
.field private final CERT_PATH:Ljava/lang/String;

.field private final FACEBOOK_PACKAGE_PREFIX:Ljava/lang/String;

.field private final FBSIG_SUFFIX:Ljava/lang/String;

.field private final FB_MANIFEST:Ljava/lang/String;

.field private final FB_PERMISSION_PATH:Ljava/lang/String;

.field private final MAX_FBSIG_CANDIDATES:I

.field private final SF_SUFFIX:Ljava/lang/String;

.field private final SIG_ALG:Ljava/lang/String;

.field private final allowedPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookCert:Ljava/security/cert/X509Certificate;

.field private final mPackageManager:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "etc/security/facebook.crt"

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->CERT_PATH:Ljava/lang/String;

    const-string v3, "etc/security/FBPermissions.xml"

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->FB_PERMISSION_PATH:Ljava/lang/String;

    const-string v3, "SHA256withRSA"

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->SIG_ALG:Ljava/lang/String;

    const-string v3, ".FBSIG"

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->FBSIG_SUFFIX:Ljava/lang/String;

    const-string v3, ".SF"

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->SF_SUFFIX:Ljava/lang/String;

    const-string v3, "FBManifest.xml"

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->FB_MANIFEST:Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->allowedPermissions:Ljava/util/HashSet;

    const-string v3, "com.facebook."

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->FACEBOOK_PACKAGE_PREFIX:Ljava/lang/String;

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->MAX_FBSIG_CANDIDATES:I

    iput-object p1, p0, Lcom/android/server/pm/FacebookPackageUtil;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/security/facebook.crt"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->mFacebookCert:Ljava/security/cert/X509Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p0}, Lcom/android/server/pm/FacebookPackageUtil;->getAllowedPermissions()V

    :goto_0
    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/pm/FacebookPackageUtil;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/FacebookPackageUtil;->allowedPermissions:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method getAllowedPermissions()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/security/FBPermissions.xml"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/pm/FacebookPackageUtil;->getParserForInput(Ljava/io/Reader;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Lcom/android/server/pm/FacebookPackageUtil$1;

    invoke-direct {v3, p0}, Lcom/android/server/pm/FacebookPackageUtil$1;-><init>(Lcom/android/server/pm/FacebookPackageUtil;)V

    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/FacebookPackageUtil;->parseTags(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :goto_0
    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method getAttributeValue(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move-object v5, v4

    :goto_0
    return-object v5

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v4

    goto :goto_0
.end method

.method getParserForInput(Ljava/io/Reader;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method getRequestedPermissions(Landroid/content/pm/PackageParser$Package;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/FacebookPermission;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v5, Ljava/util/jar/JarFile;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v6, "FBManifest.xml"

    invoke-virtual {v5, v6}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v5, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v2}, Lcom/android/server/pm/FacebookPackageUtil;->getParserForInput(Ljava/io/Reader;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    new-instance v6, Lcom/android/server/pm/FacebookPackageUtil$2;

    invoke-direct {v6, p0, v4}, Lcom/android/server/pm/FacebookPackageUtil$2;-><init>(Lcom/android/server/pm/FacebookPackageUtil;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3, v6}, Lcom/android/server/pm/FacebookPackageUtil;->parseTags(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V

    :goto_0
    return-object v4

    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method grantFacebookPermissions(Landroid/content/pm/PackageParser$Package;)V
    .locals 10

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v9, "com.facebook."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    if-eqz v6, :cond_0

    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v8, :cond_3

    iget-object v3, v6, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/FacebookPackageUtil;->isFacebookApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/FacebookPackageUtil;->getRequestedPermissions(Landroid/content/pm/PackageParser$Package;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_0

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/FacebookPermission;

    iget-object v5, v2, Lcom/android/server/pm/FacebookPermission;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/pm/FacebookPackageUtil;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    if-nez v1, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object v3, v6

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/android/server/pm/FacebookPackageUtil;->allowedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, v2, Lcom/android/server/pm/FacebookPermission;->revoke:Z

    if-eqz v8, :cond_6

    :cond_5
    iget-object v8, v3, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, v6, Lcom/android/server/pm/PackageSetting;->haveGids:Z

    if-eqz v8, :cond_2

    iget-object v8, v3, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-object v9, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->removeInts([I[I)[I

    move-result-object v8

    iput-object v8, v3, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    goto :goto_2

    :cond_6
    iget-object v8, v3, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, v6, Lcom/android/server/pm/PackageSetting;->haveGids:Z

    if-eqz v8, :cond_2

    iget-object v8, v3, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-object v9, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v8

    iput-object v8, v3, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    goto :goto_2
.end method

.method isFacebookApp(Landroid/content/pm/PackageParser$Package;)Z
    .locals 12

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/pm/FacebookPackageUtil;->mFacebookCert:Ljava/security/cert/X509Certificate;

    if-nez v10, :cond_0

    move v2, v9

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    new-instance v7, Ljava/util/jar/JarFile;

    invoke-direct {v7, v8}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v10, 0x2

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v10, "META-INF/"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, ".FBSIG"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v10, ".SF"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v9

    goto :goto_0

    :cond_3
    move-object v6, v3

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    :try_start_4
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v2, v9

    goto :goto_0

    :cond_6
    :try_start_5
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_7

    :try_start_6
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move v2, v9

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {p0, v7, v6, v1}, Lcom/android/server/pm/FacebookPackageUtil;->verifyJarSignature(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    :try_start_8
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    :catch_0
    move-exception v9

    goto :goto_0

    :catchall_0
    move-exception v9

    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    throw v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method parseTags(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;)V
    .locals 3

    const/4 v1, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, p1}, Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;->visit(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_1
    return-void
.end method

.method verifyJarSignature(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/jar/JarEntry;",
            "Ljava/util/List",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;)Z"
        }
    .end annotation

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    const-string v10, "SHA256withRSA"

    invoke-static {v10}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    iget-object v10, p0, Lcom/android/server/pm/FacebookPackageUtil;->mFacebookCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v6, v10}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    const/16 v10, 0x400

    new-array v0, v10, [B

    const/4 v3, 0x0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_0

    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v10

    :goto_1
    move v10, v11

    :goto_2
    return v10

    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/JarEntry;

    invoke-virtual {v6, v4}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p1, v8}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    :try_start_4
    invoke-static {v9}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/Signature;->verify([B)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :cond_1
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catchall_1
    move-exception v10

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_2
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1
.end method
