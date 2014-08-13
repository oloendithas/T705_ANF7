.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;)V
    .locals 0

    .prologue
    .line 15328
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;->this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 15331
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6300()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 15332
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;->this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;->this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->searchNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->access$11100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listCreate(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6302(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 15333
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;->this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;->this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->searchNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->access$11100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->lastSearchNumber:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10902(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 15340
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;->this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;->this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->searchNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->access$11100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchResultLayout(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;Z)V

    .line 15341
    return-void

    .line 15334
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;->this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->lastSearchNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15335
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;->this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->lastSearchNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;->this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->searchNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->access$11100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15336
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;->this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;->this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->searchNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->access$11100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listCreate(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6302(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 15337
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;->this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1$1;->this$3:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;->this$2:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->searchNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->access$11100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->lastSearchNumber:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10902(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
