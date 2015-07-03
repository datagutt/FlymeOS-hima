.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I

.field private final mStatusResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    iput v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->getStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const v1, 0x3030019

    :goto_0
    invoke-virtual {p4, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x311000d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v6, 0x3110027

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x311002a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-object v5

    :cond_3
    const v1, 0x303001a

    goto :goto_0

    :cond_4
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method
