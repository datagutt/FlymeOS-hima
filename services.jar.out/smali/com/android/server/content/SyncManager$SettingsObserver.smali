.class final Lcom/android/server/content/SyncManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/content/SyncManager$SettingsObserver;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SettingsObserver;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->handleSettingsChanged()V
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)V

    return-void
.end method
