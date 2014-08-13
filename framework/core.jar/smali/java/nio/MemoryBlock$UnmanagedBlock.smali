.class Ljava/nio/MemoryBlock$UnmanagedBlock;
.super Ljava/nio/MemoryBlock;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/MemoryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmanagedBlock"
.end annotation


# direct methods
.method private constructor <init>(JJ)V
    .locals 6
    .param p1, "address"    # J
    .param p3, "byteCount"    # J

    .prologue
    .line 87
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/nio/MemoryBlock;-><init>(JJLjava/nio/MemoryBlock$1;)V

    .line 88
    return-void
.end method

.method synthetic constructor <init>(JJLjava/nio/MemoryBlock$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Ljava/nio/MemoryBlock$1;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/MemoryBlock$UnmanagedBlock;-><init>(JJ)V

    return-void
.end method
