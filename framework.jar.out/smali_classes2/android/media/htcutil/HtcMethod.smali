.class public Landroid/media/htcutil/HtcMethod;
.super Ljava/lang/Object;
.source "HtcMethod.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcMethod"


# instance fields
.field method:Ljava/lang/reflect/Method;

.field methodName:Ljava/lang/String;

.field params:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/htcutil/HtcMethod;->methodName:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/htcutil/HtcMethod;->params:[Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/htcutil/HtcMethod;->method:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static initMethods([Landroid/media/htcutil/HtcMethod;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/media/htcutil/HtcMethod;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    :try_start_0
    iget-object v5, v4, Landroid/media/htcutil/HtcMethod;->methodName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/media/htcutil/HtcMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, v4, Landroid/media/htcutil/HtcMethod;->methodName:Ljava/lang/String;

    iget-object v6, v4, Landroid/media/htcutil/HtcMethod;->params:[Ljava/lang/Class;

    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v4, Landroid/media/htcutil/HtcMethod;->method:Ljava/lang/reflect/Method;

    const-string v5, "HtcMethod"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Found method : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/media/htcutil/HtcMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static varargs invokeHtcMethod(Ljava/lang/Object;Landroid/media/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/media/htcutil/HtcMethod;->method:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v1

    :cond_1
    if-eqz p2, :cond_2

    :try_start_0
    array-length v1, p2

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p1, Landroid/media/htcutil/HtcMethod;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_3
    iget-object v1, p1, Landroid/media/htcutil/HtcMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
