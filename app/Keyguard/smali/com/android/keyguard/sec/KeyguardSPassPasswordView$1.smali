.class Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;
.super Ljava/lang/Object;
.source "KeyguardSPassPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->onResume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

.field final synthetic val$currentReason:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;I)V
    .registers 3

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    iput p2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;->val$currentReason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;->val$currentReason:I

    if-ne v0, v2, :cond_22

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mShowImeAtScreenOn:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$100(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 114
    :cond_22
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 116
    :cond_2a
    return-void
.end method
