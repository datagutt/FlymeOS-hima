.class Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParsedPackage"
.end annotation


# instance fields
.field lstAbis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pkg:Landroid/content/pm/PackageParser$Package;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;->pkg:Landroid/content/pm/PackageParser$Package;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;->lstAbis:Ljava/util/List;

    return-void
.end method
