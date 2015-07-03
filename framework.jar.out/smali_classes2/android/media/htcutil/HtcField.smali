.class public Landroid/media/htcutil/HtcField;
.super Ljava/lang/Object;
.source "HtcField.java"


# static fields
.field public static final NO_SUCH_FIELD_INT:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "HtcField"


# instance fields
.field field:Ljava/lang/reflect/Field;

.field fieldName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/htcutil/HtcField;->fieldName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/htcutil/HtcField;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static getField(Landroid/media/htcutil/HtcField;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-eqz p0, :cond_0

    iget-object v2, p0, Landroid/media/htcutil/HtcField;->field:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/htcutil/HtcField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getField_int(Landroid/media/htcutil/HtcField;Ljava/lang/Object;)I
    .locals 3

    if-eqz p0, :cond_0

    iget-object v2, p0, Landroid/media/htcutil/HtcField;->field:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    :cond_0
    const/high16 v1, -0x80000000

    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/htcutil/HtcField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/high16 v1, -0x80000000

    goto :goto_0
.end method

.method public static initFields([Landroid/media/htcutil/HtcField;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/media/htcutil/HtcField;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    move-object v0, p0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    :try_start_0
    iget-object v5, v2, Landroid/media/htcutil/HtcField;->fieldName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/media/htcutil/HtcField;->fieldName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, v2, Landroid/media/htcutil/HtcField;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v2, Landroid/media/htcutil/HtcField;->field:Ljava/lang/reflect/Field;

    const-string v5, "HtcField"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found field : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/media/htcutil/HtcField;->fieldName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    :cond_2
    return-void
.end method
