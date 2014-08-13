.class public final Lcom/visionobjects/textwidget/f/a/a;
.super Ljava/lang/Object;
.source "ExplicitSpaceController.java"


# instance fields
.field private a:Lcom/visionobjects/textwidget/f/a/b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visionobjects/stylus/core/InkLocation;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/f/a/b;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/visionobjects/textwidget/f/a/a;->a:Lcom/visionobjects/textwidget/f/a/b;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/a/a;->b:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/a/a;->c:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method private a(Lcom/visionobjects/textwidget/f/c;I)V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->segments()Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->begin()Lcom/visionobjects/stylus/core/InkLocation;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/visionobjects/textwidget/f/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/a;->c:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(Lcom/visionobjects/textwidget/f/c;I)V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->segments()Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->end()Lcom/visionobjects/stylus/core/InkLocation;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/visionobjects/textwidget/f/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/a;->c:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/visionobjects/stylus/core/InkField;)Lcom/visionobjects/stylus/core/InkField;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/a;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/visionobjects/textwidget/f/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lcom/visionobjects/stylus/core/InkField;->formattedExplicitSpaces(Ljava/util/List;Ljava/util/List;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object p1

    .line 109
    :cond_0
    return-object p1

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/a;->a:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v5

    .line 47
    const/4 v0, 0x0

    move v3, v2

    move v4, v2

    .line 48
    :goto_0
    if-ge v3, v5, :cond_2

    .line 49
    iget-object v1, p0, Lcom/visionobjects/textwidget/f/a/a;->a:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1, v3}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 51
    add-int/lit8 v1, v4, 0x1

    .line 48
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0, v1, v4}, Lcom/visionobjects/textwidget/f/a/a;->a(Lcom/visionobjects/textwidget/f/c;I)V

    .line 55
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/visionobjects/textwidget/e/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0, v1, v2}, Lcom/visionobjects/textwidget/f/a/a;->b(Lcom/visionobjects/textwidget/f/c;I)V

    :cond_1
    move-object v0, v1

    move v1, v2

    .line 58
    goto :goto_1

    .line 61
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 62
    invoke-direct {p0, v0, v4}, Lcom/visionobjects/textwidget/f/a/a;->b(Lcom/visionobjects/textwidget/f/c;I)V

    .line 63
    :cond_3
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/b;I)V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/visionobjects/stylus/core/InkRange;

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/b;->a()Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/visionobjects/stylus/core/InkRange;-><init>(Lcom/visionobjects/stylus/core/InkItem;)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkRange;->begin()Lcom/visionobjects/stylus/core/InkLocation;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/visionobjects/textwidget/f/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/a;->c:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/a;->a:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v3

    move v0, v1

    move v2, v1

    .line 77
    :goto_0
    if-ge v0, v3, :cond_1

    .line 78
    iget-object v4, p0, Lcom/visionobjects/textwidget/f/a/a;->a:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v4, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0, v4, v2}, Lcom/visionobjects/textwidget/f/a/a;->a(Lcom/visionobjects/textwidget/f/c;I)V

    .line 83
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/visionobjects/textwidget/e/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0, v4, v1}, Lcom/visionobjects/textwidget/f/a/a;->b(Lcom/visionobjects/textwidget/f/c;I)V

    .line 89
    :cond_1
    return-void
.end method
