.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$FavoriteAsyncTask;
.super Landroid/os/AsyncTask;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteAsyncTask"
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
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 15219
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$FavoriteAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;

    .prologue
    .line 15219
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$FavoriteAsyncTask;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 15219
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$FavoriteAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 15222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$FavoriteAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$FavoriteAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listCreateForFavorite()Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->Favorite:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10302(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 15223
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15219
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$FavoriteAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 15227
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$FavoriteAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 15229
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$FavoriteAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setFavoriteLayout()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    .line 15231
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 15232
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$FavoriteAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFavoriteAsyncTask:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$FavoriteAsyncTask;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10602(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$FavoriteAsyncTask;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$FavoriteAsyncTask;

    .line 15233
    return-void
.end method
