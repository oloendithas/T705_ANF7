.class public Landroid/view/KeyEvent$DispatcherState;
.super Ljava/lang/Object;
.source "KeyEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DispatcherState"
.end annotation


# instance fields
.field mActiveLongPresses:Landroid/util/SparseIntArray;

.field mDownKeyCode:I

.field mDownTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3274
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public handleUpEvent(Landroid/view/KeyEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3342
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 3344
    .local v1, "keyCode":I
    iget-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 3345
    .local v0, "index":I
    if-ltz v0, :cond_16

    .line 3347
    const/16 v2, 0x120

    # |= operator for: Landroid/view/KeyEvent;->mFlags:I
    invoke-static {p1, v2}, Landroid/view/KeyEvent;->access$076(Landroid/view/KeyEvent;I)I

    .line 3348
    iget-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3350
    :cond_16
    iget v2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    if-ne v2, v1, :cond_25

    .line 3352
    const/16 v2, 0x200

    # |= operator for: Landroid/view/KeyEvent;->mFlags:I
    invoke-static {p1, v2}, Landroid/view/KeyEvent;->access$076(Landroid/view/KeyEvent;I)I

    .line 3353
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 3354
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 3356
    :cond_25
    return-void
.end method

.method public isTracking(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3322
    iget v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public performedLongPress(Landroid/view/KeyEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3332
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3333
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 3281
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 3282
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 3283
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 3284
    return-void
.end method

.method public reset(Ljava/lang/Object;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 3290
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    if-ne v0, p1, :cond_a

    .line 3292
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 3293
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 3295
    :cond_a
    return-void
.end method

.method public startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    .line 3308
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_e

    .line 3309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only start tracking on a down event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3313
    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 3314
    iput-object p2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 3315
    return-void
.end method
