.class Lcom/android/keyguard/sec/KeyguardSignatureView$2;
.super Ljava/lang/Object;
.source "KeyguardSignatureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSignatureView;->onResume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V
    .registers 2

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 276
    return-void
.end method
