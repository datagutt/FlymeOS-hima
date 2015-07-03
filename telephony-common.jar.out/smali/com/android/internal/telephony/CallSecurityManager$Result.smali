.class public Lcom/android/internal/telephony/CallSecurityManager$Result;
.super Ljava/lang/Object;
.source "CallSecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallSecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field public blocked:Z

.field public createTime:J

.field public number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/CallSecurityManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallSecurityManager;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/CallSecurityManager$Result;->this$0:Lcom/android/internal/telephony/CallSecurityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
