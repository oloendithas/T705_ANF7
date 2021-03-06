.class Landroid/webkitsec/ViewStateSerializer;
.super Ljava/lang/Object;
.source "ViewStateSerializer.java"


# static fields
.field static final VERSION:I = 0x2

.field private static final WORKING_STREAM_STORAGE:I = 0x4000


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deserializeViewState(Ljava/io/InputStream;)Landroid/webkitsec/WebViewCore$DrawData;
    .registers 10
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    .local v3, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 57
    .local v5, "version":I
    const/4 v6, 0x2

    if-le v5, v6, :cond_25

    .line 58
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 60
    :cond_25
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 61
    .local v2, "contentWidth":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 62
    .local v1, "contentHeight":I
    const/16 v6, 0x4000

    new-array v6, v6, [B

    invoke-static {v5, v3, v6}, Landroid/webkitsec/ViewStateSerializer;->nativeDeserializeViewState(ILjava/io/InputStream;[B)I

    move-result v0

    .line 65
    .local v0, "baseLayer":I
    new-instance v4, Landroid/webkitsec/WebViewCore$DrawData;

    invoke-direct {v4}, Landroid/webkitsec/WebViewCore$DrawData;-><init>()V

    .line 66
    .local v4, "draw":Landroid/webkitsec/WebViewCore$DrawData;
    new-instance v6, Landroid/webkitsec/WebViewCore$ViewState;

    invoke-direct {v6}, Landroid/webkitsec/WebViewCore$ViewState;-><init>()V

    iput-object v6, v4, Landroid/webkitsec/WebViewCore$DrawData;->mViewState:Landroid/webkitsec/WebViewCore$ViewState;

    .line 67
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, v4, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    .line 68
    iput v0, v4, Landroid/webkitsec/WebViewCore$DrawData;->mBaseLayer:I

    .line 69
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 70
    return-object v4
.end method

.method public static dumpLayerHierarchy(ILjava/io/OutputStream;I)V
    .registers 4
    .param p0, "baseLayer"    # I
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "level"    # I

    .prologue
    .line 74
    const/16 v0, 0x4000

    new-array v0, v0, [B

    invoke-static {p0, p2, p1, v0}, Landroid/webkitsec/ViewStateSerializer;->nativeDumpLayerHierarchy(IILjava/io/OutputStream;[B)V

    .line 76
    return-void
.end method

.method private static native nativeDeserializeViewState(ILjava/io/InputStream;[B)I
.end method

.method private static native nativeDumpLayerHierarchy(IILjava/io/OutputStream;[B)V
.end method

.method private static native nativeSerializeViewState(ILjava/io/OutputStream;[B)Z
.end method

.method static serializeViewState(Ljava/io/OutputStream;Landroid/webkitsec/WebViewCore$DrawData;)Z
    .registers 5
    .param p0, "stream"    # Ljava/io/OutputStream;
    .param p1, "draw"    # Landroid/webkitsec/WebViewCore$DrawData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget v0, p1, Landroid/webkitsec/WebViewCore$DrawData;->mBaseLayer:I

    .line 42
    .local v0, "baseLayer":I
    if-nez v0, :cond_6

    .line 43
    const/4 v2, 0x0

    .line 49
    :goto_5
    return v2

    .line 45
    :cond_6
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 47
    iget-object v2, p1, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 48
    iget-object v2, p1, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 49
    const/16 v2, 0x4000

    new-array v2, v2, [B

    invoke-static {v0, v1, v2}, Landroid/webkitsec/ViewStateSerializer;->nativeSerializeViewState(ILjava/io/OutputStream;[B)Z

    move-result v2

    goto :goto_5
.end method
