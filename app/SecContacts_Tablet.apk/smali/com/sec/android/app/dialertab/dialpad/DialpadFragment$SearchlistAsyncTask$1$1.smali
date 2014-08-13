.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;)V
    .locals 0

    .prologue
    .line 15325
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 15328
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 15343
    return-void
.end method
