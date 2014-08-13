.class public Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "InteractionPickerRCSeFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;"
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

.field private static final KEY_SELECT_ALL_ENABLED:Ljava/lang/String; = "SelectAllEnabled"

.field private static final KEY_SELECT_IDS:Ljava/lang/String; = "selectIds"

.field private static final KEY_SEND_MSG:Ljava/lang/String; = "msg_dialog"

.field private static final KEY_SHOW_MAX_COUNT:Ljava/lang/String; = "showMaxCountAlertDialog"

.field private static final KEY_SPEED_DIAL:Ljava/lang/String; = "from_speed_dial"

.field private static final MAX_QUERY_STRING_LENGTH:I = 0x3e8

.field private static final NO_LIMIT:I = 0xffff

.field private static final SOFT_INPUT_MODE_DEFAULT:I = 0x31

.field public static final STRING_TOKENIZER:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "InteractionPickerRCSeFragment"


# instance fields
.field private final RESTART_TUTORIAL_MODE:I

.field private dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;

.field private mActionCode:I

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCurrentCount:I

.field private mCurrentSelectItem:I

.field private mCustomSearchQueryString:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

.field public mExceptedRcsList:Ljava/lang/String;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFocusState:Z

.field private mFromSelectAll:Z

.field protected mHasPhoneData:Z

.field private mHeaderContainer:Landroid/widget/FrameLayout;

.field private mHeaderView:Landroid/view/View;

.field private mIsDataQueryTaskRunning:Z

.field private mIsDataQueryTaskRunning2:Z

.field private mIsDoneButtonClicked:Z

.field private mIsFragmentShowing:Z

.field private mIsRecreatedInstance:Z

.field private mIsSelectAllRunning:Z

.field private mIsSendingMSG:Z

.field private mIsTutorialMode:Z

.field private mLimitedCount:I

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field private mMaxCountView:Landroid/widget/TextView;

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSearchViewLayout:Landroid/widget/LinearLayout;

.field private mSelectAllEnabled:Z

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

.field private selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

.field private selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;

