.class Lcom/htc/widget/AnalogControls$AnalogRes;
.super Ljava/lang/Object;
.source "AnalogControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/AnalogControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnalogRes"
.end annotation


# instance fields
.field private ampmPaddingTop:I

.field private ampmPaddingTopLand:I

.field private ampmTextSize:I

.field private ampmTextSizeLand:I

.field private centerLinePaddingRight:I

.field private centerLinePaddingRightLand:I

.field private centerLinePaddingTop:I

.field private centerLinePaddingTopLand:I

.field private centerLineTextSize:I

.field private centerLineTextSizeLand:I

.field private coverHandDay:I

.field private coverHandNight:I

.field private dialDay:I

.field private dialNight:I

.field private hourHandDay:I

.field private hourHandNight:I

.field private marginBottom:I

.field private marginBottomLand:I

.field private marginTop:I

.field private marginTopLand:I

.field private minuteHandDay:I

.field private minuteHandNight:I

.field private secondHandDay:I

.field private secondHandNight:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I

    iput v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I

    iput v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSizeLand:I

    iput v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSizeLand:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/AnalogControls$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/AnalogControls$AnalogRes;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandDay:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I

    return p1
.end method

.method static synthetic access$102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandDay:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->marginTopLand:I

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->marginTopLand:I

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottomLand:I

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottomLand:I

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTopLand:I

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTopLand:I

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTopLand:I

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTopLand:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandDay:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRightLand:I

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRightLand:I

    return p1
.end method

.method static synthetic access$202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandDay:I

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSizeLand:I

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSizeLand:I

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSizeLand:I

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSizeLand:I

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->dialDay:I

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->dialDay:I

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->dialNight:I

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->dialNight:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandDay:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandDay:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandDay:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandDay:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandNight:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandNight:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandNight:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandNight:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandNight:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandNight:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandNight:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandNight:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/widget/AnalogControls$AnalogRes;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I

    return p1
.end method
