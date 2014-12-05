.class Lcom/android/keyguard/KeyguardAccountView$3;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAccountView;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAccountView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAccountView;)V
    .registers 2

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView$3;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$3;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->access$100(Lcom/android/keyguard/KeyguardAccountView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$3;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$000(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 176
    return-void
.end method
