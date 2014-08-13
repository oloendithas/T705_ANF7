.class public Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;
.super Landroid/app/Fragment;
.source "GroupChangeOrderListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;,
        Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;,
        Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final KEY_GROUP_ORDER_LIST:Ljava/lang/String; = "groupOrderList"

.field private static final LOADER_CHANGE_ORDER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GroupChangeOrderListFragment"


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mGroupChangeOrderLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

.field private mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 208
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupChangeOrderLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->updateDoneButton()V

    return-void
.end method

.method private getGroupOrderList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, "groupOrderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    if-eqz v4, :cond_0

    .line 243
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 244
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getCount()I

    move-result v0

    .line 246
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 247
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    .line 248
    .local v1, "groupListItem":Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "count":I
    .end local v1    # "groupListItem":Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method private updateDoneButton()V
    .locals 4

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "isEnabled":Z
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getCount()I

    move-result v2

    .line 178
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "position":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 179
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    iget v3, v3, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->order:I

    if-eq v3, v1, :cond_2

    .line 180
    const/4 v0, 0x1

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    invoke-interface {v3, v0}, Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;->onDoneButtonStateUpdated(Z)V

    .line 188
    :cond_1
    return-void

    .line 178
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 107
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 108
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 109
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->add(Ljava/lang/Object;)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->notifyDataSetChanged()V

    .line 117
    .end local v0    # "count":I
    .end local v1    # "i":I
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->updateDoneButton()V

    .line 118
    return-void

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupChangeOrderLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 94
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    const v1, 0x7f04003b

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;-><init>(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    const v0, 0x7f040143

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mRootView:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwDndListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(I)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandlePadding(IIII)V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setScrollBarStyle(I)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setVerticalScrollBarPadding(Z)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getPaddingRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndMode(Z)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mRootView:Landroid/view/View;

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/16 v1, -0xc

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandlePadding(IIII)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;

    .line 124
    return-void
.end method

.method public onDoneClicked()V
    .locals 6

    .prologue
    .line 191
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 194
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v0, "groupValue":Landroid/content/ContentValues;
    const-string v5, "title"

    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    iget-object v4, v4, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v4, "group_order"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "groupValue":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/contacts/ContactSaveService;->createChangeOrderIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    .line 201
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 203
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->getGroupOrderList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    .line 146
    const-string v0, "groupOrderList"

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 147
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v0, "groupOrderList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setActionBarButtonUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    .line 84
    return-void
.end method
