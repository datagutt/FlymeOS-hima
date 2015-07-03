.class public Landroid/text/method/CharacterPickerDialog;
.super Landroid/app/Dialog;
.source "CharacterPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/CharacterPickerDialog$StringPickerDialog;,
        Landroid/text/method/CharacterPickerDialog$OptionsAdapter;
    }
.end annotation


# instance fields
.field protected mCancelButton:Landroid/widget/Button;

.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mInsert:Z

.field private mKeyboardHidden:I

.field protected mNeedToDismiss:Z

.field private mOptions:Ljava/lang/String;

.field private mText:Landroid/text/Editable;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V
    .locals 1

    const v0, 0x1030059

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/method/CharacterPickerDialog;->mNeedToDismiss:Z

    new-instance v0, Landroid/text/method/CharacterPickerDialog$1;

    invoke-direct {v0, p0}, Landroid/text/method/CharacterPickerDialog$1;-><init>(Landroid/text/method/CharacterPickerDialog;)V

    iput-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Landroid/text/method/CharacterPickerDialog;->mView:Landroid/view/View;

    iput-object p3, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    iput-object p4, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    iput-boolean p5, p0, Landroid/text/method/CharacterPickerDialog;->mInsert:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/text/method/CharacterPickerDialog;)I
    .locals 1

    iget v0, p0, Landroid/text/method/CharacterPickerDialog;->mKeyboardHidden:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/method/CharacterPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x109003a

    invoke-virtual {p0, v2}, Landroid/text/method/CharacterPickerDialog;->setContentView(I)V

    const v2, 0x10202de

    invoke-virtual {p0, v2}, Landroid/text/method/CharacterPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v2, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;

    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;-><init>(Landroid/text/method/CharacterPickerDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v2, 0x10202df

    invoke-virtual {p0, v2}, Landroid/text/method/CharacterPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Landroid/text/method/CharacterPickerDialog;->mCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/method/CharacterPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Landroid/text/method/CharacterPickerDialog;->mKeyboardHidden:I

    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.permission.APP_PLATFORM"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected replaceCharacterAndClose(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iget-boolean v1, p0, Landroid/text/method/CharacterPickerDialog;->mInsert:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :goto_0
    iget-boolean v1, p0, Landroid/text/method/CharacterPickerDialog;->mNeedToDismiss:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->dismiss()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method
