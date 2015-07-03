.class Lcom/android/server/pm/FacebookPackageUtil$1;
.super Ljava/lang/Object;
.source "FacebookPackageUtil.java"

# interfaces
.implements Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/FacebookPackageUtil;->getAllowedPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/FacebookPackageUtil;


# direct methods
.method constructor <init>(Lcom/android/server/pm/FacebookPackageUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/FacebookPackageUtil$1;->this$0:Lcom/android/server/pm/FacebookPackageUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "permission"

    return-object v0
.end method

.method public visit(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/pm/FacebookPackageUtil$1;->this$0:Lcom/android/server/pm/FacebookPackageUtil;

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/FacebookPackageUtil;->getAttributeValue(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/FacebookPackageUtil$1;->this$0:Lcom/android/server/pm/FacebookPackageUtil;

    # getter for: Lcom/android/server/pm/FacebookPackageUtil;->allowedPermissions:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/pm/FacebookPackageUtil;->access$000(Lcom/android/server/pm/FacebookPackageUtil;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
