.class public Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;
.super Ljava/lang/Object;
.source "LockPatternViewWrapper.java"


# static fields
.field public static final DISPLAYMODE_ANIMATE:I

.field public static final DISPLAYMODE_CORRECT:I

.field public static final DISPLAYMODE_WRONG:I

.field static mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->DISPLAYMODE_CORRECT:I

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->DISPLAYMODE_ANIMATE:I

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->DISPLAYMODE_WRONG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/widget/LockPatternView;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-void
.end method

.method public static getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;
    .locals 1

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, [[Lcom/android/internal/widget/LockPatternView$CellState;

    goto :goto_0
.end method


# virtual methods
.method public clearPattern()V
    .locals 1

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    :cond_0
    return-void
.end method

.method public enableInput()V
    .locals 1

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    :cond_0
    return-void
.end method

.method public getPatternViewCellSize(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getView()Lcom/android/internal/widget/LockPatternView;
    .locals 1

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method public postDelayed(Ljava/lang/Runnable;I)V
    .locals 4

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setDisplayMode(I)V
    .locals 3

    sget-object v1, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v0

    sget-object v1, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 1

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    :cond_0
    return-void
.end method

.method public setOnPatternListener(Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;)V
    .locals 1

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    :cond_0
    return-void
.end method

.method public setSaveEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    :cond_0
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    :cond_0
    return-void
.end method

.method public updateCellState(Ljava/lang/Object;FF)V
    .locals 1

    instance-of v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/LockPatternView$CellState;

    iput p2, v0, Lcom/android/internal/widget/LockPatternView$CellState;->scale:F

    check-cast p1, Lcom/android/internal/widget/LockPatternView$CellState;

    iput p3, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translateY:F

    :cond_0
    return-void
.end method
