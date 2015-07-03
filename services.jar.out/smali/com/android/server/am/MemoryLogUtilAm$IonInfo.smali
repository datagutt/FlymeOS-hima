.class Lcom/android/server/am/MemoryLogUtilAm$IonInfo;
.super Ljava/lang/Object;
.source "MemoryLogUtilAm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemoryLogUtilAm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IonInfo"
.end annotation


# instance fields
.field mClient:Ljava/lang/String;

.field mCreator:Ljava/lang/String;

.field mSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mClient:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mCreator:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    return-void
.end method
