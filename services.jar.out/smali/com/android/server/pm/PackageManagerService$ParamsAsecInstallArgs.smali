.class Lcom/android/server/pm/PackageManagerService$ParamsAsecInstallArgs;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParamsAsecInstallArgs"
.end annotation


# instance fields
.field public mAppDexInstructionSets:[Ljava/lang/String;

.field public mCid:Ljava/lang/String;

.field public mForwardLocked:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ParamsAsecInstallArgs;-><init>()V

    return-void
.end method
