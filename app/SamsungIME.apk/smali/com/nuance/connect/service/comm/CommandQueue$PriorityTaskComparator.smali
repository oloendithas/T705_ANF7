.class Lcom/nuance/connect/service/comm/CommandQueue$PriorityTaskComparator;
.super Ljava/lang/Object;
.source "CommandQueue.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PriorityTaskComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x418c184c24c42dbdL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/connect/service/comm/CommandQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue$1;

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue$PriorityTaskComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 247
    check-cast p1, Ljava/lang/Runnable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Runnable;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/service/comm/CommandQueue$PriorityTaskComparator;->compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 3
    .param p1, "lhs"    # Ljava/lang/Runnable;
    .param p2, "rhs"    # Ljava/lang/Runnable;

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "lhsVal":I
    instance-of v2, p1, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    if-eqz v2, :cond_0

    .line 258
    check-cast p1, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    .end local p1    # "lhs":Ljava/lang/Runnable;
    invoke-virtual {p1}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->getPriority()I

    move-result v0

    .line 261
    :cond_0
    const/4 v1, 0x0

    .line 262
    .local v1, "rhsVal":I
    instance-of v2, p2, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    if-eqz v2, :cond_1

    .line 263
    check-cast p2, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    .end local p2    # "rhs":Ljava/lang/Runnable;
    invoke-virtual {p2}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->getPriority()I

    move-result v1

    .line 266
    :cond_1
    sub-int v2, v1, v0

    return v2
.end method
