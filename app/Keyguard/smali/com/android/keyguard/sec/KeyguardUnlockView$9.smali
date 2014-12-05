.class Lcom/android/keyguard/sec/KeyguardUnlockView$9;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardUnlockView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .registers 2

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$900(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 544
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$900(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 545
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardUnlockView;->dismissKeyguard()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    .line 547
    :cond_18
    return-void
.end method
