.class public Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "SIMContactPickerFragment.java"


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
.field private static final TAG:Ljava/lang/String; = "SIMContactPickerFragment"


# instance fields
.field private mActionCode:I

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCursor:Landroid/database/Cursor;

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFrameContainer:Landroid/widget/FrameLayout;

.field private mHeaderView:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

.field private mNoMatchView:Landroid/view/View;

.field private mSelectedInfoHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field private selectAllAtFirstLoad:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 89
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->selectAllAtFirstLoad:Z

    .line 90
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 91
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setQuickContactEnabled(Z)V

    .line 93
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    .line 97
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->selectAllAtFirstLoad:Z

    .line 101
    :cond_0
    return-void
.end method

.method private addContactFromSelectAll(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_0
    return-void
.end method

.method private addSelectedContact(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v0, "SIMContactPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSelectedContact : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is added in array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onSelectedInfoChanged()V

    .line 342
    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 356
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 357
    return-void
.end method

.method private isSelectedContact(J)Z
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private refreshSelectAllState()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/16 v8, 0x136

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 390
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 392
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 393
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 394
    .local v1, "id":J
    cmp-long v4, v1, v9

    if-nez v4, :cond_1

    .line 392
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "KDDI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mActionCode:I

    if-ne v4, v8, :cond_3

    cmp-long v4, v1, v9

    if-lez v4, :cond_3

    .line 401
    const-wide/16 v4, 0x1

    sub-long/2addr v1, v4

    .line 402
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 403
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 418
    .end local v1    # "id":J
    :goto_1
    return-void

    .line 408
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "KDDI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    iget v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mActionCode:I

    if-ne v4, v8, :cond_7

    .line 411
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 412
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 414
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 417
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private removeContact(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 334
    const-string v0, "SIMContactPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeContact : id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is removed in array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onSelectedInfoChanged()V

    .line 336
    return-void
.end method

.method private removeContactFromSelectAll(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 387
    :cond_0
    return-void
.end method

.method private setDoneButton(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 345
    if-nez p1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onAllDataDeleted()V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    if-lez p1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onOneDataInputed()V

    goto :goto_0
.end method

.method private setSelectAllChecked(Z)V
    .locals 5
    .param p1, "isChecked"    # Z

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 363
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 364
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 363
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 369
    .local v1, "id":J
    if-nez p1, :cond_1

    .line 370
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->addContactFromSelectAll(J)V

    goto :goto_1

    .line 372
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->removeContactFromSelectAll(J)V

    goto :goto_1

    .line 376
    .end local v1    # "id":J
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onSelectedInfoChanged()V

    .line 377
    return-void
.end method

.method private setSoftInputMode(I)V
    .locals 1
    .param p1, "inputMode"    # I

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 441
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSelectedArray()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 319
    return-void
.end method

.method protected configureAdapter()V
    .locals 3

    .prologue
    .line 227
    const-string v1, "SIMContactPickerFragment"

    const-string v2, " === configureAdapter() === "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 231
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 234
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setEmptyListEnabled(Z)V

    .line 235
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    const-string v1, "SIMContactPickerFragment"

    const-string v2, " === createListAdapter() === "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, "adapter":Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 212
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 213
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setDisplayPhotos(Z)V

    .line 214
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setQuickContactEnabled(Z)V

    .line 215
    iget v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setActionCode(I)V

    .line 221
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;
    :goto_0
    return-object v0

    .line 218
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 219
    .local v0, "adapter":Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 220
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 239
    const-string v0, "SIMContactPickerFragment"

    const-string v1, " === inflateView() === "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const v0, 0x7f0401f1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mView:Landroid/view/View;

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onCancelAction()V

    .line 315
    return-void
.end method

.method public onCopyResult()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onCopyAction(Ljava/util/HashSet;)V

    .line 307
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mActionCode:I

    .line 142
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f0401de

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 150
    const-string v1, "SIMContactPickerFragment"

    const-string v2, " === onCreateView === "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 152
    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    .line 153
    invoke-virtual {p1, v5, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    .line 154
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 158
    const v1, 0x7f0401f4

    invoke-virtual {p1, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "marginView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setEmptyView(Landroid/view/View;)V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mView:Landroid/view/View;

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mView:Landroid/view/View;

    const v2, 0x7f090431

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    .line 183
    return-void
.end method

.method public onDeleteResult()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onDeleteAction(Ljava/util/HashSet;)V

    .line 303
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectAllChecked(Z)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 192
    :cond_2
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 199
    .local v0, "selectedId":J
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->isSelectedContact(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->removeContact(J)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->addSelectedContact(J)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    .line 286
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 288
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->refreshSelectAllState()V

    .line 291
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 294
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->selectAllContacts()V

    .line 298
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onMoveResult()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onMoveAction(Ljava/util/HashSet;)V

    .line 311
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const-string v0, "SIMContactPickerFragment"

    const-string v1, " === onSaveInstanceState === "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setSelectedInfoHashSet(Ljava/util/HashSet;)V

    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDoneButton(I)V

    .line 325
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->refreshSelectAllState()V

    .line 326
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->hideSoftKeyboard()V

    .line 146
    return-void
.end method

.method public reloadData()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 113
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    const-string v0, "SIMContactPickerFragment"

    const-string v1, " === restoreSavedState === "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 133
    if-nez p1, :cond_0

    .line 136
    :cond_0
    return-void
.end method

.method public selectAllContacts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->selectAllAtFirstLoad:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->selectAllAtFirstLoad:Z

    .line 429
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectAllChecked(Z)V

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 433
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onSelectedInfoChanged()V

    .line 435
    :cond_0
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCursor:Landroid/database/Cursor;

    .line 117
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 109
    return-void
.end method

.method public setOnSIMContactPickerActionListener(Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    .line 105
    return-void
.end method

.method public setSelectAllAtFirstLoad(Z)V
    .locals 0
    .param p1, "selectAllAtFirstLoad"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->selectAllAtFirstLoad:Z

    .line 87
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 6
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/16 v5, 0x30

    const/16 v2, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 247
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 253
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 255
    if-eqz v0, :cond_2

    .line 256
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSoftInputMode(I)V

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_2
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSoftInputMode(I)V

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f090180

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 272
    if-eqz v0, :cond_4

    .line 273
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSoftInputMode(I)V

    .line 274
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSoftInputMode(I)V

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
