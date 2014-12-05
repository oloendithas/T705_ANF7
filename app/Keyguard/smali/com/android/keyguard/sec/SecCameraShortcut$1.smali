.class Lcom/android/keyguard/sec/SecCameraShortcut$1;
.super Ljava/lang/Object;
.source "SecCameraShortcut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecCameraShortcut;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecCameraShortcut;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecCameraShortcut;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/keyguard/sec/SecCameraShortcut$1;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$1;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    # getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$000(Lcom/android/keyguard/sec/SecCameraShortcut;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$1;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    # getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$100(Lcom/android/keyguard/sec/SecCameraShortcut;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dismiss keyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$1;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$1;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_28

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$1;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 175
    :cond_28
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$1;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    # getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$000(Lcom/android/keyguard/sec/SecCameraShortcut;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->launchCamera()V

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$1;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    # getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$200(Lcom/android/keyguard/sec/SecCameraShortcut;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    :goto_3d
    return-void

    .line 178
    :cond_3e
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$1;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    # getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$100(Lcom/android/keyguard/sec/SecCameraShortcut;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method
