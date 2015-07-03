.class final Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper$1;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManagerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->throwRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_message:Ljava/lang/String;

.field final synthetic val$_throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper$1;->val$_message:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper$1;->val$_throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper$1;->val$_message:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper$1;->val$_throwable:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
