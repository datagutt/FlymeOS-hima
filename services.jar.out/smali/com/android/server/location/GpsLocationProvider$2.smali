.class Lcom/android/server/location/GpsLocationProvider$2;
.super Landroid/telephony/PhoneStateListener;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mRoaming:Z
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$002(Lcom/android/server/location/GpsLocationProvider;Z)Z

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "ServiceState.STATE_IN_SERVICE\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
