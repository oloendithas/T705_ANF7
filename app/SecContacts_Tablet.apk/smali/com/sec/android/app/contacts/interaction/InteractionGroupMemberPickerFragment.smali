.class public Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "InteractionGroupMemberPickerFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;
.implements Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;
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

.field private static final KEY_LIMITED_COUNT:Ljava/lang/String; = "maxRecipientCount"

.field private static final KEY_SEARCH_FOCUS_STATE:Ljava/lang/String; = "searchFocusState"

.field private static final KEY_SELECT_IDS:Ljava/lang/String; = "selectIds"

.field private static final KEY_SENDING_MESSAGE_ATT:Ljava/lang/String; = "sendMessageForATT"

.field private static final KEY_SHOW_MAX_COUNT:Ljava/lang/String; = "showMaxCountAlertDialog"

.field private static final MAX_QUERY_STRING_LENGTH:I = 0x3e8

.field private static final NO_LIMIT:I = 0xffff

.field public static final STRING_TOKENIZER:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "InteractionGroupMemberPickerFragment"

.field private static mLoadingDialog:Landroid/app/ProgressDialog;


# instance fields
.field private final MIN_COUNT_PROGRESS:I

.field private dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;

.field private mActionCode:I

.field private mActivity:Landroid/app/Activity;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCurrentCount:I

.field private mCurrentSelectItem:I

.field private mCustomSearchQueryString:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

.field private mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusState:Z

.field private mFromSelectAll:Z

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mHeaderContainer:Landroid/widget/FrameLayout;

.field private mHeaderView:Landroid/view/View;

.field private mIsDataQueryTaskRunning:Z

.field private mIsDataQueryTaskRunning2:Z

.field private mIsDoneButtonClicked:Z

.field private mIsFromEmergencyMessage:Z

.field private mIsRecreatedInstance:Z

.field private mIsSelectAllRunning:Z

.field private mIsSendingMSG:Z

.field private mLimitedCount:I

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field private mMaxCountView:Landroid/widget/TextView;

.field private mMode:I

.field private mModifiedMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;

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

.field private mSelectionTaskMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

.field private mShowMaxCountDialog:Z

.field private nUri:Landroid/net/Uri;

.field private selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

.field private selectAllTaskPick:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;

.field private selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;

