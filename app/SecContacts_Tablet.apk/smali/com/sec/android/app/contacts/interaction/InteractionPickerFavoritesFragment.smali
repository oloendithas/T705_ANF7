.class public Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "InteractionPickerFavoritesFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;
.implements Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;",
        "Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;"
    }
.end annotation


# static fields
.field private static final EXTRA_VALUE_INVALID:I = -0x1

.field private static final KEY_ACTION_CODE:Ljava/lang/String; = "actionCode"

.field private static final KEY_CURRENT_COUNT:Ljava/lang/String; = "existingRecipientCount"

.field private static final KEY_CUSTOM_SEARCH_QUERY_STRING:Ljava/lang/String; = "customSearchQueryString"

.field private static final KEY_DATA_QUERY_TASK_RUNNING:Ljava/lang/String; = "IsDataQueryTaskRunning"

.field private static final KEY_DATA_QUERY_TASK_RUNNING2:Ljava/lang/String; = "IsDataQueryTaskRunning2"

.field private static final KEY_FILTER:Ljava/lang/String; = "filter"

.field private static final KEY_LIMITED_COUNT:Ljava/lang/String; = "maxRecipientCount"

.field private static final KEY_SEARCH_FOCUS_STATE:Ljava/lang/String; = "searchFocusState"

.field private static final KEY_SELECT_IDS:Ljava/lang/String; = "selectIds"

.field private static final KEY_SEND_MSG:Ljava/lang/String; = "msg_dialog"

.field private static final KEY_SHOW_MAX_COUNT:Ljava/lang/String; = "showMaxCountAlertDialog"

.field private static final KEY_SPEED_DIAL:Ljava/lang/String; = "from_speed_dial"

.field private static final MAX_QUERY_STRING_LENGTH:I = 0x3e8

.field private static final NO_LIMIT:I = 0xffff

.field private static final SOFT_INPUT_MODE_DEFAULT:I = 0x31

.field public static final STRING_TOKENIZER:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "InteractionPickerFavoritesFragment"

.field private static mLoadingDialog:Landroid/app/ProgressDialog;


# instance fields
.field private final MIN_COUNT_PROGRESS:I

.field private dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

.field private mActionCode:I

.field private mCurrentCount:I

.field private mCurrentSelectItem:I

.field private mCustomSearchQueryString:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewText:Landroid/widget/TextView;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFocusState:Z

.field private mFromSelectAll:Z

.field protected mHasPhoneData:Z

.field private mIsDataQueryTaskRunning:Z

.field private mIsDataQueryTaskRunning2:Z

.field private mIsDoneButtonClicked:Z

.field private mIsFragmentShowing:Z

.field private mIsRecreatedInstance:Z

.field private mIsSelectAllRunning:Z

.field private mIsSendingMSG:Z

.field private mLimitedCount:I

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSearchViewLayout:Landroid/widget/LinearLayout;

.field private mSelectedContactHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowMaxCountDialog:Z

.field private mSoftInputMode:I

.field private mSpeedDial:Z

.field private nUri:Landroid/net/Uri;

.field private selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

.field private selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;

