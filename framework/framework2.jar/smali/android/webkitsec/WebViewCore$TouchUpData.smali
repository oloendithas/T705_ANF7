.class Landroid/webkitsec/WebViewCore$TouchUpData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TouchUpData"
.end annotation


# instance fields
.field mFrame:I

.field mMoveGeneration:I

.field mNativeLayer:I

.field mNativeLayerRect:Landroid/graphics/Rect;

.field mNode:I

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewCore$TouchUpData;->mNativeLayerRect:Landroid/graphics/Rect;

    return-void
.end method
