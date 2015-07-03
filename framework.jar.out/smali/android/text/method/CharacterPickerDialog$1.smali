.class Landroid/text/method/CharacterPickerDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "CharacterPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/CharacterPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/CharacterPickerDialog;


# direct methods
.method constructor <init>(Landroid/text/method/CharacterPickerDialog;)V
    .locals 0

    iput-object p1, p0, Landroid/text/method/CharacterPickerDialog$1;->this$0:Landroid/text/method/CharacterPickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$1;->this$0:Landroid/text/method/CharacterPickerDialog;

    # getter for: Landroid/text/method/CharacterPickerDialog;->mKeyboardHidden:I
    invoke-static {v1}, Landroid/text/method/CharacterPickerDialog;->access$100(Landroid/text/method/CharacterPickerDialog;)I

    move-result v1

    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog$1;->this$0:Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {v2}, Landroid/text/method/CharacterPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$1;->this$0:Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {v1}, Landroid/text/method/CharacterPickerDialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
