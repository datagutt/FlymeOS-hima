.class Lcom/android/server/input/InputManagerService$1;
.super Ljava/util/ArrayList;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.qualcomm.sgs.reignofamiratlk"

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
