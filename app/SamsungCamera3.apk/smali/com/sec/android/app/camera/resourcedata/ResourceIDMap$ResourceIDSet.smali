.class public Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
.super Ljava/lang/Object;
.source "ResourceIDMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResourceIDSet"
.end annotation


# instance fields
.field public mAbbTitle:I

.field public mContentDescription:I

.field public mDim:I

.field public mNormal:I

.field public mPress:I

.field public mTitle:I

.field final synthetic this$0:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V
    .locals 1
    .param p2, "normal"    # I
    .param p3, "press"    # I
    .param p4, "dim"    # I
    .param p5, "title"    # I

    .prologue
    const/4 v0, 0x0

    .line 40
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->this$0:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p2, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 42
    iput p3, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 43
    iput p4, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 44
    iput p5, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 45
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 46
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIII)V
    .locals 1
    .param p2, "normal"    # I
    .param p3, "press"    # I
    .param p4, "dim"    # I
    .param p5, "title"    # I
    .param p6, "contentDescription"    # I

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->this$0:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 51
    iput p3, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 52
    iput p4, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 53
    iput p5, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 55
    iput p6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V
    .locals 0
    .param p2, "normal"    # I
    .param p3, "press"    # I
    .param p4, "dim"    # I
    .param p5, "title"    # I
    .param p6, "abbTitle"    # I
    .param p7, "contentDescription"    # I

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->this$0:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p2, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 60
    iput p3, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 61
    iput p4, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 62
    iput p5, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 63
    iput p6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 64
    iput p7, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 65
    return-void
.end method
