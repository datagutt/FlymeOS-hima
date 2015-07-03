.class public Lcom/android/internal/telephony/dataconnection/DcTracker$PdpLimitPolicy;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PdpLimitPolicy"
.end annotation


# static fields
.field static final FOLLOW_XML:I = 0x0

.field static final LIMIT_BY_CHIPSET:I = 0x5

.field static final LIMIT_BY_PROPERTY:I = 0x4

.field static final LIMIT_BY_RADIO_TECH:I = 0x3

.field static final REDUCE_WHEN_ERROR:I = 0x1

.field static final SLOT2_MODEM_SUPPORT_MPDP:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    .line 7965
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$PdpLimitPolicy;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
