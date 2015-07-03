.class Lcom/android/server/AppOpsService$HintDialogData;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HintDialogData"
.end annotation


# instance fields
.field final code:I

.field final info:Landroid/content/pm/ApplicationInfo;

.field final notifier:Ljava/lang/Object;

.field final pid:I

.field final uid:I


# direct methods
.method constructor <init>(IIILandroid/content/pm/ApplicationInfo;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/AppOpsService$HintDialogData;->pid:I

    iput p2, p0, Lcom/android/server/AppOpsService$HintDialogData;->uid:I

    iput p3, p0, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    iput-object p4, p0, Lcom/android/server/AppOpsService$HintDialogData;->info:Landroid/content/pm/ApplicationInfo;

    iput-object p5, p0, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    return-void
.end method
