.class Lcom/android/keyguard/sec/KeyguardFMMView$3;
.super Ljava/lang/Object;
.source "KeyguardFMMView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 123
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$300(Lcom/android/keyguard/sec/KeyguardFMMView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 127
    const/4 v0, 0x1

    return v0
.end method
