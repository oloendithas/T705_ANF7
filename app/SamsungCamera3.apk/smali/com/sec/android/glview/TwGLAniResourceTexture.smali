.class public Lcom/sec/android/glview/TwGLAniResourceTexture;
.super Lcom/sec/android/glview/TwGLAniTexture;
.source "TwGLAniResourceTexture.java"


# instance fields
.field private mResId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .locals 0
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "resId"    # I

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLAniTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 60
    iput p6, p0, Lcom/sec/android/glview/TwGLAniResourceTexture;->mResId:I

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 0
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "resId"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLAniTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 44
    iput p4, p0, Lcom/sec/android/glview/TwGLAniResourceTexture;->mResId:I

    .line 45
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 68
    return-void
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/glview/TwGLAniResourceTexture;->mResId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
