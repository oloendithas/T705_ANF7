.class Lcom/voovio/sweep/Mask;
.super Ljava/lang/Object;
.source "Mask.java"


# static fields
.field private static MIPMAPS:Z


# instance fields
.field public m_nTextureID:I

.field public m_oVoovio:Lcom/voovio/sweep/Voovio;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/voovio/sweep/Mask;->MIPMAPS:Z

    return-void
.end method

.method public constructor <init>(Lcom/voovio/sweep/Voovio;)V
    .locals 0
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/voovio/sweep/Mask;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    .line 18
    return-void
.end method


# virtual methods
.method public Create()V
    .locals 6

    .prologue
    const/16 v1, 0x2801

    const/4 v5, 0x0

    const v4, 0x47012f00

    const v3, 0x46180400

    const/16 v2, 0xde1

    .line 33
    invoke-static {}, Lcom/voovio/sweep/TexturePool;->getTexture()I

    move-result v0

    iput v0, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    .line 34
    iget v0, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    invoke-static {v2, v0}, Landroid/opengl/GLES11;->glBindTexture(II)V

    .line 38
    sget-boolean v0, Lcom/voovio/sweep/Mask;->MIPMAPS:Z

    if-eqz v0, :cond_0

    .line 39
    const v0, 0x461c0c00

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    .line 40
    const v0, 0x8191

    const/high16 v1, 0x3f800000

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    .line 44
    :goto_0
    const/16 v0, 0x2800

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    .line 45
    const/16 v0, 0x2802

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    .line 46
    const/16 v0, 0x2803

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    .line 47
    iget-object v0, p0, Lcom/voovio/sweep/Mask;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-static {v2, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 49
    invoke-static {}, Landroid/opengl/GLES11;->glFlush()V

    .line 50
    return-void

    .line 42
    :cond_0
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    goto :goto_0
.end method

.method public Destroy()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 56
    iget v0, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    if-eq v0, v1, :cond_0

    .line 58
    iget v0, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    invoke-static {v0}, Lcom/voovio/sweep/TexturePool;->returnTexture(I)V

    .line 62
    iput v1, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    .line 64
    :cond_0
    return-void
.end method

.method DestroyWithoutOpenGLContext()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 70
    iget v0, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    if-eq v0, v1, :cond_0

    .line 74
    iput v1, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    .line 76
    :cond_0
    return-void
.end method

.method public clone()Lcom/voovio/sweep/Mask;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/voovio/sweep/Mask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/voovio/sweep/Mask;-><init>(Lcom/voovio/sweep/Voovio;)V

    .line 25
    .local v0, "oMask":Lcom/voovio/sweep/Mask;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/voovio/sweep/Mask;->clone()Lcom/voovio/sweep/Mask;

    move-result-object v0

    return-object v0
.end method
