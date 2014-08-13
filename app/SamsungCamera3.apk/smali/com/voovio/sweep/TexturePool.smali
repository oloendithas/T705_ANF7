.class public final Lcom/voovio/sweep/TexturePool;
.super Ljava/lang/Object;
.source "TexturePool.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static m_aTextureIDs:[I

.field private static m_nPointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    .line 11
    const/4 v0, -0x1

    sput v0, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    sget v0, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES11;->glDeleteTextures(I[II)V

    .line 39
    new-array v0, v2, [I

    sput-object v0, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    .line 41
    return-void
.end method

.method public static clearWithoutOpenGLContext()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    .line 47
    const/4 v0, -0x1

    sput v0, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    .line 48
    return-void
.end method

.method public static getTexture()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 16
    sget v1, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    if-ne v1, v4, :cond_0

    .line 17
    sget-object v1, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    sget-object v2, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    sput-object v1, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    .line 18
    const/4 v1, 0x1

    sget-object v2, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES11;->glGenTextures(I[II)V

    .line 19
    sget v1, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    .line 22
    :cond_0
    sget-object v1, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    sget v2, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    aget v0, v1, v2

    .line 23
    .local v0, "id":I
    sget-object v1, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    sget v2, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    add-int/lit8 v3, v2, -0x1

    sput v3, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    aput v4, v1, v2

    .line 25
    return v0
.end method

.method public static returnTexture(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 31
    sget-object v0, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    sget v1, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    aput p0, v0, v1

    .line 32
    return-void
.end method
