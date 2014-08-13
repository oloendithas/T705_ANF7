.class Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$2;
.super Ljava/lang/Object;
.source "GuideDialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
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
    .line 307
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$2;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$2;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$200(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$2;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setStep(I)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$2;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    .line 315
    :cond_0
    return-void
.end method
