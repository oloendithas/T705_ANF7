.class Lcom/android/internal/policy/impl/PhoneWindowManager$9;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 1604
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDebug()V
    .registers 1

    .prologue
    .line 1645
    return-void
.end method

.method public onSwipeFromBottom()V
    .registers 3

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_15

    .line 1627
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1629
    :cond_15
    return-void
.end method

.method public onSwipeFromRight()V
    .registers 3

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-nez v0, :cond_15

    .line 1633
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1637
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1641
    :cond_29
    return-void
.end method

.method public onSwipeFromTop()V
    .registers 4

    .prologue
    .line 1607
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwipeFromTop mIsKidsLauncherEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2d

    .line 1621
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1623
    :cond_2d
    return-void
.end method

.method public onSwipeLeftCenterLeft()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1649
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    move-result v0

    if-lez v0, :cond_e

    .line 1650
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateEasyOneHandState(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)V

    .line 1652
    :cond_e
    return-void
.end method

.method public onSwipeRightCenterRight()V
    .registers 4

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    move-result v0

    if-lez v0, :cond_f

    .line 1656
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateEasyOneHandState(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)V

    .line 1658
    :cond_f
    return-void
.end method
