.class public Lcom/diotek/ime/framework/input/StrSegment;
.super Ljava/lang/Object;
.source "StrSegment.java"


# instance fields
.field public from:I

.field public string:Ljava/lang/String;

.field public to:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0, p1, v0, v0}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    .line 58
    iput p2, p0, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    .line 59
    iput p3, p0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    .line 60
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .param p1, "chars"    # [C

    .prologue
    const/4 v1, -0x1

    .line 46
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, v0, v1, v1}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 47
    return-void
.end method
