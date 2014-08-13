.class public Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.super Lcom/android/contacts/list/ContactBrowseListFragment;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;,
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;,
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$RefreshTask;,
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$DatabaseTask;,
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$AddPrivateContactsListener;,
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;,
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;,
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;
    }
.end annotation


# static fields
.field private static final ACTION_SCONNECT_START:Ljava/lang/String; = "com.samsung.android.sconnect.START"

.field private static final DELETE_CONFIRM_POPUP:Ljava/lang/String; = "deleteconfirmpopup"

.field public static final DELETE_MODE_TRANSLATE_ANIMATION_DURATION:I = 0x14d

.field private static final DIALOG_CANCEL:I = 0x64

.field private static final EASYMODE_CONTACTS_TAB:I = 0x2

.field private static final EASYMODE_DIALER_TAB:I = 0x0

.field private static final EASYMODE_GROUPS_TAB:I = 0x1

.field private static final EXTRA_KEY_SELECTED_MODE:Ljava/lang/String; = "selectionMode"

.field private static final KEY_ADD_PRIVATE_IDS:Ljava/lang/String; = "addprivateIds"

.field private static final KEY_ADD_PRIVATE_MODE:Ljava/lang/String; = "addprivateMode"

.field private static final KEY_ADD_PRIVATE_URIS:Ljava/lang/String; = "addprivateUris"

.field private static final KEY_CUSTOM_SEARCH_MODE:Ljava/lang/String; = "customSearchMode"

.field private static final KEY_CUSTOM_SEARCH_QUERY_STRING:Ljava/lang/String; = "customSearchQueryString"

.field private static final KEY_DELETE_IDS:Ljava/lang/String; = "deleteIds"

.field private static final KEY_DELETE_MODE:Ljava/lang/String; = "deleteMode"

.field private static final KEY_DELETE_URIS:Ljava/lang/String; = "deleteUris"

.field private static final KEY_RESTORE_DIRECTORY_SEARCH_MODE:Ljava/lang/String; = "restoreDirectorySearchMode"

.field private static final KEY_SELECTED_IDS:Ljava/lang/String; = "selected_ids"

.field private static final KEY_SHOW_ACTIONBAR:Ljava/lang/String; = "showActionbar"

.field private static final MAX_QUERY_STRING_LENGTH:I = 0x3e8

.field private static final MODE_PRINT_NAMECARD:I = 0x2

.field private static final MODE_SEND_CONTACT_INFO:I = 0x1

.field private static final MOVETOKNOX_MODE:Ljava/lang/String; = "movetoKnoxMode"

.field private static final PROFILE_LOOKUPKEY:Ljava/lang/String; = "profile"

.field private static final SHARE_VIA_DISPLAY_MAX_COUNT:I = 0xa

.field private static final SHARE_VIA_INDIVIDUAL_MAX_COUNT:I = 0xfa

.field private static final SHARE_VIA_MULTIPLE_MAX_COUNT:I = 0xbb8

.field private static final SIM_ONE:I = 0x1

.field private static final SIM_ZERO:I = 0x0

.field public static final SUBSCRIBE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DefaultContactBrowseListFragment"

.field private static final VCARD:Ljava/lang/String; = "vcard"

.field public static callPressed:Z

.field private static isDeleteConfirm:Z

.field private static isDeleteConfirmPopupShowing:Z

.field private static mDialogCancelhandler:Landroid/os/Handler;

.field private static mIsRegisteredBezelListener:Z

.field private static sIsMMSAvailable:Z

.field private static sIsPhone:Z

.field public static sIsTwoPaneMode:Z

.field private static sIsVideoCall:Z


# instance fields
.field private final HANDLE_200OK_EVENT:I

.field private final NOTIFICATION_INFO_EVT:I

.field private deleteDialog:Landroid/app/AlertDialog;

.field private dialog:Landroid/app/Dialog;

.field final dismisslistener:Landroid/content/DialogInterface$OnDismissListener;

.field private hasPermanentMenuKey:Z

.field private mAccountFilterHeaderContainer:Landroid/view/View;

.field private mAccountFilterHeaderView:Landroid/widget/TextView;

.field protected mActionMode:Landroid/view/ActionMode;

.field protected mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

.field mActionModeSelectedUri:Landroid/net/Uri;

.field private mAddPrivateContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$AddPrivateContactsListener;

.field private mAddPrivateUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mAllPrivateCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

.field private mCheckedIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContactListhandler:Landroid/os/Handler;

.field private mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

.field private mContactsUnavailableView:Landroid/view/View;

.field private mCreateButton:Landroid/widget/ImageButton;

.field private mCustomSearchBarLayout:Landroid/view/View;

.field protected mCustomSearchMode:Z

.field protected mCustomSearchQueryString:Ljava/lang/String;

.field private mCustomSearchView:Landroid/widget/SearchView;

.field protected mDataChangeListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;

.field private mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

.field private mDeleteHeaderView:Landroid/view/View;

.field private mDeleteUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

.field private mEasymodeCreateButton:Landroid/view/View;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mFragmentView:Landroid/view/View;

.field private mIsAddaContactTutorialMode:Z

.field mIsBlackTheme:Z

.field private mIsCreateView:Z

.field private mIsHugeFontMode:Z

.field private mIsKNOXMode:Z

.field private mIsPrivateContact:I

.field protected mIsSelectionMode:Z

.field private mIsVoLTEEnabled:Z

.field private mListContentFrame:Landroid/view/View;

.field private mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mMessageContainer:Landroid/widget/FrameLayout;

.field private mMovetoKnoxMode:Z

.field public mMultiSelectionDeleteMode:Z

.field private mPrivateCheckedIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateContactHeaderView:Landroid/view/View;

.field private mProfileHeader:Landroid/view/View;

.field private mProfileHeaderContainer:Landroid/widget/FrameLayout;

.field private mProfileMessage:Landroid/widget/TextView;

.field private mProfileTitle:Landroid/widget/TextView;

.field private mProviderStatus:I

.field private mRefreshDialog:Landroid/app/Dialog;

.field private mRestoreDirectorySearchMode:I

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

.field private mSelectedPreLoadContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharePopupMenu:Landroid/widget/ListPopupWindow;

.field private mShouldUpdateDeleteContactList:Z

.field private mShowActionbar:Z

.field private mSim1Name:Ljava/lang/String;

.field private mSim2Name:Ljava/lang/String;

.field private mTotalContactsTextView:Landroid/widget/TextView;

.field private mTotalContactsView:Landroid/view/View;

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

