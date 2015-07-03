.class Lcom/android/internal/telephony/CallSecurityManager$1;
.super Ljava/lang/Object;
.source "CallSecurityManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CallSecurityManager;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallSecurityManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallSecurityManager;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/CallSecurityManager$1;->this$0:Lcom/android/internal/telephony/CallSecurityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 84
    const-string v3, "CallSecurityManager"

    const-string v4, "DialerService connected !"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :try_start_0
    const-string v3, "com.htc.service.dialer.IDialerService.Stub"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 88
    .local v0, "cls":Ljava/lang/Class;
    const-string v3, "asInterface"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 89
    .local v2, "methodAdInterface":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/internal/telephony/CallSecurityManager$1;->this$0:Lcom/android/internal/telephony/CallSecurityManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/CallSecurityManager;->mDialerService:Ljava/lang/Object;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/CallSecurityManager;->access$002(Lcom/android/internal/telephony/CallSecurityManager;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "methodAdInterface":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "CallSecurityManager"

    const-string v4, "fail to asInterface"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 98
    const-string v0, "CallSecurityManager"

    const-string v1, "DialerService disconnected !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/CallSecurityManager$1;->this$0:Lcom/android/internal/telephony/CallSecurityManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/CallSecurityManager;->mDialerService:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallSecurityManager;->access$002(Lcom/android/internal/telephony/CallSecurityManager;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method
