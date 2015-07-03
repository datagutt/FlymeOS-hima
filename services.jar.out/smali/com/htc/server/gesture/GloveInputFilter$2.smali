.class Lcom/htc/server/gesture/GloveInputFilter$2;
.super Ljava/lang/Object;
.source "GloveInputFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/gesture/GloveInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/gesture/GloveInputFilter;


# direct methods
.method constructor <init>(Lcom/htc/server/gesture/GloveInputFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/gesture/GloveInputFilter$2;->this$0:Lcom/htc/server/gesture/GloveInputFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/server/gesture/GloveInputFilter$2;->this$0:Lcom/htc/server/gesture/GloveInputFilter;

    # getter for: Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I
    invoke-static {v2}, Lcom/htc/server/gesture/GloveInputFilter;->access$000(Lcom/htc/server/gesture/GloveInputFilter;)I

    move-result v2

    if-ne v2, v0, :cond_1

    const-string v2, "GloveInputFilter"

    const-string v3, "decide glove mode by longpress"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/server/gesture/GloveInputFilter$2;->this$0:Lcom/htc/server/gesture/GloveInputFilter;

    # getter for: Lcom/htc/server/gesture/GloveInputFilter;->mSavedToolType:I
    invoke-static {v2}, Lcom/htc/server/gesture/GloveInputFilter;->access$100(Lcom/htc/server/gesture/GloveInputFilter;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/htc/server/gesture/GloveInputFilter$2;->this$0:Lcom/htc/server/gesture/GloveInputFilter;

    # getter for: Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;
    invoke-static {v2}, Lcom/htc/server/gesture/GloveInputFilter;->access$200(Lcom/htc/server/gesture/GloveInputFilter;)Lcom/android/server/input/InputManagerService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->setInGloveMode(Z)V

    iget-object v2, p0, Lcom/htc/server/gesture/GloveInputFilter$2;->this$0:Lcom/htc/server/gesture/GloveInputFilter;

    # setter for: Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I
    invoke-static {v2, v1}, Lcom/htc/server/gesture/GloveInputFilter;->access$002(Lcom/htc/server/gesture/GloveInputFilter;I)I

    :goto_1
    iget-object v1, p0, Lcom/htc/server/gesture/GloveInputFilter$2;->this$0:Lcom/htc/server/gesture/GloveInputFilter;

    # getter for: Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;
    invoke-static {v1}, Lcom/htc/server/gesture/GloveInputFilter;->access$200(Lcom/htc/server/gesture/GloveInputFilter;)Lcom/android/server/input/InputManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->flushInputGloveQueue()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "GloveInputFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GloveInputFilter longpress abnormal case. mVerifyState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/server/gesture/GloveInputFilter$2;->this$0:Lcom/htc/server/gesture/GloveInputFilter;

    # getter for: Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I
    invoke-static {v3}, Lcom/htc/server/gesture/GloveInputFilter;->access$000(Lcom/htc/server/gesture/GloveInputFilter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
