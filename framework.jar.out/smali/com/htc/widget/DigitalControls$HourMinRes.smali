.class Lcom/htc/widget/DigitalControls$HourMinRes;
.super Ljava/lang/Object;
.source "DigitalControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DigitalControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HourMinRes"
.end annotation


# instance fields
.field private hourTen:Landroid/widget/ImageView;

.field private hourUnit:Landroid/widget/ImageView;

.field private minuteTen:Landroid/widget/ImageView;

.field private minuteUnit:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/DigitalControls$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/DigitalControls$HourMinRes;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DigitalControls$HourMinRes;->hourTen:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/widget/DigitalControls$HourMinRes;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DigitalControls$HourMinRes;->hourTen:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DigitalControls$HourMinRes;->hourUnit:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/widget/DigitalControls$HourMinRes;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DigitalControls$HourMinRes;->hourUnit:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DigitalControls$HourMinRes;->minuteTen:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/widget/DigitalControls$HourMinRes;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DigitalControls$HourMinRes;->minuteTen:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DigitalControls$HourMinRes;->minuteUnit:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/widget/DigitalControls$HourMinRes;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DigitalControls$HourMinRes;->minuteUnit:Landroid/widget/ImageView;

    return-object p1
.end method
