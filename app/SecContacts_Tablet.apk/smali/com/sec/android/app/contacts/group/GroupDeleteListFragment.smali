.class public Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
.super Landroid/app/Fragment;
.source "GroupDeleteListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/contacts/list/OnActionBarClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;,
        Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;
    }
.end annotation


# static fields
.field private static final LOADER_GROUP_DELETE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GroupDeleteListFragment"

.field private static mContext:Landroid/content/Context;

.field private static mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

.field private final mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mGroupsToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderView:Landroid/view/View;

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 93
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 67
    sput-object p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->configureEmptyView(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->updateHeaderViewAndDoneButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 67
    sput-object p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private addAllGroup()V
    .locals 3

    .prologue
    .line 182
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 183
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 184
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    .end local v1    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private addGroup(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 5
    .param p1, "isEmpty"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    const v4, 0x7f090037

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 197
    .local v0, "textView":Landroid/widget/TextView;
    const v1, 0x7f0e0078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 198
    goto :goto_1

    :cond_3
    move v3, v2

    .line 199
    goto :goto_2
.end method

.method private dismissProgress()V
    .locals 3

    .prologue
    .line 459
    sget-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 460
    const-string v1, "GroupDeleteListFragment"

    const-string v2, "progress null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_0
    return-void

    .line 462
    :cond_0
    sget-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 463
    const-string v1, "GroupDeleteListFragment"

    const-string v2, "progress.get null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :cond_1
    :try_start_0
    sget-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 467
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GroupDeleteListFragment"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeAllGroup()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    return-void
.end method

.method private removeGroup(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method private updateHeaderViewAndDoneButton()V
    .locals 6

    .prologue
    const v5, 0x7f09011e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 203
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 204
    .local v1, "total":I
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 206
    .local v0, "selectedItemCount":I
    if-ne v1, v0, :cond_0

    .line 207
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 212
    :goto_0
    if-nez v0, :cond_1

    .line 213
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;

    invoke-interface {v2, v3}, Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;->onDoneButtonStateUpdated(Z)V

    .line 218
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;

    invoke-interface {v2, v0, v1}, Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;->onTitleUpdated(II)V

    .line 220
    return-void

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;

    invoke-interface {v2, v4}, Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_1
.end method


# virtual methods
.method public getGroupsToDelete()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 102
    sput-object p1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 114
    const v0, 0x7f04014e

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    .line 116
    const v0, 0x7f0401df

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteCompleted()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->dismissProgress()V

    .line 456
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method public onDoneClicked()V
    .locals 0

    .prologue
    .line 477
    invoke-static {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->show(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V

    .line 478
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v6, 0x7f09011e

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 135
    if-nez p3, :cond_2

    .line 136
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 137
    const-string v3, "GroupDeleteListFragment"

    const-string v4, "can not work while loading."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 141
    .local v1, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->removeAllGroup()V

    .line 143
    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 148
    :goto_1
    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 164
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->notifyDataSetChanged()V

    .line 165
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->updateHeaderViewAndDoneButton()V

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->addAllGroup()V

    .line 146
    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 151
    .end local v1    # "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v0, p3, v3

    .line 152
    .local v0, "adjPosition":I
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 155
    .restart local v1    # "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->removeGroup(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 162
    :goto_3
    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    goto :goto_2

    .line 159
    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->addGroup(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_3
.end method

.method public onRevertAction()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 129
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 130
    return-void
.end method

.method public setActionBarUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;

    .line 97
    return-void
.end method

.method public setGroupsToDelete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "mGroupsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 228
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    goto :goto_0
.end method
