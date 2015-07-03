.class Lcom/android/server/wm/DisplayContent;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field final isDefaultDisplay:Z

.field layoutNeeded:Z

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field mContentRect:Landroid/graphics/Rect;

.field mDeferredRemoval:Z

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field final mDisplaySizeLock:Ljava/lang/Object;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

.field mTmpRect:Landroid/graphics/Rect;

.field final mTmpTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTouchExcludeRegion:Landroid/graphics/Region;

.field private final mWindows:Lcom/android/server/wm/WindowList;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/wm/WindowList;

    invoke-direct {v1}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method animateDimLayers()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->animateDimLayers()Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method attachStack(Lcom/android/server/wm/TaskStack;)V
    .locals 2

    iget v0, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attachStack: HOME_STACK_ID (0) not first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    return-void
.end method

.method checkForDeferredActions()V
    .locals 11

    const/4 v10, 0x0

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_0
    if-ltz v2, :cond_6

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-boolean v9, v1, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p0, v1}, Lcom/android/server/wm/WindowManagerService;->detachStackLocked(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)V

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    :goto_1
    if-ltz v4, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget-object v7, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    :goto_2
    if-ltz v6, :cond_4

    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v9, v8, Lcom/android/server/wm/AppWindowToken;->mDeferRemoval:Z

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v9, v8}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    iput-boolean v10, v8, Lcom/android/server/wm/AppWindowToken;->mDeferRemoval:Z

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowManagerService;->removeAppFromTaskLocked(Lcom/android/server/wm/AppWindowToken;)V

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_4
    iget-boolean v9, v3, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    if-eqz v9, :cond_5

    iput-boolean v10, v3, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v3}, Lcom/android/server/wm/WindowManagerService;->removeTaskLocked(Lcom/android/server/wm/Task;)V

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    iget-boolean v9, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    :cond_7
    return-void
.end method

.method close()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->close()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method detachStack(Lcom/android/server/wm/TaskStack;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v18, "Display: mDisplayId="

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v18, "init="

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, "x"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, "dpi"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v18, " base="

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, "x"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, "dpi"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    const-string v18, " cur="

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, "x"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, " app="

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, "x"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, " rng="

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, "x"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, "-"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, "x"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v18, "deferred="

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v18, " layoutNeeded="

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v10, v18, -0x1

    :goto_0
    if-ltz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/TaskStack;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mStacks["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v9, Lcom/android/server/wm/TaskStack;->mStackId:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v18, "  Application tokens in bottom up Z order:"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/TaskStack;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v7, :cond_4

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/Task;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v8

    const/4 v15, 0x0

    move v5, v4

    :goto_3
    if-ge v15, v8, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/AppWindowToken;

    const-string v18, "  App #"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    const/16 v18, 0x20

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v18, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v18, "    "

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    move v5, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v12, 0x1

    move v4, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    const-string v18, "    None"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v18, "  Exiting tokens:"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    :goto_4
    if-ltz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowToken;

    const-string v18, "  Exiting #"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const/16 v18, 0x20

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v18, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHomeStack: Returning null from this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getLogicalDisplayRect(Landroid/graphics/Rect;)V
    .locals 10

    const/4 v5, 0x1

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v8, Landroid/view/DisplayInfo;->rotation:I

    if-eq v2, v5, :cond_0

    const/4 v8, 0x3

    if-ne v2, v8, :cond_1

    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_1
    if-eqz v5, :cond_3

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    sub-int v8, v4, v7

    div-int/lit8 v1, v8, 0x2

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    sub-int v8, v3, v0

    div-int/lit8 v6, v8, 0x2

    add-int v8, v1, v7

    add-int v9, v6, v0

    invoke-virtual {p1, v1, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_2
.end method

.method getStacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    return-object v2
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    return-object v0
.end method

.method public hasAccess(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method isAnimating()Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method isDimming()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isPrivate()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveStack(Lcom/android/server/wm/TaskStack;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resetDimming()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetDimmingTag()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resize(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/TaskStack;)V
    .locals 9

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    const/4 v0, 0x0

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    if-eq v2, p1, :cond_2

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    :goto_2
    invoke-virtual {v7, v8, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    goto :goto_2

    :cond_3
    return-void
.end method

.method stackIdFromPoint(II)I
    .locals 3

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method stopDimmingIfNeeded()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->stopDimmingIfNeeded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method switchUserStacks(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/TaskStack;->switchUser(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDisplayInfo()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
