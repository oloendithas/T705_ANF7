.class public Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "InteractionPickerContactsFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;
.implements Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;
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

.field private static final KEY_ALERT_MESSAGE_FOR_CONTACT:Ljava/lang/String; = "alert_message_for_contact"

.field private static final KEY_CAN_SHOW_MAX_COUNT:Ljava/lang/String; = "canShowMaxCountAlertDialog"

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

.field private static final TAG:Ljava/lang/String; = "InteractionPickerContactsFragment"


# instance fields
.field private final RESTART_TUTORIAL_MODE:I

.field private dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

.field private mActionCode:I

.field private mAlertMessageforContact:Z

.field private mCanShowMaxCountDialog:Z

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCurrentCount:I

.field private mCurrentSelectItem:I

.field private mCustomSearchQueryString:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

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

.field private mIsSelectionMode:Z

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

.field private mSelectionTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

.field private mSelectionTaskMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

.field private mShowMaxCountDialog:Z

.field private mSoftInputMode:I

.field private mSpeedDial:Z

.field private nUri:Landroid/net/Uri;

.field private showMaxDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 126
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    .line 127
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 133
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFocusState:Z

    .line 134
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    .line 135
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCanShowMaxCountDialog:Z

    .line 137
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneData:Z

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSoftInputMode:I

    .line 167
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSendingMSG:Z

    .line 168
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsTutorialMode:Z

    .line 169
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->RESTART_TUTORIAL_MODE:I

    .line 170
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectionMode:Z

    .line 1893
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->DEFAULT:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectionTaskMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    .line 172
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "InteractionPickerContactsFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setPhotoLoaderEnabled(Z)V

    .line 174
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 176
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setVisibleScrollbarEnabled(Z)V

    .line 177
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 179
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setQuickContactEnabled(Z)V

    .line 180
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDirectorySearchMode(I)V

    .line 182
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSweepActionEnabled(Z)V

    .line 185
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setFakeQueryModeEnabled(Z)V

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsFragmentShowing:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->nUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .prologue
    .line 100
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllCheckedContacts(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllCheckedVcard(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V

    return-void
.end method

.method static synthetic access$1802(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCanShowMaxCountDialog:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCanShowMaxCountDialog:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDoneButton(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z

    return v0
.end method

.method private addContactFromSelectAll(JILandroid/net/Uri;)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "partition"    # I
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1178
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

    .line 1179
    .local v0, "keyString":Ljava/lang/String;
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1180
    .local v1, "selectedLookup":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    return-void
.end method

.method private addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1171
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

    .line 1172
    .local v0, "keyString":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1173
    .local v1, "selectedLookup":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    .line 1176
    return-void
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 6
    .param p1, "dataInfo"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "dataid"    # J

    .prologue
    .line 1150
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1151
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

    .line 1158
    .local v1, "keyString":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, "dataString":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    if-eqz v2, :cond_2

    .line 1162
    invoke-virtual {p0, p3, p4, p5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V

    .line 1166
    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsTutorialMode:Z

    if-eqz v2, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0436

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1169
    :cond_0
    return-void

    .line 1156
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

    .line 1164
    .restart local v0    # "dataString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    goto :goto_1
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 6
    .param p1, "dataInfo"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "fromSelectAll"    # Z

    .prologue
    .line 1124
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1125
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

    .line 1132
    .local v1, "keyString":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "dataString":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    if-eqz p4, :cond_2

    .line 1135
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectAllInfoChanged()V

    .line 1143
    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsTutorialMode:Z

    if-eqz v2, :cond_0

    .line 1144
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0436

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1146
    :cond_0
    return-void

    .line 1130
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

    .line 1137
    .restart local v0    # "dataString":Ljava/lang/String;
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    if-eqz v2, :cond_3

    .line 1138
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V

    goto :goto_1

    .line 1140
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    goto :goto_1
.end method

.method private configureEmptyView(Z)V
    .locals 5
    .param p1, "isEmpty"    # Z

    .prologue
    const v4, 0x7f0902e5

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1764
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1797
    :cond_0
    :goto_0
    return-void

    .line 1769
    :cond_1
    if-eqz p1, :cond_4

    .line 1771
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsRecreatedInstance:Z

    if-nez v0, :cond_3

    .line 1772
    const/16 v0, 0x30

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSoftInputMode:I

    .line 1779
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSoftInputMode()V

    .line 1780
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1781
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1782
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1784
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1785
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1788
    :cond_2
    if-eqz p1, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1792
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1794
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDoneButton(I)V

    goto :goto_0

    .line 1774
    :cond_3
    const/16 v0, 0x31

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSoftInputMode:I

    goto :goto_1

    .line 1777
    :cond_4
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSoftInputMode:I

    goto :goto_1

    :cond_5
    move v0, v2

    .line 1780
    goto :goto_2

    :cond_6
    move v2, v1

    .line 1781
    goto :goto_3
.end method

.method private configureSearchView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1863
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 1864
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    .line 1866
    :cond_0
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->sIsTwoPaneMode:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v6, :cond_2

    .line 1867
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c011e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1869
    .local v1, "defaultSearchViewTopBottomPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c011f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 1871
    .local v4, "searchViewTopBottomPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0199

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1873
    .local v2, "leftPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c019a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1875
    .local v3, "rightPadding":I
    sub-int v5, v4, v1

    .line 1876
    .local v5, "topPadding":I
    sub-int v0, v4, v1

    .line 1877
    .local v0, "bottomPadding":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1878
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2, v8, v8, v8}, Landroid/widget/SearchView;->setPadding(IIII)V

    .line 1883
    .end local v0    # "bottomPadding":I
    .end local v1    # "defaultSearchViewTopBottomPadding":I
    .end local v2    # "leftPadding":I
    .end local v3    # "rightPadding":I
    .end local v4    # "searchViewTopBottomPadding":I
    .end local v5    # "topPadding":I
    :cond_2
    :goto_0
    return-void

    .line 1880
    .restart local v0    # "bottomPadding":I
    .restart local v1    # "defaultSearchViewTopBottomPadding":I
    .restart local v2    # "leftPadding":I
    .restart local v3    # "rightPadding":I
    .restart local v4    # "searchViewTopBottomPadding":I
    .restart local v5    # "topPadding":I
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2, v5, v3, v8}, Landroid/widget/SearchView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private configureSeletionTaskMode()V
    .locals 2

    .prologue
    .line 1896
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0x123

    if-ne v0, v1, :cond_1

    .line 1907
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->V_CARD:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectionTaskMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    .line 1911
    :goto_0
    return-void

    .line 1909
    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->DEFAULT:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectionTaskMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    goto :goto_0
.end method

.method private excuteSelectAll(ZLcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;)V
    .locals 4
    .param p1, "aIsSelectAll"    # Z
    .param p2, "aSelectAllTaskMode"    # Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1933
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    if-nez v0, :cond_0

    .line 1934
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    .line 1935
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    .line 1936
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectionTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

    .line 1937
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectionTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

    new-array v1, v2, [Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1939
    :cond_0
    return-void
.end method

.method private isMaxAdded()Z
    .locals 3

    .prologue
    .line 1482
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 1483
    const/4 v0, 0x1

    .line 1485
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
    .line 1101
    int-to-long v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1102
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

    .line 1109
    .local v0, "keyString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1107
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
    .line 1224
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 1225
    .local v0, "dataId":Ljava/lang/String;
    iget-object v1, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 1226
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

    .line 1227
    .local v4, "selectedInfo":Ljava/lang/String;
    iget-object v2, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->rawContactId:Ljava/lang/String;

    .line 1228
    .local v2, "rawContactId":Ljava/lang/String;
    const-string v5, ";"

    invoke-direct {p0, v0, v4, v1, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1230
    .local v3, "result":Ljava/lang/String;
    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v6, 0x118

    if-ne v5, v6, :cond_0

    .line 1231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1234
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
    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1239
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refreshHashMapData()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 800
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 801
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v11

    if-nez v11, :cond_1

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v10

    .line 805
    .local v10, "totalNumOfContacts":I
    const/4 v8, 0x0

    .line 806
    .local v8, "showMoreItemCount":I
    const-wide/16 v3, 0x0

    .line 807
    .local v3, "id":J
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 808
    .local v9, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 809
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 813
    const/4 v7, 0x0

    .local v7, "position":I
    :goto_1
    if-ge v7, v10, :cond_0

    .line 815
    invoke-virtual {v0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 818
    .local v6, "partition":I
    :try_start_0
    invoke-virtual {v0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 823
    cmp-long v11, v3, v13

    if-nez v11, :cond_3

    .line 813
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 819
    :catch_0
    move-exception v2

    .line 820
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 828
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_3
    int-to-long v11, v6

    cmp-long v11, v11, v13

    if-nez v11, :cond_5

    .line 830
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 836
    .local v5, "keyString":Ljava/lang/String;
    :goto_2
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 838
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 839
    .local v1, "dataString":Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v11, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    .end local v1    # "dataString":Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lt v11, v12, :cond_2

    goto :goto_0

    .line 832
    .end local v5    # "keyString":Ljava/lang/String;
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "keyString":Ljava/lang/String;
    goto :goto_2
.end method

.method private refreshSelectAllState(Z)V
    .locals 12
    .param p1, "flag"    # Z

    .prologue
    .line 1412
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 1414
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v8

    .line 1418
    .local v8, "totalNumOfContacts":I
    const/4 v7, 0x0

    .line 1419
    .local v7, "showMoreItemCount":I
    const-wide/16 v2, 0x0

    .line 1420
    .local v2, "id":J
    const/4 v6, 0x0

    .local v6, "position":I
    :goto_1
    if-ge v6, v8, :cond_9

    .line 1421
    const/4 v4, 0x0

    .line 1422
    .local v4, "isShowMoreItem":Z
    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isGalSearchShowMore(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1423
    const/4 v4, 0x1

    .line 1424
    add-int/lit8 v7, v7, 0x1

    .line 1427
    :cond_2
    :try_start_0
    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1432
    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v5

    .line 1433
    .local v5, "partition":I
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-nez v9, :cond_4

    .line 1420
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1428
    .end local v5    # "partition":I
    :catch_0
    move-exception v1

    .line 1429
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1436
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "partition":I
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v5, v10}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    if-nez v4, :cond_3

    .line 1439
    if-eqz p1, :cond_5

    .line 1440
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z

    .line 1441
    iget-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v9, :cond_5

    .line 1442
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    goto :goto_2

    .line 1446
    :cond_5
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 1447
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mMaxCountView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1448
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 1452
    :cond_6
    iget v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    const v10, 0xffff

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    iget v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v10, v11

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 1456
    sub-int v9, v8, v7

    iget v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_7

    .line 1457
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mMaxCountView:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mMaxCountView:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1462
    :goto_3
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 1460
    :cond_7
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mMaxCountView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1464
    :cond_8
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mMaxCountView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1465
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 1471
    .end local v4    # "isShowMoreItem":Z
    .end local v5    # "partition":I
    :cond_9
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mMaxCountView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1472
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1473
    if-eqz p1, :cond_0

    .line 1474
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z

    .line 1475
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    goto/16 :goto_0
.end method

.method private removeContact(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I

    .prologue
    .line 1112
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

    .line 1113
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    .line 1115
    return-void
.end method

.method private removeContact(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    .line 1117
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

    .line 1118
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    .line 1120
    return-void
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I

    .prologue
    .line 1187
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

    .line 1188
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    return-void
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "partition"    # I
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    .line 1191
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

    .line 1192
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    return-void
.end method

.method private removeVcardFromSelectAll(JI)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "partition"    # I

    .prologue
    .line 1183
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

    .line 1184
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    return-void
.end method

.method private setDoneButton(I)V
    .locals 12
    .param p1, "size"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1196
    iget-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectionMode:Z

    if-eqz v9, :cond_0

    .line 1197
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getQueryString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1198
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v11

    if-lt p1, v11, :cond_1

    :goto_0
    invoke-interface {v9, v10, v7}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataSelected(IZ)V

    .line 1216
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v7, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onSelected(I)V

    .line 1217
    return-void

    :cond_1
    move v7, v8

    .line 1198
    goto :goto_0

    .line 1201
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 1202
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v6

    .line 1203
    .local v6, "resultCount":I
    const/4 v1, 0x0

    .line 1205
    .local v1, "checkedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_4

    .line 1206
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1207
    .local v3, "id":J
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v5

    .line 1208
    .local v5, "partition":I
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v5, v10}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1210
    add-int/lit8 v1, v1, 0x1

    .line 1205
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1213
    .end local v3    # "id":J
    .end local v5    # "partition":I
    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

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
    .locals 21
    .param p1, "aIsSelectAll"    # Z

    .prologue
    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1314
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 1315
    .local v3, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    if-nez v3, :cond_0

    .line 1316
    const/4 v15, 0x0

    monitor-exit v16

    .line 1407
    :goto_0
    return v15

    .line 1318
    :cond_0
    const/4 v14, 0x0

    .line 1319
    .local v14, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 1320
    .local v2, "CurrentSelectItem":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v15, :cond_1

    .line 1321
    const/4 v2, 0x0

    .line 1325
    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    .line 1326
    .local v13, "totalNumOfContacts":I
    const/4 v12, 0x0

    .line 1327
    .local v12, "showMoreItemCount":I
    const/4 v11, 0x0

    .local v11, "position":I
    :goto_1
    if-ge v11, v13, :cond_c

    .line 1329
    const-wide/16 v7, -0x1

    .line 1330
    .local v7, "id":J
    const/4 v9, 0x0

    .line 1332
    .local v9, "isShowMoreItem":Z
    :try_start_1
    invoke-virtual {v3, v11}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_3

    .line 1327
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1337
    :cond_3
    invoke-virtual {v3, v11}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isGalSearchShowMore(I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1338
    const/4 v9, 0x1

    .line 1339
    add-int/lit8 v12, v12, 0x1

    .line 1341
    :cond_4
    invoke-virtual {v3, v11}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v14

    .line 1343
    if-eqz v14, :cond_5

    .line 1344
    invoke-virtual {v3, v11}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    .line 1356
    :cond_5
    :try_start_2
    invoke-virtual {v3, v11}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v10

    .line 1357
    .local v10, "partition":I
    invoke-virtual {v3, v11}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v5

    .line 1358
    .local v5, "displayName":Ljava/lang/String;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z

    .line 1362
    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    move/from16 v17, v0

    sub-int v15, v15, v17

    if-lt v2, v15, :cond_9

    .line 1363
    sub-int v15, v13, v12

    if-ge v2, v15, :cond_6

    .line 1364
    const/4 v15, 0x0

    monitor-exit v16

    goto :goto_0

    .line 1406
    .end local v2    # "CurrentSelectItem":I
    .end local v3    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v7    # "id":J
    .end local v9    # "isShowMoreItem":Z
    .end local v10    # "partition":I
    .end local v11    # "position":I
    .end local v12    # "showMoreItemCount":I
    .end local v13    # "totalNumOfContacts":I
    .end local v14    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15

    .line 1346
    .restart local v2    # "CurrentSelectItem":I
    .restart local v3    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .restart local v7    # "id":J
    .restart local v9    # "isShowMoreItem":Z
    .restart local v11    # "position":I
    .restart local v12    # "showMoreItemCount":I
    .restart local v13    # "totalNumOfContacts":I
    .restart local v14    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 1347
    .local v6, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1348
    const/4 v15, 0x1

    monitor-exit v16

    goto :goto_0

    .line 1349
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    .line 1350
    .local v6, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1351
    const/4 v15, 0x1

    monitor-exit v16

    goto :goto_0

    .line 1352
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v6

    .line 1353
    .local v6, "e":Landroid/database/StaleDataException;
    invoke-virtual {v6}, Landroid/database/StaleDataException;->printStackTrace()V

    .line 1354
    const/4 v15, 0x1

    monitor-exit v16

    goto :goto_0

    .line 1365
    .end local v6    # "e":Landroid/database/StaleDataException;
    .restart local v5    # "displayName":Ljava/lang/String;
    .restart local v10    # "partition":I
    :cond_6
    if-eqz v14, :cond_7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1366
    const/4 v15, 0x0

    monitor-exit v16

    goto/16 :goto_0

    .line 1367
    :cond_7
    if-eqz v14, :cond_2

    .line 1369
    sub-int v15, v13, v12

    if-gt v2, v15, :cond_2

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v15

    if-eqz v15, :cond_8

    sub-int v15, v13, v12

    if-eq v2, v15, :cond_2

    .line 1374
    :cond_8
    const/4 v15, 0x1

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1377
    :cond_9
    if-eqz v14, :cond_2

    if-nez v9, :cond_2

    .line 1380
    :try_start_4
    invoke-virtual {v14}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 1381
    .local v4, "contactId":Ljava/lang/String;
    if-eqz p1, :cond_a

    .line 1382
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 1383
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10, v15}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->pickContact(Landroid/net/Uri;IZ)V

    .line 1384
    add-int/lit8 v2, v2, 0x1

    .line 1385
    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentSelectItem:I
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/StaleDataException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1400
    .end local v4    # "contactId":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 1401
    .local v6, "e":Ljava/lang/IllegalStateException;
    const/4 v15, 0x1

    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1391
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .restart local v4    # "contactId":Ljava/lang/String;
    :cond_a
    const/4 v15, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z

    .line 1392
    int-to-long v0, v10

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v15, v17, v19

    if-nez v15, :cond_b

    .line 1393
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/database/StaleDataException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 1402
    .end local v4    # "contactId":Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 1403
    .local v6, "e":Landroid/database/StaleDataException;
    const/4 v15, 0x1

    :try_start_7
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1396
    .end local v6    # "e":Landroid/database/StaleDataException;
    .restart local v4    # "contactId":Ljava/lang/String;
    :cond_b
    :try_start_8
    invoke-virtual {v3, v11}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v15}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeContactFromSelectAll(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/database/StaleDataException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 1406
    .end local v4    # "contactId":Ljava/lang/String;
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v7    # "id":J
    .end local v9    # "isShowMoreItem":Z
    .end local v10    # "partition":I
    :cond_c
    :try_start_9
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1407
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method private setSelectAllCheckedVcard(Z)Z
    .locals 14
    .param p1, "aIsSelectAll"    # Z

    .prologue
    .line 1251
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 1253
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 1256
    .local v1, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1258
    .local v0, "CurrentSelectItem":I
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1262
    .local v8, "totalNumOfContacts":I
    const/4 v7, 0x0

    .local v7, "position":I
    :goto_0
    if-ge v7, v8, :cond_6

    .line 1264
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMaxAdded()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1265
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_2

    .line 1266
    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1267
    .local v4, "id":J
    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 1268
    .local v6, "partition":I
    const-wide/16 v12, 0x0

    cmp-long v10, v4, v12

    if-nez v10, :cond_1

    .line 1265
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1271
    :cond_1
    if-eqz p1, :cond_0

    .line 1272
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v6, v12}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_0

    .line 1274
    const/4 v10, 0x0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1309
    .end local v3    # "i":I
    .end local v4    # "id":J
    .end local v6    # "partition":I
    :goto_2
    return v10

    .line 1279
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isLegacyCompatibilityMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1281
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v10, v7}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v9

    .line 1288
    .local v9, "uri":Landroid/net/Uri;
    :goto_3
    if-nez v9, :cond_4

    .line 1262
    .end local v9    # "uri":Landroid/net/Uri;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1284
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {v10, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v9

    .restart local v9    # "uri":Landroid/net/Uri;
    goto :goto_3

    .line 1291
    :cond_4
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1292
    .restart local v4    # "id":J
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 1293
    .restart local v6    # "partition":I
    if-eqz p1, :cond_5

    .line 1294
    add-int/lit8 v0, v0, 0x1

    .line 1295
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentSelectItem:I

    .line 1296
    invoke-direct {p0, v4, v5, v6, v9}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->addContactFromSelectAll(JILandroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1300
    .end local v4    # "id":J
    .end local v6    # "partition":I
    .end local v9    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1301
    .local v2, "e":Ljava/lang/IllegalStateException;
    const/4 v10, 0x1

    :try_start_4
    monitor-exit v11

    goto :goto_2

    .line 1308
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

    .line 1298
    .restart local v0    # "CurrentSelectItem":I
    .restart local v1    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .restart local v4    # "id":J
    .restart local v6    # "partition":I
    .restart local v7    # "position":I
    .restart local v8    # "totalNumOfContacts":I
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_5
    :try_start_5
    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeVcardFromSelectAll(JI)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1302
    .end local v4    # "id":J
    .end local v6    # "partition":I
    .end local v9    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 1303
    .local v2, "e":Landroid/database/StaleDataException;
    const/4 v10, 0x1

    :try_start_6
    monitor-exit v11

    goto :goto_2

    .line 1304
    .end local v2    # "e":Landroid/database/StaleDataException;
    :catch_2
    move-exception v2

    .line 1305
    .local v2, "e":Ljava/lang/NullPointerException;
    goto :goto_4

    .line 1308
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1309
    const/4 v10, 0x1

    goto :goto_2
.end method

.method private showMaxCountAlertDialog(Z)V
    .locals 8
    .param p1, "enableDone"    # Z

    .prologue
    .line 1488
    move v1, p1

    .line 1490
    .local v1, "flag":Z
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1559
    :goto_0
    return-void

    .line 1494
    :cond_0
    :try_start_0
    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSendingMSG()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1495
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getResources()Landroid/content/res/Resources;

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

    new-instance v4, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    .line 1554
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 1555
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1556
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    goto :goto_0

    .line 1557
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1511
    :cond_2
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v3, 0x126

    if-ne v2, v3, :cond_3

    .line 1512
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10000c

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$4;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$4;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 1529
    :cond_3
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_6

    .line 1530
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v3, 0xfa

    if-eq v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mAlertMessageforContact:Z

    if-eqz v2, :cond_5

    .line 1531
    :cond_4
    const v0, 0x7f0e0359

    .line 1538
    .local v0, "alertStringId":I
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$5;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$5;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1533
    .end local v0    # "alertStringId":I
    :cond_5
    const v0, 0x7f0e0357

    .restart local v0    # "alertStringId":I
    goto :goto_2

    .line 1536
    .end local v0    # "alertStringId":I
    :cond_6
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

    .line 909
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 910
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 913
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 910
    goto :goto_0

    :cond_3
    move v2, v1

    .line 911
    goto :goto_1
.end method


# virtual methods
.method public clearCustomSearchResult()V
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 554
    return-void
.end method

.method public clearListViewFocus()V
    .locals 3

    .prologue
    .line 848
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 849
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

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->clearFocus()V

    .line 855
    :cond_0
    return-void
.end method

.method public clearSelectedArray()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->cancel(Z)Z

    .line 1041
    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectionTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectionTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->cancel(Z)Z

    .line 1045
    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectionTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

    .line 1046
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1050
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 1053
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1054
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectAllEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1055
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->refreshSelectAllState(Z)V

    .line 1058
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 1059
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 610
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 611
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 612
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDataRestrictedByCallingPackage(Z)V

    .line 613
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 614
    return-void
.end method

.method public createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Lcom/android/contacts/list/ProfileAndContactsLoader;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createCursorLoaderToSupportSimContacts()Lcom/sec/android/app/contacts/ContactCursorLoader;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 10

    .prologue
    const/16 v9, 0x125

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isLegacyCompatibilityMode()Z

    move-result v6

    if-nez v6, :cond_6

    .line 558
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 559
    .local v2, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 560
    invoke-virtual {v2, v8}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 561
    invoke-virtual {v2, v8}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setDisplayPhotos(Z)V

    .line 562
    invoke-virtual {v2, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setQuickContactEnabled(Z)V

    .line 563
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setActionCode(I)V

    .line 567
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 568
    invoke-virtual {v2, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setTopDividerEnabled(Z)V

    .line 571
    :cond_0
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v7, 0x123

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v7, 0x124

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    if-ne v6, v9, :cond_2

    .line 574
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setExtra(I)V

    .line 577
    :cond_2
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    if-ne v6, v9, :cond_3

    .line 578
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 579
    .local v1, "accounts":[Landroid/accounts/Account;
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 605
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_3
    :goto_0
    return-object v2

    .line 581
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
    if-ge v4, v5, :cond_3

    aget-object v0, v3, v4

    .line 582
    .local v0, "account":Landroid/accounts/Account;
    const-string v6, "com.sec.chaton"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 583
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setAccountTypeAndAccountName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 589
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
    if-ge v4, v5, :cond_3

    aget-object v0, v3, v4

    .line 590
    .restart local v0    # "account":Landroid/accounts/Account;
    const-string v6, "com.coolots.chaton"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 591
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setAccountTypeAndAccountName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 602
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v3    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_6
    new-instance v2, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 603
    .local v2, "adapter":Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v2, v7}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 604
    invoke-virtual {v2, v7}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0

    .line 579
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
    .line 1030
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1031
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 1033
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    goto :goto_0
.end method

.method public hideHeaderView()V
    .locals 2

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1888
    :cond_0
    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 542
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 545
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 546
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 549
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

    .line 446
    const-string v2, "InteractionPickerContactsFragment"

    const-string v3, " === inflateView() === "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const v2, 0x7f040070

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 448
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 449
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

    .line 453
    const v2, 0x7f0901a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchViewLayout:Landroid/widget/LinearLayout;

    .line 454
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 455
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 457
    :cond_0
    const v2, 0x7f090100

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    .line 459
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 460
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 462
    :cond_1
    const v2, 0x7f090314

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 463
    const v2, 0x7f090314

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 465
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 467
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 470
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 473
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v8, v6, v8, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 474
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v7}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 475
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 476
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 477
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 478
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0e01c2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 479
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSearchQuery()V

    .line 480
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 481
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsRecreatedInstance:Z

    if-eqz v2, :cond_5

    .line 484
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFocusState:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 485
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 493
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->configureSearchView()V

    .line 494
    return-object v1

    .line 487
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0

    .line 490
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method public isSelectAllEnable()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectAllEnabled:Z

    return v0
.end method

.method public isSendingMSG()Z
    .locals 1

    .prologue
    .line 1860
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSendingMSG:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 356
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 358
    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 360
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 362
    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onCancelAction()V

    .line 975
    return-void
.end method

.method public onCancelChosen()V
    .locals 1

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 1706
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 399
    const-string v0, "InteractionPickerContactsFragment"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 401
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsRecreatedInstance:Z

    .line 402
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsRecreatedInstance:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    if-eqz v0, :cond_0

    .line 403
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V

    .line 405
    :cond_0
    return-void

    .line 401
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0401de

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 408
    const-string v1, "InteractionPickerContactsFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 410
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListContainer:Landroid/view/View;

    .line 411
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    .line 413
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 415
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectAllEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    invoke-virtual {p1, v6, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    .line 418
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 422
    const v1, 0x7f0401f4

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 424
    .local v0, "marginView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 426
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 428
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f090439

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mMaxCountView:Landroid/widget/TextView;

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectionMode:Z

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsRecreatedInstance:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z

    if-eqz v1, :cond_1

    .line 439
    sget-object v1, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->DEFAULT:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    invoke-direct {p0, v3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAll(ZLcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;)V

    .line 443
    .end local v0    # "marginView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "dataInfo"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "checked"    # Z
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1689
    const-wide/16 v4, 0x0

    .line 1692
    .local v4, "dataid":J
    :try_start_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1694
    if-eqz p3, :cond_0

    .line 1695
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v6

    .line 1697
    .local v6, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

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

    .line 1701
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1702
    return-void

    .line 1699
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDeSelectAllClicked()V
    .locals 2

    .prologue
    .line 1921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCanShowMaxCountDialog:Z

    .line 1922
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectionTaskMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAll(ZLcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;)V

    .line 1923
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 381
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDestroy()V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    if-eqz v0, :cond_1

    .line 390
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectionTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

    if-eqz v0, :cond_2

    .line 393
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectionTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

    .line 395
    :cond_2
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v0, 0x1

    .line 1565
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 1566
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCanShowMaxCountDialog:Z

    .line 1568
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1570
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_1

    .line 1571
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectionTaskMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAll(ZLcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;)V

    .line 1574
    :cond_1
    return-void

    .line 1571
    :cond_2
    const/4 v0, 0x0

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

    .line 624
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 625
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 626
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_0

    .line 710
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "contactId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 631
    .local v3, "partition":I
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, "displayName":Ljava/lang/String;
    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    sparse-switch v5, :sswitch_data_0

    .line 707
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid or unhandled action code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 646
    :sswitch_0
    invoke-direct {p0, v1, v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 648
    int-to-long v5, v3

    cmp-long v5, v5, v8

    if-nez v5, :cond_1

    .line 650
    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_0

    .line 652
    :cond_1
    invoke-direct {p0, v1, v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeContact(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMaxAdded()Z

    move-result v5

    if-nez v5, :cond_3

    .line 657
    invoke-virtual {p0, v4, v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->pickContact(Landroid/net/Uri;IZ)V

    goto :goto_0

    .line 659
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 660
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V

    goto :goto_0

    .line 680
    :sswitch_1
    invoke-direct {p0, v1, v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 682
    int-to-long v5, v3

    cmp-long v5, v5, v8

    if-nez v5, :cond_4

    .line 683
    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_0

    .line 685
    :cond_4
    invoke-direct {p0, v1, v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeContact(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 688
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMaxAdded()Z

    move-result v5

    if-nez v5, :cond_6

    .line 689
    invoke-direct {p0, v1, v3, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_0

    .line 691
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 692
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V

    goto :goto_0

    .line 699
    :sswitch_2
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->pickContact(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 703
    :sswitch_3
    invoke-virtual {p0, v4, v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->pickContact(Landroid/net/Uri;IZ)V

    goto/16 :goto_0

    .line 632
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
    .line 618
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 620
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 9
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
    const/16 v8, 0xb

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 714
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEnabled:Z

    if-nez v4, :cond_0

    .line 797
    :goto_0
    return-void

    .line 718
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dismissProgressDialog()V

    .line 719
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsTutorialMode:Z

    if-eqz v4, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 720
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 722
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e0437

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 724
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Activity;->setResult(I)V

    .line 725
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 733
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 734
    .local v1, "loaderId":I
    if-ne v1, v6, :cond_a

    .line 735
    iput v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    .line 736
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 737
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->startLoading()V

    .line 769
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 770
    if-nez v1, :cond_3

    .line 771
    if-eqz p2, :cond_e

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_e

    .line 773
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneData:Z

    .line 778
    :cond_3
    :goto_3
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneData:Z

    if-nez v4, :cond_f

    :goto_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->configureEmptyView(Z)V

    .line 780
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 781
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectAllEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 783
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectionMode:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 785
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->refreshHashMapData()V

    .line 787
    :cond_5
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->refreshSelectAllState(Z)V

    .line 790
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 791
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDoneButton(I)V

    .line 793
    :cond_7
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectionMode:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_8

    .line 794
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onSelected(I)V

    .line 796
    :cond_8
    const-string v2, "InteractionPickerContactsFragment"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 729
    .end local v1    # "loaderId":I
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Activity;->setResult(I)V

    .line 730
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 741
    .restart local v1    # "loaderId":I
    :cond_a
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 742
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 745
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->configureEmptyView(Z)V

    .line 746
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getDirectorySearchMode()I

    move-result v0

    .line 747
    .local v0, "directorySearchMode":I
    if-eqz v0, :cond_2

    .line 748
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    if-nez v4, :cond_b

    .line 749
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    .line 750
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_2

    .line 752
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->startLoading()V

    goto/16 :goto_2

    .line 756
    .end local v0    # "directorySearchMode":I
    :cond_c
    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    .line 757
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 759
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryModeEnabled:Z

    if-eqz v4, :cond_2

    .line 760
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryStatus:I

    if-ne v4, v2, :cond_d

    .line 761
    iput v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryStatus:I

    .line 762
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->startFullQuery()V

    goto/16 :goto_2

    .line 763
    :cond_d
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 764
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryStatus:I

    goto/16 :goto_2

    .line 775
    :cond_e
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneData:Z

    goto/16 :goto_3

    :cond_f
    move v2, v3

    .line 778
    goto/16 :goto_4
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 366
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onPause()V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFocusState:Z

    .line 370
    const-string v0, "InteractionPickerContactsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFocusState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFocusState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    goto :goto_0
.end method

.method public onPickerResult()V
    .locals 3

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    if-eqz v0, :cond_0

    .line 945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    .line 972
    :goto_0
    return-void

    .line 948
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    .line 969
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unhandled action code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickDataAction(Ljava/util/HashMap;)V

    goto :goto_0

    .line 965
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    goto :goto_0

    .line 948
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
    .line 931
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    .line 932
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 935
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;)V

    .line 936
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;J)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataid"    # J

    .prologue
    .line 940
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;J)V

    .line 941
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

    .line 978
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;-><init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V

    .line 979
    .local v0, "contactDatas":Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 981
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    .line 1005
    :cond_0
    iget v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    if-eq v1, v6, :cond_1

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v2, 0xbe

    if-ne v1, v2, :cond_3

    .line 1006
    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v3, p4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 1012
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 994
    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMaxAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 997
    if-nez p4, :cond_2

    .line 998
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 978
    .end local v0    # "contactDatas":Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1008
    .restart local v0    # "contactDatas":Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    move-object v2, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 1014
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1015
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e004c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 981
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
    .line 311
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 313
    const-string v0, "selectIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 314
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    const-string v0, "from_speed_dial"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    const-string v0, "alert_message_for_contact"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mAlertMessageforContact:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    const-string v0, "msg_dialog"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSendingMSG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 320
    const-string v0, "filter"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 321
    const-string v0, "SelectAllEnabled"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectAllEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    const-string v0, "customSearchQueryString"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v0, "searchFocusState"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFocusState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 324
    const-string v0, "showMaxCountAlertDialog"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    const-string v0, "canShowMaxCountAlertDialog"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCanShowMaxCountDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    const-string v0, "IsDataQueryTaskRunning"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 327
    const-string v0, "IsDataQueryTaskRunning2"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 328
    return-void
.end method

.method public onSelectAllClicked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1915
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCanShowMaxCountDialog:Z

    .line 1916
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectionTaskMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAll(ZLcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;)V

    .line 1917
    return-void
.end method

.method public onSelectAllInfoChanged()V
    .locals 3

    .prologue
    .line 1084
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1085
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 1086
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 1087
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v0, :cond_1

    .line 1088
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->refreshSelectAllState(Z)V

    .line 1097
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1098
    return-void

    .line 1089
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentSelectItem:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDoneButton(I)V

    .line 1091
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectAllEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->refreshSelectAllState(Z)V

    goto :goto_0

    .line 1097
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
    .line 1070
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1071
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult()V

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1074
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 1075
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 1076
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDoneButton(I)V

    .line 1077
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectAllEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->refreshSelectAllState(Z)V

    goto :goto_0
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1061
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult(Landroid/net/Uri;)V

    .line 1062
    return-void
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataid"    # J

    .prologue
    .line 1065
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult(Landroid/net/Uri;J)V

    .line 1066
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 916
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onInteractionPickerAction(Landroid/net/Uri;)V

    .line 917
    return-void
.end method

.method public pickContact(Landroid/net/Uri;IZ)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "partition"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 919
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "contactId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setUri(Landroid/net/Uri;)V

    .line 921
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setFromSelectall(Z)V

    .line 922
    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    .line 923
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

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

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 924
    return-void
.end method

.method public reloadData()V
    .locals 0

    .prologue
    .line 298
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 299
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 333
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "restoreSavedState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 335
    if-nez p1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 338
    :cond_0
    const-string v0, "selectIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 339
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    .line 340
    const-string v0, "maxRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    .line 341
    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    .line 342
    const-string v0, "from_speed_dial"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    .line 343
    const-string v0, "alert_message_for_contact"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mAlertMessageforContact:Z

    .line 344
    const-string v0, "msg_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSendingMSG:Z

    .line 345
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 346
    const-string v0, "SelectAllEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectAllEnabled:Z

    .line 347
    const-string v0, "customSearchQueryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 348
    const-string v0, "searchFocusState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFocusState:Z

    .line 349
    const-string v0, "showMaxCountAlertDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    .line 350
    const-string v0, "canShowMaxCountAlertDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCanShowMaxCountDialog:Z

    .line 351
    const-string v0, "IsDataQueryTaskRunning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z

    .line 352
    const-string v0, "IsDataQueryTaskRunning2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    goto :goto_0
.end method

.method public setAlertMessageforContact(Z)V
    .locals 0
    .param p1, "AlertMessageforContact"    # Z

    .prologue
    .line 1027
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mAlertMessageforContact:Z

    .line 1028
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 296
    return-void
.end method

.method public setFromSelectall(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1479
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z

    .line 1480
    return-void
.end method

.method public setIsFragmentShowing(Z)V
    .locals 0
    .param p1, "isFragmentShowing"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsFragmentShowing:Z

    .line 289
    return-void
.end method

.method public setIsSelectionMode(Z)V
    .locals 0
    .param p1, "isSelectionMode"    # Z

    .prologue
    .line 1890
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectionMode:Z

    .line 1891
    return-void
.end method

.method public setMMSinformation(III)V
    .locals 3
    .param p1, "ActionCode"    # I
    .param p2, "LimitedCount"    # I
    .param p3, "CurrentCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 1799
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    .line 1800
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    .line 1801
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    .line 1802
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0xaa

    if-ne v0, v1, :cond_1

    .line 1804
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    .line 1812
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->configureSeletionTaskMode()V

    .line 1813
    return-void

    .line 1806
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1807
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    goto :goto_0

    .line 1809
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

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

    .line 1820
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    .line 1821
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    .line 1822
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    .line 1823
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0x96

    if-ne v0, v1, :cond_1

    .line 1824
    if-eqz p4, :cond_0

    .line 1825
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    .line 1835
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->configureSeletionTaskMode()V

    .line 1836
    return-void

    .line 1827
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    goto :goto_0

    .line 1830
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1831
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    goto :goto_0

    .line 1833
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    goto :goto_0
.end method

.method public setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 293
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 927
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 928
    return-void
.end method

.method public setSearchQuery()V
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 533
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 540
    :cond_0
    return-void
.end method

.method public setSearchViewClearFocus()V
    .locals 2

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1851
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 1853
    :cond_0
    return-void
.end method

.method public setSelectAllEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectAllEnabled:Z

    .line 305
    return-void
.end method

.method public setSendingMSG(Z)V
    .locals 0
    .param p1, "FromMMS"    # Z

    .prologue
    .line 1856
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSendingMSG:Z

    .line 1857
    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    .prologue
    .line 1838
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsFragmentShowing:Z

    if-eqz v0, :cond_0

    .line 1839
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1840
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSoftInputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1841
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1847
    :cond_0
    :goto_0
    return-void

    .line 1843
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

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
    .line 1024
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    .line 1025
    return-void
.end method

.method public setTutorialMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsTutorialMode:Z

    .line 308
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->nUri:Landroid/net/Uri;

    .line 1022
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 9
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 859
    if-nez p2, :cond_1

    .line 860
    const-string v4, "InteractionPickerContactsFragment"

    const-string v5, "Data is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 868
    .local v0, "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    if-nez v0, :cond_2

    .line 904
    :cond_0
    :goto_1
    return-void

    .line 862
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 863
    .local v1, "count":I
    const-string v4, "InteractionPickerContactsFragment"

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

    .line 873
    .end local v1    # "count":I
    .restart local v0    # "adapter":Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 875
    :cond_3
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showNoMatchesView(Z)V

    .line 878
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectAllEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectionMode:Z

    if-nez v4, :cond_0

    .line 880
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 884
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f090437

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 885
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09017e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 887
    .local v2, "progress":Landroid/widget/ProgressBar;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showNoMatchesView(Z)V

    .line 890
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 891
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectAllEnable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 892
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 895
    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 896
    const v4, 0x7f0e01a0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 897
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    .line 899
    :cond_6
    const v4, 0x7f0e02de

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 900
    const v4, 0x8000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 901
    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1
.end method
