.class public Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageSelectionCopiedData"
.end annotation


# instance fields
.field handlesPath:Landroid/graphics/Path;

.field imageRect:Landroid/graphics/Rect;

.field mGranularity:I

.field outLinePath:Landroid/graphics/Path;

.field final synthetic this$0:Landroid/webkitsec/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewCore;)V
    .registers 3

    .prologue
    .line 4780
    iput-object p1, p0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4781
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 4783
    return-void
.end method
