.class final Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CameraWidgetFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CameraWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixedSizeFrameLayout"
.end annotation


# instance fields
.field height:I

.field width:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 132
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000

    .line 136
    iget v0, p0, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->height:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->measureChildren(II)V

    .line 139
    iget v0, p0, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    iget v1, p0, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->height:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 140
    return-void
.end method
