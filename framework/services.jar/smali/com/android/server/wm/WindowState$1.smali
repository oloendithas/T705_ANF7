.class Lcom/android/server/wm/WindowState$1;
.super Landroid/view/IWindowId$Stub;
.source "WindowState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;ILcom/android/server/wm/DisplayContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/server/wm/WindowState$1;->this$0:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Landroid/view/IWindowId$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/wm/WindowState$1;->this$0:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    return v0
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/server/wm/WindowState$1;->this$0:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->registerFocusObserver(Landroid/view/IWindowFocusObserver;)V

    .line 349
    return-void
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/server/wm/WindowState$1;->this$0:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V

    .line 353
    return-void
.end method
