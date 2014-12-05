.class Lcom/android/keyguard/KeyguardHostView$4;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 2

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$4;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$4;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # invokes: Lcom/android/keyguard/KeyguardHostView;->updateAndAddWidgets()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$900(Lcom/android/keyguard/KeyguardHostView;)V

    .line 750
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$4;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->showUnlockAffordance()V

    .line 751
    return-void
.end method
