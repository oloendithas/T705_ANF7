.class public Lcom/android/contacts/detail/ContactDetailUpdatesFragment;
.super Landroid/app/ListFragment;
.source "ContactDetailUpdatesFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactDetailUpdatesFragment"


# instance fields
.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

.field private final mStreamItemClickListener:Landroid/view/View$OnClickListener;

.field private final mStreamItemPhotoItemClickListener:Landroid/view/View$OnClickListener;

.field private mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$1;-><init>(Lcom/android/contacts/detail/ContactDetailUpdatesFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemClickListener:Landroid/view/View$OnClickListener;

    .line 78
    new-instance v0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$2;-><init>(Lcom/android/contacts/detail/ContactDetailUpdatesFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemPhotoItemClickListener:Landroid/view/View$OnClickListener;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailUpdatesFragment;Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailUpdatesFragment;
    .param p1, "x1"    # Lcom/android/contacts/util/StreamItemEntry;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getAccountTypeForStreamItemEntry(Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method private getAccountTypeForStreamItemEntry(Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;
    .locals 3
    .param p1, "streamItemEntry"    # Lcom/android/contacts/util/StreamItemEntry;

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getDataSet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFirstListItemOffset()I
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getFirstListItemOffset(Landroid/widget/ListView;)I

    move-result v0

    return v0
.end method

.method public handleKeyDown(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04005a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    new-instance v0, Lcom/android/contacts/detail/StreamItemAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemClickListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemPhotoItemClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/detail/StreamItemAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    .line 119
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 121
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/StreamItemAdapter;->setStreamItems(Ljava/util/List;)V

    .line 130
    :cond_0
    return-void
.end method

.method public requestToMoveToOffset(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 181
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->requestToMoveToOffset(Landroid/widget/ListView;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "ContactDetailUpdatesFragment"

    const-string v2, "Content view not yet created "

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetAdapter()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    return-void
.end method

.method public setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .param p2, "result"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 133
    if-nez p2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 142
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/StreamItemAdapter;->setStreamItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 162
    return-void
.end method