.field private showMaxDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 119
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    .line 120
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDoneButtonClicked:Z

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 127
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFocusState:Z

    .line 129
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    .line 133
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneData:Z

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSoftInputMode:I

    .line 171
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSendingMSG:Z

    .line 174
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->MIN_COUNT_PROGRESS:I

    .line 178
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "InteractionPickerFavoritesFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setPhotoLoaderEnabled(Z)V

    .line 180
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 182
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setVisibleScrollbarEnabled(Z)V

    .line 183
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 185
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setQuickContactEnabled(Z)V

    .line 186
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDirectorySearchMode(I)V

    .line 188
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSweepActionEnabled(Z)V

    .line 191
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setFakeQueryModeEnabled(Z)V

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSelectAllCheckedVcard(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxCountAlertDialog(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDoneButtonClicked:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDoneButtonClicked:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSelectAllCheckedContacts(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDoneButton(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->nUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .prologue
    .line 93
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    return v0
.end method

.method private addContactFromSelectAll(JILandroid/net/Uri;)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "partition"    # I
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, "keyString":Ljava/lang/String;
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, "selectedLookup":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    return-void
.end method

.method private addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "keyString":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, "selectedLookup":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedInfoChanged()V

    .line 932
    return-void
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 4
    .param p1, "dataInfo"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "dataid"    # J

    .prologue
    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "keyString":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "dataString":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSpeedDial:Z

    if-eqz v2, :cond_0

    .line 920
    invoke-virtual {p0, p3, p4, p5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V

    .line 924
    :goto_0
    return-void

    .line 922
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedInfoChanged()V

    goto :goto_0
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "dataInfo"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "fromSelectAll"    # Z

    .prologue
    .line 900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "keyString":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "dataString":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    if-eqz p4, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectAllInfoChanged()V

    .line 912
    :goto_0
    return-void

    .line 906
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSpeedDial:Z

    if-eqz v2, :cond_1

    .line 907
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V

    goto :goto_0

    .line 909
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedInfoChanged()V

    goto :goto_0
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .param p1, "isEmpty"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1427
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1459
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    if-eqz p1, :cond_3

    .line 1435
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsRecreatedInstance:Z

    if-nez v0, :cond_2

    .line 1436
    const/16 v0, 0x30

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSoftInputMode:I

    .line 1444
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSoftInputMode()V

    .line 1446
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1447
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyViewText:Landroid/widget/TextView;

    const v2, 0x7f0e0085

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1450
    if-eqz p1, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1454
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1456
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDoneButton(I)V

    goto :goto_0

    .line 1439
    :cond_2
    const/16 v0, 0x31

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSoftInputMode:I

    goto :goto_1

    .line 1442
    :cond_3
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSoftInputMode:I

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1446
    goto :goto_2

    :cond_5
    move v2, v1

    .line 1447
    goto :goto_3
.end method

.method private configureSearchView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1499
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 1500
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mContext:Landroid/content/Context;

    .line 1501
    :cond_0
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->sIsTwoPaneMode:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v6, :cond_2

    .line 1502
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c011e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1504
    .local v1, "defaultSearchViewTopBottomPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c011f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 1507
    .local v4, "searchViewTopBottomPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0199

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1509
    .local v2, "leftPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c019a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1511
    .local v3, "rightPadding":I
    sub-int v5, v4, v1

    .line 1512
    .local v5, "topPadding":I
    sub-int v0, v4, v1

    .line 1514
    .local v0, "bottomPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1515
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2, v8, v8, v8}, Landroid/widget/SearchView;->setPadding(IIII)V

    .line 1520
    .end local v0    # "bottomPadding":I
    .end local v1    # "defaultSearchViewTopBottomPadding":I
    .end local v2    # "leftPadding":I
    .end local v3    # "rightPadding":I
    .end local v4    # "searchViewTopBottomPadding":I
    .end local v5    # "topPadding":I
    :cond_2
    :goto_0
    return-void

    .line 1517
    .restart local v0    # "bottomPadding":I
    .restart local v1    # "defaultSearchViewTopBottomPadding":I
    .restart local v2    # "leftPadding":I
    .restart local v3    # "rightPadding":I
    .restart local v4    # "searchViewTopBottomPadding":I
    .restart local v5    # "topPadding":I
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2, v5, v3, v8}, Landroid/widget/SearchView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private excuteSelectAllContacts(ZLcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V
    .locals 8
    .param p1, "isDataTaskRunning"    # Z
    .param p2, "aMode"    # Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 449
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    if-nez v4, :cond_0

    .line 450
    sget-object v4, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    if-ne v4, p2, :cond_1

    move v1, v2

    .line 451
    .local v1, "lIsSelectAllMode":Z
    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    .line 452
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    .line 453
    new-instance v4, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    invoke-direct {v4, p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;)V

    iput-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    .line 454
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v4, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 457
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_MaxCountVcardAttachment"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 460
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    sub-int/2addr v2, v3

    if-lt v2, v6, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v2

    if-lt v2, v6, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e01bd

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v7, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 468
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v1    # "lIsSelectAllMode":Z
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 450
    goto :goto_0
.end method

.method private excuteSelectAllVcard(Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V
    .locals 5
    .param p1, "aMode"    # Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 441
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    if-nez v2, :cond_0

    .line 442
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    .line 443
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;

    .line 444
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;

    new-array v3, v0, [Ljava/lang/Boolean;

    sget-object v4, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    if-ne v4, p1, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 446
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 444
    goto :goto_0
.end method

.method private getSelectedContactCount()I
    .locals 9

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 874
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    const/4 v1, 0x0

    .line 875
    .local v1, "currentSelectedCnt":I
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v6

    .line 877
    .local v6, "totalNumOfContacts":I
    const/4 v5, 0x0

    .local v5, "position":I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 878
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 879
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_1

    .line 877
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 882
    :cond_1
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 883
    .local v2, "id":J
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v4

    .line 885
    .local v4, "partition":I
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 886
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 889
    .end local v2    # "id":J
    .end local v4    # "partition":I
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_2
    return v1
.end method

.method private isMaxAdded()Z
    .locals 3

    .prologue
    .line 1153
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 1154
    const/4 v0, 0x1

    .line 1156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelectedContact(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I

    .prologue
    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "dataInfo"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    .prologue
    .line 979
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 980
    .local v0, "dataId":Ljava/lang/String;
    iget-object v1, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 981
    .local v1, "displayName":Ljava/lang/String;
    iget-object v4, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    const-string v5, ","

    const-string v6, "P"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    const-string v6, "W"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 983
    .local v3, "selectedInfo":Ljava/lang/String;
    const-string v4, ";"

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 985
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method

.method private margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "args1"    # Ljava/lang/String;
    .param p2, "args2"    # Ljava/lang/String;
    .param p3, "args3"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;

    .prologue
    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refreshSelectAllState(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1136
    if-eqz p1, :cond_0

    .line 1137
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z

    .line 1138
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    .line 1140
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_MaxCountVcardAttachment"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1143
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1144
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 1146
    :cond_1
    return-void
.end method

.method private removeContact(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I

    .prologue
    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedInfoChanged()V

    .line 896
    return-void
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I

    .prologue
    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    return-void
.end method

.method private removeVcardFromSelectAll(JI)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "partition"    # I

    .prologue
    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    return-void
.end method

.method private setDoneButton(I)V
    .locals 12
    .param p1, "size"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 951
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getQueryString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 953
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v11

    if-lt p1, v11, :cond_1

    :goto_0
    invoke-interface {v9, v10, v7}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataSelected(IZ)V

    .line 970
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v7, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onSelected(I)V

    .line 971
    return-void

    :cond_1
    move v7, v8

    .line 953
    goto :goto_0

    .line 956
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 957
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v6

    .line 958
    .local v6, "resultCount":I
    const/4 v1, 0x0

    .line 960
    .local v1, "checkedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_4

    .line 961
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 962
    .local v3, "id":J
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v5

    .line 963
    .local v5, "partition":I
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 964
    add-int/lit8 v1, v1, 0x1

    .line 960
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 967
    .end local v3    # "id":J
    .end local v5    # "partition":I
    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    add-int/lit8 v10, v6, -0x1

    if-lt v1, v10, :cond_5

    :goto_3
    invoke-interface {v9, v1, v7}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataSelected(IZ)V

    goto :goto_1

    :cond_5
    move v7, v8

    goto :goto_3
.end method

.method private setSelectAllCheckedContacts(Z)Z
    .locals 13
    .param p1, "aIsSelectAll"    # Z

    .prologue
    .line 1060
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 1061
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 1065
    .local v1, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1066
    .local v0, "CurrentSelectItem":I
    iget-boolean v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v10, :cond_0

    .line 1067
    const/4 v0, 0x0

    .line 1069
    :cond_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    :try_start_1
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    .line 1071
    .local v8, "totalNumOfContacts":I
    const/4 v7, 0x0

    .local v7, "position":I
    :goto_0
    if-ge v7, v8, :cond_9

    .line 1072
    const-wide/16 v4, -0x1

    .line 1074
    .local v4, "id":J
    :try_start_2
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    .line 1082
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_1

    .line 1083
    :try_start_3
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1084
    :cond_1
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 1085
    .local v6, "partition":I
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    .line 1090
    if-eqz p1, :cond_7

    iget v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    iget v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    sub-int/2addr v10, v12

    if-lt v0, v10, :cond_7

    .line 1091
    if-ge v0, v8, :cond_2

    .line 1092
    const/4 v10, 0x0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1132
    .end local v4    # "id":J
    .end local v6    # "partition":I
    .end local v9    # "uri":Landroid/net/Uri;
    :goto_1
    return v10

    .line 1075
    .restart local v4    # "id":J
    :catch_0
    move-exception v3

    .line 1076
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1077
    const/4 v10, 0x1

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v11

    goto :goto_1

    .line 1131
    .end local v0    # "CurrentSelectItem":I
    .end local v1    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .end local v4    # "id":J
    .end local v7    # "position":I
    .end local v8    # "totalNumOfContacts":I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v10

    .line 1078
    .restart local v0    # "CurrentSelectItem":I
    .restart local v1    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .restart local v4    # "id":J
    .restart local v7    # "position":I
    .restart local v8    # "totalNumOfContacts":I
    :catch_1
    move-exception v3

    .line 1079
    .local v3, "e":Landroid/database/StaleDataException;
    :try_start_7
    invoke-virtual {v3}, Landroid/database/StaleDataException;->printStackTrace()V

    .line 1080
    const/4 v10, 0x1

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 1093
    .end local v3    # "e":Landroid/database/StaleDataException;
    .restart local v6    # "partition":I
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_2
    if-eqz v9, :cond_3

    :try_start_9
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1094
    const/4 v10, 0x0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 1095
    :cond_3
    if-nez v9, :cond_5

    .line 1071
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1097
    :cond_5
    if-gt v0, v8, :cond_4

    .line 1099
    :try_start_b
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSearchMode()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eq v0, v8, :cond_4

    .line 1102
    :cond_6
    const/4 v10, 0x1

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    .line 1106
    :cond_7
    if-eqz v9, :cond_4

    .line 1109
    :try_start_d
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 1111
    .local v2, "contactId":Ljava/lang/String;
    if-eqz p1, :cond_8

    .line 1112
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1113
    const/4 v10, 0x1

    invoke-virtual {p0, v9, v6, v10}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->pickContact(Landroid/net/Uri;IZ)V

    .line 1114
    add-int/lit8 v0, v0, 0x1

    .line 1115
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentSelectItem:I
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_2

    .line 1124
    .end local v2    # "contactId":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1125
    .local v3, "e":Ljava/lang/IllegalStateException;
    const/4 v10, 0x1

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_1

    .line 1120
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "contactId":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    :try_start_10
    iput-boolean v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    .line 1122
    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_2

    .line 1126
    .end local v2    # "contactId":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 1127
    .local v3, "e":Landroid/database/StaleDataException;
    const/4 v10, 0x1

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    monitor-exit v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_1

    .line 1130
    .end local v3    # "e":Landroid/database/StaleDataException;
    .end local v4    # "id":J
    .end local v6    # "partition":I
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_9
    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1131
    :try_start_14
    monitor-exit v11
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1132
    const/4 v10, 0x1

    goto :goto_1

    .line 1130
    .end local v7    # "position":I
    .end local v8    # "totalNumOfContacts":I
    :catchall_1
    move-exception v10

    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    throw v10
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
.end method

.method private setSelectAllCheckedVcard(Z)Z
    .locals 14
    .param p1, "aIsSelectAll"    # Z

    .prologue
    .line 1002
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 1003
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 1006
    .local v1, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1008
    .local v0, "CurrentSelectItem":I
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1010
    .local v8, "totalNumOfContacts":I
    const/4 v7, 0x0

    .local v7, "position":I
    :goto_0
    if-ge v7, v8, :cond_6

    .line 1012
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMaxAdded()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1013
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_2

    .line 1014
    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1015
    .local v4, "id":J
    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 1017
    .local v6, "partition":I
    const-wide/16 v12, 0x0

    cmp-long v10, v4, v12

    if-nez v10, :cond_1

    .line 1013
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1020
    :cond_1
    if-eqz p1, :cond_0

    .line 1021
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_0

    .line 1022
    const/4 v10, 0x0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1056
    .end local v3    # "i":I
    .end local v4    # "id":J
    .end local v6    # "partition":I
    :goto_2
    return v10

    .line 1028
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isLegacyCompatibilityMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1029
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v10, v7}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v9

    .line 1034
    .local v9, "uri":Landroid/net/Uri;
    :goto_3
    if-nez v9, :cond_4

    .line 1010
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1031
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {v10, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v9

    .restart local v9    # "uri":Landroid/net/Uri;
    goto :goto_3

    .line 1037
    :cond_4
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1038
    .restart local v4    # "id":J
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 1040
    .restart local v6    # "partition":I
    if-eqz p1, :cond_5

    .line 1041
    add-int/lit8 v0, v0, 0x1

    .line 1042
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentSelectItem:I

    .line 1043
    invoke-direct {p0, v4, v5, v6, v9}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->addContactFromSelectAll(JILandroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1048
    .end local v4    # "id":J
    .end local v6    # "partition":I
    .end local v9    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1049
    .local v2, "e":Ljava/lang/IllegalStateException;
    const/4 v10, 0x1

    :try_start_4
    monitor-exit v11

    goto :goto_2

    .line 1054
    .end local v0    # "CurrentSelectItem":I
    .end local v1    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .end local v7    # "position":I
    .end local v8    # "totalNumOfContacts":I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 1046
    .restart local v0    # "CurrentSelectItem":I
    .restart local v1    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .restart local v4    # "id":J
    .restart local v6    # "partition":I
    .restart local v7    # "position":I
    .restart local v8    # "totalNumOfContacts":I
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_5
    :try_start_5
    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->removeVcardFromSelectAll(JI)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1050
    .end local v4    # "id":J
    .end local v6    # "partition":I
    .end local v9    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 1051
    .local v2, "e":Landroid/database/StaleDataException;
    const/4 v10, 0x1

    :try_start_6
    monitor-exit v11

    goto :goto_2

    .line 1054
    .end local v2    # "e":Landroid/database/StaleDataException;
    :cond_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1056
    const/4 v10, 0x1

    goto :goto_2
.end method

.method private showMaxCountAlertDialog(Z)V
    .locals 8
    .param p1, "enableDone"    # Z

    .prologue
    .line 1160
    move v1, p1

    .line 1163
    .local v1, "flag":Z
    :try_start_0
    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSendingMSG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1164
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0416

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$2;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    .line 1202
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 1203
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1204
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    .line 1208
    :goto_1
    return-void

    .line 1181
    :cond_1
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_2

    .line 1182
    const v0, 0x7f0e0357

    .line 1187
    .local v0, "alertStringId":I
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$3;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1205
    .end local v0    # "alertStringId":I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1185
    :cond_2
    const v0, 0x7f0e0358

    .restart local v0    # "alertStringId":I
    goto :goto_2
.end method

.method private showNoMatchesView(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 701
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 704
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 701
    goto :goto_0

    :cond_3
    move v2, v1

    .line 702
    goto :goto_1
.end method


# virtual methods
.method public clearCustomSearchResult()V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 438
    return-void
.end method

.method public clearSelectedArray()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;->cancel(Z)Z

    .line 812
    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->cancel(Z)Z

    .line 816
    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    .line 817
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 820
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 821
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 822
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->refreshSelectAllState(Z)V

    .line 824
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 825
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 522
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 524
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 525
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDataRestrictedByCallingPackage(Z)V

    .line 526
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 527
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 472
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isLegacyCompatibilityMode()Z

    move-result v6

    if-nez v6, :cond_5

    .line 473
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 474
    .local v2, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 475
    invoke-virtual {v2, v8}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 476
    invoke-virtual {v2, v8}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setDisplayPhotos(Z)V

    .line 477
    invoke-virtual {v2, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setQuickContactEnabled(Z)V

    .line 478
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setActionCode(I)V

    .line 479
    invoke-virtual {v2, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setTopDividerEnabled(Z)V

    .line 481
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v7, 0x123

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v7, 0x124

    if-ne v6, v7, :cond_1

    .line 483
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setExtra(I)V

    .line 488
    :cond_1
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v7, 0x125

    if-ne v6, v7, :cond_2

    .line 489
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 490
    .local v1, "accounts":[Landroid/accounts/Account;
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 516
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_2
    :goto_0
    return-object v2

    .line 492
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v2    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :pswitch_0
    move-object v3, v1

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v0, v3, v4

    .line 493
    .local v0, "account":Landroid/accounts/Account;
    const-string v6, "com.sec.chaton"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 494
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setAccountTypeAndAccountName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 500
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v3    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :pswitch_1
    move-object v3, v1

    .restart local v3    # "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v0, v3, v4

    .line 501
    .restart local v0    # "account":Landroid/accounts/Account;
    const-string v6, "com.coolots.chaton"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 502
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setAccountTypeAndAccountName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 513
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v3    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_5
    new-instance v2, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 514
    .local v2, "adapter":Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v2, v7}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 515
    invoke-virtual {v2, v7}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0

    .line 490
    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;
    .locals 2
    .param p1, "contactDatas"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 802
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 804
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f0901cd

    const/16 v4, 0x8

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 330
    const-string v2, "InteractionPickerFavoritesFragment"

    const-string v3, " === inflateView() === "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const v2, 0x7f040070

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 333
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 334
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    const v2, 0x7f0901a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchViewLayout:Landroid/widget/LinearLayout;

    .line 339
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 340
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 342
    :cond_0
    const v2, 0x7f090100

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    .line 344
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 345
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 347
    :cond_1
    const v2, 0x7f090314

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 348
    const v2, 0x7f090314

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 351
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 354
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 357
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 360
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v8, v6, v8, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 361
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v7}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 362
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 363
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 364
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 365
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0e01c2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchQuery()V

    .line 367
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 369
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsRecreatedInstance:Z

    if-eqz v2, :cond_6

    .line 370
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFocusState:Z

    if-eqz v2, :cond_4

    .line 371
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 372
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v7}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 377
    :cond_4
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsRecreatedInstance:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z

    if-eqz v2, :cond_5

    .line 378
    sget-object v2, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->DE_SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    invoke-direct {p0, v7, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->excuteSelectAllContacts(ZLcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    .line 379
    iput-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z

    .line 383
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->configureSearchView()V

    .line 385
    return-object v1

    .line 375
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method public isSendingMSG()Z
    .locals 1

    .prologue
    .line 1495
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSendingMSG:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 257
    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 259
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 261
    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onCancelAction()V

    .line 769
    return-void
.end method

.method public onCancelChosen()V
    .locals 1

    .prologue
    .line 1338
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 1339
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 303
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 305
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsRecreatedInstance:Z

    .line 306
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsRecreatedInstance:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxCountAlertDialog(Z)V

    .line 309
    :cond_0
    return-void

    .line 305
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 313
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 316
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListContainer:Landroid/view/View;

    .line 317
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyView:Landroid/view/View;

    .line 318
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyViewText:Landroid/widget/TextView;

    .line 321
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :cond_0
    return-void
.end method

.method public onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "dataInfo"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "checked"    # Z
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1321
    const-wide/16 v4, 0x0

    .line 1324
    .local v4, "dataid":J
    :try_start_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    .line 1326
    if-eqz p3, :cond_0

    .line 1327
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v6

    .line 1329
    .local v6, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    .line 1333
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1334
    return-void

    .line 1331
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDeSelectAllClicked()V
    .locals 2

    .prologue
    .line 1534
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 1537
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->DE_SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->excuteSelectAllVcard(Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    .line 1541
    :goto_0
    return-void

    .line 1539
    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->DE_SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->excuteSelectAllContacts(ZLcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDestroy()V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

    if-eqz v0, :cond_1

    .line 294
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    if-eqz v0, :cond_2

    .line 297
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    .line 299
    :cond_2
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    const/4 v5, 0x1

    .line 539
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 540
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 542
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 593
    :goto_0
    return-void

    .line 546
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "contactId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v2

    .line 549
    .local v2, "partition":I
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    sparse-switch v4, :sswitch_data_0

    .line 588
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or unhandled action code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 554
    :sswitch_0
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 555
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_0

    .line 557
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMaxAdded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 559
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->pickContact(Landroid/net/Uri;IZ)V

    goto :goto_0

    .line 561
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 562
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxCountAlertDialog(Z)V

    goto :goto_0

    .line 571
    :sswitch_1
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 572
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_0

    .line 574
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMaxAdded()Z

    move-result v4

    if-nez v4, :cond_4

    .line 575
    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_0

    .line 577
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 578
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxCountAlertDialog(Z)V

    goto :goto_0

    .line 584
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->pickContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 549
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_1
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_1
        0x123 -> :sswitch_1
        0x125 -> :sswitch_0
    .end sparse-switch
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 532
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 534
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
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
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 598
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEnabled:Z

    if-nez v3, :cond_0

    .line 658
    :goto_0
    return-void

    .line 602
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 603
    .local v0, "loaderId":I
    if-ne v0, v4, :cond_6

    .line 604
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mDirectoryListStatus:I

    .line 605
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 606
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->startLoading()V

    .line 631
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 632
    if-nez v0, :cond_2

    .line 633
    if-eqz p2, :cond_9

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_9

    .line 635
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneData:Z

    .line 640
    :cond_2
    :goto_2
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneData:Z

    if-nez v3, :cond_a

    :goto_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->configureEmptyView(Z)V

    .line 641
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 642
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getSelectedContactCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 643
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearSelectedArray()V

    .line 644
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDoneButton(I)V

    .line 649
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 650
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->refreshSelectAllState(Z)V

    .line 653
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 654
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDoneButton(I)V

    .line 657
    :cond_5
    const-string v1, "InteractionPickerFavoritesFragment"

    const-string v2, "====================================================="

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    :cond_6
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 611
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 614
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->configureEmptyView(Z)V

    goto :goto_1

    .line 616
    :cond_7
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mDirectoryListStatus:I

    .line 617
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 620
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryModeEnabled:Z

    if-eqz v3, :cond_1

    .line 621
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryStatus:I

    if-ne v3, v1, :cond_8

    .line 622
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryStatus:I

    .line 623
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->startFullQuery()V

    goto/16 :goto_1

    .line 624
    :cond_8
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 625
    const/4 v3, 0x4

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryStatus:I

    goto/16 :goto_1

    .line 637
    :cond_9
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneData:Z

    goto/16 :goto_2

    :cond_a
    move v1, v2

    .line 640
    goto/16 :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 265
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onPause()V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFocusState:Z

    .line 268
    const-string v0, "InteractionPickerFavoritesFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFocusState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFocusState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    goto :goto_0
.end method

.method public onPickerResult()V
    .locals 3

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    if-eqz v0, :cond_0

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDoneButtonClicked:Z

    .line 765
    :goto_0
    return-void

    .line 746
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    .line 762
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unhandled action code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickDataAction(Ljava/util/HashMap;)V

    goto :goto_0

    .line 758
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    goto :goto_0

    .line 746
    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_1
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_1
        0x123 -> :sswitch_1
        0x125 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    .line 726
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 730
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;)V

    .line 731
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;J)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataid"    # J

    .prologue
    .line 736
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;J)V

    .line 737
    return-void
.end method

.method public onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "flag"    # Z

    .prologue
    const/4 v7, 0x0

    .line 773
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;-><init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V

    .line 775
    .local v0, "contactDatas":Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 776
    iget v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 777
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v3, p4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 784
    :goto_0
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    .line 790
    :cond_0
    :goto_1
    return-void

    .line 780
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSpeedDial:Z

    move-object v2, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 786
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e004c

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 216
    const-string v0, "selectIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 217
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v0, "from_speed_dial"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSpeedDial:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 221
    const-string v0, "filter"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 222
    const-string v0, "customSearchQueryString"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "searchFocusState"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFocusState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    const-string v0, "showMaxCountAlertDialog"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    const-string v0, "IsDataQueryTaskRunning"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    const-string v0, "IsDataQueryTaskRunning2"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    const-string v0, "msg_dialog"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSendingMSG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    return-void
.end method

.method public onSelectAllClicked()V
    .locals 2

    .prologue
    .line 1523
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 1526
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->excuteSelectAllVcard(Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    .line 1530
    :goto_0
    return-void

    .line 1528
    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->excuteSelectAllContacts(ZLcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    goto :goto_0
.end method

.method public onSelectAllInfoChanged()V
    .locals 3

    .prologue
    .line 851
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 852
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 853
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 854
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v0, :cond_1

    .line 855
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->refreshSelectAllState(Z)V

    .line 862
    :cond_0
    :goto_0
    monitor-exit v1

    .line 863
    return-void

    .line 856
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentSelectItem:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDoneButton(I)V

    .line 858
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->refreshSelectAllState(Z)V

    goto :goto_0

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 839
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPickerResult()V

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 843
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDoneButton(I)V

    .line 845
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->refreshSelectAllState(Z)V

    goto :goto_0
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 828
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPickerResult(Landroid/net/Uri;)V

    .line 829
    return-void
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataid"    # J

    .prologue
    .line 833
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPickerResult(Landroid/net/Uri;J)V

    .line 834
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_MaxCountVcardAttachment"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 279
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 281
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 283
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onStop()V

    .line 284
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onInteractionPickerAction(Landroid/net/Uri;)V

    .line 708
    return-void
.end method

.method public pickContact(Landroid/net/Uri;IZ)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "partition"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 711
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "contactId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setUri(Landroid/net/Uri;)V

    .line 713
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setFromSelectall(Z)V

    .line 714
    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

    .line 715
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 716
    return-void
.end method

.method public reloadData()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 210
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 233
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "restoreSavedState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 236
    if-nez p1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 239
    :cond_0
    const-string v0, "selectIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 240
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    .line 241
    const-string v0, "maxRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    .line 242
    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    .line 243
    const-string v0, "from_speed_dial"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSpeedDial:Z

    .line 244
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 245
    const-string v0, "customSearchQueryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 246
    const-string v0, "searchFocusState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFocusState:Z

    .line 247
    const-string v0, "showMaxCountAlertDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    .line 248
    const-string v0, "IsDataQueryTaskRunning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z

    .line 249
    const-string v0, "IsDataQueryTaskRunning2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    .line 250
    const-string v0, "msg_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSendingMSG:Z

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 206
    return-void
.end method

.method public setFromSelectall(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1149
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    .line 1150
    return-void
.end method

.method public setIsFragmentShowing(Z)V
    .locals 0
    .param p1, "isFragmentShowing"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsFragmentShowing:Z

    .line 198
    return-void
.end method

.method public setMMSinformation(III)V
    .locals 0
    .param p1, "ActionCode"    # I
    .param p2, "LimitedCount"    # I
    .param p3, "CurrentCount"    # I

    .prologue
    .line 1462
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    .line 1463
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    .line 1464
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    .line 1465
    return-void
.end method

.method public setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 202
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 720
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 721
    return-void
.end method

.method public setSearchQuery()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 432
    return-void
.end method

.method public setSearchViewClearFocus()V
    .locals 2

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1482
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 1484
    :cond_0
    return-void
.end method

.method public setSendingMSG(Z)V
    .locals 0
    .param p1, "FromMMS"    # Z

    .prologue
    .line 1489
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSendingMSG:Z

    .line 1490
    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    .prologue
    .line 1468
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsFragmentShowing:Z

    if-eqz v0, :cond_0

    .line 1469
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1470
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSoftInputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1471
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1473
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public setSpeedDial(Z)V
    .locals 0
    .param p1, "SpeedDial"    # Z

    .prologue
    .line 797
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSpeedDial:Z

    .line 798
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 793
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->nUri:Landroid/net/Uri;

    .line 794
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 8
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    .line 663
    if-nez p2, :cond_0

    .line 664
    const-string v4, "InteractionPickerFavoritesFragment"

    const-string v5, "Data is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 672
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    if-nez v0, :cond_1

    .line 695
    :goto_1
    return-void

    .line 666
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 667
    .local v1, "count":I
    const-string v4, "InteractionPickerFavoritesFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ready to display : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 677
    .end local v1    # "count":I
    .restart local v0    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 679
    :cond_2
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showNoMatchesView(Z)V

    goto :goto_1

    .line 681
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f090437

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 682
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09017e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 684
    .local v2, "progress":Landroid/widget/ProgressBar;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showNoMatchesView(Z)V

    .line 686
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 687
    const v4, 0x7f0e01a0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 688
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 690
    :cond_4
    const v4, 0x7f0e02de

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 691
    const v4, 0x8000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 692
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method
