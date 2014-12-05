.class Lcom/android/keyguard/sec/KeyguardUnlockView$11$2;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardUnlockView$11;->showShortcutHelpText(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$11;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockView$11;)V
    .registers 2

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$11;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 966
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$11;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$11;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$500(Lcom/android/keyguard/sec/KeyguardUnlockView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$11;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$11;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$600(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 969
    :cond_30
    return-void
.end method
