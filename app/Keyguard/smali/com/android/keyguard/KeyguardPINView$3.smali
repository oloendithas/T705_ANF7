.class Lcom/android/keyguard/KeyguardPINView$3;
.super Ljava/lang/Object;
.source "KeyguardPINView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPINView;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPINView$3;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$3;->this$0:Lcom/android/keyguard/KeyguardPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$3;->this$0:Lcom/android/keyguard/KeyguardPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$3;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 106
    const/4 v0, 0x1

    return v0
.end method
