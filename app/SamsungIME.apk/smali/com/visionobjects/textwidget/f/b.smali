.class public final Lcom/visionobjects/textwidget/f/b;
.super Ljava/lang/Object;
.source "VOStroke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/f/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/visionobjects/stylus/core/InkItem;

.field private b:[Lcom/visionobjects/a/a;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/Path;

.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Matrix;

.field private m:Landroid/graphics/Matrix;

.field private n:Z

.field private o:Z

.field private p:Lcom/visionobjects/textwidget/f/b$a;


# direct methods
.method public constructor <init>(Lcom/visionobjects/stylus/core/InkItem;[Lcom/visionobjects/a/a;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/Paint;IIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/visionobjects/textwidget/f/b;->a:Lcom/visionobjects/stylus/core/InkItem;

    .line 59
    iput-object p2, p0, Lcom/visionobjects/textwidget/f/b;->b:[Lcom/visionobjects/a/a;

    .line 60
    iput-object p3, p0, Lcom/visionobjects/textwidget/f/b;->c:Landroid/graphics/RectF;

    .line 61
    iput-object p4, p0, Lcom/visionobjects/textwidget/f/b;->d:Landroid/graphics/Path;

    .line 62
    iput-object p5, p0, Lcom/visionobjects/textwidget/f/b;->e:Landroid/graphics/Paint;

    .line 63
    iput p6, p0, Lcom/visionobjects/textwidget/f/b;->f:I

    .line 64
    iput p7, p0, Lcom/visionobjects/textwidget/f/b;->g:I

    .line 65
    iput p8, p0, Lcom/visionobjects/textwidget/f/b;->h:I

    .line 66
    iput-object p9, p0, Lcom/visionobjects/textwidget/f/b;->i:Landroid/graphics/Bitmap;

    .line 67
    iput-object p10, p0, Lcom/visionobjects/textwidget/f/b;->j:Landroid/graphics/Bitmap;

    .line 68
    iput-object p11, p0, Lcom/visionobjects/textwidget/f/b;->k:Landroid/graphics/Paint;

    .line 69
    iput-object p12, p0, Lcom/visionobjects/textwidget/f/b;->l:Landroid/graphics/Matrix;

    .line 70
    iput-object p13, p0, Lcom/visionobjects/textwidget/f/b;->m:Landroid/graphics/Matrix;

    .line 71
    iput-boolean p14, p0, Lcom/visionobjects/textwidget/f/b;->n:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/textwidget/f/b;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->a:Lcom/visionobjects/stylus/core/InkItem;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->a:Lcom/visionobjects/stylus/core/InkItem;

    .line 78
    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->b:[Lcom/visionobjects/a/a;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->b:[Lcom/visionobjects/a/a;

    .line 79
    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->c:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->c:Landroid/graphics/RectF;

    .line 80
    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->d:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->d:Landroid/graphics/Path;

    .line 81
    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->e:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->e:Landroid/graphics/Paint;

    .line 82
    iget v0, p1, Lcom/visionobjects/textwidget/f/b;->f:I

    iput v0, p0, Lcom/visionobjects/textwidget/f/b;->f:I

    .line 83
    iget v0, p1, Lcom/visionobjects/textwidget/f/b;->g:I

    iput v0, p0, Lcom/visionobjects/textwidget/f/b;->g:I

    .line 84
    iget v0, p1, Lcom/visionobjects/textwidget/f/b;->h:I

    iput v0, p0, Lcom/visionobjects/textwidget/f/b;->h:I

    .line 85
    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->i:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->i:Landroid/graphics/Bitmap;

    .line 86
    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->j:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->j:Landroid/graphics/Bitmap;

    .line 87
    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->k:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->k:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->l:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->l:Landroid/graphics/Matrix;

    .line 89
    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->m:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->m:Landroid/graphics/Matrix;

    .line 90
    iget-boolean v0, p1, Lcom/visionobjects/textwidget/f/b;->n:Z

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/f/b;->n:Z

    .line 91
    iget-boolean v0, p1, Lcom/visionobjects/textwidget/f/b;->o:Z

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/f/b;->o:Z

    .line 92
    return-void
.end method


# virtual methods
.method public final a()Lcom/visionobjects/stylus/core/InkItem;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->a:Lcom/visionobjects/stylus/core/InkItem;

    return-object v0
.end method

.method public final a(Lcom/visionobjects/textwidget/f/b$a;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/visionobjects/textwidget/f/b;->p:Lcom/visionobjects/textwidget/f/b$a;

    .line 173
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/f/b;->n:Z

    if-eq v0, p1, :cond_0

    .line 178
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/f/b;->n:Z

    .line 180
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->p:Lcom/visionobjects/textwidget/f/b$a;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->p:Lcom/visionobjects/textwidget/f/b$a;

    invoke-interface {v0, p0}, Lcom/visionobjects/textwidget/f/b$a;->a(Lcom/visionobjects/textwidget/f/b;)V

    .line 184
    :cond_0
    return-void
.end method

.method public final b()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->e:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/f/b;->o:Z

    .line 194
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/f/b;->o:Z

    if-eqz v0, :cond_0

    .line 112
    iget v0, p0, Lcom/visionobjects/textwidget/f/b;->h:I

    .line 116
    :goto_0
    return v0

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/f/b;->n:Z

    if-eqz v0, :cond_1

    .line 114
    iget v0, p0, Lcom/visionobjects/textwidget/f/b;->g:I

    goto :goto_0

    .line 116
    :cond_1
    iget v0, p0, Lcom/visionobjects/textwidget/f/b;->f:I

    goto :goto_0
.end method

.method public final d()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->c:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final e()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->d:Landroid/graphics/Path;

    return-object v0
.end method

.method public final f()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final g()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->l:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final h()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final i()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->k:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final j()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->m:Landroid/graphics/Matrix;

    return-object v0
.end method
