.class Lcom/android/server/AlarmManagerService$TargetQueuingAlarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TargetQueuingAlarm"
.end annotation


# instance fields
.field private final mIntentName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$TargetQueuingAlarm;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$TargetQueuingAlarm;->mIntentName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$TargetQueuingAlarm;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/AlarmManagerService$TargetQueuingAlarm;->mIntentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIntentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$TargetQueuingAlarm;->mIntentName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$TargetQueuingAlarm;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
