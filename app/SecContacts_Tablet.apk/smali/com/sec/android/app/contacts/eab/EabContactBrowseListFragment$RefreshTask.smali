.class Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$RefreshTask;
.super Landroid/os/AsyncTask;
.source "EabContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshTask"
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
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$RefreshTask;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 209
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$RefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$RefreshTask;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    iget-object v0, v0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sendSubscribetoContacts()V

    .line 214
    const/4 v0, 0x0

    return-object v0
.end method
