.class public interface abstract Landroid/inputmethodservice/InputMethodService$ExtractEditText;
.super Ljava/lang/Object;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtractEditText"
.end annotation


# virtual methods
.method public abstract finishInternalChanges()V
.end method

.method public abstract getText()Ljava/lang/CharSequence;
.end method

.method public abstract hasVerticalScrollBar()Z
.end method

.method public abstract hideSuggestions()V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
.end method

.method public abstract setHint(Ljava/lang/CharSequence;)V
.end method

.method public abstract setIME(Landroid/inputmethodservice/InputMethodService;)V
.end method

.method public abstract setInputType(I)V
.end method

.method public abstract setSelection(II)V
.end method

.method public abstract setText(Ljava/lang/CharSequence;)V
.end method

.method public abstract startInternalChanges()V
.end method