.field private showMaxDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 129
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSelectAllRunning:Z

    .line 131
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDoneButtonClicked:Z

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 139
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFocusState:Z

    .line 141
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mShowMaxCountDialog:Z

    .line 145
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHasPhoneData:Z

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSoftInputMode:I

    .line 186
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSendingMSG:Z

    .line 188
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsTutorialMode:Z

    .line 190
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->RESTART_TUTORIAL_MODE:I

    .line 192
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mExceptedRcsList:Ljava/lang/String;

    .line 195
    const-string v0, "InteractionPickerRCSeFragment"

    const-string v1, "InteractionPickerRCSeFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setPhotoLoaderEnabled(Z)V

    .line 197
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 199
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setVisibleScrollbarEnabled(Z)V

    .line 200
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 202
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setQuickContactEnabled(Z)V

    .line 203
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setDirectorySearchMode(I)V

    .line 205
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSweepActionEnabled(Z)V

    .line 208
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setFakeQueryModeEnabled(Z)V

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFromSelectAll:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsFragmentShowing:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->nUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSelectAllCheckedVcard(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxCountAlertDialog(Z)V

    return-void
.end method

.method static synthetic access$1602(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSelectAllRunning:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDoneButtonClicked:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDoneButtonClicked:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning2:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSelectAllCheckedContacts(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mShowMaxCountDialog:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setDoneButton(I)V

    return-void
.end method

.method private addContactFromSelectAll(JILandroid/net/Uri;)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "partition"    # I
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1205
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

    .line 1206
    .local v0, "keyString":Ljava/lang/String;
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1207
    .local v1, "selectedLookup":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    return-void
.end method

.method private addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1197
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

    .line 1198
    .local v0, "keyString":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, "selectedLookup":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onSelectedInfoChanged()V

    .line 1202
    return-void
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 6
    .param p1, "dataInfo"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "dataid"    # J

    .prologue
    .line 1175
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1176
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

    .line 1183
    .local v1, "keyString":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, "dataString":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSpeedDial:Z

    if-eqz v2, :cond_2

    .line 1187
    invoke-virtual {p0, p3, p4, p5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V

    .line 1191
    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsTutorialMode:Z

    if-eqz v2, :cond_0

    .line 1192
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0436

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1194
    :cond_0
    return-void

    .line 1181
    .end local v0    # "dataString":Ljava/lang/String;
    .end local v1    # "keyString":Ljava/lang/String;
    :cond_1
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

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "keyString":Ljava/lang/String;
    goto :goto_0

    .line 1190
    .restart local v0    # "dataString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onSelectedInfoChanged()V

    goto :goto_1
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 6
    .param p1, "dataInfo"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "fromSelectAll"    # Z

    .prologue
    .line 1145
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1146
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

    .line 1153
    .local v1, "keyString":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, "dataString":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    if-eqz p4, :cond_2

    .line 1158
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onSelectAllInfoChanged()V

    .line 1167
    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsTutorialMode:Z

    if-eqz v2, :cond_0

    .line 1168
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0436

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1170
    :cond_0
    return-void

    .line 1151
    .end local v0    # "dataString":Ljava/lang/String;
    .end local v1    # "keyString":Ljava/lang/String;
    :cond_1
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

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "keyString":Ljava/lang/String;
    goto :goto_0

    .line 1161
    .restart local v0    # "dataString":Ljava/lang/String;
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSpeedDial:Z

    if-eqz v2, :cond_3

    .line 1162
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V

    goto :goto_1

    .line 1165
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onSelectedInfoChanged()V

    goto :goto_1
.end method

.method private configureEmptyView(Z)V
    .locals 5
    .param p1, "isEmpty"    # Z

    .prologue
    const v4, 0x7f0902e5

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1790
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1829
    :cond_0
    :goto_0
    return-void

    .line 1797
    :cond_1
    if-eqz p1, :cond_4

    .line 1799
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsRecreatedInstance:Z

    if-nez v0, :cond_3

    .line 1800
    const/16 v0, 0x30

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSoftInputMode:I

    .line 1808
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSoftInputMode()V

    .line 1810
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1811
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1813
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1815
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1816
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1820
    :cond_2
    if-eqz p1, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1824
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1826
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setDoneButton(I)V

    goto :goto_0

    .line 1803
    :cond_3
    const/16 v0, 0x31

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSoftInputMode:I

    goto :goto_1

    .line 1806
    :cond_4
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSoftInputMode:I

    goto :goto_1

    :cond_5
    move v0, v2

    .line 1810
    goto :goto_2

    :cond_6
    move v2, v1

    .line 1811
    goto :goto_3
.end method

.method private configureSearchView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1894
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 1895
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    .line 1896
    :cond_0
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->sIsTwoPaneMode:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v6, :cond_2

    .line 1897
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c011e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1899
    .local v1, "defaultSearchViewTopBottomPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c011f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 1902
    .local v4, "searchViewTopBottomPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0199

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1904
    .local v2, "leftPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c019a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1906
    .local v3, "rightPadding":I
    sub-int v5, v4, v1

    .line 1907
    .local v5, "topPadding":I
    sub-int v0, v4, v1

    .line 1909
    .local v0, "bottomPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1910
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2, v8, v8, v8}, Landroid/widget/SearchView;->setPadding(IIII)V

    .line 1915
    .end local v0    # "bottomPadding":I
    .end local v1    # "defaultSearchViewTopBottomPadding":I
    .end local v2    # "leftPadding":I
    .end local v3    # "rightPadding":I
    .end local v4    # "searchViewTopBottomPadding":I
    .end local v5    # "topPadding":I
    :cond_2
    :goto_0
    return-void

    .line 1912
    .restart local v0    # "bottomPadding":I
    .restart local v1    # "defaultSearchViewTopBottomPadding":I
    .restart local v2    # "leftPadding":I
    .restart local v3    # "rightPadding":I
    .restart local v4    # "searchViewTopBottomPadding":I
    .restart local v5    # "topPadding":I
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2, v5, v3, v0}, Landroid/widget/SearchView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private excuteSelectAllContacts(Z)V
    .locals 4
    .param p1, "isDataTaskRunning"    # Z

    .prologue
    const/4 v2, 0x1

    .line 613
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSelectAllRunning:Z

    if-nez v0, :cond_0

    .line 614
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSelectAllRunning:Z

    .line 615
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning2:Z

    .line 616
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

    new-array v1, v2, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 620
    :cond_0
    return-void
.end method

.method private excuteSelectAllVcard()V
    .locals 2

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSelectAllRunning:Z

    if-nez v0, :cond_0

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSelectAllRunning:Z

    .line 607
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 610
    :cond_0
    return-void
.end method

.method private isMaxAdded()Z
    .locals 3

    .prologue
    .line 1475
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mLimitedCount:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentCount:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 1476
    const/4 v0, 0x1

    .line 1478
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    .line 1118
    int-to-long v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, "keyString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1124
    .end local v0    # "keyString":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "keyString":Ljava/lang/String;
    goto :goto_0
.end method

.method private makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;
    .locals 8
    .param p1, "dataInfo"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    .prologue
    .line 1236
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 1237
    .local v0, "dataId":Ljava/lang/String;
    iget-object v1, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 1238
    .local v1, "displayName":Ljava/lang/String;
    iget-object v5, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    const-string v6, ","

    const-string v7, "P"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    const-string v7, "W"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1239
    .local v4, "selectedInfo":Ljava/lang/String;
    iget-object v2, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->rawContactId:Ljava/lang/String;

    .line 1241
    .local v2, "rawContactId":Ljava/lang/String;
    const-string v5, ";"

    invoke-direct {p0, v0, v4, v1, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1244
    .local v3, "result":Ljava/lang/String;
    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    const/16 v6, 0x118

    if-ne v5, v6, :cond_0

    .line 1245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1249
    :cond_0
    return-object v3
.end method

.method private margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "args1"    # Ljava/lang/String;
    .param p2, "args2"    # Ljava/lang/String;
    .param p3, "args3"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;

    .prologue
    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1256
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refreshSelectAllState(Z)V
    .locals 14
    .param p1, "flag"    # Z

    .prologue
    const/4 v13, 0x1

    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 1409
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;

    .line 1410
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getCount()I

    move-result v7

    .line 1411
    .local v7, "totalNumOfContacts":I
    const/4 v6, 0x0

    .line 1412
    .local v6, "showMoreItemCount":I
    const/4 v5, 0x0

    .local v5, "position":I
    :goto_0
    if-ge v5, v7, :cond_8

    .line 1413
    const/4 v3, 0x0

    .line 1414
    .local v3, "isShowMoreItem":Z
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->isGalSearchShowMore(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1415
    const/4 v3, 0x1

    .line 1416
    add-int/lit8 v6, v6, 0x1

    .line 1418
    :cond_0
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1419
    .local v1, "id":J
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getPartitionForPosition(I)I

    move-result v4

    .line 1421
    .local v4, "partition":I
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-nez v8, :cond_2

    .line 1412
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1425
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v4, v9}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v3, :cond_1

    .line 1428
    if-eqz p1, :cond_3

    .line 1429
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning:Z

    .line 1430
    iget-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v8, :cond_3

    .line 1431
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning2:Z

    goto :goto_1

    .line 1435
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCustomSearchQueryString:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 1436
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mMaxCountView:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1437
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v8, v11}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1468
    .end local v1    # "id":J
    .end local v3    # "isShowMoreItem":Z
    .end local v4    # "partition":I
    :cond_4
    :goto_2
    return-void

    .line 1441
    .restart local v1    # "id":J
    .restart local v3    # "isShowMoreItem":Z
    .restart local v4    # "partition":I
    :cond_5
    iget v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mLimitedCount:I

    const v9, 0xffff

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mLimitedCount:I

    iget v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentCount:I

    sub-int/2addr v9, v10

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 1444
    sub-int v8, v7, v6

    iget v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mLimitedCount:I

    iget v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentCount:I

    sub-int/2addr v9, v10

    if-le v8, v9, :cond_6

    .line 1445
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mMaxCountView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1446
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mMaxCountView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1451
    :goto_3
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v8, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 1449
    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mMaxCountView:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1454
    :cond_7
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mMaxCountView:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1455
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v8, v11}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 1461
    .end local v1    # "id":J
    .end local v3    # "isShowMoreItem":Z
    .end local v4    # "partition":I
    :cond_8
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mMaxCountView:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1462
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v8, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1464
    if-eqz p1, :cond_4

    .line 1465
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning:Z

    .line 1466
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning2:Z

    goto :goto_2
.end method

.method private removeContact(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I

    .prologue
    .line 1131
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

    .line 1132
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onSelectedInfoChanged()V

    .line 1134
    return-void
.end method

.method private removeContact(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    .line 1137
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

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onSelectedInfoChanged()V

    .line 1140
    return-void
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I

    .prologue
    .line 1216
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

    .line 1217
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    return-void
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    .line 1221
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

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    return-void
.end method

.method private removeVcardFromSelectAll(JI)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "partition"    # I

    .prologue
    .line 1211
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

    .line 1212
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    return-void
.end method

.method private setDoneButton(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onSelected(I)V

    .line 1228
    return-void
.end method

.method private setSelectAllCheckedContacts(Z)Z
    .locals 21
    .param p1, "isChecked"    # Z

    .prologue
    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1324
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;

    .line 1328
    .local v3, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 1329
    .local v2, "CurrentSelectItem":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v15, :cond_0

    .line 1330
    const/4 v2, 0x0

    .line 1331
    :cond_0
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getCount()I

    move-result v13

    .line 1332
    .local v13, "totalNumOfContacts":I
    const/4 v12, 0x0

    .line 1333
    .local v12, "showMoreItemCount":I
    const/4 v11, 0x0

    .local v11, "position":I
    :goto_0
    if-ge v11, v13, :cond_b

    .line 1334
    const-wide/16 v7, -0x1

    .line 1335
    .local v7, "id":J
    const/4 v9, 0x0

    .line 1336
    .local v9, "isShowMoreItem":Z
    invoke-virtual {v3, v11}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->isGalSearchShowMore(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-eqz v15, :cond_1

    .line 1337
    const/4 v9, 0x1

    .line 1338
    add-int/lit8 v12, v12, 0x1

    .line 1342
    :cond_1
    :try_start_1
    invoke-virtual {v3, v11}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getContactUri(I)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    .line 1350
    .local v14, "uri":Landroid/net/Uri;
    if-eqz v14, :cond_2

    .line 1351
    :try_start_2
    invoke-virtual {v3, v11}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 1352
    :cond_2
    invoke-virtual {v3, v11}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getPartitionForPosition(I)I

    move-result v10

    .line 1353
    .local v10, "partition":I
    invoke-virtual {v3, v11}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v5

    .line 1354
    .local v5, "displayName":Ljava/lang/String;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFromSelectAll:Z

    .line 1359
    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mLimitedCount:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentCount:I

    move/from16 v17, v0

    sub-int v15, v15, v17

    if-lt v2, v15, :cond_8

    .line 1360
    sub-int v15, v13, v12

    if-ge v2, v15, :cond_3

    .line 1361
    const/4 v15, 0x0

    monitor-exit v16

    .line 1405
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v7    # "id":J
    .end local v9    # "isShowMoreItem":Z
    .end local v10    # "partition":I
    .end local v14    # "uri":Landroid/net/Uri;
    :goto_1
    return v15

    .line 1343
    .restart local v7    # "id":J
    .restart local v9    # "isShowMoreItem":Z
    :catch_0
    move-exception v6

    .line 1344
    .local v6, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1345
    const/4 v15, 0x1

    monitor-exit v16

    goto :goto_1

    .line 1404
    .end local v2    # "CurrentSelectItem":I
    .end local v3    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .end local v7    # "id":J
    .end local v9    # "isShowMoreItem":Z
    .end local v11    # "position":I
    .end local v12    # "showMoreItemCount":I
    .end local v13    # "totalNumOfContacts":I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15

    .line 1346
    .restart local v2    # "CurrentSelectItem":I
    .restart local v3    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    .restart local v7    # "id":J
    .restart local v9    # "isShowMoreItem":Z
    .restart local v11    # "position":I
    .restart local v12    # "showMoreItemCount":I
    .restart local v13    # "totalNumOfContacts":I
    :catch_1
    move-exception v6

    .line 1347
    .local v6, "e":Landroid/database/StaleDataException;
    :try_start_3
    invoke-virtual {v6}, Landroid/database/StaleDataException;->printStackTrace()V

    .line 1348
    const/4 v15, 0x1

    monitor-exit v16

    goto :goto_1

    .line 1362
    .end local v6    # "e":Landroid/database/StaleDataException;
    .restart local v5    # "displayName":Ljava/lang/String;
    .restart local v10    # "partition":I
    .restart local v14    # "uri":Landroid/net/Uri;
    :cond_3
    if-eqz v14, :cond_4

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 1363
    const/4 v15, 0x0

    monitor-exit v16

    goto :goto_1

    .line 1364
    :cond_4
    if-nez v14, :cond_6

    .line 1333
    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1366
    :cond_6
    sub-int v15, v13, v12

    if-gt v2, v15, :cond_5

    .line 1368
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSearchMode()Z

    move-result v15

    if-eqz v15, :cond_7

    sub-int v15, v13, v12

    if-eq v2, v15, :cond_5

    .line 1371
    :cond_7
    const/4 v15, 0x1

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1375
    :cond_8
    if-eqz v14, :cond_5

    if-nez v9, :cond_5

    .line 1378
    :try_start_4
    invoke-virtual {v14}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 1380
    .local v4, "contactId":Ljava/lang/String;
    if-nez p1, :cond_9

    .line 1381
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 1382
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10, v15}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->pickContact(Landroid/net/Uri;IZ)V

    .line 1383
    add-int/lit8 v2, v2, 0x1

    .line 1384
    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentSelectItem:I
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1398
    .end local v4    # "contactId":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 1399
    .local v6, "e":Ljava/lang/IllegalStateException;
    const/4 v15, 0x1

    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1389
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .restart local v4    # "contactId":Ljava/lang/String;
    :cond_9
    const/4 v15, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFromSelectAll:Z

    .line 1391
    int-to-long v0, v10

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v15, v17, v19

    if-nez v15, :cond_a

    .line 1392
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1400
    .end local v4    # "contactId":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 1401
    .local v6, "e":Landroid/database/StaleDataException;
    const/4 v15, 0x1

    :try_start_7
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 1394
    .end local v6    # "e":Landroid/database/StaleDataException;
    .restart local v4    # "contactId":Ljava/lang/String;
    :cond_a
    :try_start_8
    invoke-virtual {v3, v11}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v15}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->removeContactFromSelectAll(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 1404
    .end local v4    # "contactId":Ljava/lang/String;
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v7    # "id":J
    .end local v9    # "isShowMoreItem":Z
    .end local v10    # "partition":I
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_b
    :try_start_9
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1405
    const/4 v15, 0x1

    goto/16 :goto_1
.end method

.method private setSelectAllCheckedVcard(Z)Z
    .locals 14
    .param p1, "isChecked"    # Z

    .prologue
    .line 1266
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 1267
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;

    .line 1270
    .local v1, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1271
    .local v0, "CurrentSelectItem":I
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1273
    .local v8, "totalNumOfContacts":I
    const/4 v7, 0x0

    .local v7, "position":I
    :goto_0
    if-ge v7, v8, :cond_6

    .line 1275
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isMaxAdded()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1276
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_2

    .line 1277
    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1278
    .local v4, "id":J
    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 1280
    .local v6, "partition":I
    const-wide/16 v12, 0x0

    cmp-long v10, v4, v12

    if-nez v10, :cond_1

    .line 1276
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1283
    :cond_1
    if-nez p1, :cond_0

    .line 1284
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v6, v12}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_0

    .line 1286
    const/4 v10, 0x0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1319
    .end local v3    # "i":I
    .end local v4    # "id":J
    .end local v6    # "partition":I
    :goto_2
    return v10

    .line 1292
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isLegacyCompatibilityMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1293
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v10, v7}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v9

    .line 1297
    .local v9, "uri":Landroid/net/Uri;
    :goto_3
    if-nez v9, :cond_4

    .line 1273
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1295
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;

    invoke-virtual {v10, v7}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v9

    .restart local v9    # "uri":Landroid/net/Uri;
    goto :goto_3

    .line 1300
    :cond_4
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1301
    .restart local v4    # "id":J
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 1303
    .restart local v6    # "partition":I
    if-nez p1, :cond_5

    .line 1304
    add-int/lit8 v0, v0, 0x1

    .line 1305
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentSelectItem:I

    .line 1306
    invoke-direct {p0, v4, v5, v6, v9}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->addContactFromSelectAll(JILandroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1311
    .end local v4    # "id":J
    .end local v6    # "partition":I
    .end local v9    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1312
    .local v2, "e":Ljava/lang/IllegalStateException;
    const/4 v10, 0x1

    :try_start_4
    monitor-exit v11

    goto :goto_2

    .line 1317
    .end local v0    # "CurrentSelectItem":I
    .end local v1    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .end local v7    # "position":I
    .end local v8    # "totalNumOfContacts":I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 1309
    .restart local v0    # "CurrentSelectItem":I
    .restart local v1    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    .restart local v4    # "id":J
    .restart local v6    # "partition":I
    .restart local v7    # "position":I
    .restart local v8    # "totalNumOfContacts":I
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_5
    :try_start_5
    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->removeVcardFromSelectAll(JI)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1313
    .end local v4    # "id":J
    .end local v6    # "partition":I
    .end local v9    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 1314
    .local v2, "e":Landroid/database/StaleDataException;
    const/4 v10, 0x1

    :try_start_6
    monitor-exit v11

    goto :goto_2

    .line 1317
    .end local v2    # "e":Landroid/database/StaleDataException;
    :cond_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1319
    const/4 v10, 0x1

    goto :goto_2
.end method

.method private showMaxCountAlertDialog(Z)V
    .locals 8
    .param p1, "enableDone"    # Z

    .prologue
    .line 1482
    move v1, p1

    .line 1485
    .local v1, "flag":Z
    :try_start_0
    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSendingMSG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1486
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getResources()Landroid/content/res/Resources;

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

    new-instance v4, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxDialog:Landroid/app/AlertDialog;

    .line 1539
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 1540
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1541
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mShowMaxCountDialog:Z

    .line 1545
    :goto_1
    return-void

    .line 1501
    :cond_1
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    const/16 v3, 0x126

    if-ne v2, v3, :cond_2

    .line 1502
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10000c

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mLimitedCount:I

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentCount:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mLimitedCount:I

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentCount:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$4;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$4;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1542
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1518
    :cond_2
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentCount:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_3

    .line 1519
    const v0, 0x7f0e0357

    .line 1524
    .local v0, "alertStringId":I
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mLimitedCount:I

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentCount:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$5;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$5;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1522
    .end local v0    # "alertStringId":I
    :cond_3
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

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 916
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 919
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 916
    goto :goto_0

    :cond_3
    move v2, v1

    .line 917
    goto :goto_1
.end method


# virtual methods
.method public clearCustomSearchResult()V
    .locals 3

    .prologue
    .line 600
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 602
    return-void
.end method

.method public clearListViewFocus()V
    .locals 3

    .prologue
    .line 854
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 855
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->clearFocus()V

    .line 861
    :cond_0
    return-void
.end method

.method public clearSelectedArray()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1055
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->cancel(Z)Z

    .line 1057
    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

    if-eqz v0, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->cancel(Z)Z

    .line 1061
    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

    .line 1062
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSelectAllRunning:Z

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1065
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 1066
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1067
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSelectAllEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1068
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->refreshSelectAllState(Z)V

    .line 1071
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 1072
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 683
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 686
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDataRestrictedByCallingPackage(Z)V

    .line 687
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 688
    return-void
.end method

.method public createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Lcom/android/contacts/list/ProfileAndContactsLoader;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createCursorLoaderToSupportSimContacts()Lcom/sec/android/app/contacts/ContactCursorLoader;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 10

    .prologue
    const/16 v9, 0x125

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 624
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isLegacyCompatibilityMode()Z

    move-result v6

    if-nez v6, :cond_7

    .line 625
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;-><init>(Landroid/content/Context;)V

    .line 626
    .local v2, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mExceptedRcsList:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 627
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mExceptedRcsList:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setExceptedList(Ljava/lang/String;)V

    .line 628
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 629
    invoke-virtual {v2, v8}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 630
    invoke-virtual {v2, v8}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setDisplayPhotos(Z)V

    .line 631
    invoke-virtual {v2, v7}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setQuickContactEnabled(Z)V

    .line 632
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setActionCode(I)V

    .line 636
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHeaderView:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 637
    invoke-virtual {v2, v7}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setTopDividerEnabled(Z)V

    .line 640
    :cond_1
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    const/16 v7, 0x123

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    const/16 v7, 0x124

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    if-ne v6, v9, :cond_3

    .line 643
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setExtra(I)V

    .line 648
    :cond_3
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    if-ne v6, v9, :cond_4

    .line 649
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 650
    .local v1, "accounts":[Landroid/accounts/Account;
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 677
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    :cond_4
    :goto_0
    return-object v2

    .line 652
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v2    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    :pswitch_0
    move-object v3, v1

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v0, v3, v4

    .line 653
    .local v0, "account":Landroid/accounts/Account;
    const-string v6, "com.sec.chaton"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 654
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setAccountTypeAndAccountName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 660
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
    if-ge v4, v5, :cond_4

    aget-object v0, v3, v4

    .line 661
    .restart local v0    # "account":Landroid/accounts/Account;
    const-string v6, "com.coolots.chaton"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 662
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setAccountTypeAndAccountName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 674
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    .end local v3    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_7
    new-instance v2, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 675
    .local v2, "adapter":Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v2, v7}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 676
    invoke-virtual {v2, v7}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0

    .line 650
    nop

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
    .line 1047
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1048
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 1050
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    goto :goto_0
.end method

.method public hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 590
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 593
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 594
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 597
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
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

    .line 480
    const-string v2, "InteractionPickerRCSeFragment"

    const-string v3, " === inflateView() === "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const v2, 0x7f040070

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 482
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 483
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

    .line 487
    const v2, 0x7f0901a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchViewLayout:Landroid/widget/LinearLayout;

    .line 488
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 489
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 491
    :cond_0
    const v2, 0x7f090100

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    .line 493
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 494
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 496
    :cond_1
    const v2, 0x7f090314

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 497
    const v2, 0x7f090314

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 500
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 503
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 506
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 509
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v8, v6, v8, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 510
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v7}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 511
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 512
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 513
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 514
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0e01c2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSearchQuery()V

    .line 516
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 517
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsRecreatedInstance:Z

    if-eqz v2, :cond_6

    .line 520
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFocusState:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 521
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 528
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsRecreatedInstance:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning:Z

    if-eqz v2, :cond_4

    .line 529
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->excuteSelectAllContacts(Z)V

    .line 530
    iput-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning:Z

    .line 534
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->configureSearchView()V

    .line 536
    return-object v1

    .line 523
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0

    .line 526
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method public isSelectAllEnable()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectAllEnabled:Z

    return v0
.end method

.method public isSendingMSG()Z
    .locals 1

    .prologue
    .line 1890
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSendingMSG:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 384
    const-string v0, "InteractionPickerRCSeFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 386
    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 388
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 390
    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onCancelAction()V

    .line 990
    return-void
.end method

.method public onCancelChosen()V
    .locals 1

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 1703
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 421
    const-string v0, "InteractionPickerRCSeFragment"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 423
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsRecreatedInstance:Z

    .line 424
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsRecreatedInstance:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mShowMaxCountDialog:Z

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxCountAlertDialog(Z)V

    .line 427
    :cond_0
    return-void

    .line 423
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

    .line 431
    const-string v1, "InteractionPickerRCSeFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 434
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mListContainer:Landroid/view/View;

    .line 435
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mEmptyView:Landroid/view/View;

    .line 438
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 440
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isMultiSelectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSelectAllEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {p1, v5, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHeaderView:Landroid/view/View;

    .line 443
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    .line 444
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 445
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 446
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 447
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 448
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f090439

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mMaxCountView:Landroid/widget/TextView;

    .line 467
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mListContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 470
    sget-boolean v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    const v1, 0x7f0401f4

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, "marginView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 476
    .end local v0    # "marginView":Landroid/view/View;
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
    .line 1685
    const-wide/16 v4, 0x0

    .line 1688
    .local v4, "dataid":J
    :try_start_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1690
    if-eqz p3, :cond_0

    .line 1691
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v6

    .line 1693
    .local v6, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

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

    .line 1697
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1698
    return-void

    .line 1695
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    const-string v0, "InteractionPickerRCSeFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDestroy()V

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;

    if-eqz v0, :cond_1

    .line 412
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

    if-eqz v0, :cond_2

    .line 415
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

    .line 417
    :cond_2
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1549
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 1551
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1552
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    const/16 v1, 0x123

    if-ne v0, v1, :cond_3

    .line 1559
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->excuteSelectAllVcard()V

    .line 1564
    :cond_2
    :goto_0
    return-void

    .line 1561
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->excuteSelectAllContacts(Z)V

    goto :goto_0
.end method

.method protected onItemClick(IJ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 701
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;

    .line 702
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 704
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_0

    .line 772
    :goto_0
    return-void

    .line 708
    :cond_0
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "contactId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 710
    .local v3, "partition":I
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v2

    .line 712
    .local v2, "displayName":Ljava/lang/String;
    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    sparse-switch v5, :sswitch_data_0

    .line 768
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid or unhandled action code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 719
    :sswitch_0
    invoke-direct {p0, v1, v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 720
    int-to-long v5, v3

    cmp-long v5, v5, v8

    if-nez v5, :cond_1

    .line 721
    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_0

    .line 723
    :cond_1
    invoke-direct {p0, v1, v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->removeContact(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 726
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isMaxAdded()Z

    move-result v5

    if-nez v5, :cond_3

    .line 728
    invoke-virtual {p0, v4, v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->pickContact(Landroid/net/Uri;IZ)V

    goto :goto_0

    .line 730
    :cond_3
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxCountAlertDialog(Z)V

    goto :goto_0

    .line 742
    :sswitch_1
    invoke-direct {p0, v1, v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 743
    int-to-long v5, v3

    cmp-long v5, v5, v8

    if-nez v5, :cond_4

    .line 744
    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_0

    .line 746
    :cond_4
    invoke-direct {p0, v1, v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->removeContact(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 749
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isMaxAdded()Z

    move-result v5

    if-nez v5, :cond_6

    .line 750
    invoke-direct {p0, v1, v3, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_0

    .line 752
    :cond_6
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxCountAlertDialog(Z)V

    goto :goto_0

    .line 758
    :sswitch_2
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->pickContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 763
    :sswitch_3
    invoke-virtual {p0, v4, v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->pickContact(Landroid/net/Uri;IZ)V

    goto :goto_0

    .line 712
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_1
        0xbe -> :sswitch_0
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_1
        0x118 -> :sswitch_3
        0x123 -> :sswitch_1
        0x125 -> :sswitch_0
        0x126 -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
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
    .line 693
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 695
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 8
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
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 777
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mEnabled:Z

    if-nez v4, :cond_0

    .line 852
    :goto_0
    return-void

    .line 782
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->dismissProgressDialog()V

    .line 784
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsTutorialMode:Z

    if-eqz v4, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setResult(I)V

    .line 787
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 790
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 791
    .local v1, "loaderId":I
    if-ne v1, v6, :cond_7

    .line 792
    iput v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mDirectoryListStatus:I

    .line 793
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 794
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->startLoading()V

    .line 829
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 830
    if-nez v1, :cond_3

    .line 831
    if-eqz p2, :cond_b

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_b

    .line 833
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHasPhoneData:Z

    .line 837
    :cond_3
    :goto_2
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHasPhoneData:Z

    if-nez v4, :cond_c

    :goto_3
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->configureEmptyView(Z)V

    .line 840
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isMultiSelectEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 841
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSelectAllEnable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 842
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->refreshSelectAllState(Z)V

    .line 846
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 847
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setDoneButton(I)V

    .line 850
    :cond_6
    const-string v2, "InteractionPickerRCSeFragment"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 798
    :cond_7
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 799
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 802
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->configureEmptyView(Z)V

    .line 804
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getDirectorySearchMode()I

    move-result v0

    .line 805
    .local v0, "directorySearchMode":I
    if-eqz v0, :cond_2

    .line 806
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mDirectoryListStatus:I

    if-nez v4, :cond_8

    .line 807
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mDirectoryListStatus:I

    .line 808
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1

    .line 810
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->startLoading()V

    goto :goto_1

    .line 814
    .end local v0    # "directorySearchMode":I
    :cond_9
    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mDirectoryListStatus:I

    .line 815
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 818
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFakeQueryModeEnabled:Z

    if-eqz v4, :cond_2

    .line 819
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFakeQueryStatus:I

    if-ne v4, v2, :cond_a

    .line 820
    iput v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFakeQueryStatus:I

    .line 821
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->startFullQuery()V

    goto :goto_1

    .line 822
    :cond_a
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 823
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFakeQueryStatus:I

    goto/16 :goto_1

    .line 835
    :cond_b
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHasPhoneData:Z

    goto :goto_2

    :cond_c
    move v2, v3

    .line 837
    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 394
    const-string v0, "InteractionPickerRCSeFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onPause()V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFocusState:Z

    .line 397
    const-string v0, "InteractionPickerRCSeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFocusState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFocusState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mShowMaxCountDialog:Z

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mShowMaxCountDialog:Z

    goto :goto_0
.end method

.method public onPickerResult()V
    .locals 3

    .prologue
    .line 955
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSelectAllRunning:Z

    if-eqz v0, :cond_0

    .line 956
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDoneButtonClicked:Z

    .line 986
    :goto_0
    return-void

    .line 961
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    .line 983
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unhandled action code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickDataAction(Ljava/util/HashMap;)V

    goto :goto_0

    .line 979
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    goto :goto_0

    .line 961
    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_1
        0xbe -> :sswitch_0
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_1
        0x118 -> :sswitch_0
        0x123 -> :sswitch_1
        0x125 -> :sswitch_0
        0x126 -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
    .end sparse-switch
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 940
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    .line 941
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 945
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;)V

    .line 946
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;J)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataid"    # J

    .prologue
    .line 951
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;J)V

    .line 952
    return-void
.end method

.method public declared-synchronized onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "flag"    # Z

    .prologue
    const/4 v6, 0x1

    .line 994
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;-><init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V

    .line 996
    .local v0, "contactDatas":Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 998
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    .line 1023
    :cond_0
    iget v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    if-eq v1, v6, :cond_1

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    const/16 v2, 0xbe

    if-ne v1, v2, :cond_3

    .line 1024
    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v3, p4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 1030
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFromSelectAll:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 1011
    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isMaxAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    if-nez p4, :cond_2

    .line 1015
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxCountAlertDialog(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 994
    .end local v0    # "contactDatas":Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1026
    .restart local v0    # "contactDatas":Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSpeedDial:Z

    move-object v2, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 1032
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1033
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e004c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 998
    nop

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_0
        0xbe -> :sswitch_0
        0xf0 -> :sswitch_0
        0xfa -> :sswitch_0
        0x123 -> :sswitch_0
        0x125 -> :sswitch_0
        0x126 -> :sswitch_0
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
    .end sparse-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 341
    const-string v0, "InteractionPickerRCSeFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 343
    const-string v0, "selectIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 344
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    const-string v0, "from_speed_dial"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSpeedDial:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    const-string v0, "msg_dialog"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSendingMSG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    const-string v0, "filter"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 350
    const-string v0, "SelectAllEnabled"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectAllEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 351
    const-string v0, "customSearchQueryString"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v0, "searchFocusState"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFocusState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 353
    const-string v0, "showMaxCountAlertDialog"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mShowMaxCountDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 354
    const-string v0, "IsDataQueryTaskRunning"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    const-string v0, "IsDataQueryTaskRunning2"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning2:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    return-void
.end method

.method public onSelectAllInfoChanged()V
    .locals 3

    .prologue
    .line 1100
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1101
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 1102
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 1103
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v0, :cond_1

    .line 1104
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->refreshSelectAllState(Z)V

    .line 1113
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1114
    return-void

    .line 1105
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentSelectItem:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setDoneButton(I)V

    .line 1107
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSelectAllEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->refreshSelectAllState(Z)V

    goto :goto_0

    .line 1113
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
    .line 1085
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1086
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onPickerResult()V

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 1090
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 1091
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setDoneButton(I)V

    .line 1092
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSelectAllEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->refreshSelectAllState(Z)V

    goto :goto_0
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1075
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onPickerResult(Landroid/net/Uri;)V

    .line 1076
    return-void
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataid"    # J

    .prologue
    .line 1080
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onPickerResult(Landroid/net/Uri;J)V

    .line 1081
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 922
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onInteractionPickerAction(Landroid/net/Uri;)V

    .line 923
    return-void
.end method

.method public pickContact(Landroid/net/Uri;IZ)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "partition"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 926
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "contactId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setUri(Landroid/net/Uri;)V

    .line 928
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setFromSelectall(Z)V

    .line 929
    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;

    .line 930
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;

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

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 931
    return-void
.end method

.method public reloadData()V
    .locals 0

    .prologue
    .line 324
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 325
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 361
    const-string v0, "InteractionPickerRCSeFragment"

    const-string v1, "restoreSavedState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 364
    if-nez p1, :cond_0

    .line 380
    :goto_0
    return-void

    .line 367
    :cond_0
    const-string v0, "selectIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 368
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    .line 369
    const-string v0, "maxRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mLimitedCount:I

    .line 370
    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentCount:I

    .line 371
    const-string v0, "from_speed_dial"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSpeedDial:Z

    .line 372
    const-string v0, "msg_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSendingMSG:Z

    .line 373
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 374
    const-string v0, "SelectAllEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectAllEnabled:Z

    .line 375
    const-string v0, "customSearchQueryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 376
    const-string v0, "searchFocusState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFocusState:Z

    .line 377
    const-string v0, "showMaxCountAlertDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mShowMaxCountDialog:Z

    .line 378
    const-string v0, "IsDataQueryTaskRunning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning:Z

    .line 379
    const-string v0, "IsDataQueryTaskRunning2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning2:Z

    goto :goto_0
.end method

.method public setExceptedList(Ljava/lang/String;)V
    .locals 0
    .param p1, "exceptedRcsList"    # Ljava/lang/String;

    .prologue
    .line 1918
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mExceptedRcsList:Ljava/lang/String;

    .line 1919
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 321
    return-void
.end method

.method public setFromSelectall(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1471
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFromSelectAll:Z

    .line 1472
    return-void
.end method

.method public setIsFragmentShowing(Z)V
    .locals 0
    .param p1, "isFragmentShowing"    # Z

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsFragmentShowing:Z

    .line 313
    return-void
.end method

.method public setMMSinformation(III)V
    .locals 3
    .param p1, "ActionCode"    # I
    .param p2, "LimitedCount"    # I
    .param p3, "CurrentCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 1832
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    .line 1833
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mLimitedCount:I

    .line 1834
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentCount:I

    .line 1835
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    const/16 v1, 0xaa

    if-ne v0, v1, :cond_1

    .line 1837
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSelectAllEnabled(Z)V

    .line 1844
    :goto_0
    return-void

    .line 1839
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1840
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSelectAllEnabled(Z)V

    goto :goto_0

    .line 1842
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSelectAllEnabled(Z)V

    goto :goto_0
.end method

.method public setMMSinformation(IIIZ)V
    .locals 4
    .param p1, "ActionCode"    # I
    .param p2, "LimitedCount"    # I
    .param p3, "CurrentCount"    # I
    .param p4, "EnableSelectAllFromMMS"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1848
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    .line 1849
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mLimitedCount:I

    .line 1850
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCurrentCount:I

    .line 1851
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mActionCode:I

    const/16 v1, 0x96

    if-ne v0, v1, :cond_1

    .line 1852
    if-eqz p4, :cond_0

    .line 1853
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSelectAllEnabled(Z)V

    .line 1863
    :goto_0
    return-void

    .line 1855
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSelectAllEnabled(Z)V

    goto :goto_0

    .line 1858
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1859
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSelectAllEnabled(Z)V

    goto :goto_0

    .line 1861
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSelectAllEnabled(Z)V

    goto :goto_0
.end method

.method public setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 317
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 935
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 936
    return-void
.end method

.method public setSearchQuery()V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 579
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 587
    :cond_0
    return-void
.end method

.method public setSearchViewClearFocus()V
    .locals 1

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1881
    :cond_0
    return-void
.end method

.method public setSelectAllEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectAllEnabled:Z

    .line 333
    return-void
.end method

.method public setSendingMSG(Z)V
    .locals 0
    .param p1, "FromMMS"    # Z

    .prologue
    .line 1885
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSendingMSG:Z

    .line 1886
    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    .prologue
    .line 1866
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsFragmentShowing:Z

    if-eqz v0, :cond_0

    .line 1867
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1868
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSoftInputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1869
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1875
    :cond_0
    :goto_0
    return-void

    .line 1871
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getActivity()Landroid/app/Activity;

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
    .line 1043
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSpeedDial:Z

    .line 1044
    return-void
.end method

.method public setTutorialMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsTutorialMode:Z

    .line 337
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->nUri:Landroid/net/Uri;

    .line 1040
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 9
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 865
    if-nez p2, :cond_1

    .line 866
    const-string v4, "InteractionPickerRCSeFragment"

    const-string v5, "Data is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;

    .line 874
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    if-nez v0, :cond_2

    .line 910
    :cond_0
    :goto_1
    return-void

    .line 868
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 869
    .local v1, "count":I
    const-string v4, "InteractionPickerRCSeFragment"

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

    .line 879
    .end local v1    # "count":I
    .restart local v0    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->areAllPartitionsEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 881
    :cond_3
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showNoMatchesView(Z)V

    .line 884
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isMultiSelectEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSelectAllEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 886
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 890
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f090437

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 891
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09017e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 893
    .local v2, "progress":Landroid/widget/ProgressBar;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showNoMatchesView(Z)V

    .line 896
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isMultiSelectEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 897
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isSelectAllEnable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 898
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 901
    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 902
    const v4, 0x7f0e01a0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 903
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 905
    :cond_6
    const v4, 0x7f0e02de

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 906
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 907
    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1
.end method
