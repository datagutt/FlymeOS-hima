.class public final Lcom/android/server/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Op"
.end annotation


# instance fields
.field public duration:I

.field private hint:Z

.field public mode:I

.field public nesting:I

.field public final op:I

.field public final packageName:Ljava/lang/String;

.field public rejectTime:J

.field public time:J

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/AppOpsService$Op;->uid:I

    iput-object p2, p0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v0, p0, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppOpsService$Op;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AppOpsService$Op;->hint:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/AppOpsService$Op;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AppOpsService$Op;->hint:Z

    return p1
.end method
