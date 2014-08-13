.class public Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLDragDropBox.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLDragDropBox"


# instance fields
.field protected lastDragCoord:[F

.field private mDraggable:Z

.field private mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

.field private mDroppable:Z

.field protected mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

.field private mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

.field protected mView:Lcom/sec/android/glview/TwGLView;

.field protected mViewToDrag:Lcom/sec/android/glview/TwGLView;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 2
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    .line 32
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    .line 33
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDraggable:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 2
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    .line 32
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    .line 33
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDraggable:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 2
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/4 v1, 0x1

    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    .line 32
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    .line 33
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDraggable:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .line 75
    return-void
.end method

.method private static final findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    .locals 7
    .param p0, "rootView"    # Lcom/sec/android/glview/TwGLView;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    move-object p0, v4

    .line 246
    .end local p0    # "rootView":Lcom/sec/android/glview/TwGLView;
    :goto_0
    return-object p0

    .line 232
    .restart local p0    # "rootView":Lcom/sec/android/glview/TwGLView;
    :cond_0
    instance-of v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v5, :cond_1

    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 234
    check-cast p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    goto :goto_0

    .line 236
    :cond_1
    instance-of v5, p0, Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v5, :cond_3

    move-object v3, p0

    .line 237
    check-cast v3, Lcom/sec/android/glview/TwGLViewGroup;

    .line 238
    .local v3, "v":Lcom/sec/android/glview/TwGLViewGroup;
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getSize()I

    move-result v1

    .line 239
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 240
    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v2

    .line 241
    .local v2, "tempView":Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    if-eqz v2, :cond_2

    move-object p0, v2

    .line 242
    goto :goto_0

    .line 239
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "tempView":Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    .end local v3    # "v":Lcom/sec/android/glview/TwGLViewGroup;
    :cond_3
    move-object p0, v4

    .line 246
    goto :goto_0
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 148
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 149
    invoke-virtual {p1, p0}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 150
    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(ILcom/sec/android/glview/TwGLView;)V

    .line 151
    return-void
.end method

.method public addViewToDrag(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 155
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    .line 156
    invoke-virtual {p1, p0}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 157
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 158
    return-void
.end method

.method protected cancelDrag()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDraggable()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDraggable:Z

    return v0
.end method

.method public getDroppability()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    return v0
.end method

.method public getView()Lcom/sec/android/glview/TwGLView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const/16 v2, 0x63

    const/4 v1, 0x1

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    instance-of v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 123
    :goto_0
    return v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    instance-of v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getCommandId()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 120
    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 9
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v7, v0, v3

    .line 187
    .local v7, "lastX":F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v8, v0, v4

    .line 188
    .local v8, "lastY":F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLView;->mapPointReverse([FFF)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v1, v1, v3

    sub-float/2addr v1, v7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v2, v2, v4

    sub-float/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v6

    .line 195
    .local v6, "dropBox":Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    if-eqz v6, :cond_6

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eq v0, v6, :cond_1

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    .line 200
    :cond_1
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .line 206
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 208
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;->onDragItemInDragDropBox(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 217
    :cond_5
    return-void

    .line 202
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x1

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v0

    .line 255
    .local v0, "dropBox":Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    if-eqz v0, :cond_3

    .line 256
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getDroppability()Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->cancelDrag()V

    .line 271
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 273
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;->onDragEndItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V

    .line 281
    .end local v0    # "dropBox":Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    :cond_1
    return-void

    .line 260
    .restart local v0    # "dropBox":Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 265
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    goto :goto_0

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->cancelDrag()V

    goto :goto_0
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x0

    const v1, 0x3f99999a

    .line 162
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDraggable:Z

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLView;->mapPointReverse([FFF)V

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 171
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 175
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragStart(Lcom/sec/android/glview/TwGLView;FF)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;->onDragStartItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method protected onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "fromDropBox"    # Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .prologue
    .line 92
    instance-of v0, p2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    check-cast p2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .end local p2    # "fromDropBox":Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNormalBGVisibility(I)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;->onDrop(Lcom/sec/android/glview/TwGLView;)V

    .line 103
    :cond_1
    return-void
.end method

.method public onTouchOver(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 78
    return-void
.end method

.method public removeView()Lcom/sec/android/glview/TwGLView;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 86
    .local v0, "viewToRemove":Lcom/sec/android/glview/TwGLView;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    .line 88
    return-object v0
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDraggable:Z

    .line 285
    return-void
.end method

.method public setDroppability(Z)V
    .locals 0
    .param p1, "droppable"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    .line 221
    return-void
.end method

.method protected setEmpty()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    .line 130
    return-void
.end method

.method public setOnDragDropBoxListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    .line 60
    return-void
.end method

.method public setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnDragListener;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 143
    return-void
.end method

.method public setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    .line 47
    return-void
.end method
