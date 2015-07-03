.class public final Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;
.super Ljava/lang/Object;
.source "SQLiteDirectCursorDriver.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDirectCursorDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "StringBuilderPrinter"
.end annotation


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public getStringBuilder()Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public println(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0xa

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method
