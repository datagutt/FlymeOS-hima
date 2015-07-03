.class Lcom/android/internal/app/LocalePicker$2;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/LocalePicker;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/LocalePicker;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/android/internal/app/LocalePicker;Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/LocalePicker$2;->this$0:Lcom/android/internal/app/LocalePicker;

    iput-object p2, p0, Lcom/android/internal/app/LocalePicker$2;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/LocalePicker$2;->this$0:Lcom/android/internal/app/LocalePicker;

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    iget-object v1, p0, Lcom/android/internal/app/LocalePicker$2;->val$locale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    return-void
.end method
