.class Lcom/android/keyguard/MSimKeyguardSimPinView$3;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPinView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 147
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$3;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$3;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$3;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 151
    const/4 v0, 0x1

    return v0
.end method
