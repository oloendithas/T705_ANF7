.class Ljava/nio/MemoryBlock$NonMovableHeapBlock;
.super Ljava/nio/MemoryBlock;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/MemoryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonMovableHeapBlock"
.end annotation


# instance fields
.field private array:[B


# direct methods
.method private constructor <init>([BJJ)V
    .locals 6
    .param p1, "array"    # [B
    .param p2, "address"    # J
    .param p4, "byteCount"    # J

    .prologue
    .line 67
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/MemoryBlock;-><init>(JJLjava/nio/MemoryBlock$1;)V

    .line 68
    iput-object p1, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->array:[B

    .line 69
    return-void
.end method

.method synthetic constructor <init>([BJJLjava/nio/MemoryBlock$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # Ljava/nio/MemoryBlock$1;

    .prologue
    .line 63
    invoke-direct/range {p0 .. p5}, Ljava/nio/MemoryBlock$NonMovableHeapBlock;-><init>([BJJ)V

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->array:[B

    return-object v0
.end method

.method public free()V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->array:[B

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    .line 78
    return-void
.end method
