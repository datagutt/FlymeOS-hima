.class public final Lcom/htc/server/report/up/HtcSystemUPLogger;
.super Ljava/lang/Object;
.source "HtcSystemUPLogger.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addErrorCount(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->getInstance()Lcom/htc/server/report/up/HtcSystemUPWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->addErrorCount(Ljava/lang/String;)V

    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    invoke-static {}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->getInstance()Lcom/htc/server/report/up/HtcSystemUPWrapper;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->getInstance()Lcom/htc/server/report/up/HtcSystemUPWrapper;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
