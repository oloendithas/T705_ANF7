.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$15;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startListViewAnimationForDeleteMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 2009
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$15;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animtaion"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2020
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2021
    .local v0, "ani":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2022
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2023
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$15;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2024
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$15;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkDeleteHeaderViewVisibility()V
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    .line 2025
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$15;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$15;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$15;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    if-nez v3, :cond_1

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z
    invoke-static {}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1100()Z

    move-result v3

    if-nez v3, :cond_0

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z
    invoke-static {}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1200()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 2027
    return-void

    .line 2025
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animtaion"    # Landroid/view/animation/Animation;

    .prologue
    .line 2016
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animtaion"    # Landroid/view/animation/Animation;

    .prologue
    .line 2012
    return-void
.end method
