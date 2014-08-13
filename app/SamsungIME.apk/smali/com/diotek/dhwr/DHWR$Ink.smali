.class public Lcom/diotek/dhwr/DHWR$Ink;
.super Ljava/lang/Object;
.source "DHWR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/dhwr/DHWR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ink"
.end annotation


# static fields
.field public static final TYPE_ERASE:I = 0x1

.field public static final TYPE_PEN:I


# instance fields
.field private mId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->CreateInkObject()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/diotek/dhwr/DHWR$Ink;->mId:J

    .line 393
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-wide p1, p0, Lcom/diotek/dhwr/DHWR$Ink;->mId:J

    .line 397
    return-void
.end method


# virtual methods
.method public AddPoint(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 414
    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Ink;->mId:J

    invoke-static {v0, v1, p1, p2}, Lcom/diotek/dhwr/DHWR;->AddPoint(JII)Z

    move-result v0

    return v0
.end method

.method public Clear()V
    .locals 2

    .prologue
    .line 422
    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Ink;->mId:J

    invoke-static {v0, v1}, Lcom/diotek/dhwr/DHWR;->InkClear(J)V

    .line 423
    return-void
.end method

.method public CopyInk(III)Lcom/diotek/dhwr/DHWR$Ink;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I

    .prologue
    .line 438
    iget-wide v3, p0, Lcom/diotek/dhwr/DHWR$Ink;->mId:J

    invoke-static {v3, v4, p1, p2, p3}, Lcom/diotek/dhwr/DHWR;->CopyInk(JIII)J

    move-result-wide v0

    .line 439
    .local v0, "id":J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 440
    const/4 v2, 0x0

    .line 443
    :goto_0
    return-object v2

    .line 442
    :cond_0
    new-instance v2, Lcom/diotek/dhwr/DHWR$Ink;

    invoke-direct {v2, v0, v1}, Lcom/diotek/dhwr/DHWR$Ink;-><init>(J)V

    .line 443
    .local v2, "ink":Lcom/diotek/dhwr/DHWR$Ink;
    goto :goto_0
.end method

.method public EndStroke()Z
    .locals 2

    .prologue
    .line 418
    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Ink;->mId:J

    invoke-static {v0, v1}, Lcom/diotek/dhwr/DHWR;->EndStroke(J)Z

    move-result v0

    return v0
.end method

.method public GetHandle()J
    .locals 2

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Ink;->mId:J

    return-wide v0
.end method

.method public GetPoint(ILcom/diotek/dhwr/DHWR$Point;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "point"    # Lcom/diotek/dhwr/DHWR$Point;

    .prologue
    .line 426
    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Ink;->mId:J

    invoke-static {v0, v1, p1, p2}, Lcom/diotek/dhwr/DHWR;->GetInkPoint(JILcom/diotek/dhwr/DHWR$Point;)Z

    move-result v0

    return v0
.end method

.method public GetSize()I
    .locals 2

    .prologue
    .line 430
    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Ink;->mId:J

    invoke-static {v0, v1}, Lcom/diotek/dhwr/DHWR;->GetInkCount(J)I

    move-result v0

    return v0
.end method

.method public SetEraseThick(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 410
    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Ink;->mId:J

    invoke-static {v0, v1, p1}, Lcom/diotek/dhwr/DHWR;->SetEraseThick(JI)V

    .line 411
    return-void
.end method

.method public SetType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 406
    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Ink;->mId:J

    invoke-static {v0, v1, p1}, Lcom/diotek/dhwr/DHWR;->SetInkType(JI)V

    .line 407
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 401
    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Ink;->mId:J

    invoke-static {v0, v1}, Lcom/diotek/dhwr/DHWR;->DestroyInkObject(J)V

    .line 402
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 403
    return-void
.end method
