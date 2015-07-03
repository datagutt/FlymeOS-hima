.class public Lcom/android/internal/telephony/SSCommandOverUT$Command;
.super Ljava/lang/Object;
.source "SSCommandOverUT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SSCommandOverUT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Command"
.end annotation


# instance fields
.field method:I

.field parm:Landroid/os/Bundle;

.field response:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/telephony/SSCommandOverUT;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SSCommandOverUT;ILandroid/os/Bundle;Landroid/os/Message;)V
    .locals 0
    .param p2, "methodindex"    # I
    .param p3, "parm2"    # Landroid/os/Bundle;
    .param p4, "response2"    # Landroid/os/Message;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/SSCommandOverUT$Command;->this$0:Lcom/android/internal/telephony/SSCommandOverUT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p2, p0, Lcom/android/internal/telephony/SSCommandOverUT$Command;->method:I

    .line 62
    iput-object p3, p0, Lcom/android/internal/telephony/SSCommandOverUT$Command;->parm:Landroid/os/Bundle;

    .line 63
    iput-object p4, p0, Lcom/android/internal/telephony/SSCommandOverUT$Command;->response:Landroid/os/Message;

    .line 64
    return-void
.end method
