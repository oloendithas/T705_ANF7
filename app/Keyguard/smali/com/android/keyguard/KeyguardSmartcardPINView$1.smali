.class Lcom/android/keyguard/KeyguardSmartcardPINView$1;
.super Ljava/lang/Object;
.source "KeyguardSmartcardPINView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSmartcardPINView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSmartcardPINView;)V
    .registers 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$1;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$1;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$1;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$1;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->verifyPasswordAndUnlock()V

    .line 145
    :cond_14
    return-void
.end method
