.class public Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;
.super Landroid/os/AsyncTask;
.source "GroupMemberBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupMemberCountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private ActivityTarget:Landroid/app/Activity;

.field private FragmentTarget:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V
    .locals 1
    .param p1, "target"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .prologue
    .line 1149
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1150
    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;->ActivityTarget:Landroid/app/Activity;

    .line 1151
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;->FragmentTarget:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .line 1152
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 1156
    const/4 v6, -0x1

    .line 1157
    .local v6, "count":I
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;->FragmentTarget:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;->FragmentTarget:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1158
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1169
    :goto_0
    return-object v2

    .line 1159
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;->FragmentTarget:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1160
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "content://com.android.contacts/groups/title/ICE/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "emergency"

    const-string v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1164
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1165
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1166
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1167
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1169
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1143
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    .line 1174
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;->FragmentTarget:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;->FragmentTarget:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$1000(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1143
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
