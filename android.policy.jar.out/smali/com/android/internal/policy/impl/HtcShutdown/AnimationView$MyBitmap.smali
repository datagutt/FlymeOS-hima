.class Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;
.super Ljava/lang/Object;
.source "AnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBitmap"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public name:Ljava/lang/String;

.field public ready:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->ready:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)V

    return-void
.end method
