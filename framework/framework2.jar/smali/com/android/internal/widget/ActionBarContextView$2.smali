.class Lcom/android/internal/widget/ActionBarContextView$2;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarContextView;->initClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarContextView;)V
    .registers 2

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 361
    const/4 v8, 0x2

    new-array v4, v8, [I

    .line 362
    .local v4, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 363
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 364
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 367
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 368
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 369
    .local v3, "height":I
    const/4 v5, 0x0

    .line 371
    .local v5, "statusBarHeight":I
    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    .line 373
    .local v7, "wm":Landroid/view/IWindowManager;
    :try_start_28
    invoke-interface {v7}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 374
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105000c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_38} :catch_50

    move-result v5

    .line 379
    :cond_39
    :goto_39
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v1, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 381
    .local v0, "cheatSheet":Landroid/widget/Toast;
    const/16 v8, 0x33

    aget v9, v4, v10

    aget v10, v4, v11

    add-int/2addr v10, v3

    sub-int/2addr v10, v5

    invoke-virtual {v0, v8, v9, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 383
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 384
    return v11

    .line 376
    .end local v0    # "cheatSheet":Landroid/widget/Toast;
    :catch_50
    move-exception v8

    goto :goto_39
.end method
