.class public Lcom/sec/android/app/camera/FaceAreaAdviceLine;
.super Ljava/lang/Object;
.source "FaceAreaAdviceLine.java"


# instance fields
.field bottom:I

.field left:I

.field right:I

.field top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->left:I

    .line 28
    iput v0, p0, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->right:I

    .line 29
    iput v0, p0, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->top:I

    .line 30
    iput v0, p0, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->bottom:I

    .line 31
    return-void
.end method
