.class Landroid/webkitsec/WebViewClassic$DestroyNativeRunnable;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DestroyNativeRunnable"
.end annotation


# instance fields
.field private mNativePtr:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "nativePtr"    # I

    .prologue
    .line 4383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4384
    iput p1, p0, Landroid/webkitsec/WebViewClassic$DestroyNativeRunnable;->mNativePtr:I

    .line 4385
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 4390
    iget v0, p0, Landroid/webkitsec/WebViewClassic$DestroyNativeRunnable;->mNativePtr:I

    # invokes: Landroid/webkitsec/WebViewClassic;->nativeDestroy(I)V
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$3400(I)V

    .line 4391
    return-void
.end method
