.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPageHdr;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9KDBPageHdr"
.end annotation


# instance fields
.field public bTotalRegions:B

.field public dwRegionHdrOffset:I

.field public wBottom:S

.field public wLeft:S

.field public wRight:S

.field public wTop:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
