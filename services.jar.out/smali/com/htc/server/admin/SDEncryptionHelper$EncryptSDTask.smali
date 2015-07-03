.class Lcom/htc/server/admin/SDEncryptionHelper$EncryptSDTask;
.super Landroid/os/AsyncTask;
.source "SDEncryptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/admin/SDEncryptionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptSDTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/admin/SDEncryptionHelper;


# direct methods
.method private constructor <init>(Lcom/htc/server/admin/SDEncryptionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/admin/SDEncryptionHelper$EncryptSDTask;->this$0:Lcom/htc/server/admin/SDEncryptionHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/admin/SDEncryptionHelper;Lcom/htc/server/admin/SDEncryptionHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/server/admin/SDEncryptionHelper$EncryptSDTask;-><init>(Lcom/htc/server/admin/SDEncryptionHelper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/server/admin/SDEncryptionHelper$EncryptSDTask;->this$0:Lcom/htc/server/admin/SDEncryptionHelper;

    invoke-virtual {v1}, Lcom/htc/server/admin/SDEncryptionHelper;->EncryptSD()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/htc/server/admin/SDEncryptionHelper$EncryptSDTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/admin/SDEncryptionHelper$EncryptSDTask;->this$0:Lcom/htc/server/admin/SDEncryptionHelper;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/htc/server/admin/SDEncryptionHelper;->replyResult(I)V
    invoke-static {v0, v1}, Lcom/htc/server/admin/SDEncryptionHelper;->access$000(Lcom/htc/server/admin/SDEncryptionHelper;I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/server/admin/SDEncryptionHelper$EncryptSDTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
