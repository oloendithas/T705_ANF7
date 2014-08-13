.class public final Lcom/visionobjects/a/a/a$a;
.super Ljava/lang/Object;
.source "MarkerStroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visionobjects/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:J

.field public e:F

.field public f:F

.field public g:F

.field final synthetic h:Lcom/visionobjects/a/a/a;


# direct methods
.method public constructor <init>(Lcom/visionobjects/a/a/a;FFFJ)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/visionobjects/a/a/a$a;->h:Lcom/visionobjects/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p2, p0, Lcom/visionobjects/a/a/a$a;->a:F

    .line 62
    iput p3, p0, Lcom/visionobjects/a/a/a$a;->b:F

    .line 63
    iput p4, p0, Lcom/visionobjects/a/a/a$a;->c:F

    .line 64
    iput-wide p5, p0, Lcom/visionobjects/a/a/a$a;->d:J

    .line 65
    return-void
.end method


# virtual methods
.method public final a(Lcom/visionobjects/a/a/a$a;)V
    .locals 4

    .prologue
    .line 69
    iget v0, p0, Lcom/visionobjects/a/a/a$a;->a:F

    iget v1, p1, Lcom/visionobjects/a/a/a$a;->a:F

    sub-float/2addr v0, v1

    .line 70
    iget v1, p0, Lcom/visionobjects/a/a/a$a;->b:F

    iget v2, p1, Lcom/visionobjects/a/a/a$a;->b:F

    sub-float/2addr v1, v2

    .line 71
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 72
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 74
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/visionobjects/a/a/a$a;->e:F

    .line 75
    iput v0, p0, Lcom/visionobjects/a/a/a$a;->f:F

    .line 76
    iput v1, p0, Lcom/visionobjects/a/a/a$a;->g:F

    .line 78
    :cond_0
    return-void
.end method
