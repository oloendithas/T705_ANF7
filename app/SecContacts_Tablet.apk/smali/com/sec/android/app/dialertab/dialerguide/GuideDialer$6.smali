.class Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$6;
.super Ljava/lang/Object;
.source "GuideDialer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V
    .locals 0

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$6;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$6;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$6;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vPost:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1202(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;)Landroid/view/View;

    .line 1178
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$6;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vPost:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1200(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$6;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runSetLocation:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1179
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$6;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setActionBarMargin()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1300(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V

    .line 1182
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$6;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideBack:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1500(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$6;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->onGLL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1400(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1183
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$6;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->onGLL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1402(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1184
    return-void
.end method
