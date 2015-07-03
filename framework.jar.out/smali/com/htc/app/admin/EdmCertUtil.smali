.class public Lcom/htc/app/admin/EdmCertUtil;
.super Ljava/lang/Object;
.source "EdmCertUtil.java"


# static fields
.field static final CERT_NAME_KEY:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "EdmCertUtil"

.field private static mIsCertValid:Z


# instance fields
.field private mCertName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/app/admin/EdmCertUtil;->mIsCertValid:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/app/admin/EdmCertUtil;->mCertName:Ljava/lang/String;

    const/4 v4, 0x0

    sput-boolean v4, Lcom/htc/app/admin/EdmCertUtil;->mIsCertValid:Z

    iput-object p1, p0, Lcom/htc/app/admin/EdmCertUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/htc/app/admin/EdmCertUtil;->isEdmCertIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/htc/app/admin/EdmCertUtil;->getDPM()Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v4, "name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/htc/app/admin/EdmCertUtil;->mCertName:Ljava/lang/String;

    const-string v4, "EdmCertUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EdmCertIntent initialized:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    sput-boolean v4, Lcom/htc/app/admin/EdmCertUtil;->mIsCertValid:Z

    :cond_0
    return-void

    :cond_1
    const-string v4, "EdmCertUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a EdmCertIntent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "EdmCertUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   Key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDPM()Landroid/app/admin/DevicePolicyManager;
    .locals 3

    iget-object v1, p0, Lcom/htc/app/admin/EdmCertUtil;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/app/admin/EdmCertUtil;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/htc/app/admin/EdmCertUtil;->mDpm:Landroid/app/admin/DevicePolicyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/app/admin/EdmCertUtil;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/admin/EdmCertUtil;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string v1, "EdmCertUtil"

    const-string v2, "Cannot get DevicePolicyManager!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEdmCertIntent(Landroid/content/Intent;)Z
    .locals 3

    const-string v1, "com.htc.app.admin.CertInfo.EDM_CERTIFICATE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "com.htc.app.admin.CertInfo.EDM_CERTIFICATE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static isValid()Z
    .locals 1

    sget-boolean v0, Lcom/htc/app/admin/EdmCertUtil;->mIsCertValid:Z

    return v0
.end method


# virtual methods
.method public done()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/app/admin/EdmCertUtil;->mIsCertValid:Z

    return-void
.end method

.method public getCertName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/EdmCertUtil;->mCertName:Ljava/lang/String;

    return-object v0
.end method

.method public prepareEdmCertIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.htc.app.admin.CertInfo.EDM_CERTIFICATE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public responseStatus(I)V
    .locals 3

    invoke-direct {p0}, Lcom/htc/app/admin/EdmCertUtil;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/admin/DevicePolicyManager;->responseAsyncResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/app/admin/EdmCertUtil;->done()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "EdmCertUtil"

    const-string v2, "Cannot response!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public responseSuccess()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/app/admin/EdmCertUtil;->responseStatus(I)V

    return-void
.end method
