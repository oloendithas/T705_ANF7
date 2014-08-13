.class public final Lcom/visionobjects/a/a;
.super Ljava/lang/Object;
.source "InkPoint.java"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/visionobjects/a/a;->a:F

    .line 21
    iput v0, p0, Lcom/visionobjects/a/a;->b:F

    .line 22
    iput v0, p0, Lcom/visionobjects/a/a;->c:F

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/a/a;->d:J

    .line 24
    return-void
.end method

.method public constructor <init>(FFFJ)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/visionobjects/a/a;->a:F

    .line 45
    iput p2, p0, Lcom/visionobjects/a/a;->b:F

    .line 46
    iput p3, p0, Lcom/visionobjects/a/a;->c:F

    .line 47
    iput-wide p4, p0, Lcom/visionobjects/a/a;->d:J

    .line 48
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 66
    const/4 v0, 0x0

    const-string v1, "x=%f y=%f p=f% t=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/visionobjects/a/a;->a:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/visionobjects/a/a;->b:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/visionobjects/a/a;->c:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/visionobjects/a/a;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
