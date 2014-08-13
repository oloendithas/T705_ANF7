.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$47;
.super Landroid/view/View$AccessibilityDelegate;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 13636
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$47;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$47;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 13641
    const/16 v1, 0x10

    if-ne p2, v1, :cond_0

    .line 13642
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$47;->val$v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 13646
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method
