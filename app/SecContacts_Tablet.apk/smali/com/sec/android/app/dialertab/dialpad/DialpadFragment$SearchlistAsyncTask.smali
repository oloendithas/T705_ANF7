.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;
.super Landroid/os/AsyncTask;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchlistAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private isStringCheck:Z

.field private searchNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)V
    .locals 1
    .param p2, "searchNum"    # Ljava/lang/String;

    .prologue
    .line 15239
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15240
    iput-object p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->searchNumber:Ljava/lang/String;

    .line 15241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->isStringCheck:Z

    .line 15242
    return-void
.end method

.method static synthetic access$11100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    .prologue
    .line 15236
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->searchNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15236
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->searchNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    .prologue
    .line 15236
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->isStringCheck:Z

    return v0
.end method

.method static synthetic access$11302(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;
    .param p1, "x1"    # Z

    .prologue
    .line 15236
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->isStringCheck:Z

    return p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 15236
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 15246
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->searchNumber:Ljava/lang/String;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listCreate(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6302(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 15248
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 15249
    const-string v1, "feature_enable_writingbuddy"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15250
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWbReceivedText:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15251
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWbReceivedText:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v0

    .line 15252
    .local v0, "tempName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_With_Character(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6302(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 15256
    .end local v0    # "tempName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->searchNumber:Ljava/lang/String;

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->lastSearchNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10902(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 15257
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15236
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x2

    .line 15261
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWbReceivedText:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 15262
    :cond_0
    const/4 v0, 0x0

    .line 15263
    .local v0, "searchdelay":I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 15264
    const/16 v0, 0xfa

    .line 15265
    :cond_1
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6300()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 15266
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_7

    .line 15267
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ge v1, v3, :cond_5

    .line 15268
    const/16 v0, 0x1f4

    .line 15290
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isAddSearchDelay:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15291
    const/16 v0, 0x1f4

    .line 15292
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isAddSearchDelay:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11002(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 15295
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 15296
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15350
    .end local v0    # "searchdelay":I
    :cond_4
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 15351
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchlistAsyncTask:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11402(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;

    .line 15352
    return-void

    .line 15269
    .restart local v0    # "searchdelay":I
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_6

    .line 15270
    const/16 v0, 0x1c2

    goto :goto_0

    .line 15272
    :cond_6
    const/16 v0, 0x12c

    goto :goto_0

    .line 15273
    :cond_7
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_a

    .line 15274
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ge v1, v3, :cond_8

    .line 15275
    const/16 v0, 0x1c2

    goto :goto_0

    .line 15276
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ge v1, v4, :cond_9

    .line 15277
    const/16 v0, 0x190

    goto :goto_0

    .line 15279
    :cond_9
    const/16 v0, 0xfa

    goto :goto_0

    .line 15280
    :cond_a
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 15281
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ge v1, v3, :cond_b

    .line 15282
    const/16 v0, 0x1c2

    goto/16 :goto_0

    .line 15284
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchlistAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ge v1, v4, :cond_c

    .line 15285
    const/16 v0, 0x190

    goto/16 :goto_0

    .line 15288
    :cond_c
    const/16 v0, 0xfa

    goto/16 :goto_0
.end method
