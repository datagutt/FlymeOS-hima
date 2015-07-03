.class Lcom/android/server/pm/FacebookPackageUtil$2;
.super Ljava/lang/Object;
.source "FacebookPackageUtil.java"

# interfaces
.implements Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/FacebookPackageUtil;->getRequestedPermissions(Landroid/content/pm/PackageParser$Package;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/FacebookPackageUtil;

.field final synthetic val$requestedPermissions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/pm/FacebookPackageUtil;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/FacebookPackageUtil$2;->this$0:Lcom/android/server/pm/FacebookPackageUtil;

    iput-object p2, p0, Lcom/android/server/pm/FacebookPackageUtil$2;->val$requestedPermissions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "uses-permission"

    return-object v0
.end method

.method public visit(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    iget-object v4, p0, Lcom/android/server/pm/FacebookPackageUtil$2;->this$0:Lcom/android/server/pm/FacebookPackageUtil;

    const-string v5, "name"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/pm/FacebookPackageUtil;->getAttributeValue(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/FacebookPackageUtil$2;->this$0:Lcom/android/server/pm/FacebookPackageUtil;

    const-string v5, "revoke"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/pm/FacebookPackageUtil;->getAttributeValue(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v0, Lcom/android/server/pm/FacebookPermission;

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/FacebookPermission;-><init>(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/server/pm/FacebookPackageUtil$2;->val$requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
