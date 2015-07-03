.class Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;
.super Ljava/lang/Object;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FuncDescriptor"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mParamTypes:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;->mParamTypes:[Ljava/lang/Class;

    return-void
.end method
