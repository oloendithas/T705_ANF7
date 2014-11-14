.class final Landroid/view/ViewGroup$TouchTarget;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchTarget"
.end annotation


# static fields
.field public static final ALL_POINTER_IDS:I = -0x1

.field private static final MAX_RECYCLED:I = 0x20

.field private static sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

.field private static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


# instance fields
.field public child:Landroid/view/View;

.field public next:Landroid/view/ViewGroup$TouchTarget;

.field public pointerIdBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6727
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6743
    return-void
.end method

.method public static obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .registers 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "pointerIdBits"    # I

    .prologue
    .line 6747
    sget-object v2, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6748
    :try_start_3
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    if-nez v1, :cond_12

    .line 6749
    new-instance v0, Landroid/view/ViewGroup$TouchTarget;

    invoke-direct {v0}, Landroid/view/ViewGroup$TouchTarget;-><init>()V

    .line 6756
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_c
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_22

    .line 6757
    iput-object p0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 6758
    iput p1, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 6759
    return-object v0

    .line 6751
    .end local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_12
    :try_start_12
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 6752
    .restart local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    sput-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 6753
    sget v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    .line 6754
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_c

    .line 6756
    .end local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_22

    throw v1
.end method


# virtual methods
.method public recycle()V
    .registers 4

    .prologue
    .line 6763
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6764
    :try_start_3
    sget v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    const/16 v2, 0x20

    if-ge v0, v2, :cond_1a

    .line 6765
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 6766
    sput-object p0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 6767
    sget v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    .line 6771
    :goto_15
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 6772
    monitor-exit v1

    .line 6773
    return-void

    .line 6769
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_15

    .line 6772
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method
