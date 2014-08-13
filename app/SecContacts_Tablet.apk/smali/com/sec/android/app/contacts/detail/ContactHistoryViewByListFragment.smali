.class public Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;
.super Landroid/app/ListFragment;
.source "ContactHistoryViewByListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$1;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;
    }
.end annotation


# static fields
.field public static final ITEM_COUNT_IN_HISTORY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ContactHistoryViewByListFragment"

.field private static mContext:Landroid/content/Context;

.field private static mItemNameInHistory:[I


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

.field private mAllitem:Landroid/widget/LinearLayout;

.field private mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mItemArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;

.field public mOptionIsChanged:Z

.field private mSortOptions:[Z

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0e02b5
        0x7f0e02b6
        0x7f0e02b7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mOptionIsChanged:Z

    .line 317
    return-void
.end method

.method private CheckOptionsChanged()Z
    .locals 7

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    .line 129
    .local v2, "isPhone":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 130
    .local v1, "isMMS":Z
    const/4 v3, 0x0

    .line 132
    .local v3, "itemCount":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    if-eqz v2, :cond_0

    .line 135
    const/4 v3, 0x2

    .line 148
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_5

    .line 149
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v0

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    if-eq v4, v5, :cond_4

    .line 150
    const/4 v4, 0x1

    .line 153
    :goto_2
    return v4

    .line 137
    .end local v0    # "i":I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 140
    :cond_1
    if-eqz v2, :cond_2

    .line 141
    const/4 v3, 0x3

    goto :goto_0

    .line 142
    :cond_2
    if-eqz v1, :cond_3

    .line 143
    const/4 v3, 0x2

    goto :goto_0

    .line 145
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 148
    .restart local v0    # "i":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private linkOptionToListItem()V
    .locals 7

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    .line 194
    .local v2, "isPhone":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 196
    .local v1, "isMMS":Z
    const/4 v3, 0x0

    .line 198
    .local v3, "itemCount":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    if-eqz v2, :cond_0

    .line 201
    const/4 v3, 0x2

    .line 214
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 215
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    .end local v0    # "i":I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 206
    :cond_1
    if-eqz v2, :cond_2

    .line 207
    const/4 v3, 0x3

    goto :goto_0

    .line 208
    :cond_2
    if-eqz v1, :cond_3

    .line 209
    const/4 v3, 0x2

    goto :goto_0

    .line 211
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 218
    .restart local v0    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->updateAllCheckState()V

    .line 219
    return-void
.end method

.method private setAllItemCheckState(Z)V
    .locals 3
    .param p1, "bCheckState"    # Z

    .prologue
    .line 248
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 249
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 250
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method

.method private setItemArrayList()V
    .locals 7

    .prologue
    const v6, 0x7f0e02b6

    .line 174
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemArrayList:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    .line 176
    .local v2, "isPhone":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 180
    .local v1, "isMMS":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_4

    .line 182
    if-nez v2, :cond_0

    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    aget v4, v4, v0

    const v5, 0x7f0e02b5

    if-eq v4, v5, :cond_2

    :cond_0
    if-nez v1, :cond_1

    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    aget v4, v4, v0

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    aget v4, v4, v0

    if-ne v4, v6, :cond_3

    .line 180
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_3
    new-instance v3, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$1;)V

    .line 187
    .local v3, "item":Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;
    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    aget v4, v4, v0

    iput v4, v3, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;->itemNameResId:I

    .line 188
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    .end local v3    # "item":Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;
    :cond_4
    return-void
.end method

.method private updateAllCheckState()V
    .locals 6

    .prologue
    .line 255
    const/4 v3, 0x1

    .line 256
    .local v3, "everyBodyIsOn":Z
    const/4 v2, 0x1

    .line 257
    .local v2, "everyBodyIsOff":Z
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 258
    .local v1, "dataCount":I
    if-nez v1, :cond_1

    .line 259
    const/4 v3, 0x0

    .line 260
    const/4 v2, 0x1

    .line 272
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 273
    return-void

    .line 262
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 263
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    or-int v5, v3, v2

    if-eqz v5, :cond_0

    .line 264
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 265
    .local v0, "checked":Z
    if-nez v0, :cond_2

    .line 266
    const/4 v3, 0x0

    .line 263
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getSelectAllCheckBox()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getSortOptions()[Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    return-object v0
.end method

.method public linkListItemToOption()V
    .locals 7

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    .line 223
    .local v2, "isPhone":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 224
    .local v1, "isMMS":Z
    const/4 v3, 0x0

    .line 226
    .local v3, "itemCount":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    if-eqz v2, :cond_0

    .line 229
    const/4 v3, 0x2

    .line 242
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 243
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    aput-boolean v5, v4, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    .end local v0    # "i":I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 234
    :cond_1
    if-eqz v2, :cond_2

    .line 235
    const/4 v3, 0x3

    goto :goto_0

    .line 236
    :cond_2
    if-eqz v1, :cond_3

    .line 237
    const/4 v3, 0x2

    goto :goto_0

    .line 239
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 245
    .restart local v0    # "i":I
    :cond_4
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 160
    sput-object p1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mContext:Landroid/content/Context;

    .line 162
    :try_start_0
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnViewByItemsCheckedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 84
    const v0, 0x7f040065

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mView:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 91
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040064

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAllitem:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAllitem:Landroid/widget/LinearLayout;

    const v1, 0x7f090190

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAllitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 97
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setItemArrayList()V

    .line 99
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040067

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->setFragment(Landroid/app/Fragment;)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 109
    const-string v1, "ContactHistoryViewByListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mHeaderAllCheckBox is checked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-nez p3, :cond_3

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    .line 112
    .local v0, "checked":Z
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 113
    if-nez v0, :cond_0

    move v3, v2

    :cond_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setAllItemCheckState(Z)V

    .line 114
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 124
    .end local v0    # "checked":Z
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->CheckOptionsChanged()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;->onChangedOptionItems(Z)V

    .line 125
    return-void

    .restart local v0    # "checked":Z
    :cond_2
    move v1, v3

    .line 112
    goto :goto_0

    .line 118
    .end local v0    # "checked":Z
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->updateAllCheckState()V

    .line 119
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const v1, 0x7f09018d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    goto :goto_1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 276
    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    .line 278
    .local v1, "isPhone":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 279
    .local v0, "isMMS":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    if-eqz v1, :cond_1

    .line 282
    new-array v2, v5, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    .line 296
    :goto_0
    const-string v2, "options"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    .line 298
    .end local v0    # "isMMS":Z
    .end local v1    # "isPhone":Z
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->linkOptionToListItem()V

    .line 299
    return-void

    .line 284
    .restart local v0    # "isMMS":Z
    .restart local v1    # "isPhone":Z
    :cond_1
    new-array v2, v4, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    goto :goto_0

    .line 287
    :cond_2
    if-eqz v1, :cond_3

    .line 288
    const/4 v2, 0x3

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    goto :goto_0

    .line 289
    :cond_3
    if-eqz v0, :cond_4

    .line 290
    new-array v2, v5, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    goto :goto_0

    .line 292
    :cond_4
    new-array v2, v4, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    goto :goto_0
.end method

.method public setSelectAllCheckBox(Z)V
    .locals 1
    .param p1, "boolean1"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 311
    return-void
.end method

.method public setSortOptions([Z)V
    .locals 0
    .param p1, "booleanArray"    # [Z

    .prologue
    .line 306
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    .line 307
    return-void
.end method
