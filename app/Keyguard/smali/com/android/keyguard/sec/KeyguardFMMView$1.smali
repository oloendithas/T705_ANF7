.class Lcom/android/keyguard/sec/KeyguardFMMView$1;
.super Ljava/lang/Object;
.source "KeyguardFMMView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardFMMView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardFMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardFMMView;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFMMView$1;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$1;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$1;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$000(Lcom/android/keyguard/sec/KeyguardFMMView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$1;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->verifyPasswordAndUnlock()V

    .line 108
    :cond_16
    return-void
.end method
