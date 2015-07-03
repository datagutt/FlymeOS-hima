.class public Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;,
        Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    }
.end annotation


# static fields
.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_CORRECTION:I = 0x38

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_SELECTED_TEXT:I = 0x19

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REPORT_FULLSCREEN_MODE:I = 0x64

.field private static final DO_REQUEST_UPDATE_CURSOR_ANCHOR_INFO:I = 0x8c

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_REGION:I = 0x3f

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mH:Landroid/os/Handler;

.field private mInputConnection:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/inputmethod/InputConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->IMFinnerDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "IInputConnectionWrapper"

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IInputConnectionWrapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public clearMetaKeyStates(I)V
    .locals 2

    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1

    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 1

    const/16 v0, 0x32

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 1

    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public endBatchEdit()V
    .locals 1

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-boolean v6, Landroid/view/inputmethod/InputMethodManager;->IMFinnerDebug:Z

    if-eqz v6, :cond_0

    const-string v6, "IInputConnectionWrapper"

    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->getLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeMessage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", this="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x32

    if-eq v6, v7, :cond_1

    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x37

    if-eq v6, v7, :cond_1

    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x3c

    if-eq v6, v7, :cond_1

    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x50

    if-eq v6, v7, :cond_1

    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_1

    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x5f

    if-ne v6, v7, :cond_2

    :cond_1
    const-string v6, "IInputConnectionWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Do restartInputUnchecked, ic="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodManager;->restartInputUnchecked(I)V

    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    const-string v4, "IInputConnectionWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    const-string v4, "IInputConnectionWrapper"

    const-string v5, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v4, v5, v6}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "IInputConnectionWrapper"

    const-string v5, "Got RemoteException calling setTextAfterCursor"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v4, v5, v6}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    :try_start_2
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    const-string v4, "IInputConnectionWrapper"

    const-string v5, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v4, v5, v6}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v4, "IInputConnectionWrapper"

    const-string v5, "Got RemoteException calling setTextBeforeCursor"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_6
    :try_start_3
    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v4, v5, v6}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    :try_start_4
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    const-string v4, "IInputConnectionWrapper"

    const-string v5, "getSelectedText on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v4, v5, v6}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    const-string v4, "IInputConnectionWrapper"

    const-string v5, "Got RemoteException calling setSelectedText"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_8
    :try_start_5
    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v5}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v4, v5, v6}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    :try_start_6
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    const-string v4, "IInputConnectionWrapper"

    const-string v5, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v4, v5, v6}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v2

    const-string v4, "IInputConnectionWrapper"

    const-string v5, "Got RemoteException calling setCursorCapsMode"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_a
    :try_start_7
    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v5}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v5

    iget v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v4, v5, v6}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    :try_start_8
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    const-string v4, "IInputConnectionWrapper"

    const-string v5, "getExtractedText on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v4, v5, v6}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v2

    const-string v4, "IInputConnectionWrapper"

    const-string v5, "Got RemoteException calling setExtractedText"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_c
    :try_start_9
    iget-object v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/ExtractedTextRequest;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4, v6}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    iget v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v5, v4, v6}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    :sswitch_5
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    const-string v4, "IInputConnectionWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commitText on inactive InputConnection, ic="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_0

    :sswitch_6
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_10

    :cond_f
    const-string v4, "IInputConnectionWrapper"

    const-string/jumbo v5, "setSelection on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_0

    :sswitch_7
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_12

    :cond_11
    const-string v4, "IInputConnectionWrapper"

    const-string/jumbo v5, "performEditorAction on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_0

    :sswitch_8
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_14

    :cond_13
    const-string v4, "IInputConnectionWrapper"

    const-string/jumbo v5, "performContextMenuAction on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    goto/16 :goto_0

    :sswitch_9
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_16

    :cond_15
    const-string v4, "IInputConnectionWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commitCompletion on inactive InputConnection, ic="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_16
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v3, v4}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    goto/16 :goto_0

    :sswitch_a
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_18

    :cond_17
    const-string v4, "IInputConnectionWrapper"

    const-string v5, "commitCorrection on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_18
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/CorrectionInfo;

    invoke-interface {v3, v4}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    goto/16 :goto_0

    :sswitch_b
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_19

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_19
    const-string v4, "IInputConnectionWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setComposingText on inactive InputConnection, ic="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_0

    :sswitch_c
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_1b

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_1c

    :cond_1b
    const-string v4, "IInputConnectionWrapper"

    const-string/jumbo v5, "setComposingRegion on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1c
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    goto/16 :goto_0

    :sswitch_d
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-nez v3, :cond_1d

    const-string v4, "IInputConnectionWrapper"

    const-string v5, "finishComposingText on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1d
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto/16 :goto_0

    :sswitch_e
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_1f

    :cond_1e
    const-string v4, "IInputConnectionWrapper"

    const-string/jumbo v5, "sendKeyEvent on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/KeyEvent;

    invoke-interface {v3, v4}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    :sswitch_f
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_21

    :cond_20
    const-string v4, "IInputConnectionWrapper"

    const-string v5, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_21
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    goto/16 :goto_0

    :sswitch_10
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_22

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_23

    :cond_22
    const-string v4, "IInputConnectionWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteSurroundingText on inactive InputConnection, ic="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_23
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    :sswitch_11
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_25

    :cond_24
    const-string v4, "IInputConnectionWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beginBatchEdit on inactive InputConnection, ic="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_25
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    goto/16 :goto_0

    :sswitch_12
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_27

    :cond_26
    const-string v4, "IInputConnectionWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endBatchEdit on inactive InputConnection, ic="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_27
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    :sswitch_13
    iget-object v6, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_28

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v6

    if-nez v6, :cond_29

    :cond_28
    const-string v4, "IInputConnectionWrapper"

    const-string/jumbo v5, "reportFullscreenMode on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_29
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v4, :cond_2a

    :goto_1
    invoke-interface {v3, v4}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    goto/16 :goto_0

    :cond_2a
    move v4, v5

    goto :goto_1

    :sswitch_14
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_2b

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_2c

    :cond_2b
    const-string v4, "IInputConnectionWrapper"

    const-string/jumbo v5, "performPrivateCommand on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-interface {v3, v4, v5}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    :try_start_a
    iget-object v4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_2d

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_2e

    :cond_2d
    const-string v4, "IInputConnectionWrapper"

    const-string/jumbo v5, "requestCursorAnchorInfo on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v4, v5, v6}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v2

    const-string v4, "IInputConnectionWrapper"

    const-string v5, "Got RemoteException calling requestCursorAnchorInfo"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_2e
    :try_start_b
    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v5}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result v5

    iget v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v4, v5, v6}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x19 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
        0x37 -> :sswitch_9
        0x38 -> :sswitch_a
        0x39 -> :sswitch_6
        0x3a -> :sswitch_7
        0x3b -> :sswitch_8
        0x3c -> :sswitch_b
        0x3f -> :sswitch_c
        0x41 -> :sswitch_d
        0x46 -> :sswitch_e
        0x50 -> :sswitch_10
        0x5a -> :sswitch_11
        0x5f -> :sswitch_12
        0x64 -> :sswitch_13
        0x78 -> :sswitch_14
        0x82 -> :sswitch_f
        0x8c -> :sswitch_15
    .end sparse-switch
.end method

.method public finishComposingText()V
    .locals 1

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .locals 6

    const/16 v1, 0x28

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6

    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6

    const/16 v1, 0x14

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method obtainMessage(I)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageII(III)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 2

    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3

    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3

    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iput p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    iput-object p2, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageOSC(ILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    iput-object p2, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iput p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public performContextMenuAction(I)V
    .locals 2

    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public performEditorAction(I)V
    .locals 2

    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public reportFullscreenMode(Z)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1

    const/16 v0, 0x8c

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setComposingRegion(II)V
    .locals 1

    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 1

    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setSelection(II)V
    .locals 1

    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
