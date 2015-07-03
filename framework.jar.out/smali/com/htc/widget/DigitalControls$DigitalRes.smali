.class Lcom/htc/widget/DigitalControls$DigitalRes;
.super Ljava/lang/Object;
.source "DigitalControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DigitalControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DigitalRes"
.end annotation


# instance fields
.field private background:I

.field private divider:I

.field private errorColor:I

.field private mask:[I

.field private number:[I

.field private point:I

.field private textColor:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/DigitalControls$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/DigitalControls$DigitalRes;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/DigitalControls$DigitalRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DigitalControls$DigitalRes;->point:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/widget/DigitalControls$DigitalRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/DigitalControls$DigitalRes;->point:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/DigitalControls$DigitalRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DigitalControls$DigitalRes;->textColor:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/widget/DigitalControls$DigitalRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/DigitalControls$DigitalRes;->textColor:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/widget/DigitalControls$DigitalRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DigitalControls$DigitalRes;->errorColor:I

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/widget/DigitalControls$DigitalRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/DigitalControls$DigitalRes;->errorColor:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/widget/DigitalControls$DigitalRes;)[I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DigitalControls$DigitalRes;->number:[I

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/widget/DigitalControls$DigitalRes;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DigitalControls$DigitalRes;->number:[I

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/widget/DigitalControls$DigitalRes;)[I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DigitalControls$DigitalRes;->mask:[I

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/widget/DigitalControls$DigitalRes;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DigitalControls$DigitalRes;->mask:[I

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/widget/DigitalControls$DigitalRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DigitalControls$DigitalRes;->background:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/widget/DigitalControls$DigitalRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/DigitalControls$DigitalRes;->background:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/widget/DigitalControls$DigitalRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DigitalControls$DigitalRes;->divider:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/widget/DigitalControls$DigitalRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/DigitalControls$DigitalRes;->divider:I

    return p1
.end method
