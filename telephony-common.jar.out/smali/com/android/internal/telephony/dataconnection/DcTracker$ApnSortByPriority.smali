.class Lcom/android/internal/telephony/dataconnection/DcTracker$ApnSortByPriority;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApnSortByPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/dataconnection/ApnContext;",
        ">;"
    }
.end annotation


# instance fields
.field mReqApn:Lcom/android/internal/telephony/dataconnection/ApnContext;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 1

    .prologue
    .line 7980
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnSortByPriority;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7979
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnSortByPriority;->mReqApn:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 7980
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 1
    .param p2, "reqApn"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 7982
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnSortByPriority;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7979
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnSortByPriority;->mReqApn:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 7983
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnSortByPriority;->mReqApn:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 7984
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnContext;)I
    .locals 3
    .param p1, "o1"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "o2"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 7987
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getPriority()I

    move-result v2

    sub-int v0, v1, v2

    .line 7988
    .local v0, "ret":I
    if-nez v0, :cond_1

    .line 7990
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnSortByPriority;->mReqApn:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v1, :cond_1

    .line 7992
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnSortByPriority;->mReqApn:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 7993
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnSortByPriority;->mReqApn:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    .line 7996
    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 7977
    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnSortByPriority;->compare(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnContext;)I

    move-result v0

    return v0
.end method
