.class Landroid/mtp/MtpPropertyGroup$Property;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpPropertyGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Property"
.end annotation


# instance fields
.field code:I

.field column:I

.field miMetadata:I

.field final synthetic this$0:Landroid/mtp/MtpPropertyGroup;

.field type:I


# direct methods
.method constructor <init>(Landroid/mtp/MtpPropertyGroup;III)V
    .locals 1

    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup$Property;->this$0:Landroid/mtp/MtpPropertyGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/mtp/MtpPropertyGroup$Property;->PropertyInit(IIII)V

    return-void
.end method

.method constructor <init>(Landroid/mtp/MtpPropertyGroup;IIII)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup$Property;->this$0:Landroid/mtp/MtpPropertyGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/mtp/MtpPropertyGroup$Property;->PropertyInit(IIII)V

    return-void
.end method

.method private PropertyInit(IIII)V
    .locals 0

    iput p1, p0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iput p2, p0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    iput p3, p0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    iput p4, p0, Landroid/mtp/MtpPropertyGroup$Property;->miMetadata:I

    return-void
.end method
