.class Lcom/android/server/location/GpsLocationProvider$14;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->write_BI(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;

.field final synthetic val$onoff:Z

.field final synthetic val$packagename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$14;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iput-boolean p2, p0, Lcom/android/server/location/GpsLocationProvider$14;->val$onoff:Z

    iput-object p3, p0, Lcom/android/server/location/GpsLocationProvider$14;->val$packagename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x2

    const-string v3, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " write_BI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$14;->val$onoff:Z

    if-eqz v2, :cond_0

    const-string v2, "GPS ON "

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$14;->val$packagename:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "UTD_BI"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "C0003"

    aput-object v3, v0, v2

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$14;->val$onoff:Z

    if-eqz v2, :cond_1

    const-string v2, "A0001"

    aput-object v2, v0, v5

    :goto_1
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$14;->val$packagename:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    :try_start_0
    # getter for: Lcom/android/server/location/GpsLocationProvider;->HtcSystemUPLogger_write:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$5600()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    return-void

    :cond_0
    const-string v2, " GPS OFF "

    goto :goto_0

    :cond_1
    const-string v2, "A0002"

    aput-object v2, v0, v5

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method
