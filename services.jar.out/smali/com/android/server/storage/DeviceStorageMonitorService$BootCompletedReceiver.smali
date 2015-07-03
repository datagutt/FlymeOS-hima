.class final Lcom/android/server/storage/DeviceStorageMonitorService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method private constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$BootCompletedReceiver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;Lcom/android/server/storage/DeviceStorageMonitorService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService$BootCompletedReceiver;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$BootCompletedReceiver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$BootCompletedReceiver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
