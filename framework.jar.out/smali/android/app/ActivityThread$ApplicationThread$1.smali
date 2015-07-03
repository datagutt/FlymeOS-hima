.class Landroid/app/ActivityThread$ApplicationThread$1;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread$ApplicationThread;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ActivityThread$ApplicationThread;

.field final synthetic val$_args:[Ljava/lang/String;

.field final synthetic val$_fd:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread$ApplicationThread;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread$1;->this$1:Landroid/app/ActivityThread$ApplicationThread;

    iput-object p2, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$_fd:Ljava/io/FileDescriptor;

    iput-object p3, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$_args:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$_fd:Ljava/io/FileDescriptor;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$_args:[Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v3, "ActivityThread"

    const-string v4, "Error in dumpDbInfo for system"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
