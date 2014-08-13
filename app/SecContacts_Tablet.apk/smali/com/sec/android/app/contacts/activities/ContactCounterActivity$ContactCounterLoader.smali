.class Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactCounterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/ContactCounterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactCounterLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 117
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterLoader;->mContext:Landroid/content/Context;

    .line 118
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterLoader;->mContext:Landroid/content/Context;

    # invokes: Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->loadAccounts(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->access$100(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterLoader;->onStopLoading()V

    .line 138
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 128
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 133
    return-void
.end method
