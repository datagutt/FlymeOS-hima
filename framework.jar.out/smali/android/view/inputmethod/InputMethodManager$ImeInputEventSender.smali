.class final Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;
.super Landroid/view/InputEventSender;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImeInputEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventSender;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEventFinished(IZ)V
    .locals 3

    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->IMFdebug:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImeInputEventSender] onInputEventFinished, seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", handled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void
.end method
