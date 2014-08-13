.class public Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "InteractionEmergencyMessageDeleteFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_SELECT_IDS:Ljava/lang/String; = "selectIds"

.field private static final TAG:Ljava/lang/String; = "InteractionEmergencyMessageDeleteFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mEmptyView:Landroid/view/View;

.field private mHeaderContainer:Landroid/widget/FrameLayout;

.field private mHeaderView:Landroid/view/View;

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field private mSelectedContactArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 76
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->setPhotoLoaderEnabled(Z)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->setVisibleScrollbarEnabled(Z)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->setQuickContactEnabled(Z)V

    .line 83
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->setDirectorySearchMode(I)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->setSweepActionEnabled(Z)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->setFakeQueryModeEnabled(Z)V

    .line 90
    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .param p1, "isEmpty"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 305
    if-eqz p1, :cond_3

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x31

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 313
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 316
    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onSelected(I)V

    goto :goto_0

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 313
    goto :goto_2

    :cond_5
    move v2, v1

    .line 314
    goto :goto_3
.end method

.method private excuteSelectAllContacts()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;

    .line 150
    .local v0, "adapter":Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;
    iget-object v5, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 152
    .local v3, "selectAll":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 153
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 154
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;->getContactId(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 157
    iget-object v5, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "position":I
    .end local v3    # "selectAll":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 161
    .restart local v3    # "selectAll":Z
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 163
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->refreshSelectAllState()V

    .line 165
    iget-object v5, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 166
    iget-object v5, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 169
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    if-eqz v4, :cond_5

    .line 170
    iget-object v4, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v5, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onSelected(I)V

    .line 173
    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;->notifyDataSetChanged()V

    .line 174
    return-void
.end method

.method private refreshSelectAllState()V
    .locals 5

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;

    .line 179
    .local v0, "adapter":Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 180
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;->getContactId(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 189
    .end local v1    # "id":Ljava/lang/String;
    :goto_1
    return-void

    .line 179
    .restart local v1    # "id":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 209
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 212
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDataRestrictedByCallingPackage(Z)V

    .line 215
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 216
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    new-instance v0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, "adapter":Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 196
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;->setDisplayPhotos(Z)V

    .line 197
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;->setQuickContactEnabled(Z)V

    .line 203
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;
    :goto_0
    return-object v0

    .line 200
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, "adapter":Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 202
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;
    .locals 2
    .param p1, "contactDatas"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 294
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
    .line 120
    const-string v1, "InteractionEmergencyMessageDeleteFragment"

    const-string v2, "inflateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const v1, 0x7f040170

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    const-string v1, "selectIds"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;

    .line 137
    .local v0, "adapter":Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;->setSelctedContactArrayList(Ljava/util/ArrayList;)V

    .line 138
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;->notifyDataSetChanged()V

    .line 139
    return-void

    .line 133
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onCancelAction()V

    .line 288
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const v3, 0x7f0401de

    .line 98
    const-string v1, "InteractionEmergencyMessageDeleteFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mActivity:Landroid/app/Activity;

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mListContainer:Landroid/view/View;

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mEmptyView:Landroid/view/View;

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0902e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "helpTextBottomView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 107
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mHeaderView:Landroid/view/View;

    .line 111
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 116
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->excuteSelectAllContacts()V

    .line 226
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;

    .line 231
    .local v0, "adapter":Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;->getContactId(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "selectedId":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v3, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onSelected(I)V

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->refreshSelectAllState()V

    .line 245
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteAdapter;->notifyDataSetChanged()V

    .line 246
    return-void

    .line 236
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
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
    .line 220
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 221
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

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    if-nez p2, :cond_0

    .line 258
    const-string v0, "InteractionEmergencyMessageDeleteFragment"

    const-string v1, "Data is NULL"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 267
    return-void

    .line 260
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->configureEmptyView(Z)V

    goto :goto_0

    .line 264
    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->configureEmptyView(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPickerResult()V
    .locals 4

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;Z)V

    .line 252
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    const-string v0, "selectIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 146
    return-void
.end method

.method public setEmergencyMessageDeleteActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 94
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    .line 272
    if-nez p2, :cond_1

    .line 273
    const-string v1, "InteractionEmergencyMessageDeleteFragment"

    const-string v2, "Data is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->mSelectedContactArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onSelected(I)V

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->refreshSelectAllState()V

    .line 284
    return-void

    .line 275
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 276
    .local v0, "count":I
    const-string v1, "InteractionEmergencyMessageDeleteFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ready to display : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
