.class Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$9;
.super Landroid/os/CountDownTimer;
.source "GuideDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runTimerForDisable(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;JJLandroid/view/View;)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 1767
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$9;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iput-object p6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$9;->val$v:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$9;->val$v:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$9;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1778
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "arg0"    # J

    .prologue
    .line 1770
    return-void
.end method
