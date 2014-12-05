.class Lcom/android/keyguard/sec/KeyguardFMMView$2;
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
    .line 115
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFMMView$2;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x43

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 118
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView$2;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$100(Lcom/android/keyguard/sec/KeyguardFMMView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 119
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView$2;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$200(Lcom/android/keyguard/sec/KeyguardFMMView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 120
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView$2;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 121
    return-void
.end method