.field private popupMenu:Landroid/widget/PopupMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 340
    sput-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsRegisteredBezelListener:Z

    .line 417
    sput-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->callPressed:Z

    .line 451
    sput-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteConfirmPopupShowing:Z

    .line 455
    sput-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteConfirm:Z

    .line 744
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;

    invoke-direct {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;-><init>()V

    sput-object v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDialogCancelhandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 536
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;-><init>()V

    .line 224
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->NOTIFICATION_INFO_EVT:I

    .line 226
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->HANDLE_200OK_EVENT:I

    .line 232
    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->dialog:Landroid/app/Dialog;

    .line 257
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsBlackTheme:Z

    .line 313
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    .line 315
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 321
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    .line 323
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    .line 325
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    .line 327
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z

    .line 398
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsVoLTEEnabled:Z

    .line 423
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsAddaContactTutorialMode:Z

    .line 425
    iput-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldUpdateDeleteContactList:Z

    .line 427
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsCreateView:Z

    .line 429
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProviderStatus:I

    .line 437
    iput v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mRestoreDirectorySearchMode:I

    .line 460
    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    .line 462
    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    .line 505
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;

    invoke-direct {v0, p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 740
    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mRefreshDialog:Landroid/app/Dialog;

    .line 786
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactListhandler:Landroid/os/Handler;

    .line 1651
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$14;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$14;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->dismisslistener:Landroid/content/DialogInterface$OnDismissListener;

    .line 537
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setPhotoLoaderEnabled(Z)V

    .line 538
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 540
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 541
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 543
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 545
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFakeQueryModeEnabled(Z)V

    .line 549
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setForceReverseFastScrollBarPositionEnabled(Z)V

    .line 550
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldForceLoad()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkDeleteHeaderViewVisibility()V

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 217
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    return v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 217
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldUpdateDeleteContactList:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSelectAllState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createLauncherShortcutWithContact(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->deleteDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->deleteDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/contacts/list/DefaultContactBrowseListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mRestoreDirectorySearchMode:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->initializeSearchView()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsAddaContactTutorialMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->constructPopupMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 217
    sput-boolean p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteConfirmPopupShowing:Z

    return p0
.end method

.method private addAllPrivateContactHeaderView(Landroid/view/LayoutInflater;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const v3, 0x7f0401de

    .line 2489
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2490
    .local v0, "headerContainer":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPrivateContactHeaderView:Landroid/view/View;

    .line 2491
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 2492
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPrivateContactHeaderView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2493
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPrivateContactHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2494
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureListBackgound()V

    .line 2495
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 2496
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPrivateContactHeaderView:Landroid/view/View;

    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllPrivateCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2498
    return-void
.end method

.method private addDeleteAllHeaderView(Landroid/view/LayoutInflater;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const v3, 0x7f0401de

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2458
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2459
    .local v0, "headerContainer":Landroid/widget/FrameLayout;
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isFromNamecardDeleteActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2460
    const v2, 0x7f0401df

    invoke-virtual {p1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    .line 2465
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 2466
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2468
    const v2, 0x7f0401f4

    invoke-virtual {p1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2469
    .local v1, "marginView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v1, v5, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2471
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2473
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureListBackgound()V

    .line 2474
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 2475
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const v3, 0x7f09011e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2485
    return-void

    .line 2463
    .end local v1    # "marginView":Landroid/view/View;
    :cond_0
    invoke-virtual {p1, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    goto :goto_0
.end method

.method private addEmptyUserProfileHeader(Landroid/view/LayoutInflater;)V
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const v7, 0x7f040223

    const/4 v6, 0x1

    const v5, 0x7f040222

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2529
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    .line 2534
    .local v0, "list":Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v1, :cond_2

    .line 2535
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 2536
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    .line 2537
    invoke-virtual {p1, v7, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    .line 2539
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    const v2, 0x7f090497

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    .line 2540
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 2541
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2542
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2545
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    .line 2548
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    .line 2550
    invoke-virtual {p1, v5, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    .line 2552
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 2553
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2554
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 2575
    :cond_1
    :goto_0
    return-void

    .line 2558
    :cond_2
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    .line 2559
    invoke-virtual {p1, v7, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    .line 2561
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    const v2, 0x7f090497

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    .line 2562
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 2563
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2564
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2568
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    .line 2570
    invoke-virtual {p1, v5, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    .line 2571
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 2572
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2573
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private addToVipList(Landroid/net/Uri;Z)V
    .locals 9
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "isWhiteList"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3274
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v6

    .line 3275
    .local v6, "beforeNormalize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3276
    .local v4, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 3278
    .local v8, "intent":Landroid/content/Intent;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 3279
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3280
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3278
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3284
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 3285
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e039f

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3309
    :goto_1
    return-void

    .line 3286
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 3287
    if-eqz p2, :cond_3

    .line 3288
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0e039e

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 3293
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x2

    const v3, 0x7f0e039d

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 3299
    :cond_4
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3300
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3301
    const-string v1, "number"

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3302
    if-eqz p2, :cond_5

    .line 3303
    const-string v0, "list"

    const-string v1, "whitelist"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3307
    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 3305
    :cond_5
    const-string v0, "list"

    const-string v1, "blacklist"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private adjustTotalCountText(I)V
    .locals 7
    .param p1, "count"    # I

    .prologue
    .line 2421
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteContactsInGroup()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2441
    :goto_0
    return-void

    .line 2426
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2428
    .local v2, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "only_phones"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2430
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10000a

    invoke-virtual {v3, v4, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2437
    .local v1, "format":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2438
    .end local v1    # "format":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2439
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 2433
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100009

    invoke-virtual {v3, v4, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "format":Ljava/lang/String;
    goto :goto_1
.end method

.method private checkAddPrivateHeaderViewVisibility()V
    .locals 2

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPrivateContactHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2117
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2120
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPrivateContactHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2125
    :cond_1
    :goto_0
    return-void

    .line 2122
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPrivateContactHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private checkDeleteHeaderViewVisibility()V
    .locals 2

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2104
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2107
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2112
    :cond_1
    :goto_0
    return-void

    .line 2109
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private checkHeaderViewVisibility()V
    .locals 0

    .prologue
    .line 2098
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    .line 2099
    return-void
.end method

.method private configureAccountFilterView()V
    .locals 6

    .prologue
    .line 4159
    sget-boolean v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4161
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    .line 4163
    .local v1, "listView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 4164
    .local v0, "leftPadding":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 4166
    .local v2, "rightPadding":I
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 4170
    .end local v0    # "leftPadding":I
    .end local v1    # "listView":Landroid/view/View;
    .end local v2    # "rightPadding":I
    :cond_0
    return-void
.end method

.method private configureListBackgound()V
    .locals 0

    .prologue
    .line 2502
    return-void
.end method

.method private configureSearchView()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 4118
    sget-boolean v9, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v9, :cond_2

    .line 4119
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    .line 4120
    .local v4, "listView":Landroid/view/View;
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    if-nez v9, :cond_0

    .line 4121
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    .line 4122
    :cond_0
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c011d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 4124
    .local v1, "defaultSearchViewLeftRightPadding":I
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c011e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 4126
    .local v2, "defaultSearchViewTopBottomPadding":I
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c011f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 4128
    .local v6, "searchViewTopBottomPadding":I
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0120

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 4131
    .local v7, "searchViewTopBottomPaddingInPopupList":I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int v3, v9, v1

    .line 4132
    .local v3, "leftPadding":I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int v5, v9, v1

    .line 4133
    .local v5, "rightPadding":I
    sub-int v8, v6, v2

    .line 4134
    .local v8, "topPadding":I
    sub-int v0, v6, v2

    .line 4136
    .local v0, "bottomPadding":I
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 4137
    sub-int v8, v7, v2

    .line 4139
    sub-int v0, v7, v2

    .line 4143
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v9, :cond_3

    .line 4144
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9, v11, v11, v5, v11}, Landroid/widget/SearchView;->setPadding(IIII)V

    .line 4155
    .end local v0    # "bottomPadding":I
    .end local v1    # "defaultSearchViewLeftRightPadding":I
    .end local v2    # "defaultSearchViewTopBottomPadding":I
    .end local v3    # "leftPadding":I
    .end local v4    # "listView":Landroid/view/View;
    .end local v5    # "rightPadding":I
    .end local v6    # "searchViewTopBottomPadding":I
    .end local v7    # "searchViewTopBottomPaddingInPopupList":I
    .end local v8    # "topPadding":I
    :cond_2
    :goto_0
    return-void

    .line 4145
    .restart local v0    # "bottomPadding":I
    .restart local v1    # "defaultSearchViewLeftRightPadding":I
    .restart local v2    # "defaultSearchViewTopBottomPadding":I
    .restart local v3    # "leftPadding":I
    .restart local v4    # "listView":Landroid/view/View;
    .restart local v5    # "rightPadding":I
    .restart local v6    # "searchViewTopBottomPadding":I
    .restart local v7    # "searchViewTopBottomPaddingInPopupList":I
    .restart local v8    # "topPadding":I
    :cond_3
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4146
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9, v3, v11, v11, v11}, Landroid/widget/SearchView;->setPadding(IIII)V

    goto :goto_0

    .line 4148
    :cond_4
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v9, :cond_5

    .line 4149
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00b3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    sub-int v3, v9, v1

    .line 4152
    :cond_5
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9, v3, v8, v5, v11}, Landroid/widget/SearchView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private constructPopupMenu(Landroid/view/View;)V
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 1446
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    .line 1447
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1448
    .local v0, "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    const/high16 v2, 0x7f120000

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1455
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$12;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$12;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1461
    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 1462
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 1463
    return-void
.end method

.method private copyToDialingScreen(Landroid/net/Uri;)V
    .locals 8
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 3313
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v4

    .line 3314
    .local v4, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 3316
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 3317
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0e0234

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    .line 3326
    :goto_0
    return-void

    .line 3322
    :cond_0
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    const-string v3, "tel"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v6, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3323
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v0, "withSpecialChar"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3324
    invoke-virtual {p0, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private createLauncherShortcutWithContact(Landroid/net/Uri;)V
    .locals 3
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 4284
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4286
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/contacts/list/ShortcutIntentBuilder;

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$17;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$17;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/app/Activity;)V

    invoke-direct {v1, v0, v2}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 4297
    .local v1, "builder":Lcom/android/contacts/list/ShortcutIntentBuilder;
    invoke-virtual {v1, p1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    .line 4298
    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 4

    .prologue
    .line 778
    const/4 v0, 0x0

    .line 779
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-boolean v1, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v1, :cond_0

    .line 780
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 781
    const-string v1, "DefaultContactBrowseListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EabContactBrowseListFragment - getContentResolver() Cr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    return-object v0
.end method

.method private getPhoneNumbers(J)Ljava/util/ArrayList;
    .locals 11
    .param p1, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 3243
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3244
    .local v8, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v10

    const-string v0, "data2"

    aput-object v0, v2, v1

    .line 3247
    .local v2, "projection":[Ljava/lang/String;
    const-string v9, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 3249
    .local v9, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 3253
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3256
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3257
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3260
    :cond_0
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3262
    .local v7, "phoneNum":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3263
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3265
    .end local v7    # "phoneNum":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 3266
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3269
    :cond_2
    return-object v8
.end method

.method private getShareIntent()Landroid/content/Intent;
    .locals 25

    .prologue
    .line 4482
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 4484
    .local v18, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v5, 0x0

    .line 4485
    .local v5, "i":I
    new-instance v2, Lcom/android/contacts/preference/ContactsPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 4486
    .local v2, "contactsPreferences":Lcom/android/contacts/preference/ContactsPreferences;
    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v12

    .line 4489
    .local v12, "sendType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 4491
    .local v14, "tmpSelectedUris":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 4492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v3

    .line 4495
    .local v3, "count":I
    const/4 v10, 0x0

    .local v10, "position":I
    :goto_0
    if-ge v10, v3, :cond_2

    .line 4496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/contacts/list/ContactListAdapter;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 4497
    .local v6, "id":Ljava/lang/Long;
    invoke-virtual {v14, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 4498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/contacts/list/ContactListAdapter;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactListAdapter;->isSharableContact(I)Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/android/contacts/ContactsUtils;->isUndeletableProfile(J)Z

    move-result v20

    if-nez v20, :cond_0

    .line 4500
    invoke-virtual {v14, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4495
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 4507
    .end local v3    # "count":I
    .end local v6    # "id":Ljava/lang/Long;
    .end local v10    # "position":I
    :cond_1
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 4508
    .local v8, "idSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4509
    .local v7, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4511
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v7, v14}, Lcom/android/contacts/ContactsUtils;->getSharableOnly(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)Z

    .line 4514
    .end local v7    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8    # "idSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_2
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_6

    .line 4515
    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 4516
    .local v16, "uriIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 4517
    .local v19, "vcardUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v11, 0x0

    .line 4519
    .local v11, "profileVcard":Landroid/net/Uri;
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 4520
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 4521
    .local v9, "lookupKey":Ljava/lang/String;
    const-string v20, "profile"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 4522
    sget-object v20, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 4523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lcom/android/contacts/util/ContactLoaderUtils;->getPreAuthorizedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    .line 4524
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4528
    :goto_1
    add-int/lit8 v5, v5, 0x1

    const/16 v20, 0xfa

    move/from16 v0, v20

    if-lt v5, v0, :cond_3

    .line 4533
    .end local v9    # "lookupKey":Ljava/lang/String;
    :cond_4
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4534
    .local v13, "shareIntent":Landroid/content/Intent;
    const-string v20, "text/x-vcard"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4535
    const-string v20, "vcard"

    const-string v21, "vcard"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4536
    const-string v20, "android.intent.extra.STREAM"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4589
    :goto_2
    const-string v20, "android.intent.extra.TITLE"

    const v21, 0x7f0e0229

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4590
    return-object v13

    .line 4526
    .end local v13    # "shareIntent":Landroid/content/Intent;
    .restart local v9    # "lookupKey":Ljava/lang/String;
    :cond_5
    sget-object v20, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4538
    .end local v9    # "lookupKey":Ljava/lang/String;
    .end local v11    # "profileVcard":Landroid/net/Uri;
    .end local v16    # "uriIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v19    # "vcardUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_6
    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 4539
    .restart local v16    # "uriIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 4540
    .restart local v19    # "vcardUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 4541
    .local v17, "uriListBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 4542
    .local v4, "hasProfile":Z
    const/4 v11, 0x0

    .line 4543
    .restart local v11    # "profileVcard":Landroid/net/Uri;
    const/4 v15, 0x0

    .line 4545
    .local v15, "uri":Landroid/net/Uri;
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 4546
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 4547
    .restart local v9    # "lookupKey":Ljava/lang/String;
    const-string v20, "profile"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 4548
    const/4 v4, 0x1

    .line 4549
    sget-object v20, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 4550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lcom/android/contacts/util/ContactLoaderUtils;->getPreAuthorizedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    .line 4555
    :goto_3
    add-int/lit8 v5, v5, 0x1

    const/16 v20, 0xbb8

    move/from16 v0, v20

    if-le v5, v0, :cond_7

    .line 4560
    .end local v9    # "lookupKey":Ljava/lang/String;
    :cond_8
    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_9

    .line 4561
    sget-object v20, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 4564
    :cond_9
    if-eqz v4, :cond_b

    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_b

    .line 4565
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4566
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4567
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4568
    .restart local v13    # "shareIntent":Landroid/content/Intent;
    const-string v20, "text/x-vcard"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4569
    const-string v20, "vcard"

    const-string v21, "vcard"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4570
    const-string v20, "android.intent.extra.STREAM"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 4552
    .end local v13    # "shareIntent":Landroid/content/Intent;
    .restart local v9    # "lookupKey":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4553
    const/16 v20, 0x3a

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4571
    .end local v9    # "lookupKey":Ljava/lang/String;
    :cond_b
    if-eqz v4, :cond_c

    .line 4572
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.intent.action.SEND"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4573
    .restart local v13    # "shareIntent":Landroid/content/Intent;
    const-string v20, "text/x-vcard"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4574
    new-instance v20, Landroid/content/ClipData;

    const-string v21, "dummy"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "text/x-vcard"

    aput-object v24, v22, v23

    new-instance v23, Landroid/content/ClipData$Item;

    const-string v24, "dummy"

    invoke-direct/range {v23 .. v24}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct/range {v20 .. v23}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 4577
    const-string v20, "vcard"

    const-string v21, "vcard"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4578
    const-string v20, "android.intent.extra.STREAM"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 4580
    .end local v13    # "shareIntent":Landroid/content/Intent;
    :cond_c
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.intent.action.SEND"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4581
    .restart local v13    # "shareIntent":Landroid/content/Intent;
    const-string v20, "text/x-vcard"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4582
    new-instance v20, Landroid/content/ClipData;

    const-string v21, "dummy"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "text/x-vcard"

    aput-object v24, v22, v23

    new-instance v23, Landroid/content/ClipData$Item;

    const-string v24, "dummy"

    invoke-direct/range {v23 .. v24}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct/range {v20 .. v23}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 4585
    const-string v20, "vcard"

    const-string v21, "vcard"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4586
    const-string v20, "android.intent.extra.STREAM"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2
.end method

.method private hideUnnecessarymMenuIfEasyMode(Landroid/view/ContextMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    const/4 v1, 0x0

    .line 4301
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4302
    const v0, 0x7f0904ea

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4303
    const v0, 0x7f0904e7

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4304
    const v0, 0x7f0904eb

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4305
    const v0, 0x7f0904ed

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4306
    const v0, 0x7f0904ef

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4307
    const v0, 0x7f0904f0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4308
    const v0, 0x7f0904f1

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4309
    const v0, 0x7f0904e8

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4311
    const v0, 0x7f0904f2

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4313
    :cond_0
    return-void
.end method

.method private initializeSearchView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5161
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 5162
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 5163
    iput-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    .line 5164
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 5165
    return-void
.end method

.method private isAllDeleteChecked()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 3658
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 3659
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    const/4 v1, 0x0

    .line 3660
    .local v1, "checkedCount":I
    monitor-enter v0

    .line 3661
    :try_start_0
    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getCount()I

    move-result v2

    .line 3663
    .local v2, "cursorSize":I
    const/4 v5, 0x0

    .local v5, "position":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 3665
    invoke-virtual {v0, v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3663
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3676
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6, v5}, Lcom/android/contacts/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 3678
    .local v3, "mId":J
    const-wide/16 v8, 0x0

    cmp-long v6, v3, v8

    if-eqz v6, :cond_0

    .line 3682
    add-int/lit8 v1, v1, 0x1

    .line 3684
    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChecked(J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3685
    monitor-exit v0

    .line 3689
    .end local v3    # "mId":J
    :goto_1
    return v7

    .line 3688
    :cond_2
    monitor-exit v0

    .line 3689
    if-nez v1, :cond_3

    move v6, v7

    :goto_2
    move v7, v6

    goto :goto_1

    .line 3688
    .end local v2    # "cursorSize":I
    .end local v5    # "position":I
    :catchall_0
    move-exception v6

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3689
    .restart local v2    # "cursorSize":I
    .restart local v5    # "position":I
    :cond_3
    const/4 v6, 0x1

    goto :goto_2
.end method

.method private isAllPrivateContactsChecked()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 3694
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 3695
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    const/4 v1, 0x0

    .line 3696
    .local v1, "checkedCount":I
    monitor-enter v0

    .line 3697
    :try_start_0
    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getCount()I

    move-result v2

    .line 3699
    .local v2, "cursorSize":I
    const/4 v5, 0x0

    .local v5, "position":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 3701
    invoke-virtual {v0, v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3699
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3704
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6, v5}, Lcom/android/contacts/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 3706
    .local v3, "mId":J
    const-wide/16 v8, 0x0

    cmp-long v6, v3, v8

    if-eqz v6, :cond_0

    .line 3710
    add-int/lit8 v1, v1, 0x1

    .line 3712
    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChecked(J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3713
    monitor-exit v0

    .line 3717
    .end local v3    # "mId":J
    :goto_1
    return v7

    .line 3716
    :cond_2
    monitor-exit v0

    .line 3717
    if-nez v1, :cond_3

    move v6, v7

    :goto_2
    move v7, v6

    goto :goto_1

    .line 3716
    .end local v2    # "cursorSize":I
    .end local v5    # "position":I
    :catchall_0
    move-exception v6

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3717
    .restart local v2    # "cursorSize":I
    .restart local v5    # "position":I
    :cond_3
    const/4 v6, 0x1

    goto :goto_2
.end method

.method private isAvailableToCreateContextMenu(Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 9
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x0

    .line 4389
    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v5, :cond_1

    .line 4419
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v2, p1

    .line 4394
    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 4395
    .local v2, "info":Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    if-eqz v2, :cond_0

    .line 4403
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 4404
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    iget v5, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v6

    sub-int v1, v5, v6

    .line 4405
    .local v1, "adjPosition":I
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 4414
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 4415
    .local v3, "item":Landroid/database/Cursor;
    if-eqz v3, :cond_0

    .line 4419
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isBlackListContact(J)Z
    .locals 7
    .param p1, "contactId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3195
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->queryBlackList()Ljava/util/HashMap;

    move-result-object v3

    .line 3196
    .local v3, "rejectCallHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v2

    .line 3198
    .local v2, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 3199
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 3200
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3201
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v6, :cond_2

    :cond_0
    move v4, v5

    .line 3210
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :goto_1
    return v4

    :cond_1
    move v4, v5

    .line 3207
    goto :goto_1

    .line 3198
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 3210
    goto :goto_1
.end method

.method private isFDNEnabled()Z
    .locals 4

    .prologue
    .line 4465
    const/4 v0, 0x0

    .line 4467
    .local v0, "isFDNEnabled":Z
    :try_start_0
    const-string v3, "phoneext"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 4469
    .local v1, "phone":Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v1, :cond_0

    .line 4470
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->isSimFDNEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4474
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephonyExt;
    :cond_0
    :goto_0
    return v0

    .line 4471
    :catch_0
    move-exception v2

    .line 4472
    .local v2, "re":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isFromDeleteContactsActivity()Z
    .locals 1

    .prologue
    .line 4321
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    return v0
.end method

.method private isFromNamecardDeleteActivity()Z
    .locals 1

    .prologue
    .line 4325
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/NamecardDeleteActivity;

    return v0
.end method

.method private isFromPrivateContactsActivity()Z
    .locals 1

    .prologue
    .line 4329
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;

    return v0
.end method

.method private isHelpTextNeeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4354
    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_1

    .line 4362
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMoveToKNOXEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2579
    const/4 v0, 0x0

    .line 2580
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 2581
    const-string v3, "true"

    const-string v4, "isSupportMoveTo"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2582
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    if-nez v3, :cond_0

    .line 2583
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsKNOXMode:Z

    .line 2588
    :goto_0
    const-string v2, "DefaultContactBrowseListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsKNOXMode::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsKNOXMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    :goto_1
    return v1

    .line 2586
    :cond_0
    iput-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsKNOXMode:Z

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2592
    goto :goto_1
.end method

.method private isSelectAllState()Z
    .locals 6

    .prologue
    .line 5400
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v4, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v0

    .line 5402
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 5403
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v4, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v4, v3}, Lcom/android/contacts/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 5405
    .local v1, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    .line 5402
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5406
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5407
    const/4 v4, 0x0

    .line 5410
    .end local v1    # "id":J
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private onAddPrivateAllChecked(Z)V
    .locals 9
    .param p1, "isChecked"    # Z

    .prologue
    .line 3590
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v5

    .line 3591
    .local v5, "isSearchMode":Z
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 3593
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    if-nez v5, :cond_0

    .line 3594
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateUris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 3595
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPrivateCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 3598
    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getCount()I

    move-result v4

    .line 3599
    .local v4, "cursorSize":I
    const/4 v6, 0x0

    .local v6, "position":I
    :goto_0
    if-ge v6, v4, :cond_5

    .line 3600
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3599
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3603
    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3604
    .local v1, "contactId":J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    .line 3607
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    .line 3609
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 3610
    .local v3, "contactUri":Landroid/net/Uri;
    if-eqz v5, :cond_4

    .line 3611
    if-eqz p1, :cond_3

    .line 3614
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3616
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3618
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3621
    :cond_4
    if-eqz p1, :cond_1

    .line 3622
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3626
    .end local v1    # "contactId":J
    .end local v3    # "contactUri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidateViews()V

    .line 3630
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$AddPrivateContactsListener;

    if-eqz v7, :cond_6

    .line 3631
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$AddPrivateContactsListener;

    iget-object v8, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$AddPrivateContactsListener;->onSelectedCountChanged(I)V

    .line 3633
    :cond_6
    return-void
.end method

.method private onDeleteAllChecked(Z)V
    .locals 9
    .param p1, "isChecked"    # Z

    .prologue
    .line 3514
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v5

    .line 3515
    .local v5, "isSearchMode":Z
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 3517
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    if-nez v5, :cond_0

    .line 3518
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 3519
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 3522
    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getCount()I

    move-result v4

    .line 3523
    .local v4, "cursorSize":I
    const/4 v6, 0x0

    .local v6, "position":I
    :goto_0
    if-ge v6, v4, :cond_5

    .line 3524
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3523
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3534
    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3535
    .local v1, "contactId":J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    .line 3538
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    .line 3540
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 3541
    .local v3, "contactUri":Landroid/net/Uri;
    if-eqz v5, :cond_4

    .line 3542
    if-eqz p1, :cond_3

    .line 3545
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3547
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3549
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3552
    :cond_4
    if-eqz p1, :cond_1

    .line 3553
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3557
    .end local v1    # "contactId":J
    .end local v3    # "contactUri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidateViews()V

    .line 3561
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    if-eqz v7, :cond_6

    .line 3562
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    iget-object v8, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;->onSelectedCountChanged(I)V

    .line 3564
    :cond_6
    return-void
.end method

.method private queryBlackList()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 3214
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 3215
    .local v7, "rejectCallHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    .line 3216
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v12

    const-string v0, "reject_checked"

    aput-object v0, v2, v11

    .line 3219
    .local v2, "projection":[Ljava/lang/String;
    const-string v10, "reject_match = 0"

    .line 3221
    .local v10, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "reject_match = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3223
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 3224
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v11, :cond_1

    .line 3225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3239
    :cond_0
    :goto_0
    return-object v7

    .line 3229
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3231
    :cond_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3232
    .local v9, "rejectNum":Ljava/lang/String;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3233
    .local v8, "rejectCheck":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3234
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private queryPhoneNumbers(J)Landroid/database/Cursor;
    .locals 10
    .param p1, "contactId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4367
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 4368
    .local v6, "baseUri":Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4370
    .local v1, "dataUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "data1"

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "lookup"

    aput-object v4, v2, v3

    const-string v3, "mimetype=?"

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4378
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 4379
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4384
    .end local v7    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 4382
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v5

    .line 4384
    goto :goto_0
.end method

.method private selectContactForAddPrivate(IJ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3380
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 3381
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 3383
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3407
    :cond_0
    :goto_0
    return-void

    .line 3386
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChecked(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3387
    invoke-virtual {v0, p2, p3, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    .line 3388
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3389
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllPrivateCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 3400
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidateViews()V

    .line 3404
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$AddPrivateContactsListener;

    if-eqz v2, :cond_0

    .line 3405
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$AddPrivateContactsListener;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$AddPrivateContactsListener;->onSelectedCountChanged(I)V

    goto :goto_0

    .line 3392
    :cond_3
    invoke-virtual {v0, p2, p3, v4}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    .line 3393
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3395
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllPrivateContactsChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3396
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllPrivateCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private selectContactForDelete(IJ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3342
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 3343
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 3345
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3376
    :cond_0
    :goto_0
    return-void

    .line 3355
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChecked(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3356
    invoke-virtual {v0, p2, p3, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    .line 3357
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3358
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 3369
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidateViews()V

    .line 3373
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    if-eqz v2, :cond_0

    .line 3374
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;->onSelectedCountChanged(I)V

    goto :goto_0

    .line 3361
    :cond_3
    invoke-virtual {v0, p2, p3, v4}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    .line 3362
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3364
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllDeleteChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3365
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private setCreateButtonVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/16 v0, 0x8

    .line 2129
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_1

    .line 2141
    :cond_0
    :goto_0
    return-void

    .line 2135
    :cond_1
    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 2136
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2139
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 2140
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCustomMenuButtonVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/16 v0, 0x8

    .line 2145
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2156
    :cond_0
    :goto_0
    return-void

    .line 2151
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->hasPermanentMenuKey:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_3

    .line 2152
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2155
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCustomSearchMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 3924
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    .line 3927
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    .line 3928
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->shouldShowSearchResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3933
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    invoke-super {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSearchMode(Z)V

    .line 3936
    :cond_0
    return-void
.end method

.method private setDeleteModeLayout()V
    .locals 8

    .prologue
    const v7, 0x7f0c00b3

    const/4 v6, 0x1

    .line 1947
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    .line 1949
    .local v1, "listView":Landroid/view/View;
    sget-boolean v4, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 1950
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0121

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1953
    .local v2, "popupListLeftRightPadding":I
    const/4 v0, 0x0

    .line 1954
    .local v0, "leftPadding":I
    const/4 v3, 0x0

    .line 1956
    .local v3, "rightPadding":I
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getVerticalTwIndexScrollbarPosition()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1957
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1959
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1960
    move v3, v2

    .line 1974
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v0, v4, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1976
    const/high16 v4, 0x2000000

    invoke-virtual {v1, v4}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 1977
    invoke-virtual {v1, v6}, Landroid/view/View;->setVerticalScrollBarPadding(Z)V

    .line 1978
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVerticalScrollBarPaddingPosition(I)V

    .line 1982
    .end local v0    # "leftPadding":I
    .end local v2    # "popupListLeftRightPadding":I
    .end local v3    # "rightPadding":I
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureSearchView()V

    .line 1983
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureAccountFilterView()V

    .line 1984
    return-void

    .line 1962
    .restart local v0    # "leftPadding":I
    .restart local v2    # "popupListLeftRightPadding":I
    .restart local v3    # "rightPadding":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1964
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1965
    move v0, v2

    .line 1966
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1968
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getTwIndexLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 1969
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v9, 0x7f0904b0

    const v8, 0x7f0904ab

    const v7, 0x7f0904b4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1468
    const v5, 0x7f0904a0

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1469
    const v5, 0x7f0904a2

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1470
    const v5, 0x7f0904a1

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1471
    const v5, 0x7f0904b1

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1472
    const v5, 0x7f0904bb

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1473
    const v5, 0x7f0904bc

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1474
    const v5, 0x7f0904bd

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1475
    const v5, 0x7f0904be

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1476
    const v5, 0x7f0904a4

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1477
    const v5, 0x7f0904bf

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1478
    const v5, 0x7f0904c0

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1480
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1481
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1487
    :goto_0
    const v5, 0x7f0904b5

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1488
    .local v0, "contactCounterMenu":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1489
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableMenuStorageStatus"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1491
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1506
    :cond_0
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1508
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v2, v3

    .line 1510
    .local v2, "isAirplaneMode":Z
    :goto_2
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v1

    .line 1511
    .local v1, "hasIccCard":Z
    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    .line 1512
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1517
    .end local v1    # "hasIccCard":Z
    .end local v2    # "isAirplaneMode":Z
    :cond_1
    :goto_3
    sget-boolean v5, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    if-nez v5, :cond_2

    .line 1518
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1519
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1522
    :cond_2
    sget-boolean v5, Lcom/android/contacts/activities/PeopleActivity;->mIsAvailableMyNetwork:Z

    if-eqz v5, :cond_8

    .line 1523
    const v5, 0x7f0904b6

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1528
    :goto_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v5, 0x64

    if-lt v3, v5, :cond_3

    .line 1529
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1531
    :cond_3
    return-void

    .line 1483
    .end local v0    # "contactCounterMenu":Landroid/view/MenuItem;
    :cond_4
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1493
    .restart local v0    # "contactCounterMenu":Landroid/view/MenuItem;
    :cond_5
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    move v2, v4

    .line 1508
    goto :goto_2

    .line 1514
    .restart local v1    # "hasIccCard":Z
    .restart local v2    # "isAirplaneMode":Z
    :cond_7
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1525
    .end local v1    # "hasIccCard":Z
    .end local v2    # "isAirplaneMode":Z
    :cond_8
    const v3, 0x7f0904b6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method private shouldForceLoad()Z
    .locals 3

    .prologue
    .line 4263
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4264
    const-string v0, "DefaultContactBrowseListFragment"

    const-string v1, " shouldForceLoad() : selected tab is not gruop. bypass"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4265
    const/4 v0, 0x0

    .line 4273
    :goto_0
    return v0

    .line 4267
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_1

    .line 4269
    const-string v0, "DefaultContactBrowseListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " shouldForceLoad() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldUpdateDeleteContactList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldUpdateDeleteContactList:Z

    goto :goto_0

    .line 4272
    :cond_1
    const-string v0, "DefaultContactBrowseListFragment"

    const-string v1, " shouldForceLoad() : query right now"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showJoinAggregateActivity(Landroid/net/Uri;)V
    .locals 4
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 3330
    if-nez p1, :cond_0

    .line 3338
    :goto_0
    return-void

    .line 3333
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3334
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.CONTACT_ID"

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3336
    const-string v1, "intentFrom"

    const-string v2, "mainlist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3337
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showNoMatchesView(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 3904
    const/4 v0, -0x1

    .line 3905
    .local v0, "mSoftInput":I
    if-eqz p1, :cond_0

    .line 3906
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3907
    const/16 v0, 0x10

    .line 3910
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 3911
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3912
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListContentFrame:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3918
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v0, v1, :cond_2

    .line 3919
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3920
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 3911
    goto :goto_0

    :cond_4
    move v3, v2

    .line 3912
    goto :goto_1

    .line 3915
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3916
    const/16 v0, 0x30

    goto :goto_2
.end method

.method private startListViewAnimationForDeleteMode()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x14d

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1989
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-int v2, v3

    .line 1990
    .local v2, "scale":I
    mul-int/lit8 v3, v2, 0x38

    int-to-float v3, v3

    const/high16 v5, 0x3f000000

    add-float/2addr v3, v5

    float-to-int v1, v3

    .line 1992
    .local v1, "heightOfDeleteHeaderView":I
    iget-boolean v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v3, :cond_1

    .line 1993
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkDeleteHeaderViewVisibility()V

    .line 1994
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/widget/AutoScrollListView;

    invoke-virtual {v3}, Lcom/android/contacts/widget/AutoScrollListView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1996
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v3, v1

    int-to-float v3, v3

    invoke-direct {v0, v6, v6, v3, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1997
    .local v0, "ani":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1998
    new-instance v3, Lcom/sec/android/app/contacts/widget/SineInout70Interpolator;

    invoke-direct {v3}, Lcom/sec/android/app/contacts/widget/SineInout70Interpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1999
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setY(F)V

    .line 2000
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2036
    .end local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    :cond_0
    :goto_0
    return-void

    .line 2003
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/widget/AutoScrollListView;

    invoke-virtual {v3}, Lcom/android/contacts/widget/AutoScrollListView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2005
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v3, v1

    int-to-float v3, v3

    invoke-direct {v0, v6, v6, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2006
    .restart local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2007
    new-instance v3, Lcom/sec/android/app/contacts/widget/SineInout70Interpolator;

    invoke-direct {v3}, Lcom/sec/android/app/contacts/widget/SineInout70Interpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2008
    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2009
    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$15;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$15;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2029
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2031
    .end local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkDeleteHeaderViewVisibility()V

    .line 2032
    iget-boolean v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    if-eqz v3, :cond_4

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private startRefresh()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 772
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$RefreshTask;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$RefreshTask;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 773
    return-void
.end method

.method private subscribe(J)V
    .locals 3
    .param p1, "contactId"    # J

    .prologue
    .line 941
    const-string v1, "DefaultContactBrowseListFragment"

    const-string v2, "PARAM ::: sending subscribe on click"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactListhandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 943
    .local v0, "subscribe":Landroid/os/Message;
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 944
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 945
    sget-boolean v1, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactListhandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 948
    :cond_0
    return-void
.end method

.method private updateFilterHeaderView()V
    .locals 9

    .prologue
    const v8, 0x7f0e0131

    const v6, 0x7f0e012f

    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 2165
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 2166
    .local v1, "filter":Lcom/android/contacts/list/ContactListFilter;
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 2251
    :goto_0
    return-void

    .line 2171
    :cond_0
    instance-of v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteContactsInGroup()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2172
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2176
    :cond_2
    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_11

    iget-boolean v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-nez v3, :cond_11

    .line 2177
    iget v3, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x6

    if-ne v3, v4, :cond_3

    .line 2178
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2179
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0089

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2182
    :cond_3
    iget v3, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_4

    .line 2183
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2184
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e008a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2186
    :cond_4
    iget v3, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_11

    iget v3, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/16 v4, -0x11

    if-eq v3, v4, :cond_11

    .line 2190
    iget-object v0, v1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 2191
    .local v0, "accountName":Ljava/lang/String;
    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2194
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v2

    .line 2195
    .local v2, "isKnoxMode":Z
    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2197
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    const v4, 0x7f0e0088

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2198
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2201
    :cond_7
    if-eqz v2, :cond_9

    .line 2202
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2241
    .end local v2    # "isKnoxMode":Z
    :cond_8
    :goto_1
    instance-of v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-nez v3, :cond_10

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteContactsInGroup()Z

    move-result v3

    if-nez v3, :cond_10

    .line 2242
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2243
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0087

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2204
    .restart local v2    # "isKnoxMode":Z
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2206
    .end local v2    # "isKnoxMode":Z
    :cond_a
    const-string v3, "vnd.sec.contact.phone_personal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2207
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2208
    :cond_b
    const-string v3, "vnd.sec.contact.phone_knox100"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2209
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2210
    :cond_c
    const-string v3, "primary.sim.account_name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2216
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2217
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSim1Name:Ljava/lang/String;

    .line 2219
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSim1Name:Ljava/lang/String;

    goto :goto_1

    .line 2220
    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2223
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0282

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2225
    :cond_e
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0281

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2227
    :cond_f
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "primary.sim2.account_name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2229
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSim2Name:Ljava/lang/String;

    .line 2231
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSim2Name:Ljava/lang/String;

    goto/16 :goto_1

    .line 2246
    :cond_10
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2250
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_11
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public EnableDeleteContactInGroupMode(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 1
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 1941
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteMode(Z)V

    .line 1942
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 1943
    return-void
.end method

.method callContact(Landroid/database/Cursor;)Z
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4423
    const/4 v3, 0x0

    .line 4424
    .local v3, "phone":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4425
    .local v2, "lookUpKey":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4426
    .local v4, "phonesCursor":Landroid/database/Cursor;
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->queryPhoneNumbers(J)Landroid/database/Cursor;

    move-result-object v4

    .line 4427
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 4428
    :cond_0
    if-eqz v4, :cond_1

    .line 4429
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    move v5, v6

    .line 4461
    :goto_0
    return v5

    .line 4432
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v7, v5, :cond_5

    .line 4434
    const-string v7, "data1"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4447
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 4448
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4451
    :cond_4
    if-nez v3, :cond_7

    .line 4452
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4453
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 4436
    .end local v0    # "contactUri":Landroid/net/Uri;
    :cond_5
    const/4 v7, -0x1

    invoke-interface {v4, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4437
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4438
    const-string v7, "lookup"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4439
    const-string v7, "is_super_primary"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_6

    .line 4441
    const-string v7, "data1"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4442
    goto :goto_1

    .line 4455
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    const/4 v8, 0x0

    invoke-static {v7, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4457
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4458
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public callSelection()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4203
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    .line 4204
    .local v1, "list":Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4205
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 4206
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 4211
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v2

    .line 4209
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->callContact(Landroid/database/Cursor;)Z

    move-result v2

    goto :goto_0
.end method

.method public clearCustomSearchResult()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3940
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowCustomSearchResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3941
    iput-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    .line 3942
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 3943
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 3944
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSearchMode(Z)V

    .line 3945
    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 3947
    :cond_0
    return-void
.end method

.method public clearCustomSearchViewFocus()V
    .locals 1

    .prologue
    .line 3956
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 3957
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 3959
    :cond_0
    return-void
.end method

.method protected clearFocusOnSoftKeyboard()V
    .locals 1

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 733
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    .line 738
    :cond_0
    return-void
.end method

.method protected configureSweepActionCallbackAndListener()V
    .locals 5

    .prologue
    .line 3965
    new-instance v0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionBarCallBack(Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;)V

    .line 3967
    new-instance v1, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSweepActionBarCallBack()Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;Lcom/android/contacts/list/DefaultContactListAdapter;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 3970
    return-void
.end method

.method protected configureVerticalTwIndexScrollbar()V
    .locals 1

    .prologue
    .line 4105
    invoke-super {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->configureVerticalTwIndexScrollbar()V

    .line 4108
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureSearchView()V

    .line 4109
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureAccountFilterView()V

    .line 4111
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_0

    .line 4112
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteModeLayout()V

    .line 4114
    :cond_0
    return-void
.end method

.method public createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;
    .locals 2

    .prologue
    .line 554
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method public createCursorLoaderToSupportSimContacts()Lcom/sec/android/app/contacts/ContactCursorLoader;
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;

    move-result-object v0

    .line 573
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected createCustomSearchbar()V
    .locals 8

    .prologue
    const/16 v2, 0x8

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1207
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0901e1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchBarLayout:Landroid/view/View;

    .line 1208
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f090100

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    .line 1209
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0901cd

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    .line 1210
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1211
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f090314

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    .line 1213
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 1214
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1216
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsAddaContactTutorialMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_0

    .line 1218
    const-string v1, "com.sec.android.app.contacts.action.ADD_A_CONTACT_TUTORIAL"

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsAddaContactTutorialMode:Z

    .line 1221
    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsAddaContactTutorialMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getIsMenuShowing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1225
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/PeopleActivity;

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showAddaContactTutorialPopup(Landroid/view/View;)V

    .line 1227
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1279
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1282
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v4, v7, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x3e8

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 1285
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Contact_FixedEngModeInListBrowsing"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1287
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string v4, "inputType=independentSearchMode"

    invoke-virtual {v1, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 1290
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v7}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 1291
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 1292
    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, "productname":Ljava/lang/String;
    if-eqz v0, :cond_a

    const-string v1, "ks02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsAddaContactTutorialMode:Z

    if-nez v1, :cond_a

    .line 1294
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_9

    .line 1298
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v7}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 1316
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1326
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0e01c2

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1327
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$9;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$9;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 1339
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1371
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_7

    .line 1372
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->hasPermanentMenuKey:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_b

    .line 1373
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1385
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureSearchView()V

    .line 1386
    return-void

    .end local v0    # "productname":Ljava/lang/String;
    :cond_8
    move v1, v3

    .line 1214
    goto/16 :goto_0

    .line 1300
    .restart local v0    # "productname":Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 1301
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_1

    .line 1304
    :cond_a
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 1305
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_1

    .line 1375
    :cond_b
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$11;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$11;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 955
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteContactsInGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 956
    new-instance v0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;-><init>(Landroid/content/Context;)V

    .line 961
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 962
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 964
    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setItemViewLayerTypeSoftware(Z)V

    .line 965
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableCallButtonInList"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayCallButton(Z)V

    .line 969
    :cond_0
    return-object v0

    .line 958
    .end local v0    # "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    :cond_1
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .restart local v0    # "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    goto :goto_0
.end method

.method public deleteSelection()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 4215
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    .line 4216
    .local v3, "list":Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4217
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 4218
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 4219
    .local v2, "headerViewCount":I
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v4

    .line 4220
    .local v4, "position":I
    if-eqz v0, :cond_0

    if-ge v4, v2, :cond_1

    .line 4228
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    .end local v2    # "headerViewCount":I
    .end local v4    # "position":I
    :cond_0
    :goto_0
    return v5

    .line 4223
    .restart local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    .restart local v2    # "headerViewCount":I
    .restart local v4    # "position":I
    :cond_1
    sub-int v6, v4, v2

    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 4224
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v1, v5}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 4225
    const/4 v5, 0x1

    goto :goto_0
.end method

.method protected doDestroyActionMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5169
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSearchViewQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5170
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 5172
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 5173
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->unRegisterBezelListener()V

    .line 5174
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    if-eqz v0, :cond_1

    .line 5175
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->deselectAll()V

    .line 5177
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setMultiSelectEnabled(Z)V

    .line 5179
    iget v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mRestoreDirectorySearchMode:I

    if-eqz v0, :cond_2

    .line 5180
    iget v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mRestoreDirectorySearchMode:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    .line 5182
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_3

    .line 5183
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setMultiSelectionMode(Z)V

    .line 5184
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setMultiSelectEnabled(Z)V

    .line 5185
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->notifyDataSetChanged()V

    .line 5186
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->clearCheckedids()V

    .line 5188
    :cond_3
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    .line 5189
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    .line 5190
    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 5191
    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    .line 5192
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z

    if-eqz v0, :cond_4

    .line 5193
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mFilter:Lcom/android/contacts/list/ContactListFilter;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 5194
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mFilter:Lcom/android/contacts/list/ContactListFilter;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 5195
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mFilter:Lcom/android/contacts/list/ContactListFilter;
    invoke-static {v0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->access$2602(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;Lcom/android/contacts/list/ContactListFilter;)Lcom/android/contacts/list/ContactListFilter;

    .line 5200
    :goto_0
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z

    .line 5202
    :cond_4
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    if-eqz v0, :cond_9

    :cond_5
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 5203
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 5204
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 5205
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 5207
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_7

    .line 5208
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setSelectionActionMode(Z)V

    .line 5210
    :cond_7
    return-void

    .line 5197
    :cond_8
    const/4 v0, -0x2

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 5202
    goto :goto_1
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 5272
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v0, :cond_0

    .line 5273
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 5275
    :cond_0
    return-void
.end method

.method public forceSetAddPrivateMode()V
    .locals 1

    .prologue
    .line 2070
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-eqz v0, :cond_0

    .line 2092
    :cond_0
    return-void
.end method

.method public forceSetDeleteMode()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2040
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v1, :cond_1

    .line 2041
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setMultiSelectEnabled(Z)V

    .line 2043
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkDeleteHeaderViewVisibility()V

    .line 2045
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 2046
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheckedIds(Ljava/util/HashMap;)V

    .line 2047
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setMultiSelectEnabled(Z)V

    .line 2049
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    if-eqz v1, :cond_2

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 2052
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCreateButtonVisibility(Z)V

    .line 2053
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_4

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomMenuButtonVisibility(Z)V

    .line 2057
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    if-eqz v1, :cond_1

    .line 2058
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;->onSelectedCountChanged(I)V

    .line 2066
    .end local v0    # "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    :cond_1
    return-void

    .restart local v0    # "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    :cond_2
    move v1, v3

    .line 2049
    goto :goto_0

    :cond_3
    move v1, v3

    .line 2052
    goto :goto_1

    :cond_4
    move v2, v3

    .line 2053
    goto :goto_2
.end method

.method public getContactItemCount()I
    .locals 5

    .prologue
    .line 4187
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 4188
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    if-nez v0, :cond_0

    .line 4189
    const/4 v1, 0x0

    .line 4198
    :goto_0
    return v1

    .line 4191
    :cond_0
    const/4 v1, 0x0

    .line 4193
    .local v1, "count":I
    :try_start_0
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4194
    :catch_0
    move-exception v2

    .line 4195
    .local v2, "e":Landroid/database/StaleDataException;
    invoke-virtual {v2}, Landroid/database/StaleDataException;->printStackTrace()V

    .line 4196
    const-string v3, "DefaultContactBrowseListFragment"

    const-string v4, "cursor is closed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getContactUriSelection()Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4232
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    .line 4233
    .local v3, "list":Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4234
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 4235
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 4236
    .local v2, "headerViewCount":I
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v4

    .line 4237
    .local v4, "position":I
    if-eqz v0, :cond_0

    if-ge v4, v2, :cond_1

    .line 4244
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    .end local v2    # "headerViewCount":I
    .end local v4    # "position":I
    :cond_0
    :goto_0
    return-object v1

    .line 4240
    .restart local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    .restart local v2    # "headerViewCount":I
    .restart local v4    # "position":I
    :cond_1
    sub-int v5, v4, v2

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 4241
    .local v1, "contactUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method protected getDeleteUris()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4478
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSearchViewQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4248
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const v3, 0x7f040124

    const v2, 0x7f04007c

    const/4 v1, 0x0

    .line 974
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEasyMode(Z)V

    .line 975
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v0, :cond_2

    .line 976
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    invoke-virtual {p1, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFragmentView:Landroid/view/View;

    .line 982
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFragmentView:Landroid/view/View;

    .line 988
    :goto_1
    return-object v0

    .line 980
    :cond_1
    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFragmentView:Landroid/view/View;

    goto :goto_0

    .line 985
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 986
    invoke-virtual {p1, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 988
    :cond_3
    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public isDeleteContactsInGroup()Z
    .locals 2

    .prologue
    .line 4253
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4255
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    if-eqz v1, :cond_0

    .line 4256
    check-cast v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->isDeleteContactsInGroup()Z

    move-result v1

    .line 4259
    :goto_0
    return v1

    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isOnlineSearchModeChanged()Z
    .locals 1

    .prologue
    .line 5213
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    if-nez v0, :cond_0

    .line 5214
    invoke-super {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isOnlineSearchModeChanged()Z

    move-result v0

    .line 5216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearching()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4334
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchCustomDirectory:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getDirectorySearchMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 4339
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1680
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1681
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onRestoreSavedState(Landroid/os/Bundle;)V

    .line 1682
    if-eqz p1, :cond_0

    .line 1683
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->forceSetDeleteMode()V

    .line 1684
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v0, :cond_0

    .line 1685
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    if-eqz v0, :cond_3

    .line 1686
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActionMode(Z)V

    .line 1694
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;->onSelectedCountChanged(I)V

    .line 1697
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$AddPrivateContactsListener;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-eqz v0, :cond_2

    .line 1701
    :cond_2
    return-void

    .line 1688
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActionMode(Z)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 1390
    sparse-switch p1, :sswitch_data_0

    .line 1441
    :cond_0
    :goto_0
    return-void

    .line 1393
    :sswitch_0
    if-ne p2, v7, :cond_0

    .line 1394
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1395
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "result"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1397
    .local v6, "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1398
    .local v0, "dat":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 1400
    .local v5, "phoneUri":Landroid/net/Uri;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1401
    const-string v7, "sms:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 1403
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v2, v7, :cond_1

    .line 1406
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1410
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1411
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1412
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1418
    .end local v0    # "dat":Ljava/lang/StringBuilder;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "phoneUri":Landroid/net/Uri;
    .end local v6    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_1
    if-ne p2, v7, :cond_0

    .line 1419
    const-string v7, "result"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1421
    .restart local v6    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 1422
    .local v4, "output":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 1423
    const-string v7, ""

    aput-object v7, v4, v2

    .line 1424
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    .line 1422
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1429
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    const-string v8, "mailto:"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1430
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.EMAIL"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1432
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1433
    :catch_0
    move-exception v1

    .line 1434
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "DefaultContactBrowseListFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No activity found for intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1390
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1705
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 1715
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    .line 1717
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    .line 1718
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsVideoCall:Z

    .line 1719
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    .line 1720
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->hasPermanentMenuKey:Z

    .line 1722
    const-string v0, "DefaultContactBrowseListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sIsMMSAvailable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    instance-of v0, p1, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    if-eqz v0, :cond_1

    .line 1725
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setForceReverseFastScrollBarPositionEnabled(Z)V

    .line 1731
    :cond_1
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 1732
    return-void

    :cond_4
    move v0, v1

    .line 1715
    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2977
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    move v9, v10

    .line 3191
    :cond_0
    :goto_0
    return v9

    .line 3008
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->editContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 3013
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3014
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v1, v10}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    goto :goto_0

    .line 3018
    .end local v1    # "contactUri":Landroid/net/Uri;
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3019
    .restart local v1    # "contactUri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showJoinAggregateActivity(Landroid/net/Uri;)V

    goto :goto_0

    .line 3023
    .end local v1    # "contactUri":Landroid/net/Uri;
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3024
    .restart local v1    # "contactUri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3025
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "CONTACT_URI"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3026
    const-string v8, "mode"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3027
    const-string v8, "direct_launch"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3028
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3032
    .end local v1    # "contactUri":Landroid/net/Uri;
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 3036
    :pswitch_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3037
    .restart local v1    # "contactUri":Landroid/net/Uri;
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "hasPhoneNumber"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 3038
    .local v3, "hasPhoneNumber":Z
    if-eqz v1, :cond_0

    .line 3039
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->queryForAddToGroup(Landroid/net/Uri;)Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;

    move-result-object v0

    .line 3042
    .local v0, "contactInfo":Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;
    if-eqz v0, :cond_0

    .line 3046
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v10, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-direct {v4, v8, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3047
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.extra.CONTACT_ID"

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-virtual {v4, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3049
    const-string v8, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    iget-object v10, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3051
    const-string v8, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    iget-object v10, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mGroupTitles:Ljava/util/ArrayList;

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3053
    const-string v8, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    iget-boolean v10, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mIsGoogleAccount:Z

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3055
    const-string v8, "hasPhoneNumber"

    invoke-virtual {v4, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3056
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3061
    .end local v0    # "contactInfo":Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;
    .end local v1    # "contactUri":Landroid/net/Uri;
    .end local v3    # "hasPhoneNumber":Z
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3064
    .restart local v1    # "contactUri":Landroid/net/Uri;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v11, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v8, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3068
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v7

    .line 3070
    .local v7, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->getInstance()Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v8, v10, v7}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3073
    .end local v7    # "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "isBlackListContact"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 3075
    .local v5, "isBlackListContact":Z
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v5, :cond_3

    move v8, v9

    :goto_1
    invoke-static {v11, v1, v8}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .line 3078
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->shouldShowAddToRejectListTips(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3080
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v5, :cond_2

    move v10, v9

    :cond_2
    invoke-static {v8, v11, v1, v10}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Activity;Landroid/net/Uri;Z)V

    goto/16 :goto_0

    :cond_3
    move v8, v10

    .line 3075
    goto :goto_1

    .line 3087
    .end local v1    # "contactUri":Landroid/net/Uri;
    .end local v5    # "isBlackListContact":Z
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 3092
    :pswitch_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3093
    .restart local v1    # "contactUri":Landroid/net/Uri;
    invoke-direct {p0, v1, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addToVipList(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 3097
    .end local v1    # "contactUri":Landroid/net/Uri;
    :pswitch_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3098
    .restart local v1    # "contactUri":Landroid/net/Uri;
    invoke-direct {p0, v1, v10}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addToVipList(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 3102
    .end local v1    # "contactUri":Landroid/net/Uri;
    :pswitch_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3103
    .restart local v1    # "contactUri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->copyToDialingScreen(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 3108
    .end local v1    # "contactUri":Landroid/net/Uri;
    :pswitch_c
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3109
    :catch_0
    move-exception v2

    .line 3110
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v11, 0x7f0e0229

    invoke-static {v8, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3125
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    :pswitch_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3126
    .restart local v1    # "contactUri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createLauncherShortcutWithContact(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 3132
    .end local v1    # "contactUri":Landroid/net/Uri;
    :pswitch_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "phone_number"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3133
    .local v6, "number":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v10}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->launch(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2977
    nop

    :pswitch_data_0
    .packed-switch 0x7f0904e5
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_c
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 515
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 516
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isBlackTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsBlackTheme:Z

    .line 517
    sget-boolean v0, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 518
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    .line 519
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactListhandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->registerContactListHandler(Landroid/os/Handler;)V

    .line 522
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 48
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 2598
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAvailableToCreateContextMenu(Landroid/view/ContextMenu$ContextMenuInfo;)Z

    move-result v45

    if-nez v45, :cond_1

    .line 2599
    invoke-super/range {p0 .. p3}, Lcom/android/contacts/list/ContactBrowseListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2970
    :cond_0
    :goto_0
    return-void

    .line 2603
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/ContactListAdapter;

    .local v3, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    move-object/from16 v18, p3

    .line 2604
    check-cast v18, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 2605
    .local v18, "info":Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v45, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v46

    sub-int v6, v45, v46

    .line 2606
    .local v6, "adjPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 2607
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    move/from16 v45, v0

    if-nez v45, :cond_0

    .line 2610
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v10

    .line 2611
    .local v10, "contactUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v45

    check-cast v45, Lcom/android/contacts/list/DefaultContactListAdapter;

    move-object/from16 v0, v45

    invoke-virtual {v0, v10}, Lcom/android/contacts/list/DefaultContactListAdapter;->getPhonenumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v38

    .line 2613
    .local v38, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v34

    .line 2614
    .local v34, "lookupKey":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->isContactWritable(I)Z

    move-result v32

    .line 2615
    .local v32, "isWritable":Z
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->isBridgedContact(I)Z

    move-result v22

    .line 2616
    .local v22, "isBridgedContact":Z
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->isPreLoadContact(I)Z

    move-result v25

    .line 2617
    .local v25, "isPreloadContact":Z
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->isSimContact(I)Z

    move-result v29

    .line 2618
    .local v29, "isSimContact":Z
    if-eqz v29, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v45

    if-nez v45, :cond_11

    const/16 v30, 0x1

    .line 2620
    .local v30, "isSimContactAndSimDisabled":Z
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v45

    if-nez v45, :cond_12

    .line 2634
    :cond_2
    :goto_2
    const/16 v27, 0x0

    .line 2635
    .local v27, "isSim2Contact":Z
    const/16 v28, 0x0

    .line 2643
    .local v28, "isSim2ContactAndSimDisabled":Z
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->isUserProfile(I)Z

    move-result v31

    .line 2644
    .local v31, "isUserProfile":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v26

    .line 2645
    .local v26, "isSMSAvailable":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v24

    .line 2646
    .local v24, "isPhone":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v45

    const-string v46, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual/range {v45 .. v46}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_16

    if-eqz v31, :cond_16

    const/16 v20, 0x1

    .line 2650
    .local v20, "isAABProfile":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v23

    .line 2652
    .local v23, "isKnoxMode":Z
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v14

    .line 2653
    .local v14, "displayName":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v45

    if-eqz v45, :cond_3

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListAdapter;->getUnknownNameText()Ljava/lang/CharSequence;

    move-result-object v14

    .end local v14    # "displayName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2656
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v17

    .line 2657
    .local v17, "inflater":Landroid/view/MenuInflater;
    const v45, 0x7f120007

    move-object/from16 v0, v17

    move/from16 v1, v45

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2660
    if-eqz v32, :cond_17

    if-nez v30, :cond_17

    .line 2661
    new-instance v15, Landroid/content/Intent;

    const-string v45, "android.intent.action.EDIT"

    move-object/from16 v0, v45

    invoke-direct {v15, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2662
    .local v15, "editIntent":Landroid/content/Intent;
    const v45, 0x7f0904e5

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-interface {v0, v15}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2679
    .end local v15    # "editIntent":Landroid/content/Intent;
    :goto_4
    if-nez v30, :cond_19

    .line 2680
    if-nez v20, :cond_4

    if-eqz v25, :cond_18

    .line 2681
    :cond_4
    const v45, 0x7f0904e6

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2705
    :goto_5
    if-nez v31, :cond_1b

    .line 2706
    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    .line 2707
    .local v33, "joinIntent":Landroid/content/Intent;
    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2712
    const v45, 0x7f0904ea

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v46

    if-nez v29, :cond_1a

    const/16 v45, 0x1

    :goto_6
    move-object/from16 v0, v46

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2720
    .end local v33    # "joinIntent":Landroid/content/Intent;
    :goto_7
    if-eqz v32, :cond_1c

    if-nez v31, :cond_1c

    if-eqz v26, :cond_1c

    .line 2721
    new-instance v40, Landroid/content/Intent;

    invoke-direct/range {v40 .. v40}, Landroid/content/Intent;-><init>()V

    .line 2722
    .local v40, "sendInfoIntent":Landroid/content/Intent;
    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2723
    const v45, 0x7f0904e7

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2725
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v45

    const-string v46, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual/range {v45 .. v46}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_5

    .line 2727
    const v45, 0x7f0904e7

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x1

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2733
    .end local v40    # "sendInfoIntent":Landroid/content/Intent;
    :cond_5
    :goto_8
    if-nez v31, :cond_1e

    .line 2734
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->isContactStarred(I)Z

    move-result v45

    if-eqz v45, :cond_6

    .line 2735
    const v45, 0x7f0904eb

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const v46, 0x7f0e003c

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2737
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v46

    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->isContactStarred(I)Z

    move-result v45

    if-nez v45, :cond_1d

    const/16 v45, 0x1

    :goto_9
    move-object/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v10, v1}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v16

    .line 2743
    .local v16, "favoriteIntent":Landroid/content/Intent;
    const v45, 0x7f0904eb

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2775
    .end local v16    # "favoriteIntent":Landroid/content/Intent;
    :goto_a
    const v45, 0x7f0904ec

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2778
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->getHasPhoneNumber(I)Z

    move-result v45

    if-eqz v45, :cond_20

    if-nez v31, :cond_20

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v45

    const-string v46, "CscFeature_Contact_DisableMenuAddToRejectList"

    invoke-virtual/range {v45 .. v46}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v45

    if-nez v45, :cond_20

    .line 2781
    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v45

    move-object/from16 v0, p0

    move-wide/from16 v1, v45

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isBlackListContact(J)Z

    move-result v21

    .line 2783
    .local v21, "isBlackListContact":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v45

    const-string v46, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v45 .. v46}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_1f

    .line 2787
    const v45, 0x7f0904ed

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const v46, 0x7f0e03a6

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2793
    :cond_7
    :goto_b
    new-instance v39, Landroid/content/Intent;

    invoke-direct/range {v39 .. v39}, Landroid/content/Intent;-><init>()V

    .line 2794
    .local v39, "rejectIntent":Landroid/content/Intent;
    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2795
    const-string v45, "isBlackListContact"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2800
    const v45, 0x7f0904ed

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2806
    .end local v21    # "isBlackListContact":Z
    .end local v39    # "rejectIntent":Landroid/content/Intent;
    :goto_c
    const/16 v35, 0x0

    .line 2807
    .local v35, "mFeatureEnabled":Z
    if-nez v31, :cond_8

    .line 2818
    :cond_8
    const v45, 0x7f0904ee

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2822
    const v45, 0x7f0904ef

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v44

    .line 2823
    .local v44, "whiteListMenu":Landroid/view/MenuItem;
    if-eqz v44, :cond_9

    .line 2824
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v45

    const-string v46, "CscFeature_Common_EnableVIPMode"

    invoke-virtual/range {v45 .. v46}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_22

    .line 2826
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->getHasPhoneNumber(I)Z

    move-result v45

    if-eqz v45, :cond_21

    if-nez v31, :cond_21

    .line 2827
    const v45, 0x7f0904ed

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2828
    new-instance v43, Landroid/content/Intent;

    invoke-direct/range {v43 .. v43}, Landroid/content/Intent;-><init>()V

    .line 2829
    .local v43, "whiteListIntent":Landroid/content/Intent;
    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2830
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2839
    .end local v43    # "whiteListIntent":Landroid/content/Intent;
    :cond_9
    :goto_d
    const v45, 0x7f0904f0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 2840
    .local v8, "blackListMenu":Landroid/view/MenuItem;
    if-eqz v8, :cond_a

    .line 2841
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v45

    const-string v46, "CscFeature_Common_EnableVIPMode"

    invoke-virtual/range {v45 .. v46}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_24

    .line 2843
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->getHasPhoneNumber(I)Z

    move-result v45

    if-eqz v45, :cond_23

    if-nez v31, :cond_23

    .line 2844
    const v45, 0x7f0904ed

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2845
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2846
    .local v7, "blackListIntent":Landroid/content/Intent;
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2847
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2857
    .end local v7    # "blackListIntent":Landroid/content/Intent;
    :cond_a
    :goto_e
    const v45, 0x7f0904f1

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 2858
    .local v12, "copyToDialingMenu":Landroid/view/MenuItem;
    if-eqz v12, :cond_b

    .line 2859
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v45

    const-string v46, "CscFeature_Contact_EnableCopyToDialer"

    invoke-virtual/range {v45 .. v46}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_26

    .line 2861
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->getHasPhoneNumber(I)Z

    move-result v45

    if-eqz v45, :cond_25

    if-nez v31, :cond_25

    .line 2862
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 2863
    .local v11, "copyToDialingIntent":Landroid/content/Intent;
    const-string v45, "withSpecialChar"

    const/16 v46, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2864
    invoke-virtual {v11, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2865
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v45

    move/from16 v0, v45

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2876
    .end local v11    # "copyToDialingIntent":Landroid/content/Intent;
    :cond_b
    :goto_f
    if-eqz v32, :cond_c

    if-eqz v31, :cond_d

    :cond_c
    if-eqz v22, :cond_27

    .line 2877
    :cond_d
    sget-object v45, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v42

    .line 2879
    .local v42, "shareUri":Landroid/net/Uri;
    new-instance v41, Landroid/content/Intent;

    const-string v45, "android.intent.action.SEND"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2880
    .local v41, "sendNamecardintent":Landroid/content/Intent;
    const-string v45, "text/x-vcard"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2881
    const-string v45, "android.intent.extra.STREAM"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2883
    const-string v45, "useLookupUri"

    const/16 v46, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2884
    const-string v45, "contactUri"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v45, v0

    const v46, 0x7f0e0229

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    move/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/android/contacts/ContactsUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v9

    .line 2890
    .local v9, "chooseIntent":Landroid/content/Intent;
    const v45, 0x7f0904e8

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2907
    .end local v9    # "chooseIntent":Landroid/content/Intent;
    .end local v41    # "sendNamecardintent":Landroid/content/Intent;
    .end local v42    # "shareUri":Landroid/net/Uri;
    :goto_10
    const v45, 0x7f0904e9

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v37

    .line 2908
    .local v37, "moveToPersonalMenuItem":Landroid/view/MenuItem;
    if-eqz v37, :cond_e

    .line 2909
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isMoveToKNOXEnabled()Z

    move-result v45

    if-eqz v45, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsKNOXMode:Z

    move/from16 v45, v0

    if-nez v45, :cond_28

    .line 2910
    new-instance v36, Landroid/content/Intent;

    invoke-direct/range {v36 .. v36}, Landroid/content/Intent;-><init>()V

    .line 2911
    .local v36, "moveToPersonalIntent":Landroid/content/Intent;
    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2912
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2913
    const/16 v45, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2918
    .end local v36    # "moveToPersonalIntent":Landroid/content/Intent;
    :cond_e
    :goto_11
    const-string v45, "DefaultContactBrowseListFragment"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "moveToPersonalMenuItem::"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    const v45, 0x7f0904f2

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2937
    .local v4, "addShortcuToHome":Landroid/view/MenuItem;
    if-eqz v4, :cond_10

    .line 2938
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v45

    const-string v46, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual/range {v45 .. v46}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_f

    .line 2940
    const v45, 0x7f0e0237

    move/from16 v0, v45

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2942
    :cond_f
    if-nez v23, :cond_29

    if-nez v31, :cond_29

    .line 2946
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2947
    .local v5, "addShortcutIntent":Landroid/content/Intent;
    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2948
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2953
    .end local v5    # "addShortcutIntent":Landroid/content/Intent;
    :cond_10
    :goto_12
    if-eqz v38, :cond_2b

    if-eqz v24, :cond_2b

    const-string v45, "instant_lettering"

    invoke-static/range {v45 .. v45}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_2b

    .line 2955
    const-string v45, "feature_skt"

    invoke-static/range {v45 .. v45}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_2a

    .line 2956
    const v45, 0x7f0904f3

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x1

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2958
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 2959
    .local v19, "instanceLetteringIntent":Landroid/content/Intent;
    const-string v45, "phone_number"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2960
    const v45, 0x7f0904f3

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2969
    .end local v19    # "instanceLetteringIntent":Landroid/content/Intent;
    :goto_13
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->hideUnnecessarymMenuIfEasyMode(Landroid/view/ContextMenu;)V

    goto/16 :goto_0

    .line 2618
    .end local v4    # "addShortcuToHome":Landroid/view/MenuItem;
    .end local v8    # "blackListMenu":Landroid/view/MenuItem;
    .end local v12    # "copyToDialingMenu":Landroid/view/MenuItem;
    .end local v17    # "inflater":Landroid/view/MenuInflater;
    .end local v20    # "isAABProfile":Z
    .end local v23    # "isKnoxMode":Z
    .end local v24    # "isPhone":Z
    .end local v26    # "isSMSAvailable":Z
    .end local v27    # "isSim2Contact":Z
    .end local v28    # "isSim2ContactAndSimDisabled":Z
    .end local v30    # "isSimContactAndSimDisabled":Z
    .end local v31    # "isUserProfile":Z
    .end local v35    # "mFeatureEnabled":Z
    .end local v37    # "moveToPersonalMenuItem":Landroid/view/MenuItem;
    .end local v44    # "whiteListMenu":Landroid/view/MenuItem;
    :cond_11
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 2622
    .restart local v30    # "isSimContactAndSimDisabled":Z
    :cond_12
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->isSimContact(I)Z

    move-result v45

    if-nez v45, :cond_13

    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->isSim2Contact(I)Z

    move-result v45

    if-eqz v45, :cond_14

    :cond_13
    const/16 v29, 0x1

    .line 2623
    :goto_14
    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactListAdapter;->isSim2Contact(I)Z

    move-result v45

    if-eqz v45, :cond_2

    .line 2624
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v45

    const-string v46, "vnd.sec.contact.sim2"

    invoke-virtual/range {v45 .. v46}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v45

    if-nez v45, :cond_15

    const/16 v30, 0x1

    :goto_15
    goto/16 :goto_2

    .line 2622
    :cond_14
    const/16 v29, 0x0

    goto :goto_14

    .line 2624
    :cond_15
    const/16 v30, 0x0

    goto :goto_15

    .line 2646
    .restart local v24    # "isPhone":Z
    .restart local v26    # "isSMSAvailable":Z
    .restart local v27    # "isSim2Contact":Z
    .restart local v28    # "isSim2ContactAndSimDisabled":Z
    .restart local v31    # "isUserProfile":Z
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 2675
    .restart local v17    # "inflater":Landroid/view/MenuInflater;
    .restart local v20    # "isAABProfile":Z
    .restart local v23    # "isKnoxMode":Z
    :cond_17
    const v45, 0x7f0904e5

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 2683
    :cond_18
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 2684
    .local v13, "deleteIntent":Landroid/content/Intent;
    invoke-virtual {v13, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2685
    const v45, 0x7f0904e6

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-interface {v0, v13}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 2701
    .end local v13    # "deleteIntent":Landroid/content/Intent;
    :cond_19
    const v45, 0x7f0904e6

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 2712
    .restart local v33    # "joinIntent":Landroid/content/Intent;
    :cond_1a
    const/16 v45, 0x0

    goto/16 :goto_6

    .line 2716
    .end local v33    # "joinIntent":Landroid/content/Intent;
    :cond_1b
    const v45, 0x7f0904ea

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 2730
    :cond_1c
    const v45, 0x7f0904e7

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_8

    .line 2737
    :cond_1d
    const/16 v45, 0x0

    goto/16 :goto_9

    .line 2746
    :cond_1e
    const v45, 0x7f0904eb

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 2789
    .restart local v21    # "isBlackListContact":Z
    :cond_1f
    if-eqz v21, :cond_7

    .line 2790
    const v45, 0x7f0904ed

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const v46, 0x7f0e0302

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 2803
    .end local v21    # "isBlackListContact":Z
    :cond_20
    const v45, 0x7f0904ed

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_c

    .line 2832
    .restart local v35    # "mFeatureEnabled":Z
    .restart local v44    # "whiteListMenu":Landroid/view/MenuItem;
    :cond_21
    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 2835
    :cond_22
    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 2849
    .restart local v8    # "blackListMenu":Landroid/view/MenuItem;
    :cond_23
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_e

    .line 2852
    :cond_24
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_e

    .line 2868
    .restart local v12    # "copyToDialingMenu":Landroid/view/MenuItem;
    :cond_25
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_f

    .line 2871
    :cond_26
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_f

    .line 2892
    :cond_27
    const v45, 0x7f0904e8

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_10

    .line 2915
    .restart local v37    # "moveToPersonalMenuItem":Landroid/view/MenuItem;
    :cond_28
    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_11

    .line 2944
    .restart local v4    # "addShortcuToHome":Landroid/view/MenuItem;
    :cond_29
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_12

    .line 2963
    :cond_2a
    const v45, 0x7f0904f3

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_13

    .line 2966
    :cond_2b
    const v45, 0x7f0904f3

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_13
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f09048b

    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 994
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 996
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 997
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 998
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;

    .line 1001
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1002
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;

    .line 1004
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    .line 1005
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPadding(Z)V

    .line 1006
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 1012
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCustomSearchbar()V

    .line 1017
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isFromDeleteContactsActivity()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isFromNamecardDeleteActivity()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1018
    :cond_3
    const-string v1, "DefaultContactBrowseListFragment"

    const-string v4, "delete mode. create header"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    .line 1020
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    .line 1021
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addDeleteAllHeaderView(Landroid/view/LayoutInflater;)V

    .line 1023
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isFromPrivateContactsActivity()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1032
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0901e2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    .line 1033
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f09048c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

    .line 1035
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0901e3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListContentFrame:Landroid/view/View;

    .line 1037
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1038
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f090491

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEasymodeCreateButton:Landroid/view/View;

    .line 1040
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEasymodeCreateButton:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 1041
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEasymodeCreateButton:Landroid/view/View;

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isFromDeleteContactsActivity()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1044
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEasymodeCreateButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1046
    :cond_6
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsAddaContactTutorialMode:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_7

    .line 1048
    const-string v1, "com.sec.android.app.contacts.action.ADD_A_CONTACT_TUTORIAL"

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsAddaContactTutorialMode:Z

    .line 1051
    :cond_7
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsAddaContactTutorialMode:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getIsMenuShowing()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1055
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/PeopleActivity;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEasymodeCreateButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/PeopleActivity;->showAddaContactTutorialPopup(Landroid/view/View;)V

    .line 1058
    :cond_8
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEasymodeCreateButton:Landroid/view/View;

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$5;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$5;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 1105
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    .line 1106
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    .line 1108
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1111
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureAccountFilterView()V

    .line 1126
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addEmptyUserProfileHeader(Landroid/view/LayoutInflater;)V

    .line 1127
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 1130
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    .line 1133
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1134
    .local v0, "footerContainer":Landroid/widget/FrameLayout;
    const v1, 0x7f04021f

    invoke-virtual {p1, v1, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    .line 1136
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    const v2, 0x7f090437

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsTextView:Landroid/widget/TextView;

    .line 1137
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1138
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v8, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1174
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_a

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-nez v1, :cond_a

    .line 1175
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v2, 0x7f09048a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 1178
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1201
    :cond_a
    iput-boolean v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsCreateView:Z

    .line 1202
    return-void

    .end local v0    # "footerContainer":Landroid/widget/FrameLayout;
    :cond_b
    move v1, v3

    .line 1041
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1536
    invoke-super {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onDestroy()V

    .line 1537
    sget-boolean v0, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->deregisterContactListHandler()V

    .line 1540
    :cond_0
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const v2, 0x7f0401de

    const/4 v3, 0x1

    .line 672
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v1, :cond_1

    .line 673
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 674
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    .line 675
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onDeleteAllChecked(Z)V

    .line 676
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllDeleteChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 677
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-eqz v1, :cond_2

    .line 682
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 683
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllPrivateCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    .line 684
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllPrivateCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onAddPrivateAllChecked(Z)V

    .line 685
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllPrivateCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllPrivateContactsChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 688
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 690
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 691
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 693
    const-string v1, "newLocalProfile"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 695
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 700
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    :cond_3
    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 707
    :cond_4
    const-string v1, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 710
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 713
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x7f040222
        :pswitch_0
    .end packed-switch
.end method

.method public onItemChosen(IILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "which"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 3984
    const/4 v0, 0x0

    .line 3986
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 4018
    :goto_0
    return-void

    .line 3990
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3993
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3994
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "withSpecialChar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3995
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4000
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4001
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4002
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4003
    const-string v1, "list"

    const-string v2, "whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4004
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4008
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4009
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4010
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4011
    const-string v1, "list"

    const-string v2, "blacklist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4012
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3990
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onItemClick(IJ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 885
    iget-boolean v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v6, :cond_4

    .line 886
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->selectContactForDelete(IJ)V

    .line 896
    :cond_0
    :goto_0
    sget-boolean v6, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v6, :cond_3

    .line 897
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/ContactsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 900
    .local v4, "cr":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheExpiryTime(Landroid/content/ContentResolver;)I

    move-result v1

    .line 901
    .local v1, "cacheExpiryTime":I
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v6, v4, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheTime(Landroid/content/ContentResolver;I)J

    move-result-wide v2

    .line 903
    .local v2, "cacheTime":J
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCapabilityPollExpiryTime()I

    move-result v5

    .line 904
    .local v5, "pollExpiryTime":I
    const-string v6, "DefaultContactBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CacheExpiryTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-string v6, "DefaultContactBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CacheTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const-string v6, "DefaultContactBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pollExpiryTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-string v6, "DefaultContactBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Param testing...3 : mEabDaemon.isCacheExpired(cacheTime, cacheExpiryTime): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v8, v2, v3, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isCacheExpired(JI)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v0, 0x1

    .line 911
    .local v0, "AllowSubscribe":Z
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v6, v2, v3, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isCacheExpired(JI)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 912
    const-string v6, "DefaultContactBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cache is expired so resetting value of id :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    if-eqz v5, :cond_1

    .line 914
    const/4 v0, 0x0

    .line 915
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v6, p2, p3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->eraseCacheInfo(J)V

    .line 919
    :cond_2
    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 920
    const-string v6, "DefaultContactBrowseListFragment"

    const-string v7, "sending subscribe on click"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->subscribe(J)V

    .line 937
    .end local v0    # "AllowSubscribe":Z
    .end local v1    # "cacheExpiryTime":I
    .end local v2    # "cacheTime":J
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "pollExpiryTime":I
    :cond_3
    return-void

    .line 887
    :cond_4
    iget-boolean v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-eqz v6, :cond_5

    .line 888
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->selectContactForAddPrivate(IJ)V

    goto/16 :goto_0

    .line 890
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    .line 891
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    if-eqz v6, :cond_0

    .line 892
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->onContactSelected(IJ)V

    goto/16 :goto_0
.end method

.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 5221
    .local p1, "parentView":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/android/contacts/activities/GroupDetailActivity;

    if-eqz v5, :cond_0

    .line 5222
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {v5}, Lcom/android/contacts/activities/GroupDetailActivity;->isFromEmergencyDial()Z

    move-result v3

    .line 5223
    .local v3, "fromEmergencyDial":Z
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 5224
    const/4 v5, 0x0

    .line 5258
    .end local v3    # "fromEmergencyDial":Z
    :goto_0
    return v5

    .line 5227
    :cond_0
    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, p4, v5

    if-gez v5, :cond_2

    .line 5228
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 5231
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v1, p3, v5

    .line 5232
    .local v1, "adjPosition":I
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v5, v1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeSelectedUri:Landroid/net/Uri;

    .line 5234
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 5235
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 5236
    const/4 v5, 0x0

    goto :goto_0

    .line 5239
    :cond_3
    const/4 v4, 0x0

    .line 5240
    .local v4, "isGroupTab":Z
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v5, :cond_4

    .line 5241
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v5}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v5}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    const/4 v4, 0x1

    .line 5244
    :cond_4
    :goto_1
    if-eqz v4, :cond_6

    .line 5245
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0902f6

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .line 5247
    .local v2, "fragment":Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isActionModeAvailable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5248
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActionMode(Z)V

    .line 5249
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    invoke-virtual {v5, v1, p4, p5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->onContactSelected(IJ)V

    .line 5250
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 5241
    .end local v2    # "fragment":Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 5253
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActionMode(Z)V

    .line 5254
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeSelectedUri:Landroid/net/Uri;

    invoke-virtual {p0, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    .line 5255
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    invoke-virtual {v5, v1, p4, p5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->onContactSelected(IJ)V

    .line 5256
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 5258
    .restart local v2    # "fragment":Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public onItemSelectorCancelled()V
    .locals 0

    .prologue
    .line 4023
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
    .line 4174
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 4175
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDataChangeListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;

    if-eqz v0, :cond_0

    .line 4176
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDataChangeListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;->onContactDataChanged(Z)V

    .line 4177
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    if-eqz v0, :cond_1

    .line 4178
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;)V

    .line 4179
    :cond_1
    const-string v0, "VerificationLog"

    const-string v1, "Executed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 217
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3723
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 3725
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_0

    .line 3726
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllDeleteChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 3728
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-eqz v0, :cond_1

    .line 3729
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllPrivateCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllPrivateContactsChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 3731
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 3726
    goto :goto_0

    :cond_3
    move v1, v2

    .line 3729
    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1664
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 1672
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1674
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsCreateView:Z

    .line 1675
    invoke-super {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onPause()V

    .line 1676
    return-void
.end method

.method public onRestoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 1736
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 1737
    if-nez p1, :cond_0

    .line 1761
    :goto_0
    return-void

    .line 1742
    :cond_0
    const-string v0, "selectionMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    .line 1744
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v0, :cond_1

    .line 1745
    const-string v0, "selected_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;

    .line 1746
    const-string v0, "restoreDirectorySearchMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mRestoreDirectorySearchMode:I

    .line 1748
    :cond_1
    const-string v0, "deleteMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    .line 1749
    const-string v0, "deleteIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    .line 1750
    const-string v0, "deleteUris"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    .line 1751
    const-string v0, "addprivateMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    .line 1753
    const-string v0, "addprivateIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPrivateCheckedIds:Ljava/util/HashMap;

    .line 1755
    const-string v0, "addprivateUris"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateUris:Ljava/util/ArrayList;

    .line 1756
    const-string v0, "customSearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    .line 1757
    const-string v0, "customSearchQueryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 1758
    const-string v0, "showActionbar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    .line 1759
    const-string v0, "movetoKnoxMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z

    .line 1760
    const-string v0, "deleteconfirmpopup"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteConfirm:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1546
    invoke-super {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onResume()V

    .line 1548
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 1551
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowCustomSearchResult()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchMode(Z)V

    .line 1553
    instance-of v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-nez v4, :cond_0

    .line 1555
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 1557
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_9

    .line 1558
    invoke-direct {p0, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showNoMatchesView(Z)V

    .line 1568
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteMode(Z)V

    .line 1569
    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllDeleteChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1570
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1572
    :cond_1
    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mRemovePrivateMode:Z

    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setAddPrivateMode(ZZ)V

    .line 1573
    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllPrivateContactsChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1574
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllPrivateCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1603
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1605
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "huge_font"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    .line 1606
    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsHugeFontMode:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 1607
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f110052

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1610
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsHugeFontMode:Z

    .line 1622
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    if-nez v4, :cond_5

    const-string v4, "feature_scroll_fragment"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1624
    const-string v4, "swipe_to_call_message"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1631
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    :goto_2
    sput-boolean v7, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->callPressed:Z

    .line 1632
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1634
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    .line 1637
    :cond_6
    const-string v4, "ro.build.product"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1638
    .local v3, "productname":Ljava/lang/String;
    if-eqz v3, :cond_7

    const-string v4, "ks02"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1639
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsCreateView:Z

    if-eqz v4, :cond_7

    .line 1640
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->requestFocus()Z

    .line 1641
    iput-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsCreateView:Z

    .line 1645
    :cond_7
    sget-boolean v4, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteConfirm:Z

    if-eqz v4, :cond_8

    .line 1646
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_8

    .line 1647
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->deleteContact(Landroid/view/ActionMode;)V
    invoke-static {v4, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->access$800(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;Landroid/view/ActionMode;)V

    .line 1649
    :cond_8
    return-void

    .line 1560
    .end local v3    # "productname":Ljava/lang/String;
    .restart local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    :cond_9
    invoke-direct {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showNoMatchesView(Z)V

    goto/16 :goto_0

    .line 1612
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_a
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsHugeFontMode:Z

    .line 1613
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 1614
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f110061

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1626
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 1627
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v4, "DefaultContactBrowseListFragment"

    const-string v5, "ClassCastException occurs."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1765
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1768
    const-string v0, "deleteMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1769
    const-string v0, "deleteUris"

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1770
    const-string v0, "deleteIds"

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1771
    const-string v0, "addprivateMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1772
    const-string v0, "addprivateUris"

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1773
    const-string v0, "addprivateIds"

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPrivateCheckedIds:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1774
    const-string v0, "customSearchMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1775
    const-string v0, "customSearchQueryString"

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    const-string v0, "showActionbar"

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1777
    const-string v0, "selectionMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1778
    const-string v0, "deleteconfirmpopup"

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteConfirmPopupShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1780
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v0, :cond_0

    .line 1781
    const-string v0, "selected_ids"

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1782
    const-string v0, "restoreDirectorySearchMode"

    iget v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mRestoreDirectorySearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1784
    :cond_0
    const-string v0, "movetoKnoxMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1785
    return-void
.end method

.method public queryForAddToGroup(Landroid/net/Uri;)Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;
    .locals 16
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 3744
    new-instance v9, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    .line 3747
    .local v9, "contactInfo":Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;
    :try_start_0
    const-string v1, "entities"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3748
    .local v2, "entityUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "mimetype"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "data1"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "account_type"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3752
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3754
    :cond_0
    const-string v1, "vnd.android.cursor.item/group_membership"

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3755
    iget-object v1, v9, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3758
    :cond_1
    const-string v1, "com.google"

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3759
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mIsGoogleAccount:Z

    .line 3761
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3763
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3765
    iget-object v1, v9, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 3766
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 3767
    .local v14, "selection":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3769
    .local v15, "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    iget-object v1, v9, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_6

    .line 3770
    if-nez v13, :cond_4

    .line 3771
    const-string v1, " ( _id = ?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3776
    :goto_1
    iget-object v1, v9, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3769
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 3773
    :cond_4
    const-string v1, " OR _id = ?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3791
    .end local v2    # "entityUri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "i":I
    .end local v14    # "selection":Ljava/lang/StringBuilder;
    .end local v15    # "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 3792
    .local v11, "e":Ljava/lang/Exception;
    const-string v1, "DefaultContactBrowseListFragment"

    const-string v3, "Exception occurs at queryForAddToGroup(), return null."

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    const/4 v9, 0x0

    .line 3796
    .end local v9    # "contactInfo":Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    return-object v9

    .line 3778
    .restart local v2    # "entityUri":Landroid/net/Uri;
    .restart local v9    # "contactInfo":Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "i":I
    .restart local v14    # "selection":Ljava/lang/StringBuilder;
    .restart local v15    # "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :try_start_1
    const-string v1, " ) "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3780
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "title"

    aput-object v6, v5, v1

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3784
    .local v12, "groupCursor":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3786
    :cond_7
    iget-object v1, v9, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mGroupTitles:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3787
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3789
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public registerBezelListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5278
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    if-eqz v0, :cond_0

    .line 5279
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->unregisterListener(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V

    .line 5280
    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    .line 5281
    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    .line 5283
    :cond_0
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsRegisteredBezelListener:Z

    if-eqz v0, :cond_1

    .line 5386
    :goto_0
    return-void

    .line 5285
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsRegisteredBezelListener:Z

    .line 5287
    new-instance v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    .line 5288
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    .line 5385
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->registerListener(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V

    goto :goto_0
.end method

.method public requestAddPrivateContacts()V
    .locals 2

    .prologue
    .line 3506
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldUpdateDeleteContactList:Z

    .line 3508
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateUris:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->start(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/PrivateContactsInteraction;

    .line 3510
    :cond_0
    return-void
.end method

.method public requestDeleteContacts()V
    .locals 4

    .prologue
    .line 3411
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 3412
    new-instance v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment$16;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$16;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    .line 3418
    .local v1, "listener":Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_1

    .line 3419
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3421
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 3422
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3424
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 3426
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;)V

    .line 3428
    .end local v1    # "listener":Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;
    :cond_2
    return-void
.end method

.method public requestMoveToKnoxContacts()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 3431
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 3432
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v9, :cond_1

    .line 3433
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 3435
    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_0

    .line 3436
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v7, v9, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3438
    :cond_0
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9}, Landroid/widget/SearchView;->clearFocus()V

    .line 3440
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 3441
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v9, "personaIds"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 3442
    .local v8, "personaIds":[I
    if-eqz v8, :cond_3

    .line 3443
    array-length v9, v8

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 3446
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3447
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v9, "action"

    const-string v10, "MoveTo"

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3448
    const-string v9, "src"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3449
    const-string v9, "target"

    aget v10, v8, v11

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3450
    const/4 v5, 0x0

    .line 3451
    .local v5, "i":I
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v3, v9, [J

    .line 3452
    .local v3, "contactIds":[J
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 3453
    .local v4, "contactUri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 3454
    .local v1, "contactId":J
    aput-wide v1, v3, v5

    .line 3455
    add-int/lit8 v5, v5, 0x1

    .line 3456
    goto :goto_0

    .line 3457
    .end local v1    # "contactId":J
    .end local v4    # "contactUri":Landroid/net/Uri;
    :cond_2
    const-string v9, "contact_ids"

    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 3458
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v9, v0}, Landroid/os/PersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3476
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "contactIds":[J
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "personaIds":[I
    :cond_3
    :goto_1
    return-void

    .line 3459
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "personaIds":[I
    :cond_4
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 3462
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3463
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 3464
    .restart local v5    # "i":I
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v3, v9, [J

    .line 3465
    .restart local v3    # "contactIds":[J
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 3466
    .restart local v4    # "contactUri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 3467
    .restart local v1    # "contactId":J
    aput-wide v1, v3, v5

    .line 3468
    add-int/lit8 v5, v5, 0x1

    .line 3469
    goto :goto_2

    .line 3470
    .end local v1    # "contactId":J
    .end local v4    # "contactUri":Landroid/net/Uri;
    :cond_5
    const-string v9, "personaIds"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 3471
    const-string v9, "contact_ids"

    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 3472
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public requestRemoveFromKnoxContacts()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3479
    iget-object v8, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 3480
    iget-object v8, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v8, :cond_1

    .line 3481
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "input_method"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 3483
    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_0

    .line 3484
    iget-object v8, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3486
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->clearFocus()V

    .line 3488
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3489
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "action"

    const-string v9, "MoveTo"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3490
    const-string v8, "src"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3491
    const-string v8, "target"

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3492
    const/4 v5, 0x0

    .line 3493
    .local v5, "i":I
    iget-object v8, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v3, v8, [J

    .line 3494
    .local v3, "contactIds":[J
    iget-object v8, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 3495
    .local v4, "contactUri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 3496
    .local v1, "contactId2":J
    aput-wide v1, v3, v5

    .line 3497
    add-int/lit8 v5, v5, 0x1

    .line 3498
    goto :goto_0

    .line 3499
    .end local v1    # "contactId2":J
    .end local v4    # "contactUri":Landroid/net/Uri;
    :cond_2
    const-string v8, "contact_ids"

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 3500
    iget-object v8, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Landroid/os/PersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3502
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "contactIds":[J
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public setAccountFilterHeaderClickabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 4083
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 4084
    return-void
.end method

.method public setAddPrivateContactsListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$AddPrivateContactsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment$AddPrivateContactsListener;

    .prologue
    .line 3979
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$AddPrivateContactsListener;

    .line 3980
    return-void
.end method

.method public setAddPrivateMode(ZZ)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "flag2"    # Z

    .prologue
    .line 1839
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-eq v0, p1, :cond_0

    .line 1881
    :cond_0
    return-void
.end method

.method public setChangingSplitRatioMode(Z)V
    .locals 6
    .param p1, "flag"    # Z

    .prologue
    const/4 v5, 0x0

    .line 4059
    iget-boolean v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mChagingSplitRatioMode:Z

    if-eq v3, p1, :cond_0

    .line 4060
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    .line 4061
    .local v2, "profilePaddingLeft":I
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    .line 4062
    .local v0, "accountFilterPaddingLeft":I
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    .line 4063
    .local v1, "accountFilterPaddingRight":I
    if-eqz p1, :cond_1

    .line 4064
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    const v4, 0x7f02071d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4066
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4074
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4075
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4077
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setChangingSplitRatioMode(Z)V

    .line 4079
    .end local v0    # "accountFilterPaddingLeft":I
    .end local v1    # "accountFilterPaddingRight":I
    .end local v2    # "profilePaddingLeft":I
    :cond_0
    return-void

    .line 4069
    .restart local v0    # "accountFilterPaddingLeft":I
    .restart local v1    # "accountFilterPaddingRight":I
    .restart local v2    # "profilePaddingLeft":I
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    const v4, 0x7f02071c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4071
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setContactsUnavailableViewVisible(ZZZ)V
    .locals 8
    .param p1, "visible"    # Z
    .param p2, "needHelpText"    # Z
    .param p3, "adjustSip"    # Z

    .prologue
    .line 3802
    const/4 v2, -0x1

    .line 3803
    .local v2, "lsoftInputMode":I
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListContentFrame:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 3900
    :cond_0
    :goto_0
    return-void

    .line 3810
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3811
    if-eqz p1, :cond_8

    .line 3812
    const/16 v2, 0x30

    .line 3814
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3815
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 3817
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_2

    .line 3818
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 3828
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 3829
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearching()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProviderStatus:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 3831
    const/16 v2, 0x30

    .line 3834
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v2, v5, :cond_4

    .line 3835
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3837
    :cond_4
    instance-of v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v5, :cond_5

    .line 3838
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v6, 0x7f090037

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e0076

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3840
    :cond_5
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3842
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    if-eqz p1, :cond_b

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3843
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListContentFrame:Landroid/view/View;

    if-nez p1, :cond_c

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3844
    if-eqz p1, :cond_6

    .line 3845
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3849
    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-nez v5, :cond_7

    .line 3850
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3851
    .local v0, "config":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    .line 3852
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v6, 0x7f09048e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3856
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_d

    if-eqz p2, :cond_d

    .line 3857
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v6, 0x7f09048c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3892
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_7
    :goto_5
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    instance-of v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-nez v5, :cond_0

    .line 3895
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3896
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3897
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListContentFrame:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 3822
    :cond_8
    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsAddaContactTutorialMode:Z

    if-eqz v5, :cond_9

    .line 3823
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 3825
    :cond_9
    const/16 v2, 0x10

    goto/16 :goto_1

    .line 3840
    :cond_a
    const/16 v5, 0x8

    goto/16 :goto_2

    .line 3842
    :cond_b
    const/16 v5, 0x8

    goto/16 :goto_3

    .line 3843
    :cond_c
    const/16 v5, 0x8

    goto/16 :goto_4

    .line 3860
    .restart local v0    # "config":Landroid/content/res/Configuration;
    :cond_d
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v6, 0x7f09048c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 3864
    :cond_e
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v6, 0x7f09048e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3866
    iget v5, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_f

    iget v5, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3871
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v6, 0x7f09048b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 3876
    :cond_f
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_10

    if-eqz p2, :cond_10

    .line 3877
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v6, 0x7f09048c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3879
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3880
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v6, 0x7f09048c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 3882
    .local v3, "mHelpText":Landroid/widget/LinearLayout;
    const v5, 0x7f0902e5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3884
    .local v4, "mTextBottom":Landroid/widget/TextView;
    const v5, 0x7f0e023a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 3887
    .end local v3    # "mHelpText":Landroid/widget/LinearLayout;
    .end local v4    # "mTextBottom":Landroid/widget/TextView;
    :cond_10
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v6, 0x7f09048c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public setCustomSearchBarVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchBarLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1835
    :goto_0
    return-void

    .line 1834
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchBarLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setDataChangeListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;

    .prologue
    .line 4183
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDataChangeListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;

    .line 4184
    return-void
.end method

.method public setDeleteContactsListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    .prologue
    .line 3975
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    .line 3976
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 6
    .param p1, "flag"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1885
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eq v1, p1, :cond_3

    .line 1886
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    .line 1888
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    if-eqz v1, :cond_4

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 1890
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQuickContactEnabled(Z)V

    .line 1891
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactListAdapter;->setQuickContactEnabled(Z)V

    .line 1893
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/contacts/list/ContactListAdapter;->setCheckBoxAnimationStartTimeMilis(J)V

    .line 1896
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setMultiSelectEnabled(Z)V

    .line 1898
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1899
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1901
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1905
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    if-eqz v1, :cond_1

    .line 1906
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;->onSelectedCountChanged(I)V

    .line 1914
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    .line 1916
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 1918
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 1919
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheckedIds(Ljava/util/HashMap;)V

    .line 1920
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setMultiSelectEnabled(Z)V

    .line 1921
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDeleteMode(Z)V

    .line 1923
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_8

    move v1, v2

    :goto_4
    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCreateButtonVisibility(Z)V

    .line 1924
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_9

    :goto_5
    invoke-direct {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomMenuButtonVisibility(Z)V

    .line 1926
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1927
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->reloadData()V

    .line 1928
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v1, :cond_2

    .line 1929
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->clearParitionsForDeleteMode()V

    .line 1933
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkDeleteHeaderViewVisibility()V

    .line 1936
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteModeLayout()V

    .line 1938
    .end local v0    # "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 1888
    goto/16 :goto_0

    :cond_5
    move v1, v3

    .line 1890
    goto/16 :goto_1

    :cond_6
    move v4, v3

    .line 1891
    goto/16 :goto_2

    :cond_7
    move v1, v3

    .line 1916
    goto :goto_3

    .restart local v0    # "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    :cond_8
    move v1, v3

    .line 1923
    goto :goto_4

    :cond_9
    move v2, v3

    .line 1924
    goto :goto_5
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 2160
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 2161
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    .line 2162
    return-void
.end method

.method public setIsAddaContactTutorialMode(Z)V
    .locals 0
    .param p1, "tutorialMode"    # Z

    .prologue
    .line 4317
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsAddaContactTutorialMode:Z

    .line 4318
    return-void
.end method

.method public setMovetoKnoxMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 5396
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z

    .line 5397
    return-void
.end method

.method protected setProfileHeader()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2445
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    .line 2446
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 2450
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    iget-boolean v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2453
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2454
    return-void

    :cond_0
    move v0, v2

    .line 2446
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2450
    goto :goto_1
.end method

.method public setProviderStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 4343
    iget v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProviderStatus:I

    if-eq v0, p1, :cond_0

    .line 4344
    iput p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProviderStatus:I

    .line 4346
    :cond_0
    return-void
.end method

.method public setRcsEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 4089
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4090
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 4091
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    if-eqz v0, :cond_0

    .line 4092
    if-eqz p1, :cond_1

    .line 4093
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->activateRcsPinner(Z)V

    .line 4094
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->resume()V

    .line 4101
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    :cond_0
    :goto_0
    return-void

    .line 4096
    .restart local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->activateRcsPinner(Z)V

    .line 4097
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->pause()V

    goto :goto_0
.end method

.method public setSearchMode(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v3, 0x2

    .line 1789
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1790
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1827
    :cond_0
    :goto_0
    return-void

    .line 1794
    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSearchMode(Z)V

    .line 1795
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1796
    .local v1, "config":Landroid/content/res/Configuration;
    sget-boolean v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    if-nez v2, :cond_5

    .line 1797
    if-eqz p1, :cond_3

    .line 1798
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_2

    .line 1799
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_2

    .line 1800
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isShowingActionbar()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1804
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->hideActionbar()V

    .line 1826
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    goto :goto_0

    .line 1809
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_2

    .line 1810
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSearchViewQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_4

    .line 1812
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->showActionbar()V

    goto :goto_1

    .line 1813
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isShowingActionbar()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1815
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->showActionbar()V

    goto :goto_1

    .line 1819
    :cond_5
    iget-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    if-eqz v2, :cond_2

    .line 1820
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_2

    .line 1821
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isShowingActionbar()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1822
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->showActionbar()V

    goto :goto_1
.end method

.method public setShowActionbar(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 4278
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    .line 4279
    return-void
.end method

.method public shouldShowCustomSearchResult()Z
    .locals 1

    .prologue
    .line 3951
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 11
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    .line 2256
    if-nez p2, :cond_5

    .line 2257
    const-string v7, "DefaultContactBrowseListFragment"

    const-string v8, "Data is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v7

    if-nez v7, :cond_e

    if-eqz p2, :cond_e

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_e

    .line 2266
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showNoMatchesView(Z)V

    .line 2268
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 2271
    .local v2, "count":I
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    :goto_1
    sub-int/2addr v2, v7

    .line 2272
    if-gez v2, :cond_1

    const/4 v2, 0x0

    .line 2273
    :cond_1
    if-eqz v2, :cond_7

    .line 2275
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v7, :cond_2

    .line 2276
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 2280
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->adjustTotalCountText(I)V

    .line 2283
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v7, :cond_3

    .line 2284
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2286
    :cond_3
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-eqz v7, :cond_4

    .line 2287
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPrivateContactHeaderView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2411
    .end local v2    # "count":I
    :cond_4
    :goto_2
    return-void

    .line 2258
    :cond_5
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2259
    const-string v7, "DefaultContactBrowseListFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ready to display : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2271
    .restart local v2    # "count":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 2292
    :cond_7
    sget-boolean v7, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-nez v7, :cond_8

    .line 2293
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->clearAnimation()V

    .line 2294
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkDeleteHeaderViewVisibility()V

    .line 2296
    :cond_8
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v7, :cond_d

    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    if-nez v7, :cond_d

    sget-boolean v7, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    if-nez v7, :cond_9

    sget-boolean v7, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    if-eqz v7, :cond_d

    :cond_9
    const/4 v7, 0x1

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 2300
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v7, :cond_a

    .line 2301
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 2303
    :cond_a
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-eqz v7, :cond_b

    .line 2304
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 2307
    :cond_b
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearching()Z

    move-result v7

    if-nez v7, :cond_c

    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v7, :cond_c

    iget v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProviderStatus:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_c

    .line 2309
    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isHelpTextNeeded()Z

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 2311
    :cond_c
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsTextView:Landroid/widget/TextView;

    const v8, 0x7f0e0084

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 2296
    :cond_d
    const/4 v7, 0x0

    goto :goto_3

    .line 2315
    .end local v2    # "count":I
    :cond_e
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v7, :cond_f

    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-eqz v7, :cond_10

    .line 2316
    :cond_f
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 2320
    :cond_10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    .line 2321
    .local v1, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    if-eqz v1, :cond_4

    .line 2327
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    .line 2329
    :cond_11
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showNoMatchesView(Z)V

    .line 2333
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v7, :cond_12

    .line 2334
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2336
    :cond_12
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-eqz v7, :cond_13

    .line 2337
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPrivateContactHeaderView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2390
    .end local v1    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    :cond_13
    :goto_4
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 2393
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2396
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2397
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2398
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v5

    .line 2399
    .local v5, "searchedName":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 2400
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1a

    .line 2401
    const-string v7, "GATE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<GATE-M>CONTACT_FOUND : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " </GATE-M>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2340
    .end local v5    # "searchedName":Ljava/lang/String;
    .restart local v1    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    :cond_14
    :try_start_1
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v8, 0x7f090437

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2342
    .local v6, "textView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v8, 0x7f09017e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 2345
    .local v4, "progress":Landroid/widget/ProgressBar;
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showNoMatchesView(Z)V

    .line 2349
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v7, :cond_15

    .line 2350
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2352
    :cond_15
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddPrivateMode:Z

    if-eqz v7, :cond_16

    .line 2353
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPrivateContactHeaderView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2356
    :cond_16
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->isLoading()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2358
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearching()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 2359
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 2360
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showNoMatchesView(Z)V

    .line 2363
    :cond_17
    const v7, 0x7f0e01a0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2364
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2365
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_4

    .line 2387
    .end local v1    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    .end local v4    # "progress":Landroid/widget/ProgressBar;
    .end local v6    # "textView":Landroid/widget/TextView;
    :catch_0
    move-exception v7

    goto/16 :goto_4

    .line 2368
    .restart local v1    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    .restart local v4    # "progress":Landroid/widget/ProgressBar;
    .restart local v6    # "textView":Landroid/widget/TextView;
    :cond_18
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 2369
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 2370
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 2371
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showNoMatchesView(Z)V

    .line 2374
    :cond_19
    const v7, 0x7f0e02de

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2375
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 2376
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2377
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2379
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v7, 0x30

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 2383
    .local v3, "paddingVal":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v7, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2384
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 2404
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    .end local v3    # "paddingVal":I
    .end local v4    # "progress":Landroid/widget/ProgressBar;
    .end local v6    # "textView":Landroid/widget/TextView;
    .restart local v5    # "searchedName":Ljava/lang/String;
    :cond_1a
    const-string v7, "GATE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<GATE-M>CONTACT_NOT_FOUND : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " </GATE-M>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected showEmptyUserProfile(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2511
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2512
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2514
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2515
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2516
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2517
    return-void

    :cond_0
    move v0, v2

    .line 2511
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2512
    goto :goto_1

    :cond_2
    move v0, v2

    .line 2514
    goto :goto_2

    :cond_3
    move v0, v2

    .line 2515
    goto :goto_3

    :cond_4
    move v1, v2

    .line 2516
    goto :goto_4
.end method

.method public showShareViaList()V
    .locals 7

    .prologue
    .line 4594
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09051a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4595
    .local v3, "shareMenuView":Landroid/view/View;
    new-instance v4, Landroid/widget/ListPopupWindow;

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    .line 4596
    new-instance v4, Lcom/android/contacts/list/SelectShareMenuAdapter;

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0401ef

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/list/SelectShareMenuAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    .line 4598
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4599
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getShareIntent()Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4602
    .local v1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    new-instance v5, Lcom/android/contacts/list/DefaultContactBrowseListFragment$18;

    invoke-direct {v5, p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$18;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4618
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    invoke-virtual {v4, v1}, Lcom/android/contacts/list/SelectShareMenuAdapter;->setAppList(Ljava/util/List;)V

    .line 4619
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getShareIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/SelectShareMenuAdapter;->setShareIntent(Landroid/content/Intent;)V

    .line 4620
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/SelectShareMenuAdapter;->setIsSelectionMode(Z)V

    .line 4621
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 4623
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 4624
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 4625
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4626
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 4629
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 4630
    .local v2, "shareMenuHeight":I
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 4631
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->show()V

    .line 4632
    return-void

    .line 4629
    .end local v2    # "shareMenuHeight":I
    :cond_0
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public startActionMode(Z)V
    .locals 2
    .param p1, "MultiSelectionDeleteMode"    # Z

    .prologue
    .line 5262
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    if-nez v0, :cond_0

    .line 5263
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    .line 5265
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    .line 5266
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    .line 5267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 5268
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 5269
    return-void
.end method

.method public unRegisterBezelListener()V
    .locals 2

    .prologue
    .line 5389
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    if-eqz v0, :cond_0

    .line 5390
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsRegisteredBezelListener:Z

    .line 5391
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->unregisterListener(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V

    .line 5393
    :cond_0
    return-void
.end method
