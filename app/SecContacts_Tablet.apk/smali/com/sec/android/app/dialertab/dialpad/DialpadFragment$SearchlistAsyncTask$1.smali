.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;)V
    .locals 0

    .prologue
    .line 15296
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15299
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->searchNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->access$11100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWbReceivedText:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15300
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->prevSearchNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 15301
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->prevSearchNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->prevSearchNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->searchNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->access$11100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15302
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    const/4 v2, 0x1

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->isStringCheck:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->access$11302(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;Z)Z

    .line 15303
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->searchNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->access$11102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15322
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->isStringCheck:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->access$11300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15323
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->isStringCheck:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->access$11302(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;Z)Z

    .line 15324
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->prevSearchNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 15325
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 15346
    :cond_2
    return-void

    .line 15307
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->isStringCheck:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->access$11302(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;Z)Z

    .line 15308
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->prevSearchNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 15309
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v2, 0x1

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isAddSearchDelay:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11002(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 15315
    :catch_0
    move-exception v0

    .line 15316
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IndexOutOfBoundsException in isChangedDigitsText"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15312
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    const/4 v2, 0x1

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->isStringCheck:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->access$11302(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;Z)Z
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 15318
    :catch_1
    move-exception v0

    .line 15319
    .local v0, "e":Ljava/lang/NegativeArraySizeException;
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NegativeArraySizeException in isChangedDigitsText"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
