.class Lcom/android/keyguard/KeyguardAccountView$5$1;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAccountView$5;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardAccountView$5;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAccountView$5;)V
    .registers 2

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView$5$1;->this$1:Lcom/android/keyguard/KeyguardAccountView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5$1;->this$1:Lcom/android/keyguard/KeyguardAccountView$5;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # invokes: Lcom/android/keyguard/KeyguardAccountView;->getProgressDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->access$800(Lcom/android/keyguard/KeyguardAccountView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 339
    return-void
.end method
