.class Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$5;
.super Landroid/os/CountDownTimer;
.source "DialerGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setTabPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 780
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$5;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 789
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$5;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$5;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 790
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "arg0"    # J

    .prologue
    .line 785
    return-void
.end method