.field private showMaxDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 114
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    .line 119
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    .line 121
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDoneButtonClicked:Z

    .line 123
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 130
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFocusState:Z

    .line 132
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    .line 179
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    .line 182
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->MIN_COUNT_PROGRESS:I

    .line 1654
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->DEFAULT:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectionTaskMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    .line 186
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 187
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 189
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 190
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 192
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setQuickContactEnabled(Z)V

    .line 193
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDirectorySearchMode(I)V

    .line 195
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSweepActionEnabled(Z)V

    .line 198
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setFakeQueryModeEnabled(Z)V

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSelectAllCheckedPick(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDoneButtonClicked:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDoneButtonClicked:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSelectAllCheckedVcard(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSelectAllCheckedContacts(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDoneButton(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .prologue
    .line 92
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    return v0
.end method

.method private addContactFromSelectAll(JILandroid/net/Uri;)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "partition"    # I
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 892
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

    .line 893
    .local v0, "keyString":Ljava/lang/String;
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 894
    .local v1, "selectedLookup":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    return-void
.end method

.method private addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 899
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

    .line 900
    .local v0, "keyString":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "selectedLookup":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onSelectedInfoChanged()V

    .line 904
    return-void
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "dataInfo"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "fromSelectAll"    # Z

    .prologue
    .line 821
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v3, 0x122

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMaxAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    :goto_0
    return-void

    .line 823
    :cond_0
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

    .line 824
    .local v1, "keyString":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "dataString":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    if-eqz p3, :cond_1

    .line 827
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onSelectAllInfoChanged()V

    goto :goto_0

    .line 829
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onSelectedInfoChanged()V

    goto :goto_0
.end method

.method private configureEmptyText()V
    .locals 3

    .prologue
    .line 1549
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f090037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1550
    .local v0, "textView":Landroid/widget/TextView;
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v2, 0x122

    if-ne v1, v2, :cond_1

    .line 1551
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1552
    const v1, 0x7f0e026a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1560
    :goto_0
    return-void

    .line 1555
    :cond_0
    const v1, 0x7f0e0269

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1559
    :cond_1
    const v1, 0x7f0e0076

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .param p1, "isEmpty"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1517
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1546
    :cond_0
    :goto_0
    return-void

    .line 1523
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v3, 0x122

    if-eq v0, v3, :cond_2

    .line 1524
    if-eqz p1, :cond_4

    .line 1525
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x31

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1532
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1533
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1535
    if-eqz p1, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1539
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1540
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1541
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDoneButton(I)V

    .line 1544
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->configureEmptyText()V

    goto :goto_0

    .line 1528
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 1532
    goto :goto_2

    :cond_6
    move v2, v1

    .line 1533
    goto :goto_3
.end method

.method private configureSearchView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1604
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 1605
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mContext:Landroid/content/Context;

    .line 1606
    :cond_0
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->sIsTwoPaneMode:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v6, :cond_2

    .line 1607
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c011e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1609
    .local v1, "defaultSearchViewTopBottomPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c011f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 1612
    .local v4, "searchViewTopBottomPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0199

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1614
    .local v2, "leftPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c019a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1616
    .local v3, "rightPadding":I
    sub-int v5, v4, v1

    .line 1617
    .local v5, "topPadding":I
    sub-int v0, v4, v1

    .line 1619
    .local v0, "bottomPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1620
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2, v8, v8, v8}, Landroid/widget/SearchView;->setPadding(IIII)V

    .line 1625
    .end local v0    # "bottomPadding":I
    .end local v1    # "defaultSearchViewTopBottomPadding":I
    .end local v2    # "leftPadding":I
    .end local v3    # "rightPadding":I
    .end local v4    # "searchViewTopBottomPadding":I
    .end local v5    # "topPadding":I
    :cond_2
    :goto_0
    return-void

    .line 1622
    .restart local v0    # "bottomPadding":I
    .restart local v1    # "defaultSearchViewTopBottomPadding":I
    .restart local v2    # "leftPadding":I
    .restart local v3    # "rightPadding":I
    .restart local v4    # "searchViewTopBottomPadding":I
    .restart local v5    # "topPadding":I
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2, v5, v3, v8}, Landroid/widget/SearchView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private configureSeletionTaskMode()V
    .locals 2

    .prologue
    .line 1657
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v1, 0x123

    if-ne v0, v1, :cond_1

    .line 1659
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->PICK:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectionTaskMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    .line 1665
    :goto_0
    return-void

    .line 1660
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2

    .line 1661
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->V_CARD:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectionTaskMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    goto :goto_0

    .line 1663
    :cond_2
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->DEFAULT:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectionTaskMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    goto :goto_0
.end method

.method private excuteSelectAllContacts(ZLcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V
    .locals 5
    .param p1, "isDataTaskRunning"    # Z
    .param p2, "aSelectionMode"    # Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 491
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    if-nez v1, :cond_0

    .line 492
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    .line 493
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    .line 494
    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    invoke-direct {v1, p0, p2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    .line 495
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 498
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_MaxCountVcardAttachment"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    .line 500
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v1, v2

    if-lt v1, v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getCount()I

    move-result v1

    if-lt v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e01bd

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 505
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    :cond_0
    return-void
.end method

.method private excuteSelectAllPick(Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V
    .locals 2
    .param p1, "aSelectionMode"    # Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    if-nez v0, :cond_0

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    .line 477
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskPick:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskPick:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 480
    :cond_0
    return-void
.end method

.method private excuteSelectAllVcard(Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V
    .locals 2
    .param p1, "aSelectionMode"    # Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    if-nez v0, :cond_0

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    .line 485
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 488
    :cond_0
    return-void
.end method

.method private isMaxAdded()Z
    .locals 3

    .prologue
    .line 1168
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 1169
    const/4 v0, 0x1

    .line 1171
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
    .line 809
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

    .line 811
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "dataInfo"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    .prologue
    .line 868
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 869
    .local v0, "dataId":Ljava/lang/String;
    iget-object v1, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 870
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

    .line 872
    .local v3, "selectedInfo":Ljava/lang/String;
    const-string v4, ";"

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 874
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
    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 881
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refreshSelectAllState(Z)V
    .locals 10
    .param p1, "flag"    # Z

    .prologue
    .line 1088
    iget-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsFromEmergencyMessage:Z

    if-eqz v7, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    .line 1092
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getCount()I

    move-result v5

    .line 1093
    .local v5, "totalNumOfContacts":I
    const-string v7, "InteractionGroupMemberPickerFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "totalNumOfContacts = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v4, 0x0

    .local v4, "position":I
    :goto_1
    if-ge v4, v5, :cond_a

    .line 1096
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1097
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v7, v4}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v6

    .line 1102
    .local v6, "uri":Landroid/net/Uri;
    :goto_2
    if-nez v6, :cond_4

    .line 1094
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1099
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {v7, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v6

    .line 1100
    .restart local v6    # "uri":Landroid/net/Uri;
    const-string v7, "InteractionGroupMemberPickerFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1105
    :cond_4
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1106
    .local v1, "id":J
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 1107
    .local v3, "partition":I
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_2

    .line 1110
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1111
    if-eqz p1, :cond_5

    .line 1112
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    .line 1113
    iget-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v7, :cond_5

    .line 1114
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    goto :goto_3

    .line 1118
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 1119
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMaxCountView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1120
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 1124
    :cond_6
    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    const v8, 0xffff

    if-eq v7, v8, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v8, v9

    if-ne v7, v8, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 1127
    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_8

    .line 1128
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMaxCountView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMaxCountView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1134
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_MaxCountVcardAttachment"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x14

    if-lt v7, v8, :cond_7

    sget-object v7, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_7

    sget-object v7, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1136
    sget-object v7, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1137
    const/4 v7, 0x0

    sput-object v7, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 1139
    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 1132
    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMaxCountView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1142
    :cond_9
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMaxCountView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1143
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 1150
    .end local v1    # "id":J
    .end local v3    # "partition":I
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_a
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMaxCountView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1151
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1152
    if-eqz p1, :cond_b

    .line 1153
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    .line 1154
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    .line 1156
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_MaxCountVcardAttachment"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x14

    if-lt v7, v8, :cond_0

    sget-object v7, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1158
    sget-object v7, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1159
    const/4 v7, 0x0

    sput-object v7, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0
.end method

.method private removeContact(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I

    .prologue
    .line 815
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

    .line 816
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onSelectedInfoChanged()V

    .line 818
    return-void
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I

    .prologue
    .line 839
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

    .line 840
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    return-void
.end method

.method private removeVcardFromSelectAll(JI)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "partition"    # I

    .prologue
    .line 834
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

    .line 835
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    return-void
.end method

.method private setDoneButton(I)V
    .locals 12
    .param p1, "size"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 844
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    .line 845
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 846
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getCount()I

    move-result v11

    if-lt p1, v11, :cond_0

    :goto_0
    invoke-interface {v9, v10, v7}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataSelected(IZ)V

    .line 859
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v7, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onSelected(I)V

    .line 860
    return-void

    :cond_0
    move v7, v8

    .line 846
    goto :goto_0

    .line 848
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getCount()I

    move-result v6

    .line 849
    .local v6, "resultCount":I
    const/4 v1, 0x0

    .line 850
    .local v1, "checkedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 851
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 852
    .local v3, "id":J
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v5

    .line 853
    .local v5, "partition":I
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 854
    add-int/lit8 v1, v1, 0x1

    .line 850
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 857
    .end local v3    # "id":J
    .end local v5    # "partition":I
    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    add-int/lit8 v10, v6, -0x1

    if-lt v1, v10, :cond_4

    :goto_3
    invoke-interface {v9, v1, v7}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataSelected(IZ)V

    goto :goto_1

    :cond_4
    move v7, v8

    goto :goto_3
.end method

.method private setSelectAllCheckedContacts(Z)Z
    .locals 13
    .param p1, "aIsSelectAll"    # Z

    .prologue
    .line 1012
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 1013
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    .line 1018
    .local v1, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1019
    .local v0, "CurrentSelectItem":I
    iget-boolean v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v10, :cond_0

    .line 1020
    const/4 v0, 0x0

    .line 1021
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1022
    .local v8, "totalNumOfContacts":I
    const/4 v7, 0x0

    .local v7, "position":I
    :goto_0
    if-ge v7, v8, :cond_9

    .line 1023
    const-wide/16 v4, -0x1

    .line 1025
    .local v4, "id":J
    :try_start_1
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v9

    .line 1027
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_1

    .line 1028
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1029
    :cond_1
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I
    :try_end_1
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 1038
    .local v6, "partition":I
    const/4 v10, 0x1

    :try_start_2
    iput-boolean v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    .line 1043
    if-eqz p1, :cond_7

    iget v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v10, v12

    if-lt v0, v10, :cond_7

    .line 1044
    if-ge v0, v8, :cond_2

    .line 1045
    const/4 v10, 0x0

    monitor-exit v11

    .line 1084
    .end local v4    # "id":J
    .end local v6    # "partition":I
    .end local v9    # "uri":Landroid/net/Uri;
    :goto_1
    return v10

    .line 1031
    .restart local v4    # "id":J
    :catch_0
    move-exception v3

    .line 1032
    .local v3, "e":Landroid/database/StaleDataException;
    const/4 v10, 0x1

    monitor-exit v11

    goto :goto_1

    .line 1083
    .end local v0    # "CurrentSelectItem":I
    .end local v1    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    .end local v3    # "e":Landroid/database/StaleDataException;
    .end local v4    # "id":J
    .end local v7    # "position":I
    .end local v8    # "totalNumOfContacts":I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 1033
    .restart local v0    # "CurrentSelectItem":I
    .restart local v1    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    .restart local v4    # "id":J
    .restart local v7    # "position":I
    .restart local v8    # "totalNumOfContacts":I
    :catch_1
    move-exception v3

    .line 1034
    .local v3, "e":Landroid/database/CursorIndexOutOfBoundsException;
    const/4 v10, 0x1

    :try_start_3
    monitor-exit v11

    goto :goto_1

    .line 1035
    .end local v3    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catch_2
    move-exception v3

    .line 1036
    .local v3, "e":Ljava/lang/IllegalStateException;
    const/4 v10, 0x1

    monitor-exit v11

    goto :goto_1

    .line 1046
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .restart local v6    # "partition":I
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_2
    if-eqz v9, :cond_3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1047
    const/4 v10, 0x0

    monitor-exit v11

    goto :goto_1

    .line 1048
    :cond_3
    if-nez v9, :cond_5

    .line 1022
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1050
    :cond_5
    if-gt v0, v8, :cond_4

    .line 1052
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSearchMode()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eq v0, v8, :cond_4

    .line 1055
    :cond_6
    const/4 v10, 0x1

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1059
    :cond_7
    if-eqz v9, :cond_4

    .line 1062
    :try_start_4
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 1064
    .local v2, "contactId":Ljava/lang/String;
    if-eqz p1, :cond_8

    .line 1065
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1066
    const/4 v10, 0x1

    invoke-virtual {p0, v9, v6, v10}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->pickContact(Landroid/net/Uri;IZ)V

    .line 1067
    add-int/lit8 v0, v0, 0x1

    .line 1068
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentSelectItem:I
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/StaleDataException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1077
    .end local v2    # "contactId":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 1078
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    const/4 v10, 0x1

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1073
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "contactId":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    :try_start_6
    iput-boolean v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    .line 1075
    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/database/StaleDataException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1079
    .end local v2    # "contactId":Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 1080
    .local v3, "e":Landroid/database/StaleDataException;
    const/4 v10, 0x1

    :try_start_7
    monitor-exit v11

    goto :goto_1

    .line 1083
    .end local v3    # "e":Landroid/database/StaleDataException;
    .end local v4    # "id":J
    .end local v6    # "partition":I
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_9
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1084
    const/4 v10, 0x1

    goto :goto_1
.end method

.method private setSelectAllCheckedPick(Z)Z
    .locals 15
    .param p1, "aIsSelectAll"    # Z

    .prologue
    .line 907
    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 908
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    .line 911
    .local v1, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 912
    .local v0, "CurrentSelectItem":I
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 914
    .local v9, "totalNumOfContacts":I
    const/4 v8, 0x0

    .local v8, "position":I
    :goto_0
    if-ge v8, v9, :cond_5

    .line 916
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMaxAdded()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 917
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v9, :cond_2

    .line 918
    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v5

    .line 919
    .local v5, "id":J
    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v7

    .line 921
    .local v7, "partition":I
    const-wide/16 v13, 0x0

    cmp-long v11, v5, v13

    if-nez v11, :cond_1

    .line 917
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 924
    :cond_1
    if-eqz p1, :cond_0

    .line 925
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-nez v11, :cond_0

    .line 926
    const/4 v11, 0x0

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 956
    .end local v4    # "i":I
    .end local v5    # "id":J
    .end local v7    # "partition":I
    :goto_2
    return v11

    .line 931
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {v11, v8}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v10

    .line 933
    .local v10, "uri":Landroid/net/Uri;
    if-nez v10, :cond_3

    .line 914
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 936
    :cond_3
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, "contactId":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 938
    .restart local v5    # "id":J
    invoke-virtual {v1, v8}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v7

    .line 940
    .restart local v7    # "partition":I
    if-eqz p1, :cond_4

    .line 941
    add-int/lit8 v0, v0, 0x1

    .line 942
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentSelectItem:I

    .line 943
    invoke-direct {p0, v5, v6, v7, v10}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->addContactFromSelectAll(JILandroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 948
    .end local v2    # "contactId":Ljava/lang/String;
    .end local v5    # "id":J
    .end local v7    # "partition":I
    .end local v10    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 949
    .local v3, "e":Ljava/lang/IllegalStateException;
    const/4 v11, 0x1

    :try_start_4
    monitor-exit v12

    goto :goto_2

    .line 954
    .end local v0    # "CurrentSelectItem":I
    .end local v1    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .end local v8    # "position":I
    .end local v9    # "totalNumOfContacts":I
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v11

    .line 946
    .restart local v0    # "CurrentSelectItem":I
    .restart local v1    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    .restart local v2    # "contactId":Ljava/lang/String;
    .restart local v5    # "id":J
    .restart local v7    # "partition":I
    .restart local v8    # "position":I
    .restart local v9    # "totalNumOfContacts":I
    .restart local v10    # "uri":Landroid/net/Uri;
    :cond_4
    :try_start_5
    invoke-direct {p0, v2, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 950
    .end local v2    # "contactId":Ljava/lang/String;
    .end local v5    # "id":J
    .end local v7    # "partition":I
    .end local v10    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v3

    .line 951
    .local v3, "e":Landroid/database/StaleDataException;
    const/4 v11, 0x1

    :try_start_6
    monitor-exit v12

    goto :goto_2

    .line 954
    .end local v3    # "e":Landroid/database/StaleDataException;
    :cond_5
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 956
    const/4 v11, 0x1

    goto :goto_2
.end method

.method private setSelectAllCheckedVcard(Z)Z
    .locals 14
    .param p1, "aIsSelectAll"    # Z

    .prologue
    .line 960
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 961
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    .line 964
    .local v1, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 965
    .local v0, "CurrentSelectItem":I
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 967
    .local v8, "totalNumOfContacts":I
    const/4 v7, 0x0

    .local v7, "position":I
    :goto_0
    if-ge v7, v8, :cond_5

    .line 969
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMaxAdded()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 970
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_2

    .line 971
    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 972
    .local v4, "id":J
    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 974
    .local v6, "partition":I
    const-wide/16 v12, 0x0

    cmp-long v10, v4, v12

    if-nez v10, :cond_1

    .line 970
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 977
    :cond_1
    if-eqz p1, :cond_0

    .line 978
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_0

    .line 979
    const/4 v10, 0x0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1008
    .end local v3    # "i":I
    .end local v4    # "id":J
    .end local v6    # "partition":I
    :goto_2
    return v10

    .line 985
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {v10, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v9

    .line 986
    .local v9, "uri":Landroid/net/Uri;
    if-nez v9, :cond_3

    .line 967
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 989
    :cond_3
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 990
    .restart local v4    # "id":J
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 992
    .restart local v6    # "partition":I
    if-eqz p1, :cond_4

    .line 993
    add-int/lit8 v0, v0, 0x1

    .line 994
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentSelectItem:I

    .line 995
    invoke-direct {p0, v4, v5, v6, v9}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->addContactFromSelectAll(JILandroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1000
    .end local v4    # "id":J
    .end local v6    # "partition":I
    .end local v9    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1001
    .local v2, "e":Ljava/lang/IllegalStateException;
    const/4 v10, 0x1

    :try_start_4
    monitor-exit v11

    goto :goto_2

    .line 1006
    .end local v0    # "CurrentSelectItem":I
    .end local v1    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .end local v7    # "position":I
    .end local v8    # "totalNumOfContacts":I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 998
    .restart local v0    # "CurrentSelectItem":I
    .restart local v1    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    .restart local v4    # "id":J
    .restart local v6    # "partition":I
    .restart local v7    # "position":I
    .restart local v8    # "totalNumOfContacts":I
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_4
    :try_start_5
    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->removeVcardFromSelectAll(JI)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1002
    .end local v4    # "id":J
    .end local v6    # "partition":I
    .end local v9    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 1003
    .local v2, "e":Landroid/database/StaleDataException;
    const/4 v10, 0x1

    :try_start_6
    monitor-exit v11

    goto :goto_2

    .line 1006
    .end local v2    # "e":Landroid/database/StaleDataException;
    :cond_5
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1008
    const/4 v10, 0x1

    goto :goto_2
.end method

.method private showMaxCountAlertDialog(Z)V
    .locals 8
    .param p1, "enableDone"    # Z

    .prologue
    .line 1175
    move v1, p1

    .line 1178
    .local v1, "flag":Z
    :try_start_0
    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSendingMSG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1179
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getResources()Landroid/content/res/Resources;

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

    new-instance v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    .line 1217
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 1218
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1219
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    .line 1223
    :goto_1
    return-void

    .line 1196
    :cond_1
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_2

    .line 1197
    const v0, 0x7f0e0357

    .line 1202
    .local v0, "alertStringId":I
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$3;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1220
    .end local v0    # "alertStringId":I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1200
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

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 707
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 704
    goto :goto_0

    :cond_3
    move v2, v1

    .line 705
    goto :goto_1
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 537
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 539
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 540
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDataRestrictedByCallingPackage(Z)V

    .line 543
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 544
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 510
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;-><init>(Landroid/content/Context;)V

    .line 511
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 512
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setDisplayPhotos(Z)V

    .line 513
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setQuickContactEnabled(Z)V

    .line 514
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 515
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setModifiedMemeberIds(Ljava/util/List;)V

    .line 516
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setExceptedAccounts(Ljava/util/List;)V

    .line 517
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setActionCode(I)V

    .line 518
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMode:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setMode(I)V

    .line 520
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsFromEmergencyMessage:Z

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setFromEmergencyMessage(Z)V

    .line 521
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getMode()I

    move-result v1

    .line 523
    .local v1, "mode":I
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v3, 0x122

    if-eq v2, v3, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 524
    :cond_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 531
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    .end local v1    # "mode":I
    :cond_1
    :goto_0
    return-object v0

    .line 528
    :cond_2
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 529
    .local v0, "adapter":Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 530
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public getGroupInfo()Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMode:I

    return v0
.end method

.method public getModifiedMemberIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;
    .locals 2
    .param p1, "contactDatas"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 778
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 780
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

    const/4 v8, 0x5

    const/16 v4, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 378
    const-string v2, "InteractionGroupMemberPickerFragment"

    const-string v3, "inflateView"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const v2, 0x7f040070

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 380
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090100

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 382
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 383
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 385
    :cond_0
    const v2, 0x7f090314

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 386
    const v2, 0x7f090314

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 389
    :cond_1
    const v2, 0x7f0901a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, "searchViewContainer":Landroid/view/View;
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v3, 0x122

    if-ne v2, v3, :cond_3

    .line 392
    if-eqz v0, :cond_2

    .line 393
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->configureSearchView()V

    .line 428
    return-object v1

    .line 395
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 398
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 401
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 404
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v8, v6, v8, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 405
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v7}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 406
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 407
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 408
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 409
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0e01c2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSearchQuery()V

    .line 412
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 413
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsRecreatedInstance:Z

    if-eqz v2, :cond_6

    .line 414
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 415
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 416
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v7}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 421
    :cond_5
    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsRecreatedInstance:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    if-eqz v2, :cond_2

    .line 422
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    sget-object v3, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->DE_SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllContacts(ZLcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    .line 423
    iput-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    goto :goto_0

    .line 419
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_1
.end method

.method public isSendingMSG()Z
    .locals 1

    .prologue
    .line 1579
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 285
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 287
    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 289
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 291
    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onCancelAction()V

    .line 747
    return-void
.end method

.method public onCancelChosen()V
    .locals 1

    .prologue
    .line 1385
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 1386
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 326
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 328
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsRecreatedInstance:Z

    .line 329
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsRecreatedInstance:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V

    .line 332
    :cond_0
    return-void

    .line 328
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f0401de

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 336
    const-string v1, "InteractionGroupMemberPickerFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActivity:Landroid/app/Activity;

    .line 341
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    .line 342
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    .line 345
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 347
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMultiSelectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsFromEmergencyMessage:Z

    if-nez v1, :cond_0

    .line 348
    invoke-virtual {p1, v5, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    .line 349
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    .line 350
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 353
    const v1, 0x7f0401f4

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 354
    .local v0, "marginView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 355
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f090439

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMaxCountView:Landroid/widget/TextView;

    .line 372
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 374
    .end local v0    # "marginView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "dataInfo"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "checked"    # Z
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1368
    const-wide/16 v0, 0x0

    .line 1371
    .local v0, "dataid":J
    :try_start_0
    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    .line 1373
    if-eqz p3, :cond_0

    .line 1374
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    .line 1376
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Z)V

    .line 1381
    return-void

    .line 1378
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onDeSelectAllClicked()V
    .locals 2

    .prologue
    .line 1642
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v1, 0x123

    if-ne v0, v1, :cond_1

    .line 1644
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->DE_SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllPick(Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    .line 1651
    :goto_0
    return-void

    .line 1645
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2

    .line 1646
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->DE_SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllVcard(Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    goto :goto_0

    .line 1648
    :cond_2
    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->DE_SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllContacts(ZLcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDestroy()V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;

    if-eqz v0, :cond_1

    .line 313
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    if-eqz v0, :cond_2

    .line 316
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskPick:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;

    if-eqz v0, :cond_3

    .line 320
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskPick:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;

    .line 322
    :cond_3
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1227
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 1229
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v3, 0x123

    if-ne v2, v3, :cond_3

    .line 1232
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v2, :cond_1

    .line 1233
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    .line 1236
    .local v1, "lSelectionMode":Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllPick(Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    .line 1252
    .end local v1    # "lSelectionMode":Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;
    :cond_1
    :goto_1
    return-void

    .line 1233
    :cond_2
    sget-object v1, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->DE_SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    goto :goto_0

    .line 1239
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1240
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v2, :cond_1

    .line 1241
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    .line 1244
    .local v0, "lIsMultiSelect":Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;
    :goto_2
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_6

    .line 1245
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllVcard(Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    goto :goto_1

    .line 1241
    .end local v0    # "lIsMultiSelect":Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;
    :cond_5
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->DE_SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    goto :goto_2

    .line 1247
    .restart local v0    # "lIsMultiSelect":Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;
    :cond_6
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllContacts(ZLcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    goto :goto_1
.end method

.method protected onItemClick(IJ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 556
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v5, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 562
    .local v4, "uri":Landroid/net/Uri;
    :goto_0
    if-nez v4, :cond_1

    .line 630
    :goto_1
    return-void

    .line 559
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 560
    .restart local v4    # "uri":Landroid/net/Uri;
    const-string v5, "InteractionGroupMemberPickerFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "contactId":Ljava/lang/String;
    const-string v5, "InteractionGroupMemberPickerFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contactId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 568
    .local v1, "partition":I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 569
    .local v2, "targetId":J
    const-string v5, "InteractionGroupMemberPickerFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "targetId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    sparse-switch v5, :sswitch_data_0

    .line 625
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid or unhandled action code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 575
    :sswitch_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 576
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->removeContact(Ljava/lang/String;I)V

    .line 577
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 629
    :goto_2
    const-string v5, "InteractionGroupMemberPickerFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onItemClick: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 579
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMaxAdded()Z

    move-result v5

    if-nez v5, :cond_3

    .line 581
    invoke-virtual {p0, v4, v1, v8}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->pickContact(Landroid/net/Uri;IZ)V

    .line 582
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 584
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 585
    invoke-direct {p0, v9}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V

    goto :goto_2

    .line 593
    :sswitch_1
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 594
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->removeContact(Ljava/lang/String;I)V

    .line 595
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 597
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMaxAdded()Z

    move-result v5

    if-nez v5, :cond_5

    .line 598
    invoke-direct {p0, v0, v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 599
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 602
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 603
    invoke-direct {p0, v9}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V

    goto :goto_2

    .line 609
    :sswitch_2
    iget-boolean v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsFromEmergencyMessage:Z

    if-eqz v5, :cond_8

    .line 610
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 611
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_2

    .line 613
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMaxAdded()Z

    move-result v5

    if-nez v5, :cond_7

    .line 614
    invoke-virtual {p0, v4, v1, v8}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->pickContact(Landroid/net/Uri;IZ)V

    goto/16 :goto_2

    .line 616
    :cond_7
    invoke-direct {p0, v9}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V

    goto/16 :goto_2

    .line 620
    :cond_8
    invoke-virtual {p0, v4, v1, v8}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->pickContact(Landroid/net/Uri;IZ)V

    goto/16 :goto_2

    .line 570
    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_1
        0xf0 -> :sswitch_1
        0x122 -> :sswitch_2
        0x123 -> :sswitch_1
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
    .line 549
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 551
    return-void
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
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x0

    .line 634
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 636
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 637
    if-nez p2, :cond_1

    .line 638
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v2, "Data is NULL"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->refreshSelectAllState(Z)V

    .line 650
    :cond_0
    return-void

    .line 640
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->configureEmptyView(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 644
    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->configureEmptyView(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 295
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onPause()V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFocusState:Z

    .line 298
    const-string v0, "InteractionGroupMemberPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFocusState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFocusState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    goto :goto_0
.end method

.method public onPickerResult()V
    .locals 2

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    if-eqz v0, :cond_0

    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDoneButtonClicked:Z

    .line 743
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickGroupDataAction(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    .line 723
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 729
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;J)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataid"    # J

    .prologue
    .line 735
    return-void
.end method

.method public onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "flag"    # Z

    .prologue
    const/4 v7, 0x0

    .line 750
    const-string v1, "InteractionGroupMemberPickerFragment"

    const-string v2, " === onQueryCompleted === "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->nUri:Landroid/net/Uri;

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;-><init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V

    .line 754
    .local v0, "contactDatas":Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 755
    iget v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 756
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Z)V

    .line 768
    :goto_0
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    .line 774
    :cond_0
    :goto_1
    return-void

    .line 759
    :cond_1
    const/4 v6, 0x0

    .line 760
    .local v6, "bHideSetPrimary":Z
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v2, 0x122

    if-ne v1, v2, :cond_2

    .line 761
    const/4 v6, 0x1

    .line 764
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    move-object v2, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 770
    .end local v6    # "bHideSetPrimary":Z
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

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
    .line 247
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 249
    const-string v0, "selectIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 250
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    const-string v0, "customSearchQueryString"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "searchFocusState"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFocusState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    const-string v0, "showMaxCountAlertDialog"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    const-string v0, "IsDataQueryTaskRunning"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    const-string v0, "IsDataQueryTaskRunning2"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    const-string v0, "sendMessageForATT"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    return-void
.end method

.method public onSelectAllClicked()V
    .locals 2

    .prologue
    .line 1630
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v1, 0x123

    if-ne v0, v1, :cond_1

    .line 1632
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllPick(Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    .line 1638
    :goto_0
    return-void

    .line 1633
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2

    .line 1634
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllVcard(Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    goto :goto_0

    .line 1636
    :cond_2
    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllContacts(ZLcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    goto :goto_0
.end method

.method public onSelectAllInfoChanged()V
    .locals 3

    .prologue
    .line 796
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 797
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 798
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 799
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v0, :cond_1

    .line 800
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->refreshSelectAllState(Z)V

    .line 805
    :cond_0
    :goto_0
    monitor-exit v1

    .line 806
    return-void

    .line 801
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentSelectItem:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDoneButton(I)V

    .line 803
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->refreshSelectAllState(Z)V

    goto :goto_0

    .line 805
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
    .line 785
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onPickerResult()V

    .line 793
    :goto_0
    return-void

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 790
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDoneButton(I)V

    .line 792
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->refreshSelectAllState(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 1583
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onStop()V

    .line 1584
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1585
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 1586
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1588
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1589
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1591
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 1595
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_MaxCountVcardAttachment"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_3

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    .line 1597
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1598
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1599
    :cond_2
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 1601
    :cond_3
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 710
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onInteractionPickerAction(Landroid/net/Uri;)V

    .line 711
    return-void
.end method

.method public pickContact(Landroid/net/Uri;IZ)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "partition"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 714
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "contactId":Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setFromSelectall(Z)V

    .line 716
    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;

    .line 717
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;

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

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 718
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 264
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "restoreSavedState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 267
    if-nez p1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string v0, "selectIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 271
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    .line 272
    const-string v0, "maxRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    .line 273
    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    .line 274
    const-string v0, "customSearchQueryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 275
    const-string v0, "searchFocusState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFocusState:Z

    .line 276
    const-string v0, "showMaxCountAlertDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    .line 277
    const-string v0, "IsDataQueryTaskRunning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    .line 278
    const-string v0, "IsDataQueryTaskRunning2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    .line 279
    const-string v0, "sendMessageForATT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    goto :goto_0
.end method

.method public setExceptedAccounts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "exceptedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-eqz p1, :cond_0

    .line 241
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    .line 243
    :cond_0
    return-void
.end method

.method public setFromEmergencyMessage(Z)V
    .locals 0
    .param p1, "isFromEmergencyMessage"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsFromEmergencyMessage:Z

    .line 227
    return-void
.end method

.method public setFromSelectall(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1164
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    .line 1165
    return-void
.end method

.method public setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 222
    return-void
.end method

.method public setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 206
    return-void
.end method

.method public setMMSinformation(III)V
    .locals 0
    .param p1, "ActionCode"    # I
    .param p2, "LimitedCount"    # I
    .param p3, "CurrentCount"    # I

    .prologue
    .line 1563
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    .line 1564
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    .line 1565
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    .line 1566
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->configureSeletionTaskMode()V

    .line 1567
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMode:I

    .line 214
    return-void
.end method

.method public setModifiedMemberIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "modifiedMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 235
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    .line 237
    :cond_0
    return-void
.end method

.method public setSearchQuery()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 471
    return-void
.end method

.method public setSendingMSG(Z)V
    .locals 0
    .param p1, "FromMMS"    # Z

    .prologue
    .line 1572
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    .line 1573
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 9
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 655
    if-nez p2, :cond_0

    .line 656
    const-string v4, "InteractionGroupMemberPickerFragment"

    const-string v5, "Data is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    .line 663
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    if-nez v0, :cond_1

    .line 699
    :goto_1
    return-void

    .line 658
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 659
    .local v1, "count":I
    const-string v4, "InteractionGroupMemberPickerFragment"

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

    .line 668
    .end local v1    # "count":I
    .restart local v0    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->areAllPartitionsEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 670
    :cond_2
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showNoMatchesView(Z)V

    .line 673
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMultiSelectEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsFromEmergencyMessage:Z

    if-nez v4, :cond_3

    .line 674
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 698
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 678
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f090437

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 679
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09017e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 681
    .local v2, "progress":Landroid/widget/ProgressBar;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showNoMatchesView(Z)V

    .line 684
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMultiSelectEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsFromEmergencyMessage:Z

    if-nez v4, :cond_5

    .line 685
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 688
    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 689
    const v4, 0x7f0e01a0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 690
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 692
    :cond_6
    const v4, 0x7f0e02de

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 693
    const v4, 0x8000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 694
    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2
.end method
