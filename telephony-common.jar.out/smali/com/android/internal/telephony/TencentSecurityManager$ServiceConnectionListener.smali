.class public interface abstract Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;
.super Ljava/lang/Object;
.source "TencentSecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TencentSecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceConnectionListener"
.end annotation


# virtual methods
.method public abstract onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public abstract onServiceDisconnected(Landroid/content/ComponentName;)V
.end method
