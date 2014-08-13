.class public Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "InteractionEmergencyMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final STRING_TOKENIZER:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "InteractionEmergencyMessageFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAddContactHeaderView:Landroid/view/View;

.field private mContactsCount:I

.field private mEmptyView:Landroid/view/View;

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment$Listener;

.field private mMaxContactsNumber:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 58
    iput v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mMaxContactsNumber:I

    .line 60
    iput v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mContactsCount:I

    .line 67
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setPhotoLoaderEnabled(Z)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setVisibleScrollbarEnabled(Z)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setQuickContactEnabled(Z)V

    .line 74
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setDirectorySearchMode(I)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setSweepActionEnabled(Z)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setFakeQueryModeEnabled(Z)V

    .line 81
    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 2
    .param p1, "isEmpty"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 193
    if-eqz p1, :cond_3

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 201
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1

    .line 201
    :cond_4
    const/16 v0, 0x8

    goto :goto_2
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 132
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 135
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDataRestrictedByCallingPackage(Z)V

    .line 138
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 139
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    new-instance v0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "adapter":Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 119
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->setDisplayPhotos(Z)V

    .line 120
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->setQuickContactEnabled(Z)V

    .line 126
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;
    :goto_0
    return-object v0

    .line 123
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "adapter":Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 125
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;
    .locals 2
    .param p1, "contactDatas"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 182
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 108
    const-string v1, "InteractionEmergencyMessageFragment"

    const-string v2, "inflateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const v1, 0x7f040170

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 89
    const-string v1, "InteractionEmergencyMessageFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mActivity:Landroid/app/Activity;

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mListContainer:Landroid/view/View;

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mEmptyView:Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0902e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "helpTextBottomView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 98
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040006

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mAddContactHeaderView:Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mAddContactHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setAddContactButtonEnabled(Z)V

    .line 104
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mAddContactHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mMaxContactsNumber:I

    iget v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mContactsCount:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->show(Landroid/app/FragmentManager;II)V

    .line 160
    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 150
    return-void
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    if-nez p3, :cond_0

    .line 145
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 146
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 165
    if-nez p2, :cond_0

    .line 166
    const-string v0, "InteractionEmergencyMessageFragment"

    const-string v1, "Data is NULL"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 176
    return-void

    .line 168
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->configureEmptyView(Z)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->configureEmptyView(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public setAddContactButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mAddContactHeaderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 221
    return-void
.end method

.method public setListener(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment$Listener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mListener:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment$Listener;

    .line 85
    return-void
.end method

.method public setMaxContactsNumber(I)V
    .locals 0
    .param p1, "maxContactsNumber"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mMaxContactsNumber:I

    .line 225
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 5
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 207
    if-nez p2, :cond_0

    .line 208
    const-string v1, "InteractionEmergencyMessageFragment"

    const-string v3, "Data is null"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    if-nez p2, :cond_1

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mContactsCount:I

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->mListener:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment$Listener;

    if-nez p2, :cond_2

    :goto_2
    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment$Listener;->onShowCount(I)V

    .line 217
    return-void

    .line 210
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 211
    .local v0, "count":I
    const-string v1, "InteractionEmergencyMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ready to display : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    .end local v0    # "count":I
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_1

    .line 216
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_2
.end method
