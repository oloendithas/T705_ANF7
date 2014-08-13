.class Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$4;
.super Ljava/lang/Object;
.source "DialerGuideActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$4;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    const/4 v2, 0x1

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$4;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$4;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$4;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isShowToast:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$1000(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$4;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->showInvaliedActoionToast()V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$4;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # setter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isShowToast:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$1002(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;Z)Z

    .line 613
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 601
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$4;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setTabPosition()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$900(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V

    .line 602
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 597
    return-void
.end method
