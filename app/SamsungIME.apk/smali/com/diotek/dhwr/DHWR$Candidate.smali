.class public Lcom/diotek/dhwr/DHWR$Candidate;
.super Ljava/lang/Object;
.source "DHWR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/dhwr/DHWR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Candidate"
.end annotation


# instance fields
.field public candlist_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public complete_:I

.field public stroke_:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    .line 856
    iput v1, p0, Lcom/diotek/dhwr/DHWR$Candidate;->complete_:I

    .line 857
    iput v1, p0, Lcom/diotek/dhwr/DHWR$Candidate;->stroke_:I

    .line 858
    return-void
.end method
