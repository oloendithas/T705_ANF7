.class Lcom/android/keyguard/MSimKeyguardSimPinView$1;
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
    .line 116
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # invokes: Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimPinRetry()I
    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$100(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v1

    # setter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I
    invoke-static {v0, v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$002(Lcom/android/keyguard/MSimKeyguardSimPinView;I)I

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->verifyPasswordAndUnlock()V

    .line 122
    return-void
.end method
