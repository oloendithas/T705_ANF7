.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;
.super Ljava/lang/Object;
.source "KeyguardMagazineCardHolderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->build(Lcom/samsung/android/magazinecard/MagazineCardRecord;Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)V
    .registers 2

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 216
    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "Card clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 218
    check-cast v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    .line 219
    .local v0, "curClicked":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    invoke-static {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$200(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getFocusedCard()Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    move-result-object v1

    .line 221
    .local v1, "curFocused":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    if-eqz v1, :cond_4b

    .line 222
    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "Reset cards"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->restoreDefaultCardState()V

    .line 224
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 225
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    invoke-static {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$200(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getKeyguardHostView()Lcom/android/keyguard/KeyguardHostView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardHostView;->showBouncer(Z)V

    .line 249
    :goto_35
    return-void

    .line 227
    :cond_36
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    # setter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z
    invoke-static {v2, v4}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$002(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Z)Z

    .line 228
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    invoke-static {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$200(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getKeyguardHostView()Lcom/android/keyguard/KeyguardHostView;

    move-result-object v2

    const/16 v3, 0xfa

    invoke-virtual {v2, v4, v3}, Lcom/android/keyguard/KeyguardHostView;->showBouncerFrameOnly(ZI)V

    goto :goto_35

    .line 231
    :cond_4b
    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->isCardExpanded()Z

    move-result v2

    if-nez v2, :cond_71

    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->isCardExpandable()Z

    move-result v2

    if-ne v2, v5, :cond_71

    .line 232
    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "Expand cards"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->unlockAndLaunchApplication()Z

    .line 237
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2$1;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_35

    .line 245
    :cond_71
    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "select card"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    # invokes: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->setCardScale(Z)V
    invoke-static {v0, v5}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$300(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Z)V

    .line 247
    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->unlockAndLaunchApplication()Z

    goto :goto_35
.end method
