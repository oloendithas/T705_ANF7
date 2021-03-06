.class public Landroid/view/ExternalSurfaceView;
.super Landroid/view/SurfaceView;
.source "ExternalSurfaceView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Landroid/view/ExternalSurfaceView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0}, Landroid/view/ExternalSurfaceView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0}, Landroid/view/ExternalSurfaceView;->init()V

    .line 45
    return-void
.end method

.method private init()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method


# virtual methods
.method public flipExtDisplayFlag(Z)V
    .registers 11
    .param p1, "extFlag"    # Z

    .prologue
    .line 53
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---skkv--------flip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    if-eqz p1, :cond_4f

    .line 55
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Surface;->flipExtDisplayFlag(I)I

    .line 59
    :goto_26
    const/4 v2, 0x0

    .line 61
    .local v2, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v6, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v6

    .line 62
    :try_start_2a
    iget-object v5, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Landroid/view/SurfaceHolder$Callback;

    .line 63
    iget-object v5, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 64
    monitor-exit v6
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_5c

    .line 65
    move-object v0, v2

    .local v0, "arr$":[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3b
    if-ge v3, v4, :cond_5f

    aget-object v1, v0, v3

    .line 66
    .local v1, "c":Landroid/view/SurfaceHolder$Callback;
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    iget v6, p0, Landroid/view/SurfaceView;->mFormat:I

    iget v7, p0, Landroid/view/SurfaceView;->mWidth:I

    iget v8, p0, Landroid/view/SurfaceView;->mHeight:I

    invoke-interface {v1, v5, v6, v7, v8}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 57
    .end local v0    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v1    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_4f
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->flipExtDisplayFlag(I)I

    goto :goto_26

    .line 64
    .restart local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_5c
    move-exception v5

    :try_start_5d
    monitor-exit v6
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v5

    .line 69
    .restart local v0    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_5f
    return-void
.end method
