.class Lcom/android/keyguard/MSimKeyguardSimPinView$2;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MSimKeyguardSimPinView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPinView;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 136
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x43

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 137
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 138
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 144
    .end local v0    # "event":Landroid/view/KeyEvent;
    :cond_20
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 145
    return-void
.end method
