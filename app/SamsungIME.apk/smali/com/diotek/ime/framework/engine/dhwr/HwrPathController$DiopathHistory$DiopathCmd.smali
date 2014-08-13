.class public Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;
.super Ljava/lang/Object;
.source "HwrPathController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiopathCmd"
.end annotation


# instance fields
.field public mCmd:I

.field public mGroupID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mGroupID:I

    .line 765
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mCmd:I

    .line 768
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "action"    # I

    .prologue
    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mGroupID:I

    .line 765
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mCmd:I

    .line 771
    iput p1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mGroupID:I

    .line 772
    iput p2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mCmd:I

    .line 773
    return-void
.end method
