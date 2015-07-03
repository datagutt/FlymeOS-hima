.class Lcom/android/server/location/GpsLocationProvider$10;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;

.field final synthetic val$local_extra:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$10;->val$local_extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v1, "CDMA"

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3600(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$10;->val$local_extra:Landroid/os/Bundle;

    const-string v2, "enable_lock"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V
    invoke-static {v1, v0}, Lcom/android/server/location/GpsLocationProvider;->access$3700(Lcom/android/server/location/GpsLocationProvider;I)V

    :cond_0
    return-void
.end method
