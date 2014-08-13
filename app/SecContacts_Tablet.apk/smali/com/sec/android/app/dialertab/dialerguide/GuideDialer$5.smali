.class Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$5;
.super Ljava/lang/Object;
.source "GuideDialer.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1162
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$5;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1167
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$5;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1169
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$5;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # setter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runSetLocation:Ljava/lang/Runnable;
    invoke-static {v0, v4}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1102(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1170
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$5;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # setter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vPost:Landroid/view/View;
    invoke-static {v0, v4}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1202(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;)Landroid/view/View;

    .line 1171
    return-void
.end method
