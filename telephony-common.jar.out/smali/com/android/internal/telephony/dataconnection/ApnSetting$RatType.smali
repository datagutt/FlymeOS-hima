.class public Lcom/android/internal/telephony/dataconnection/ApnSetting$RatType;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/ApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RatType"
.end annotation


# static fields
.field public static final EHRPD:I = 0x2

.field public static final LTE:I = 0x4

.field public static final NONE:I = 0x0

.field public static final _3GPP:I = 0x1

.field public static final _3GPP2:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/ApnSetting;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting$RatType;->this$0:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
