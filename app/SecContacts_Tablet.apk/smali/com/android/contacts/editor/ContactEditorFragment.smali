.class public Lcom/android/contacts/editor/ContactEditorFragment;
.super Landroid/app/Fragment;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;
.implements Lcom/android/contacts/editor/AggregationSuggestionView$Listener;
.implements Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;,
        Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;,
        Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;,
        Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;,
        Lcom/android/contacts/editor/ContactEditorFragment$Listener;,
        Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$DateFormatObserver;,
        Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;,
        Lcom/android/contacts/editor/ContactEditorFragment$NamecardListener;,
        Lcom/android/contacts/editor/ContactEditorFragment$Status;,
        Lcom/android/contacts/editor/ContactEditorFragment$SaveMode;
    }
.end annotation


# static fields
.field private static final CONTACT_DELETED:I = 0x2

.field private static final CONTACT_EDITED:I = 0x0

.field private static final CONTACT_INSERTED:I = 0x1

.field private static final EAB_TAG:Ljava/lang/String; = "EAB-ContactEditorFragment"

.field private static final EASY_MODE_SWITCH_INTENT:Ljava/lang/String; = "com.android.launcher.action.EASY_MODE_CHANGE"

.field public static final INTENT_EXTRA_ADD_TO_DEFAULT_DIRECTORY:Ljava/lang/String; = "addToDefaultDirectory"

.field public static final INTENT_EXTRA_NEW_LOCAL_PROFILE:Ljava/lang/String; = "newLocalProfile"

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_ALERTTONE:Ljava/lang/String; = "alerttone"

.field private static final KEY_CONTACT_ID_FOR_JOIN:Ljava/lang/String; = "contactidforjoin"

.field private static final KEY_CONTACT_WRITABLE_FOR_JOIN:Ljava/lang/String; = "contactwritableforjoin"

.field private static final KEY_CURRENT_ACCOUNT:Ljava/lang/String; = "currentAccount"

.field private static final KEY_CURRENT_PHOTO_FILE:Ljava/lang/String; = "currentphotofile"

.field private static final KEY_CURRENT_STATE:Ljava/lang/String; = "currentState"

.field private static final KEY_EDIT_STATE:Ljava/lang/String; = "state"

.field private static final KEY_EMAIL_MODE:Ljava/lang/String; = "emailmode"

.field private static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final KEY_IS_USER_PROFILE:Ljava/lang/String; = "isUserProfile"

.field private static final KEY_NEW_ACCOUNT:Ljava/lang/String; = "newAccount"

.field private static final KEY_NEW_LOCAL_PROFILE:Ljava/lang/String; = "newLocalProfile"

.field private static final KEY_PHONETICNAMEADDED:Ljava/lang/String; = "PhoneticNameAdded"

.field private static final KEY_PHOTO_MODE:Ljava/lang/String; = "photomode"

.field private static final KEY_RAW_CONTACT_ID_REQUESTING_PHOTO:Ljava/lang/String; = "photorequester"

.field private static final KEY_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_SELECTED_GROUP_NAMES:Ljava/lang/String; = "SelectedGroupNames"

.field private static final KEY_SHOW_JOIN_SUGGESTIONS:Ljava/lang/String; = "showJoinSuggestions"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_UPDATED_PHOTOS:Ljava/lang/String; = "updatedPhotos"

.field private static final KEY_URI:Ljava/lang/String; = "uri"

.field private static final KEY_VIBRATION:Ljava/lang/String; = "vibration"

.field private static final KEY_VIEW_ID_GENERATOR:Ljava/lang/String; = "viewidgenerator"

.field private static final LOADER_DATA:I = 0x1

.field private static final LOADER_GROUPS:I = 0x2

.field private static MAX_PHOTO_SIZE:I = 0x0

.field public static final PHONE_ACCOUNT_TYPE:Ljava/lang/String; = "vnd.sec.contact.phone"

.field private static final PHOTO_FOR_INTENT:Ljava/lang/String; = "photo_uri"

.field private static final REQUEST_CODE_ACCOUNTS_CHANGED:I = 0x3

.field private static final REQUEST_CODE_CAMERA_WITH_DATA:I = 0x1

.field private static final REQUEST_CODE_JOIN:I = 0x0

.field private static final REQUEST_CODE_PHOTO_PICKED_WITH_DATA:I = 0x2

.field private static final REQUEST_CODE_PICK_AIRBUTTON:I = 0xd

.field private static final REQUEST_CODE_PICK_NAMECARD:I = 0x3ee

.field private static final REQUEST_CREATE_VIBRATION:I = 0x8

.field private static final REQUEST_PHONE_ALERTTONE:I = 0x9

.field private static final REQUEST_PHONE_RINGTONE:I = 0x4

.field private static final REQUEST_PICK_VIBRATION:I = 0x7

.field private static final REQUEST_SAMSUNG_ACCOUNT_VALIDATION_CHECK_FROM_ACCOUNT_INTRO:I = 0xc

.field private static final REQUEST_SAMSUNG_ACCOUNT_VALIDATION_CHECK_FROM_ACCOUNT_SELECTOR:I = 0xa

.field private static final REQUEST_SAMSUNG_ACCOUNT_VALIDATION_CHECK_FROM_ACCOUNT_SWITCHER:I = 0xb

.field private static final REQUEST_SOUNDS_RINGTONE:I = 0x5

.field private static final REQUEST_SOUND_PICKER_RINGTONE:I = 0x6

.field private static final RINGTONE_FOR_INTENT:Ljava/lang/String; = "ringtone_uri"

.field public static final SAVE_MODE_EXTRA_KEY:Ljava/lang/String; = "saveMode"

.field private static final SELECTION_FOR_DUPLICATED_NAMECARD:Ljava/lang/String; = "is_private> 0 and display_name = ?"

.field private static final SELECTION_FOR_IS_CHANGED_NAMECARD:Ljava/lang/String; = "raw_contact_id = ? AND mimetype = \'vnd.android.cursor.item/photo\'"

.field private static final TAG:Ljava/lang/String;

.field private static final THREEG:Ljava/lang/String; = "2"

.field private static mSimInfoChanged:Z


# instance fields
.field private final SIM_ONE:I

.field private final SIM_ZERO:I

.field private executedSaveAction:Z

.field private mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

.field private mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

.field private mAction:Ljava/lang/String;

.field private mAddToSpeedDial:Z

.field private mAddaContactTutorialManager:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

.field private mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

.field private mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

.field private mAggregationSuggestionView:Landroid/view/View;

.field private mAggregationSuggestionsRawContactId:J

.field private mAlerttoneUri:Landroid/net/Uri;

.field private mAutoAddToDefaultGroup:Z

.field private mAutoAddToICEGroup:Z

.field private final mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContactIdForJoin:J

.field private mContactWritableForJoin:Z

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCrntPos:I

.field private mCurrentAccountForNewContact:Lcom/android/contacts/model/AccountWithDataSet;

.field private mCurrentPhotoFile:Ljava/lang/String;

.field private mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

.field private mCustomAlerttone:Ljava/lang/String;

.field private mCustomRingtone:Ljava/lang/String;

.field private mCustomVibration:Ljava/lang/String;

.field private final mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mDateFormatObserver:Lcom/android/contacts/editor/ContactEditorFragment$DateFormatObserver;

.field private mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

.field private mEnabled:Z

.field private final mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mIntentExtras:Landroid/os/Bundle;

.field private mIsCreatedWithEmail:Z

.field private mIsCreatedWithPhoto:Z

.field private mIsCreatedWithQRdata:Z

.field private mIsCreatedWithRingtone:Z

.field private mIsNameCard:Z

.field private mIsSimPb:Z

.field private mIsUserProfile:Z

.field private mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

.field private mLoaderStartTime:J

.field private mLookupUri:Landroid/net/Uri;

.field private mNameCardListener:Lcom/android/contacts/editor/ContactEditorFragment$NamecardListener;

.field private mNamecardPhotoBundle:Landroid/os/Bundle;

.field private mNewLocalProfile:Z

.field private mOldCustomAlerttone:Ljava/lang/String;

.field private mOldCustomRingtone:Ljava/lang/String;

.field private mOldCustomVibration:Ljava/lang/String;

.field private mPhoneticNameAdded:Z

.field private mRawContactIdRequestingPhoto:J

.field private mRingtoneUri:Landroid/net/Uri;

.field private mSelectedGroupNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/contacts/model/EntityDeltaList;

.field private mStatus:I

.field private mToast:Landroid/widget/Toast;

.field private mTutorialMode:I

.field private mUpdatedPhotos:Landroid/os/Bundle;

.field private mVibEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

.field private mVibObserver:Landroid/database/ContentObserver;

.field private mVibrationUri:Landroid/net/Uri;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

.field private mWritingBuddyTutorialManager:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

.field private sIsVibrator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    const-class v0, Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    .line 222
    const/16 v0, 0x168

    sput v0, Lcom/android/contacts/editor/ContactEditorFragment;->MAX_PHOTO_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 488
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 181
    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->SIM_ZERO:I

    .line 182
    iput v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->SIM_ONE:I

    .line 319
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    .line 335
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoneticNameAdded:Z

    .line 342
    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 369
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNameCard:Z

    .line 370
    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountForNewContact:Lcom/android/contacts/model/AccountWithDataSet;

    .line 374
    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNamecardPhotoBundle:Landroid/os/Bundle;

    .line 375
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->executedSaveAction:Z

    .line 376
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsSimPb:Z

    .line 428
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 443
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    .line 445
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddToSpeedDial:Z

    .line 447
    iput-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 449
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 451
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    .line 453
    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRingtoneUri:Landroid/net/Uri;

    .line 454
    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;

    .line 455
    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAlerttoneUri:Landroid/net/Uri;

    .line 472
    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCrntPos:I

    .line 474
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithPhoto:Z

    .line 476
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithRingtone:Z

    .line 478
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithQRdata:Z

    .line 480
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithEmail:Z

    .line 482
    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mTutorialMode:I

    .line 1005
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$DateFormatObserver;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$DateFormatObserver;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDateFormatObserver:Lcom/android/contacts/editor/ContactEditorFragment$DateFormatObserver;

    .line 1017
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$3;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibObserver:Landroid/database/ContentObserver;

    .line 3937
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$20;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$20;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 3973
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$21;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$21;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 489
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithPhoto:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithRingtone:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "x2"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p3, "x3"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->changeAccount(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->hideInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "x2"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p3, "x3"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->executedSaveAction:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/contacts/editor/ContactEditorFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # J

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/contacts/editor/ContactEditorFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    return p1
.end method

.method static synthetic access$2802(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->updateDateFormat()V

    return-void
.end method

.method static synthetic access$3102(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # J

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/sec/android/app/contacts/editor/VibrationEditorView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/contacts/editor/ContactEditorFragment;JLandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/graphics/Bitmap;
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/contacts/editor/ContactEditorFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getPhotoPickSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/editor/ContactEditorFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 168
    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mTutorialMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->acquireAggregationSuggestions(Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V

    return-void
.end method

.method private acquireAggregationSuggestions(Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rawContactEditor"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 3304
    invoke-virtual {p2}, Lcom/android/contacts/editor/RawContactEditorView;->getRawContactId()J

    move-result-wide v1

    .line 3305
    .local v1, "rawContactId":J
    iget-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 3307
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3308
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    .line 3309
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->reset()V

    .line 3312
    :cond_0
    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    .line 3314
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-nez v3, :cond_2

    .line 3315
    new-instance v3, Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-direct {v3, p1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    .line 3316
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3, p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setListener(Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;)V

    .line 3317
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    iget-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setIsAddToICE(Z)V

    .line 3318
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3320
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    iget-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddToSpeedDial:Z

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setIsAddToSpeedDial(Z)V

    .line 3322
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3325
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContactId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setContactId(J)V

    .line 3327
    invoke-virtual {p2}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v0

    .line 3328
    .local v0, "nameEditor":Lcom/android/contacts/editor/LabeledEditorView;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->onNameChange(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 3329
    return-void
.end method

.method private addAccountSwitcher(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 11
    .param p1, "currentState"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;

    .prologue
    const v10, 0x7f090204

    const/4 v9, 0x0

    .line 1941
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    .line 1942
    .local v8, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    new-instance v2, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v0, "account_name"

    invoke-virtual {v8, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v8, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "data_set"

    invoke-virtual {v8, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v1, v5}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    .local v2, "currentAccount":Lcom/android/contacts/model/AccountWithDataSet;
    const v0, 0x7f0902db

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1947
    .local v3, "accountSpinner":Landroid/view/View;
    if-nez v3, :cond_1

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1948
    .local v6, "accountView":Landroid/view/View;
    :goto_0
    if-nez v3, :cond_2

    const v0, 0x7f0902d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1949
    .local v4, "anchorView":Landroid/view/View;
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1950
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 1951
    .local v7, "config":Landroid/content/res/Configuration;
    iget v0, v7, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, v7, Landroid/content/res/Configuration;->navigation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1955
    if-eqz v3, :cond_0

    .line 1956
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 1960
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v6, v0, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1961
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$11;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/editor/ContactEditorFragment$11;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/AccountWithDataSet;Landroid/view/View;Landroid/view/View;Lcom/android/contacts/model/EntityDelta;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2057
    return-void

    .end local v4    # "anchorView":Landroid/view/View;
    .end local v6    # "accountView":Landroid/view/View;
    .end local v7    # "config":Landroid/content/res/Configuration;
    :cond_1
    move-object v6, v3

    .line 1947
    goto :goto_0

    .restart local v6    # "accountView":Landroid/view/View;
    :cond_2
    move-object v4, v3

    .line 1948
    goto :goto_1
.end method

.method private bindEditors()V
    .locals 41

    .prologue
    .line 1414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v3, :cond_2a

    .line 1415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    invoke-interface {v3}, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;->removeAllTab()V

    .line 1420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVibrator(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->sIsVibrator:Z

    .line 1424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/LayoutInflater;

    .line 1426
    .local v24, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v10

    .line 1427
    .local v10, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 1428
    .local v29, "numRawContacts":I
    const/16 v39, 0x0

    .line 1429
    .local v39, "writableAccounts":I
    const/16 v27, 0x0

    .line 1431
    .local v27, "namecardDataId":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_27

    .line 1433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/contacts/model/EntityDelta;

    .line 1434
    .local v20, "entity":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v38

    .line 1435
    .local v38, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v38 .. v38}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1431
    :cond_0
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 1437
    :cond_1
    const-string v3, "account_type"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1438
    .local v9, "accountType":Ljava/lang/String;
    const-string v3, "data_set"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1439
    .local v17, "dataSet":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v10, v9, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v37

    .line 1440
    .local v37, "type":Lcom/android/contacts/model/AccountType;
    const-string v3, "_id"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 1442
    .local v32, "rawContactId":J
    const-string v3, "ContactEditorFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TYPE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-virtual/range {v37 .. v37}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1444
    const v3, 0x7f0401d0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .local v19, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    move-object/from16 v3, v19

    .line 1446
    check-cast v3, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->setListener(Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;)V

    .line 1460
    :goto_2
    const-string v3, "SIM TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const-string v3, "SIM TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numRawContacts : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const-string v3, "SIM TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsCreatedWithPhoto : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithPhoto:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const-string v3, "SIM TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsCreatedWithQRdata : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithQRdata:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const-string v3, "SIM TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAutoAddToICEGroup : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const-string v3, "SIM TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsCreatedWithRingtone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithRingtone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    const-string v3, "android.intent.action.INSERT"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_17

    .line 1468
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithPhoto:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithQRdata:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithRingtone:Z

    if-eqz v3, :cond_15

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v11

    .line 1473
    .local v11, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :goto_3
    const-string v3, "SIM TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accounts : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const-string v3, "SIM TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNewLocalProfile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-nez v3, :cond_16

    .line 1477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->addAccountSwitcher(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    .line 1485
    .end local v11    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1489
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContent.getChildCount() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1493
    const/16 v3, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1496
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1499
    .local v18, "displayLabel":Ljava/lang/String;
    const-string v3, "vnd.sec.contact.phone_knox"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1500
    const v3, 0x7f0e0131

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1505
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;->onAccountAdded(Ljava/lang/String;)V

    .line 1509
    .end local v18    # "displayLabel":Ljava/lang/String;
    :cond_5
    if-eqz v20, :cond_1d

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mRingtoneUri:Landroid/net/Uri;

    if-eqz v3, :cond_19

    .line 1511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 1516
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAlerttoneUri:Landroid/net/Uri;

    if-eqz v3, :cond_1a

    .line 1517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAlerttoneUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAlerttone:Ljava/lang/String;

    .line 1522
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->sIsVibrator:Z

    if-eqz v3, :cond_1c

    .line 1523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;

    if-eqz v3, :cond_1b

    .line 1524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    .line 1536
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mOldCustomRingtone:Ljava/lang/String;

    .line 1537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mOldCustomVibration:Ljava/lang/String;

    .line 1538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAlerttone:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mOldCustomAlerttone:Ljava/lang/String;

    .line 1541
    const/4 v3, 0x1

    move/from16 v0, v29

    if-le v0, v3, :cond_6

    .line 1542
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/contacts/editor/RawContactEditorView;

    if-eqz v3, :cond_6

    .line 1543
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setRintoneVisibility(Z)V

    .line 1544
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setVibrationVisibility(Z)V

    .line 1545
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setAlerttoneVisibility(Z)V

    .line 1548
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1549
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/contacts/editor/RawContactEditorView;

    if-eqz v3, :cond_7

    .line 1550
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setRintoneVisibility(Z)V

    .line 1551
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setGroupVisibility(Z)V

    .line 1552
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setRelationVisibility(Z)V

    .line 1553
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setVibrationVisibility(Z)V

    .line 1554
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setAlerttoneVisibility(Z)V

    .line 1558
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v4

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V

    .line 1560
    const-string v3, "android.intent.action.INSERT"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "is_private"

    aput-object v7, v5, v6

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1563
    .local v16, "cursor":Landroid/database/Cursor;
    if-eqz v16, :cond_9

    .line 1564
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1565
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 1566
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 1567
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setIsNamecard(I)V

    .line 1569
    :cond_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1572
    :cond_9
    if-eqz v27, :cond_a

    .line 1573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "data11"

    aput-object v7, v5, v6

    const-string v6, "raw_contact_id = ? AND mimetype = \'vnd.android.cursor.item/photo\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1575
    .local v15, "c":Landroid/database/Cursor;
    if-eqz v15, :cond_a

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 1576
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setIsChangedNamecardPhoto(I)V

    .line 1582
    .end local v15    # "c":Landroid/database/Cursor;
    .end local v16    # "cursor":Landroid/database/Cursor;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->bindPhotoHandler(Lcom/android/contacts/editor/BaseRawContactEditorView;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDeltaList;)V

    .line 1590
    const/16 v28, 0x0

    .line 1591
    .local v28, "namecardOriginalPhotoPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v4, "photomode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1592
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1593
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v4, "photomode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v4, "photomode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1596
    if-eqz v28, :cond_e

    .line 1597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 1598
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    .line 1601
    :cond_d
    invoke-static/range {v28 .. v28}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1602
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v14}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSquareNamecardBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSquareNamecardFilePath(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v36

    .line 1603
    .local v36, "squarePhotoPath":Ljava/lang/String;
    const-string v3, "/"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;

    .line 1605
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v14, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1607
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mNamecardPhotoBundle:Landroid/os/Bundle;

    .line 1608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mNamecardPhotoBundle:Landroid/os/Bundle;

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v36    # "squarePhotoPath":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->updatedBitmapForRawContact(J)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1615
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1617
    if-eqz v14, :cond_f

    .line 1618
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 1619
    if-nez v28, :cond_1e

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setIsChangedNamecardPhoto(I)V

    .line 1625
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v4, "photo_uri"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v4, "photo_uri"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1627
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 1631
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1632
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 1635
    :cond_11
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/contacts/editor/RawContactEditorView;

    if-eqz v3, :cond_0

    .line 1636
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .local v12, "activity":Landroid/app/Activity;
    move-object/from16 v31, v19

    .line 1637
    check-cast v31, Lcom/android/contacts/editor/RawContactEditorView;

    .line 1638
    .local v31, "rawContactEditor":Lcom/android/contacts/editor/RawContactEditorView;
    new-instance v25, Lcom/android/contacts/editor/ContactEditorFragment$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v12, v2}, Lcom/android/contacts/editor/ContactEditorFragment$4;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/app/Activity;Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 1672
    .local v25, "listener":Lcom/android/contacts/editor/Editor$EditorListener;
    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v26

    .line 1673
    .local v26, "nameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 1675
    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/editor/RawContactEditorView;->getPhoneticNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v30

    .line 1677
    .local v30, "phoneticNameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 1678
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/RawContactEditorView;->setAutoAddToDefaultGroup(Z)V

    .line 1679
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToICEGroup(Z)V

    .line 1681
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    cmp-long v3, v32, v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mTutorialMode:I

    if-nez v3, :cond_12

    .line 1682
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v12, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->acquireAggregationSuggestions(Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 1686
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mSelectedGroupNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mSelectedGroupNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1687
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    .line 1689
    .local v21, "groupEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1690
    .local v35, "selectedGroupNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .local v23, "index":I
    :goto_a
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mSelectedGroupNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_1f

    .line 1691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mSelectedGroupNames:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    add-int/lit8 v23, v23, 0x1

    goto :goto_a

    .line 1448
    .end local v12    # "activity":Landroid/app/Activity;
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v21    # "groupEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v23    # "index":I
    .end local v25    # "listener":Lcom/android/contacts/editor/Editor$EditorListener;
    .end local v26    # "nameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    .end local v28    # "namecardOriginalPhotoPath":Ljava/lang/String;
    .end local v30    # "phoneticNameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    .end local v31    # "rawContactEditor":Lcom/android/contacts/editor/RawContactEditorView;
    .end local v35    # "selectedGroupNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    const v3, 0x7f0401cf

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/editor/RawContactEditorView;

    .line 1450
    .restart local v19    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    move/from16 v0, v29

    if-le v0, v3, :cond_14

    .line 1451
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1454
    :cond_14
    add-int/lit8 v39, v39, 0x1

    move-object/from16 v31, v19

    .line 1456
    check-cast v31, Lcom/android/contacts/editor/RawContactEditorView;

    .line 1457
    .restart local v31    # "rawContactEditor":Lcom/android/contacts/editor/RawContactEditorView;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoneticNameAdded:Z

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/RawContactEditorView;->setPhoneticNameAdded(Z)V

    goto/16 :goto_2

    .line 1468
    .end local v31    # "rawContactEditor":Lcom/android/contacts/editor/RawContactEditorView;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v11

    goto/16 :goto_3

    .line 1479
    .restart local v11    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    goto/16 :goto_4

    .line 1482
    .end local v11    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    goto/16 :goto_4

    .line 1501
    .restart local v18    # "displayLabel":Ljava/lang/String;
    :cond_18
    const-string v3, "vnd.sec.contact.phone_personal"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1502
    const v3, 0x7f0e0130

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_5

    .line 1513
    .end local v18    # "displayLabel":Ljava/lang/String;
    :cond_19
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "custom_ringtone"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    goto/16 :goto_6

    .line 1519
    :cond_1a
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "sec_custom_alert"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAlerttone:Ljava/lang/String;

    goto/16 :goto_7

    .line 1526
    :cond_1b
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "sec_custom_vibration"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    goto/16 :goto_8

    .line 1529
    :cond_1c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    goto/16 :goto_8

    .line 1532
    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 1533
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    goto/16 :goto_8

    .line 1619
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v28    # "namecardOriginalPhotoPath":Ljava/lang/String;
    :cond_1e
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 1693
    .restart local v12    # "activity":Landroid/app/Activity;
    .restart local v21    # "groupEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v23    # "index":I
    .restart local v25    # "listener":Lcom/android/contacts/editor/Editor$EditorListener;
    .restart local v26    # "nameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    .restart local v30    # "phoneticNameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    .restart local v31    # "rawContactEditor":Lcom/android/contacts/editor/RawContactEditorView;
    .restart local v35    # "selectedGroupNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1f
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mSelectedGroupNames:Ljava/util/ArrayList;

    .line 1696
    .end local v21    # "groupEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v23    # "index":I
    .end local v35    # "selectedGroupNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mSelectedGroupNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_21

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mSelectedGroupNames:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/RawContactEditorView;->setSelectedGroupNames(Ljava/util/ArrayList;)V

    .line 1700
    :cond_21
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v3

    if-nez v3, :cond_23

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->isDualStandbySim2(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1703
    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/editor/RawContactEditorView;->getRingtoneEditor()Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    move-result-object v34

    .line 1704
    .local v34, "ringtoneEditor":Lcom/sec/android/app/contacts/editor/RingtoneEditorView;
    if-eqz v34, :cond_23

    .line 1705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mRingtoneUri:Landroid/net/Uri;

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    if-eqz v3, :cond_22

    .line 1706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setRingtone(Ljava/lang/String;)V

    .line 1707
    :cond_22
    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/contacts/editor/ContactEditorFragment$5;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1733
    .end local v34    # "ringtoneEditor":Lcom/sec/android/app/contacts/editor/RingtoneEditorView;
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->sIsVibrator:Z

    if-eqz v3, :cond_25

    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v3

    if-nez v3, :cond_25

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->isDualStandbySim2(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 1736
    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/editor/RawContactEditorView;->getVibrationEditor()Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    .line 1737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    if-eqz v3, :cond_25

    .line 1738
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;

    if-eqz v3, :cond_24

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getVibrationVisibility()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->setVibration(Ljava/lang/String;)V

    .line 1741
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    new-instance v4, Lcom/android/contacts/editor/ContactEditorFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/contacts/editor/ContactEditorFragment$7;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1776
    :cond_25
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->isDualStandbySim2(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1779
    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/editor/RawContactEditorView;->getAlerttoneEditor()Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    move-result-object v13

    .line 1780
    .local v13, "alerttoneEditor":Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;
    if-eqz v13, :cond_0

    .line 1781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAlerttoneUri:Landroid/net/Uri;

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAlerttone:Ljava/lang/String;

    if-eqz v3, :cond_26

    .line 1782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAlerttone:Ljava/lang/String;

    invoke-virtual {v13, v3}, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->setAlerttone(Ljava/lang/String;)V

    .line 1783
    :cond_26
    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/contacts/editor/ContactEditorFragment$9;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1812
    .end local v9    # "accountType":Ljava/lang/String;
    .end local v12    # "activity":Landroid/app/Activity;
    .end local v13    # "alerttoneEditor":Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "dataSet":Ljava/lang/String;
    .end local v19    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v20    # "entity":Lcom/android/contacts/model/EntityDelta;
    .end local v25    # "listener":Lcom/android/contacts/editor/Editor$EditorListener;
    .end local v26    # "nameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    .end local v28    # "namecardOriginalPhotoPath":Ljava/lang/String;
    .end local v30    # "phoneticNameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    .end local v31    # "rawContactEditor":Lcom/android/contacts/editor/RawContactEditorView;
    .end local v32    # "rawContactId":J
    .end local v37    # "type":Lcom/android/contacts/model/AccountType;
    .end local v38    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_27
    const/4 v3, 0x1

    move/from16 v0, v39

    if-ge v0, v3, :cond_28

    .line 1813
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/contacts/activities/ContactEditorActivity;

    if-eqz v3, :cond_28

    .line 1814
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-nez v3, :cond_28

    .line 1815
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/activities/ContactEditorActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/contacts/activities/ContactEditorActivity;->setSaveButtonVisibility(Z)V

    .line 1819
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V

    .line 1822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1824
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;->tabVisibity(Z)V

    .line 1826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    invoke-interface {v3}, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;->removeAllTab()V

    .line 1835
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    move/from16 v0, v29

    if-gt v0, v3, :cond_29

    .line 1836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1843
    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 1844
    .restart local v12    # "activity":Landroid/app/Activity;
    if-eqz v12, :cond_2a

    invoke-virtual {v12}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1845
    .end local v10    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .end local v12    # "activity":Landroid/app/Activity;
    .end local v22    # "i":I
    .end local v24    # "inflater":Landroid/view/LayoutInflater;
    .end local v27    # "namecardDataId":I
    .end local v29    # "numRawContacts":I
    .end local v39    # "writableAccounts":I
    :cond_2a
    return-void

    .line 1827
    .restart local v10    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .restart local v22    # "i":I
    .restart local v24    # "inflater":Landroid/view/LayoutInflater;
    .restart local v27    # "namecardDataId":I
    .restart local v29    # "numRawContacts":I
    .restart local v39    # "writableAccounts":I
    :cond_2b
    const/4 v3, 0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_2c

    .line 1828
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;->tabVisibity(Z)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    invoke-interface {v3}, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;->removeAllTab()V

    goto :goto_b

    .line 1831
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;->tabVisibity(Z)V

    goto :goto_b
.end method

.method private bindEditorsForExistingContact(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 17
    .param p1, "contact"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 932
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 934
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 935
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->createEntityDeltaList()Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 937
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v15, :cond_0

    .line 938
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v16, "name"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 939
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v16, "name"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 942
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    .line 943
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 946
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    .line 947
    const/4 v9, 0x0

    .line 949
    .local v9, "localProfileExists":Z
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-eqz v15, :cond_7

    .line 950
    const/4 v11, 0x0

    .line 951
    .local v11, "readOnlyProfileExist":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    .line 953
    .local v4, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/EntityDelta;

    .line 954
    .local v12, "state":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v12}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    const-string v16, "account_type"

    invoke-virtual/range {v15 .. v16}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 955
    .local v3, "accountType":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    const-string v16, "data_set"

    invoke-virtual/range {v15 .. v16}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 956
    .local v6, "dataSet":Ljava/lang/String;
    invoke-virtual {v4, v3, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v13

    .line 958
    .local v13, "type":Lcom/android/contacts/model/AccountType;
    invoke-virtual {v12}, Lcom/android/contacts/model/EntityDelta;->setProfileQueryUri()V

    .line 961
    const-string v15, "vnd.sec.contact.phone"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 962
    const/4 v9, 0x1

    .line 964
    :cond_2
    invoke-virtual {v13}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v15

    if-nez v15, :cond_1

    .line 965
    const/4 v11, 0x1

    goto :goto_0

    .line 969
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v6    # "dataSet":Ljava/lang/String;
    .end local v12    # "state":Lcom/android/contacts/model/EntityDelta;
    .end local v13    # "type":Lcom/android/contacts/model/AccountType;
    :cond_3
    if-nez v9, :cond_7

    .line 970
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 972
    .local v14, "values":Landroid/content/ContentValues;
    if-eqz v11, :cond_9

    .line 973
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v5

    .line 977
    .local v5, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :goto_1
    const/4 v10, 0x0

    .line 979
    .local v10, "phoneAccount":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountWithDataSet;

    .line 980
    .local v2, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v15, "vnd.sec.contact.phone"

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 981
    move-object v10, v2

    .line 985
    .end local v2    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_5
    if-eqz v10, :cond_6

    .line 986
    const-string v15, "account_name"

    iget-object v0, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v15, "account_type"

    iget-object v0, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v15, "data_set"

    iget-object v0, v10, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    .end local v5    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v10    # "phoneAccount":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_6
    :goto_2
    new-instance v8, Lcom/android/contacts/model/EntityDelta;

    invoke-static {v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    invoke-direct {v8, v15}, Lcom/android/contacts/model/EntityDelta;-><init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 996
    .local v8, "insert":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v8}, Lcom/android/contacts/model/EntityDelta;->setProfileQueryUri()V

    .line 997
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    .end local v4    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "insert":Lcom/android/contacts/model/EntityDelta;
    .end local v11    # "readOnlyProfileExist":Z
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 1002
    return-void

    .line 973
    .restart local v4    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v11    # "readOnlyProfileExist":Z
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 991
    :cond_9
    const-string v15, "account_name"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 992
    const-string v15, "account_type"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 993
    const-string v15, "data_set"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;)V
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "accountType"    # Lcom/android/contacts/model/AccountType;

    .prologue
    const/4 v0, 0x0

    .line 1285
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V

    .line 1286
    return-void
.end method

.method private bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V
    .locals 11
    .param p1, "newAccount"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "newAccountType"    # Lcom/android/contacts/model/AccountType;
    .param p3, "oldState"    # Lcom/android/contacts/model/EntityDelta;
    .param p4, "oldAccountType"    # Lcom/android/contacts/model/AccountType;

    .prologue
    .line 1290
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1291
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountForNewContact:Lcom/android/contacts/model/AccountWithDataSet;

    .line 1293
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1294
    .local v10, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_4

    .line 1295
    const-string v0, "account_name"

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const-string v0, "account_type"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const-string v0, "data_set"

    iget-object v1, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :goto_0
    new-instance v2, Lcom/android/contacts/model/EntityDelta;

    invoke-static {v10}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/contacts/model/EntityDelta;-><init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 1305
    .local v2, "insert":Lcom/android/contacts/model/EntityDelta;
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v8

    .line 1306
    .local v8, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    if-nez p3, :cond_b

    .line 1308
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableQRCode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1310
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    .line 1311
    .local v9, "mimeType":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    const-string v0, "vnd.android.cursor.dir/QRperson"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1313
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v1, "EM_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1314
    .local v7, "EMnumber":I
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v1, "M_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1315
    .local v4, "Mnumber":I
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v1, "FAX_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1316
    .local v5, "FAXnumber":I
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v1, "TEL_FIX_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1317
    .local v6, "TELFIXnumber":I
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    move-object v1, p2

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForQRcode(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;IIII)V

    .line 1349
    .end local v4    # "Mnumber":I
    .end local v5    # "FAXnumber":I
    .end local v6    # "TELFIXnumber":I
    .end local v7    # "EMnumber":I
    .end local v9    # "mimeType":Ljava/lang/String;
    :goto_1
    invoke-virtual {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->isDualStandbySim2(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1355
    :cond_0
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-static {v2, p2, v0}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1357
    :goto_2
    invoke-virtual {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->isDualStandbySim2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1359
    :cond_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1360
    iget-object v0, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1361
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-static {v2, p2, v0}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1398
    :cond_2
    :goto_3
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-eqz v0, :cond_3

    .line 1399
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->setProfileQueryUri()V

    .line 1402
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-nez v0, :cond_f

    .line 1404
    invoke-static {v2}, Lcom/android/contacts/model/EntityDeltaList;->fromSingle(Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 1409
    :goto_4
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 1410
    return-void

    .line 1299
    .end local v2    # "insert":Lcom/android/contacts/model/EntityDelta;
    .end local v8    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_4
    const-string v0, "account_name"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1300
    const-string v0, "account_type"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1301
    const-string v0, "data_set"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1319
    .restart local v2    # "insert":Lcom/android/contacts/model/EntityDelta;
    .restart local v8    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .restart local v9    # "mimeType":Ljava/lang/String;
    :cond_5
    invoke-virtual {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->isDualStandbySim2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1322
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {v0, p2, v2, v1}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1325
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {v0, p2, v2, v1}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1327
    .end local v9    # "mimeType":Ljava/lang/String;
    :cond_8
    invoke-virtual {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->isDualStandbySim2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1330
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {v0, p2, v2, v1}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1339
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {v0, p2, v2, v1}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1343
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, v2, p4, p2}, Lcom/android/contacts/model/EntityModifier;->migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/AccountType;)V

    goto/16 :goto_1

    .line 1353
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-static {v0, v2, p2, v1}, Lcom/android/contacts/model/EntityModifier;->ensureKindExistsSIMPhone(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1371
    :cond_d
    invoke-virtual {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1372
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-static {v2, p2, v0}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto/16 :goto_3

    .line 1387
    :cond_e
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-static {v2, p2, v0}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto/16 :goto_3

    .line 1407
    :cond_f
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method private bindGroupMetaData()V
    .locals 4

    .prologue
    .line 1906
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    if-nez v3, :cond_1

    .line 1915
    :cond_0
    return-void

    .line 1910
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1911
    .local v1, "editorCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1912
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 1913
    .local v0, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setGroupMetaData(Landroid/database/Cursor;)V

    .line 1911
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private bindPhotoHandler(Lcom/android/contacts/editor/BaseRawContactEditorView;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDeltaList;)V
    .locals 7
    .param p1, "editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;
    .param p2, "type"    # Lcom/android/contacts/model/AccountType;
    .param p3, "state"    # Lcom/android/contacts/model/EntityDeltaList;

    .prologue
    const/4 v2, 0x0

    .line 1869
    invoke-virtual {p2}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1870
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1871
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getIsNamecard()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getIsChangedNamecardPhoto()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1872
    const/16 v4, 0xc

    .line 1894
    .local v4, "mode":I
    :goto_0
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/content/Context;Lcom/android/contacts/editor/BaseRawContactEditorView;ILcom/android/contacts/model/EntityDeltaList;)V

    .line 1895
    .local v0, "photoHandler":Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    invoke-virtual {v2, v1}, Lcom/android/contacts/editor/PhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 1900
    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    .line 1901
    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 1903
    .end local v0    # "photoHandler":Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    .end local v4    # "mode":I
    :cond_0
    :goto_1
    return-void

    .line 1873
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1874
    const/16 v4, 0xf

    .restart local v4    # "mode":I
    goto :goto_0

    .line 1876
    .end local v4    # "mode":I
    :cond_2
    const/16 v4, 0xe

    .restart local v4    # "mode":I
    goto :goto_0

    .line 1879
    .end local v4    # "mode":I
    :cond_3
    const/4 v4, 0x4

    .restart local v4    # "mode":I
    goto :goto_0

    .line 1882
    .end local v4    # "mode":I
    :cond_4
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1886
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    goto :goto_1

    .line 1890
    :cond_5
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    goto :goto_1
.end method

.method private changeAccount(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 12
    .param p1, "currentState"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "currentAccount"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p3, "newAccount"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 2061
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    .line 2063
    .local v4, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v6, "vnd.sec.contact.sim"

    iget-object v7, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->isDualStandbySim2(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2065
    :cond_0
    const/4 v1, 0x0

    .line 2066
    .local v1, "isSimEnabled":Z
    const/4 v3, 0x0

    .line 2067
    .local v3, "isSimReady":Z
    const/4 v2, 0x0

    .line 2068
    .local v2, "isSimFull":Z
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2074
    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v1

    .line 2075
    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v3

    .line 2076
    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v2

    .line 2078
    :goto_0
    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 2080
    if-eqz v2, :cond_8

    .line 2081
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2084
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v8, :cond_3

    .line 2085
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0220

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2192
    .end local v1    # "isSimEnabled":Z
    .end local v2    # "isSimFull":Z
    .end local v3    # "isSimReady":Z
    :cond_1
    :goto_1
    return-void

    .line 2070
    .restart local v1    # "isSimEnabled":Z
    .restart local v2    # "isSimFull":Z
    .restart local v3    # "isSimReady":Z
    :cond_2
    iget-object v6, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 2071
    iget-object v6, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v3

    .line 2072
    iget-object v6, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 2088
    :cond_3
    sget-object v6, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v7, "onItemClick : isSimFull!!!!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0e00a3

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2092
    :cond_4
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2111
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v8, :cond_7

    .line 2112
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0e021f

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2094
    :cond_5
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v8, :cond_6

    .line 2095
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0e03fd

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v9

    iget-object v10, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2102
    :cond_6
    sget-object v6, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v7, "onItemClick : isSimFull!!!!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0e03fc

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v9

    iget-object v10, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2115
    :cond_7
    sget-object v6, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v7, "onItemClick : isSimFull!!!!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0e00a2

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2122
    :cond_8
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 2124
    .local v0, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-static {v6, v0}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2125
    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->hideInputMethod(Landroid/view/View;)V

    .line 2126
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 2128
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v7, "name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2129
    .local v5, "name":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddaContactTutorialManager:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    if-eqz v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2130
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddaContactTutorialManager:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    invoke-virtual {v6, p3}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->startTutorial(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_1

    .line 2128
    .end local v5    # "name":Ljava/lang/String;
    :cond_a
    const-string v5, ""

    goto :goto_2

    .line 2133
    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_1

    .line 2170
    .end local v0    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .end local v1    # "isSimEnabled":Z
    .end local v2    # "isSimFull":Z
    .end local v3    # "isSimReady":Z
    :cond_c
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 2171
    .restart local v0    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-static {v6, v0}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 2172
    :cond_d
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->hideInputMethod(Landroid/view/View;)V

    .line 2173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 2175
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v7, "name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2176
    .restart local v5    # "name":Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddaContactTutorialManager:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    if-eqz v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2177
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddaContactTutorialManager:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->startTutorial()V

    goto/16 :goto_1

    .line 2175
    .end local v5    # "name":Ljava/lang/String;
    :cond_e
    const-string v5, ""

    goto :goto_3

    .line 2182
    :cond_f
    const-string v6, "vnd.sec.contact.sim"

    iget-object v7, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "vnd.sec.contact.sim2"

    iget-object v7, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2184
    :cond_10
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->hideInputMethod(Landroid/view/View;)V

    .line 2185
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_1

    .line 2187
    :cond_11
    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_1
.end method

.method private checkDuplicatedName()V
    .locals 17

    .prologue
    .line 2856
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    .line 2857
    const/4 v11, 0x0

    .line 2858
    .local v11, "isDuplicated":Z
    const/4 v9, 0x0

    .line 2860
    .local v9, "displayName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/model/EntityDelta;

    .line 2861
    .local v16, "valuea":Lcom/android/contacts/model/EntityDelta;
    if-eqz v16, :cond_1

    .line 2862
    const-string v1, "vnd.android.cursor.item/name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 2864
    .local v14, "structuredNameValuesDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v14, :cond_1

    .line 2865
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2866
    .local v15, "value":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2867
    const-string v1, "data1"

    invoke-virtual {v15, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2874
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "structuredNameValuesDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v15    # "value":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2875
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "is_private> 0 and display_name = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2879
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2880
    const/4 v11, 0x1

    .line 2882
    :cond_2
    if-eqz v7, :cond_3

    .line 2883
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2886
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_3
    if-eqz v11, :cond_4

    .line 2887
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2888
    .local v13, "sameName":Ljava/lang/StringBuilder;
    const-string v1, "\""

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2889
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2890
    const-string v1, "\""

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2891
    const v1, 0x7f0e04df

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2892
    .local v12, "message":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e04db

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e04e0

    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/contacts/editor/ContactEditorFragment$12;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 2903
    .local v8, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 2910
    .end local v8    # "dialog":Landroid/app/AlertDialog;
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v11    # "isDuplicated":Z
    .end local v12    # "message":Ljava/lang/String;
    .end local v13    # "sameName":Ljava/lang/StringBuilder;
    .end local v16    # "valuea":Lcom/android/contacts/model/EntityDelta;
    :goto_0
    return-void

    .line 2905
    .restart local v9    # "displayName":Ljava/lang/String;
    .restart local v11    # "isDuplicated":Z
    .restart local v16    # "valuea":Lcom/android/contacts/model/EntityDelta;
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    goto :goto_0

    .line 2908
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v11    # "isDuplicated":Z
    .end local v16    # "valuea":Lcom/android/contacts/model/EntityDelta;
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    goto :goto_0
.end method

.method private createContact()V
    .locals 3

    .prologue
    .line 1196
    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithPhoto:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithRingtone:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithQRdata:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 1200
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1201
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 1208
    :goto_1
    return-void

    .line 1196
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1207
    .restart local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_1
.end method

.method private createContact(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 5
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x4

    .line 1216
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 1217
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    if-eqz p1, :cond_3

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v3, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 1221
    .local v0, "accountType":Lcom/android/contacts/model/AccountType;
    iget v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mTutorialMode:I

    if-eq v2, v4, :cond_1

    const-string v2, "android.intent.action.INSERT"

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1222
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1225
    :cond_1
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1226
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 1227
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v2, p1, v3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomCreateContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 1232
    :cond_2
    :goto_1
    return-void

    .end local v0    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_3
    move-object v3, v2

    .line 1217
    goto :goto_0

    .line 1230
    .restart local v0    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;)V

    goto :goto_1
.end method

.method private disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 11
    .param p1, "editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f09040e

    const/16 v7, 0x8

    const/4 v10, 0x0

    .line 2274
    const v5, 0x7f0902db

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2275
    .local v1, "accountSpinner":Landroid/view/View;
    const v5, 0x7f0902d8

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2276
    .local v0, "accountContainer":Landroid/view/View;
    const v5, 0x7f090204

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2277
    .local v2, "accountView":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 2278
    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2279
    invoke-virtual {v1, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 2280
    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 2281
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v6, -0x2

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2283
    if-eqz v0, :cond_1

    .line 2284
    const-string v5, "DEFAULT"

    const-string v6, "PHONE_WHITE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2286
    const v5, 0x7f0b011d

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2299
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c006c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c006d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c006f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c006e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 2332
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 2333
    invoke-virtual {v1, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 2335
    :cond_2
    if-eqz v0, :cond_3

    .line 2336
    invoke-virtual {v0, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 2338
    :cond_3
    if-eqz v2, :cond_4

    .line 2339
    invoke-virtual {v2, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 2341
    :cond_4
    return-void

    .line 2288
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2289
    const v5, 0x7f020526

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2290
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2291
    .local v3, "diver":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 2292
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2295
    .end local v3    # "diver":Landroid/view/View;
    :cond_6
    const v5, 0x7f02084b

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 2311
    :cond_7
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2312
    if-eqz v0, :cond_9

    .line 2313
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2314
    .restart local v3    # "diver":Landroid/view/View;
    if-eqz v3, :cond_8

    .line 2315
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2318
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 2319
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2320
    const/16 v5, 0x50

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2321
    const v5, 0x7f020962

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2324
    .end local v3    # "diver":Landroid/view/View;
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    if-eqz v2, :cond_1

    .line 2325
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2326
    invoke-virtual {v2, v10}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private doJoinContactAction()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2398
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2410
    :goto_0
    return v0

    .line 2404
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2405
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0e01d5

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 2407
    goto :goto_0

    .line 2410
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    move-result v0

    goto :goto_0
.end method

.method private doRevertAction()V
    .locals 1

    .prologue
    .line 2842
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 2843
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted()V

    .line 2844
    :cond_0
    return-void
.end method

.method private getContactNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "rawContactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4551
    const-string v0, "EAB-ContactEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getContactNumber rawContactId - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4552
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4553
    .local v11, "numList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 4595
    :goto_0
    return-object v2

    .line 4556
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4557
    .local v3, "mSelection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4559
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 4560
    const-string v0, "EAB-ContactEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cursor in not null, number of items - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4561
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 4562
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4563
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 4564
    .local v13, "rawContactIndex":I
    const-string v0, "EAB-ContactEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rawContactIndex - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 4566
    .local v8, "data1Index":I
    const-string v0, "mimetype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 4567
    .local v9, "mimeIndex":I
    const-string v0, "data10"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 4569
    .local v12, "numberIndex":I
    const-string v0, "EAB-ContactEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "indeces : data1 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mimetype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numberIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4574
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4576
    .local v10, "mimetype":Ljava/lang/String;
    const-string v0, "EAB-ContactEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " values : mimeType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data1 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rawContactIndex - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numberIndex - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4582
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4583
    .local v7, "data":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4585
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4590
    .end local v7    # "data":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 4588
    :cond_2
    const-string v0, "EAB-ContactEditorFragment"

    const-string v1, "mimetype doesn\'t match  - vnd.android.cursor.item/phone_v2"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4593
    .end local v8    # "data1Index":I
    .end local v9    # "mimeIndex":I
    .end local v10    # "mimetype":Ljava/lang/String;
    .end local v12    # "numberIndex":I
    .end local v13    # "rawContactIndex":I
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v2, v11

    .line 4595
    goto/16 :goto_0
.end method

.method private getPhoneNumber(Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4528
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContactNumber(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getPhotoPickSize()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 4730
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4733
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4734
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4736
    if-eqz v6, :cond_0

    .line 4737
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 4736
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 4737
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private getRawContactId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 4532
    const-string v0, "EAB-ContactEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getRawContactId contactUri - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4533
    if-nez p1, :cond_0

    .line 4547
    :goto_0
    return-object v2

    .line 4536
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4537
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 4538
    .local v7, "id":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 4539
    const-string v0, "EAB-ContactEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cursor in not null, number of items - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4540
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 4541
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4542
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 4543
    .local v8, "rawContactIndex":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4545
    .end local v8    # "rawContactIndex":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v7

    .line 4547
    goto :goto_0
.end method

.method private hasMoreThanOnePhoto()Z
    .locals 13

    .prologue
    const/4 v10, 0x1

    .line 3906
    const/4 v0, 0x0

    .line 3907
    .local v0, "countWithPicture":I
    iget-object v11, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3908
    .local v4, "numEntities":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 3909
    iget-object v11, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta;

    .line 3910
    .local v1, "entity":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    .line 3911
    .local v9, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3912
    const-string v11, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v11}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    .line 3913
    .local v6, "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz v6, :cond_1

    const-string v11, "data15"

    invoke-virtual {v6, v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v11

    if-eqz v11, :cond_1

    .line 3914
    add-int/lit8 v0, v0, 0x1

    .line 3926
    :cond_0
    :goto_1
    if-le v0, v10, :cond_2

    .line 3931
    .end local v1    # "entity":Lcom/android/contacts/model/EntityDelta;
    .end local v6    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v9    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :goto_2
    return v10

    .line 3916
    .restart local v1    # "entity":Lcom/android/contacts/model/EntityDelta;
    .restart local v6    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v9    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_1
    const-string v11, "_id"

    invoke-virtual {v9, v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 3917
    .local v7, "rawContactId":J
    iget-object v11, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3918
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 3919
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3920
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3921
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3908
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v7    # "rawContactId":J
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3931
    .end local v1    # "entity":Lcom/android/contacts/model/EntityDelta;
    .end local v9    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private hasPendingChanges()Z
    .locals 2

    .prologue
    .line 2422
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 2423
    .local v0, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-static {v1, v0}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v1

    return v1
.end method

.method private hasValidState()Z
    .locals 1

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2207
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2208
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2209
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2211
    :cond_0
    return-void
.end method

.method private isContainICEGroup(I)Z
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x1

    .line 4377
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/editor/RawContactEditorView;

    invoke-virtual {v6}, Lcom/android/contacts/editor/RawContactEditorView;->getSelectedGroupNames()Ljava/util/List;

    move-result-object v2

    .line 4379
    .local v2, "nameArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    const-string v6, "ICE"

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 4395
    :goto_0
    return v6

    .line 4381
    :cond_0
    const-string v6, "android.intent.action.EDIT"

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4382
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta;

    .line 4383
    .local v4, "valuea":Lcom/android/contacts/model/EntityDelta;
    const-string v6, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v6}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4384
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v0, :cond_2

    .line 4385
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 4386
    .local v5, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4387
    const-string v6, "title"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4388
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v6, "ICE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    .line 4389
    goto :goto_0

    .line 4395
    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "valuea":Lcom/android/contacts/model/EntityDelta;
    .end local v5    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isDualStandbySim2(Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 4365
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4369
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4365
    :cond_1
    const-string v0, "vnd.sec.contact.sim2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4367
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private joinAggregate(J)V
    .locals 9
    .param p1, "contactId"    # J

    .prologue
    .line 3115
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onContactSaveRequested()V

    .line 3117
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    iget-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    const-class v6, Lcom/android/contacts/activities/ContactEditorActivity;

    const-string v7, "joinCompleted"

    move-wide v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 3120
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3121
    return-void
.end method

.method private parseUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 2195
    const/4 v1, 0x0

    .line 2196
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2198
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2203
    :cond_0
    :goto_0
    return-object v1

    .line 2199
    :catch_0
    move-exception v0

    .line 2200
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v3, "Uri parsing failure"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 11
    .param p1, "oldState"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "oldAccount"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p3, "newAccount"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    const/4 v10, 0x0

    .line 1244
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 1245
    .local v0, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v9, p2, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v6

    .line 1247
    .local v6, "oldAccountType":Lcom/android/contacts/model/AccountType;
    iget-object v8, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v9, p3, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v5

    .line 1251
    .local v5, "newAccountType":Lcom/android/contacts/model/AccountType;
    const-string v8, "vnd.sec.contact.sim"

    iget-object v9, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "primary.sim2.account_name"

    iget-object v9, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1253
    :cond_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    .line 1256
    :cond_1
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1257
    sget-object v8, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v9, "external activity called in rebind situation"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v8, :cond_2

    .line 1259
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v8, p3, v9}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomCreateContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 1281
    :cond_2
    :goto_0
    return-void

    .line 1263
    :cond_3
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Lcom/android/contacts/editor/RawContactEditorView;

    if-eqz v8, :cond_5

    .line 1264
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/RawContactEditorView;

    .line 1265
    .local v1, "editor":Lcom/android/contacts/editor/RawContactEditorView;
    if-eqz v1, :cond_5

    .line 1266
    invoke-virtual {v1}, Lcom/android/contacts/editor/RawContactEditorView;->getSelectedGroupNames()Ljava/util/List;

    move-result-object v4

    .line 1267
    .local v4, "nameArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_5

    .line 1268
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1269
    .local v7, "selectedGroupNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 1270
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1271
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1273
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    iput-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mSelectedGroupNames:Ljava/util/ArrayList;

    .line 1278
    .end local v1    # "editor":Lcom/android/contacts/editor/RawContactEditorView;
    .end local v2    # "i":I
    .end local v4    # "nameArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "selectedGroupNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 1279
    invoke-direct {p0, p3, v5, p1, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V

    goto :goto_0
.end method

.method private revert()Z
    .locals 1

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2833
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V

    .line 2837
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2835
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;)V

    goto :goto_0
.end method

.method private saveDefaultAccountIfNecessary()V
    .locals 8

    .prologue
    .line 1920
    const-string v6, "android.intent.action.INSERT"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1937
    :goto_0
    return-void

    .line 1928
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta;

    .line 1929
    .local v2, "entity":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 1930
    .local v5, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v6, "account_name"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1931
    .local v3, "name":Ljava/lang/String;
    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1932
    .local v4, "type":Ljava/lang/String;
    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1934
    .local v1, "dataSet":Ljava/lang/String;
    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 1936
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v6, v0}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 1934
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_2
    new-instance v0, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v0, v3, v4, v1}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private selectAccountAndCreateContact()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 1073
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v1

    .line 1077
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :goto_0
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mTutorialMode:I

    if-nez v8, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1080
    :cond_0
    const/4 v6, 0x0

    .line 1082
    .local v6, "phoneAccount":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1083
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v8, "vnd.sec.contact.phone"

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1084
    move-object v6, v0

    .line 1089
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 1189
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "phoneAccount":Lcom/android/contacts/model/AccountWithDataSet;
    :goto_1
    return-void

    .line 1073
    .end local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_3
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 1096
    .restart local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_4
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v8}, Lcom/android/contacts/editor/ContactEditorUtils;->getDefaultAccount()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v3

    .line 1097
    .local v3, "defaultAccount":Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v8}, Lcom/android/contacts/editor/ContactEditorUtils;->shouldShowAccountChangedNotification()Z

    move-result v8

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithPhoto:Z

    iget-boolean v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    or-int/2addr v8, v9

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithRingtone:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithEmail:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNameCard:Z

    if-eqz v8, :cond_f

    :cond_5
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/android/contacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v8

    iget-object v8, v8, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    const-string v9, "vnd.sec.contact.sim"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1102
    :cond_6
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "contactsaveto"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1103
    .local v7, "value":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithPhoto:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithRingtone:Z

    if-nez v8, :cond_9

    if-eqz v7, :cond_9

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNameCard:Z

    if-nez v8, :cond_9

    const-string v8, "vnd.sec.contact.sim"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1105
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1106
    .restart local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v8, "vnd.sec.contact.sim"

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v8

    if-nez v8, :cond_7

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithEmail:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1109
    :cond_8
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v8, v0}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 1110
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v8}, Lcom/android/contacts/editor/ContactEditorUtils;->getDefaultAccount()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v3

    .line 1111
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1112
    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_1

    .line 1118
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_9
    new-instance v5, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1119
    .local v5, "intent":Landroid/content/Intent;
    iput v12, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1120
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithPhoto:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNameCard:Z

    if-eqz v8, :cond_b

    .line 1121
    :cond_a
    const-string v8, "photo_uri"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1122
    :cond_b
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithRingtone:Z

    if-eqz v8, :cond_c

    .line 1123
    const-string v8, "ringtone_uri"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1124
    :cond_c
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    if-eqz v8, :cond_d

    .line 1125
    const-string v8, "is_ice_group"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1126
    :cond_d
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithEmail:Z

    if-eqz v8, :cond_e

    .line 1127
    const-string v8, "emailmode"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1128
    :cond_e
    invoke-virtual {p0, v5, v11}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1129
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "value":Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v8

    if-nez v8, :cond_14

    :goto_2
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithPhoto:Z

    iget-boolean v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    or-int/2addr v8, v9

    if-nez v8, :cond_10

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithRingtone:Z

    if-nez v8, :cond_10

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithEmail:Z

    if-nez v8, :cond_10

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNameCard:Z

    if-eqz v8, :cond_1a

    :cond_10
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/android/contacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v8

    iget-object v8, v8, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    const-string v9, "vnd.sec.contact.sim2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 1135
    :cond_11
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "contactsaveto"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1136
    .restart local v7    # "value":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    if-nez v8, :cond_15

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithPhoto:Z

    if-nez v8, :cond_15

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithRingtone:Z

    if-nez v8, :cond_15

    if-eqz v7, :cond_15

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNameCard:Z

    if-nez v8, :cond_15

    const-string v8, "vnd.sec.contact.sim2"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1139
    .restart local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v8, "vnd.sec.contact.sim2"

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v8

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithEmail:Z

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v8

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 1142
    :cond_13
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v8, v0}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 1143
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v8}, Lcom/android/contacts/editor/ContactEditorUtils;->getDefaultAccount()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v3

    .line 1144
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1145
    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_1

    .line 1129
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "value":Ljava/lang/String;
    :cond_14
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v8}, Lcom/android/contacts/editor/ContactEditorUtils;->shouldShowAccountChangedNotification()Z

    move-result v8

    if-nez v8, :cond_11

    goto/16 :goto_2

    .line 1151
    .restart local v7    # "value":Ljava/lang/String;
    :cond_15
    new-instance v5, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1152
    .restart local v5    # "intent":Landroid/content/Intent;
    iput v12, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1153
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithPhoto:Z

    if-eqz v8, :cond_16

    .line 1154
    const-string v8, "photo_uri"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1155
    :cond_16
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithRingtone:Z

    if-eqz v8, :cond_17

    .line 1156
    const-string v8, "ringtone_uri"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1157
    :cond_17
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    if-eqz v8, :cond_18

    .line 1158
    const-string v8, "is_ice_group"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1159
    :cond_18
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithEmail:Z

    if-eqz v8, :cond_19

    .line 1160
    const-string v8, "emailmode"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1161
    :cond_19
    invoke-virtual {p0, v5, v11}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1162
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1a
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithQRdata:Z

    if-eqz v8, :cond_1c

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Lcom/android/contacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v8

    iget-object v8, v8, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    const-string v9, "vnd.sec.contact.sim"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    invoke-virtual {v3}, Lcom/android/contacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v8

    iget-object v8, v8, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    const-string v9, "vnd.sec.contact.sim2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 1165
    :cond_1b
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "contactsaveto"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1166
    .restart local v7    # "value":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1167
    .restart local v5    # "intent":Landroid/content/Intent;
    iput v12, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1168
    invoke-virtual {p0, v5, v11}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1173
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1c
    if-nez v3, :cond_1e

    .line 1174
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1d

    .line 1175
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {p0, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_1

    .line 1177
    :cond_1d
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_1

    .line 1180
    :cond_1e
    const-string v8, "com.osp.app.signin"

    iget-object v9, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 1181
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.sec.android.contacts.action.samsungaccountvalidationcheck"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v2, "checkIntent":Landroid/content/Intent;
    const-string v8, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1183
    const-string v8, "from"

    const-string v9, "editor"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1184
    const/16 v8, 0xc

    invoke-virtual {p0, v2, v8}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1186
    .end local v2    # "checkIntent":Landroid/content/Intent;
    :cond_1f
    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_1
.end method

.method private setPhoto(JLandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .param p1, "rawContact"    # J
    .param p3, "photo"    # Landroid/graphics/Bitmap;
    .param p4, "photoFile"    # Ljava/lang/String;

    .prologue
    .line 3864
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v1

    .line 3866
    .local v1, "requestingEditor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gez v2, :cond_1

    .line 3868
    :cond_0
    sget-object v2, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v3, "Invalid bitmap passed to setPhoto()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    :cond_1
    if-eqz v1, :cond_2

    .line 3872
    invoke-virtual {v1, p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setBitmapAnimation(Landroid/graphics/Bitmap;)V

    .line 3877
    :goto_0
    if-nez p4, :cond_3

    .line 3878
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3880
    .local v0, "croppedPhotoPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3884
    .end local v0    # "croppedPhotoPath":Ljava/lang/String;
    :goto_1
    return-void

    .line 3874
    :cond_2
    sget-object v2, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v3, "The contact that requested the photo is no longer present."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3882
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showJoinAggregateActivity(Landroid/net/Uri;)V
    .locals 4
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 3099
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3108
    :cond_0
    :goto_0
    return-void

    .line 3103
    :cond_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 3104
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isContactWritable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    .line 3105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3106
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.CONTACT_ID"

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3107
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private showToast(II)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 2790
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mToast:Landroid/widget/Toast;

    .line 2794
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2795
    return-void

    .line 2792
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private showWarning()V
    .locals 3

    .prologue
    const v2, 0x7f0e03d5

    .line 2780
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 2781
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mToast:Landroid/widget/Toast;

    .line 2785
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2786
    return-void

    .line 2783
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private updateAlerttoneData(Landroid/net/Uri;)V
    .locals 4
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    .line 4115
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4116
    .local v1, "editorCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4117
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 4118
    .local v0, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAlerttone:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setAlerttone(Ljava/lang/String;)V

    .line 4116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4120
    .end local v0    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    :cond_0
    return-void
.end method

.method private updateDateFormat()V
    .locals 4

    .prologue
    .line 4124
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4125
    .local v1, "editorCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4126
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 4127
    .local v0, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setDateFormat()V

    .line 4125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4129
    .end local v0    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    :cond_0
    return-void
.end method

.method private updateRingtoneData(Landroid/net/Uri;)V
    .locals 4
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    .line 4094
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4095
    .local v1, "editorCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4096
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 4097
    .local v0, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setRingtone(Ljava/lang/String;)V

    .line 4095
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4099
    .end local v0    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    :cond_0
    return-void
.end method

.method private updateVibrationData(Landroid/net/Uri;)V
    .locals 4
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    .line 3853
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3854
    .local v1, "editorCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3855
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 3856
    .local v0, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setVibration(Ljava/lang/String;)V

    .line 3854
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3858
    .end local v0    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    :cond_0
    return-void
.end method

.method private updatedBitmapForRawContact(J)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "rawContactId"    # J

    .prologue
    .line 1862
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1863
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public changeView(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 4344
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCrntPos:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4345
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCrntPos:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4346
    iput p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCrntPos:I

    .line 4347
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4349
    :cond_0
    return-void
.end method

.method public clearAccountSwitcherInstance()V
    .locals 1

    .prologue
    .line 4650
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 4651
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 4652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    .line 4654
    :cond_0
    return-void
.end method

.method public clearPhotoValues()V
    .locals 3

    .prologue
    .line 3461
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta;

    .line 3462
    .local v1, "state":Lcom/android/contacts/model/EntityDelta;
    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3463
    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta;->clearMimeEntries(Ljava/lang/String;)V

    goto :goto_0

    .line 3466
    .end local v1    # "state":Lcom/android/contacts/model/EntityDelta;
    :cond_1
    return-void
.end method

.method public createImageAirListWidgetFromView(Lcom/android/contacts/editor/BaseRawContactEditorView;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .locals 7
    .param p1, "editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;

    .prologue
    .line 4682
    move-object v3, p1

    .line 4683
    .local v3, "rawEditor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v5

    const v6, 0x7f090369

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4684
    .local v4, "view":Landroid/view/View;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4685
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v5, "image"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4687
    new-instance v0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;

    invoke-direct {v0, v4, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4688
    .local v0, "adapter":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    const/4 v5, 0x2

    invoke-direct {v1, v4, v0, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .line 4689
    .local v1, "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setGravity(I)V

    .line 4690
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setDirection(I)V

    .line 4691
    new-instance v5, Lcom/android/contacts/editor/ContactEditorFragment$22;

    invoke-direct {v5, p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment$22;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setItemSelectListener(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;)V

    .line 4725
    return-object v1
.end method

.method protected doEditSuggestedContact(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 3508
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->clearPhotoValues()V

    .line 3509
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 3511
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 3512
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 3515
    :cond_0
    return-void
.end method

.method protected doJoinSuggestedContact([J)V
    .locals 2
    .param p1, "rawContactIds"    # [J

    .prologue
    const/4 v1, 0x1

    .line 3441
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v1, :cond_1

    .line 3447
    :cond_0
    :goto_0
    return-void

    .line 3445
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDeltaList;->setJoinWithRawContacts([J)V

    .line 3446
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    goto :goto_0
.end method

.method public doRevertActionMenu()Z
    .locals 1

    .prologue
    .line 2916
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->revert()Z

    move-result v0

    return v0
.end method

.method public doSaveAction()V
    .locals 2

    .prologue
    .line 2847
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNameCard:Z

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.INSERT"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2848
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->checkDuplicatedName()V

    .line 2852
    :goto_0
    return-void

    .line 2850
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    goto :goto_0
.end method

.method public getAddaContactTutorialManager()Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddaContactTutorialManager:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    return-object v0
.end method

.method public getAggregationSuggestionPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 4360
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method protected getContactId()J
    .locals 5

    .prologue
    .line 3288
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v3, :cond_1

    .line 3289
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta;

    .line 3290
    .local v2, "rawContact":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "contact_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 3291
    .local v0, "contactId":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 3292
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3296
    .end local v0    # "contactId":Ljava/lang/Long;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "rawContact":Lcom/android/contacts/model/EntityDelta;
    :goto_0
    return-wide v3

    :cond_1
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 5
    .param p1, "rawContactId"    # J

    .prologue
    .line 3890
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3891
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3892
    .local v0, "childView":Landroid/view/View;
    instance-of v3, v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 3893
    check-cast v1, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 3894
    .local v1, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 3899
    .end local v0    # "childView":Landroid/view/View;
    .end local v1    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    :goto_1
    return-object v1

    .line 3890
    .restart local v0    # "childView":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3899
    .end local v0    # "childView":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSelectedAccount()Lcom/android/contacts/model/AccountWithDataSet;
    .locals 1

    .prologue
    .line 4742
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountForNewContact:Lcom/android/contacts/model/AccountWithDataSet;

    return-object v0
.end method

.method public getWritingBuddyTutorialManager()Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mWritingBuddyTutorialManager:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    return-object v0
.end method

.method public handleAlerttonePicked(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    .line 4104
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4105
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAlerttone:Ljava/lang/String;

    .line 4109
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->updateAlerttoneData(Landroid/net/Uri;)V

    .line 4110
    const/4 v0, 0x1

    return v0

    .line 4107
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAlerttone:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 4073
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4074
    :cond_0
    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 4087
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->updateRingtoneData(Landroid/net/Uri;)V

    .line 4089
    const/4 v0, 0x1

    return v0

    .line 4076
    :cond_2
    if-eqz p1, :cond_1

    .line 4077
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4078
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getMediaContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 4080
    :cond_3
    if-eqz p1, :cond_4

    .line 4081
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0

    .line 4083
    :cond_4
    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleVibrationPicked(Landroid/net/Uri;)V
    .locals 4
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    .line 3840
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;

    .line 3841
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    .line 3844
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 3845
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3846
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3849
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->updateVibrationData(Landroid/net/Uri;)V

    .line 3850
    return-void

    .line 3841
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasRestrictedData(Lcom/android/contacts/model/EntityDeltaList;)Z
    .locals 22
    .param p1, "set"    # Lcom/android/contacts/model/EntityDeltaList;

    .prologue
    .line 2734
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/model/EntityDelta;

    .line 2735
    .local v15, "state":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v15}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v19

    .line 2736
    .local v19, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    .line 2738
    .local v4, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    const-string v20, "account_type"

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2739
    .local v3, "accountType":Ljava/lang/String;
    const-string v20, "data_set"

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2740
    .local v5, "dataSet":Ljava/lang/String;
    invoke-virtual {v4, v3, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v17

    .line 2742
    .local v17, "type":Lcom/android/contacts/model/AccountType;
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/DataKind;

    .line 2743
    .local v13, "kind":Lcom/android/contacts/model/DataKind;
    iget-object v14, v13, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 2744
    .local v14, "mimeType":Ljava/lang/String;
    if-eqz v14, :cond_2

    const-string v20, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 2747
    :cond_2
    invoke-virtual {v15, v14}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2748
    .local v6, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v6, :cond_1

    iget-object v0, v13, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 2751
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2752
    .local v7, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v20

    if-nez v20, :cond_4

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v20

    if-eqz v20, :cond_6

    :cond_4
    const/16 v16, 0x1

    .line 2753
    .local v16, "touched":Z
    :goto_0
    if-eqz v16, :cond_3

    .line 2757
    iget-object v0, v13, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/AccountType$EditField;

    .line 2758
    .local v8, "field":Lcom/android/contacts/model/AccountType$EditField;
    iget-object v0, v8, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2759
    .local v18, "value":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 2762
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isNotAllowedToSaveEmergencyNumber()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 2764
    const v20, 0x7f0e03d5

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->showToast(II)V

    .line 2765
    const/16 v20, 0x1

    .line 2776
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v6    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v7    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v8    # "field":Lcom/android/contacts/model/AccountType$EditField;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v14    # "mimeType":Ljava/lang/String;
    .end local v15    # "state":Lcom/android/contacts/model/EntityDelta;
    .end local v16    # "touched":Z
    .end local v17    # "type":Lcom/android/contacts/model/AccountType;
    .end local v18    # "value":Ljava/lang/String;
    .end local v19    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :goto_1
    return v20

    .line 2752
    .restart local v3    # "accountType":Ljava/lang/String;
    .restart local v4    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .restart local v5    # "dataSet":Ljava/lang/String;
    .restart local v6    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v7    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v13    # "kind":Lcom/android/contacts/model/DataKind;
    .restart local v14    # "mimeType":Ljava/lang/String;
    .restart local v15    # "state":Lcom/android/contacts/model/EntityDelta;
    .restart local v17    # "type":Lcom/android/contacts/model/AccountType;
    .restart local v19    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_6
    const/16 v16, 0x0

    goto :goto_0

    .line 2767
    .restart local v8    # "field":Lcom/android/contacts/model/AccountType$EditField;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v16    # "touched":Z
    .restart local v18    # "value":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isNotAllowedToSaveOTASPNumber()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isOTASP(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2769
    const v20, 0x7f0e03d6

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->showToast(II)V

    .line 2770
    const/16 v20, 0x1

    goto :goto_1

    .line 2776
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v6    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v7    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v8    # "field":Lcom/android/contacts/model/AccountType$EditField;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v14    # "mimeType":Ljava/lang/String;
    .end local v15    # "state":Lcom/android/contacts/model/EntityDelta;
    .end local v16    # "touched":Z
    .end local v17    # "type":Lcom/android/contacts/model/AccountType;
    .end local v18    # "value":Ljava/lang/String;
    .end local v19    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_8
    const/16 v20, 0x0

    goto :goto_1
.end method

.method public isContactWritable()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 3127
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-nez v7, :cond_0

    move v7, v8

    .line 3141
    :goto_0
    return v7

    .line 3130
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 3131
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3132
    .local v4, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 3133
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    .line 3134
    .local v6, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3135
    .local v0, "accountType":Ljava/lang/String;
    const-string v7, "data_set"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3136
    .local v2, "dataSet":Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v5

    .line 3137
    .local v5, "type":Lcom/android/contacts/model/AccountType;
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    .line 3138
    goto :goto_0

    .line 3132
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3141
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v2    # "dataSet":Ljava/lang/String;
    .end local v5    # "type":Lcom/android/contacts/model/AccountType;
    .end local v6    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public isEditingUserProfile()Z
    .locals 1

    .prologue
    .line 3145
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 734
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    .line 735
    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 736
    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 738
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v4, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "addToDefaultDirectory"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    .line 742
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "newLocalProfile"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 744
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "is_ice_group"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z

    .line 745
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 747
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "is_speed_dial"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddToSpeedDial:Z

    .line 750
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "ringtone_uri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 751
    iput-boolean v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithRingtone:Z

    .line 752
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "ringtone_uri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRingtoneUri:Landroid/net/Uri;

    .line 754
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "vibration_uri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 755
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "vibration_uri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;

    .line 757
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "alerttone_uri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 758
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "alerttone_uri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAlerttoneUri:Landroid/net/Uri;

    .line 760
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "photo_uri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 761
    iput-boolean v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithPhoto:Z

    .line 763
    :cond_6
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "email"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 764
    iput-boolean v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithEmail:Z

    .line 768
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_8

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_9

    .line 770
    :cond_8
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 771
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 773
    .local v3, "phone":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 774
    new-instance v1, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 776
    .local v1, "ed":Landroid/widget/EditText;
    new-instance v0, Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 777
    .local v0, "AltPF":Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 779
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 782
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 784
    const/4 v1, 0x0

    .line 785
    const/4 v0, 0x0

    .line 787
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "phone"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "query"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "ssp"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    .end local v0    # "AltPF":Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;
    .end local v1    # "ed":Landroid/widget/EditText;
    .end local v3    # "phone":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableQRCode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 796
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, "mimeType":Ljava/lang/String;
    const-string v4, "vnd.android.cursor.dir/QRperson"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 798
    iput-boolean v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithQRdata:Z

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 620
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 623
    if-eqz p1, :cond_1

    const/4 v11, 0x1

    .line 625
    .local v11, "hasIncomingState":Z
    :goto_0
    if-nez v11, :cond_a

    .line 626
    const-string v17, "android.intent.action.EDIT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 627
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v17

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 725
    :cond_0
    :goto_1
    return-void

    .line 623
    .end local v11    # "hasIncomingState":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 628
    .restart local v11    # "hasIncomingState":Z
    :cond_2
    const-string v17, "android.intent.action.INSERT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    const/4 v3, 0x0

    .line 631
    .local v3, "account":Landroid/accounts/Account;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    const/4 v9, 0x0

    .line 634
    .local v9, "dataSet":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v17

    if-nez v17, :cond_6

    .line 678
    :cond_3
    :goto_4
    if-eqz v3, :cond_8

    .line 680
    new-instance v17, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v9}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_1

    .line 629
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v9    # "dataSet":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/accounts/Account;

    move-object/from16 v3, v17

    goto :goto_2

    .line 631
    .restart local v3    # "account":Landroid/accounts/Account;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "com.android.contacts.extra.DATA_SET"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 635
    .restart local v9    # "dataSet":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v7

    .line 636
    .local v7, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v15

    .line 637
    .local v15, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v15}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->setSimInfo()[Z

    move-result-object v8

    .line 638
    .local v8, "changed":[Z
    const/16 v17, 0x0

    aget-boolean v17, v8, v17

    if-eqz v17, :cond_7

    .line 639
    const-string v17, "vnd.sec.contact.sim"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v13

    .line 640
    .local v13, "iconRes":I
    invoke-virtual {v7}, Lcom/android/contacts/model/AccountTypeManager;->getSim1AccountWithDataSet()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v4

    .line 641
    .local v4, "account1":Lcom/android/contacts/model/AccountWithDataSet;
    if-eqz v4, :cond_7

    .line 642
    invoke-virtual {v7, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v6

    .line 643
    .local v6, "accountType":Lcom/android/contacts/model/AccountType;
    invoke-virtual {v6, v13}, Lcom/android/contacts/model/AccountType;->setIconRes(I)V

    .line 647
    .end local v4    # "account1":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v6    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v13    # "iconRes":I
    :cond_7
    const/16 v17, 0x1

    aget-boolean v17, v8, v17

    if-eqz v17, :cond_3

    .line 648
    const-string v17, "vnd.sec.contact.sim2"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v13

    .line 649
    .restart local v13    # "iconRes":I
    invoke-virtual {v7}, Lcom/android/contacts/model/AccountTypeManager;->getSim2AccountWithDataSet()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v5

    .line 650
    .local v5, "account2":Lcom/android/contacts/model/AccountWithDataSet;
    if-eqz v5, :cond_3

    .line 651
    invoke-virtual {v7, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v6

    .line 652
    .restart local v6    # "accountType":Lcom/android/contacts/model/AccountType;
    invoke-virtual {v6, v13}, Lcom/android/contacts/model/AccountType;->setIconRes(I)V

    goto/16 :goto_4

    .line 684
    .end local v5    # "account2":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v6    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v7    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .end local v8    # "changed":[Z
    .end local v13    # "iconRes":I
    .end local v15    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->selectAccountAndCreateContact()V

    goto/16 :goto_1

    .line 686
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v9    # "dataSet":Ljava/lang/String;
    :cond_9
    const-string v17, "saveCompleted"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 692
    sget-object v17, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown Action String "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". Only support "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "android.intent.action.EDIT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " or "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "android.intent.action.INSERT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 697
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 700
    const/4 v14, 0x0

    .line 701
    .local v14, "isCurrentAccountSim":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_c

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/EntityDelta;

    .line 703
    .local v10, "entity":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v10}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v16

    .line 704
    .local v16, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v17, "account_type"

    invoke-virtual/range {v16 .. v17}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 706
    .local v6, "accountType":Ljava/lang/String;
    const-string v17, "vnd.sec.contact.sim"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    const-string v17, "vnd.sec.contact.sim2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "airplane_mode_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 709
    const/4 v14, 0x1

    .line 714
    .end local v6    # "accountType":Ljava/lang/String;
    .end local v10    # "entity":Lcom/android/contacts/model/EntityDelta;
    .end local v16    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_c
    if-eqz v14, :cond_e

    .line 715
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 701
    .restart local v6    # "accountType":Ljava/lang/String;
    .restart local v10    # "entity":Lcom/android/contacts/model/EntityDelta;
    .restart local v16    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 717
    .end local v6    # "accountType":Ljava/lang/String;
    .end local v10    # "entity":Lcom/android/contacts/model/EntityDelta;
    .end local v16    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    goto/16 :goto_1

    .line 720
    .end local v12    # "i":I
    .end local v14    # "isCurrentAccountSim":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 721
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 26
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 3594
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 3595
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 3599
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/detail/PhotoSelectionHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 3838
    :cond_1
    :goto_0
    return-void

    .line 3604
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 3607
    :sswitch_0
    const/16 v23, -0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 3608
    if-eqz p3, :cond_1

    .line 3609
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 3610
    .local v8, "contactId":J
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->joinAggregate(J)V

    goto :goto_0

    .line 3616
    .end local v8    # "contactId":J
    :sswitch_1
    const/16 v23, -0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 3617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted()V

    goto :goto_0

    .line 3621
    :cond_3
    if-eqz p3, :cond_5

    .line 3622
    const-string v23, "com.android.contacts.extra.ACCOUNT"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    .line 3623
    .local v4, "account":Lcom/android/contacts/model/AccountWithDataSet;
    if-eqz v4, :cond_5

    .line 3625
    const-string v23, "com.osp.app.signin"

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 3626
    new-instance v7, Landroid/content/Intent;

    const-string v23, "com.sec.android.contacts.action.samsungaccountvalidationcheck"

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3627
    .local v7, "checkIntent":Landroid/content/Intent;
    const-string v23, "com.android.contacts.extra.ACCOUNT"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3628
    const-string v23, "from"

    const-string v24, "editor"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3629
    const/16 v23, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v7, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3632
    .end local v7    # "checkIntent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 3633
    const-string v23, "android.intent.action.INSERT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 3634
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    .line 3635
    .local v13, "h":Landroid/os/Handler;
    new-instance v23, Lcom/android/contacts/editor/ContactEditorFragment$16;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$16;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3657
    .end local v4    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v13    # "h":Landroid/os/Handler;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact()V

    goto/16 :goto_0

    .line 3663
    :sswitch_2
    const/16 v23, 0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 3664
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->hideInputMethod(Landroid/view/View;)V

    .line 3665
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSoundPickerIntent()Landroid/content/Intent;

    move-result-object v15

    .line 3666
    .local v15, "intent":Landroid/content/Intent;
    const/16 v23, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3670
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_6
    const/16 v23, -0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 3671
    const-string v23, "android.intent.extra.ringtone.PICKED_URI"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/net/Uri;

    .line 3672
    .local v19, "pickedUri":Landroid/net/Uri;
    new-instance v14, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    new-instance v24, Lcom/android/contacts/editor/ContactEditorFragment$17;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$17;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-direct {v14, v0, v1, v2}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;-><init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;)V

    .line 3683
    .local v14, "helper":Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;
    invoke-virtual {v14}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->doExtract()V

    goto/16 :goto_0

    .line 3688
    .end local v14    # "helper":Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;
    .end local v19    # "pickedUri":Landroid/net/Uri;
    :sswitch_3
    const/16 v23, -0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 3689
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 3691
    .restart local v19    # "pickedUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)Z

    move-result v16

    .line 3694
    .local v16, "isValid":Z
    if-eqz v16, :cond_1

    .line 3695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/contacts/ContactSaveService;->createSetMediaRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v20

    .line 3697
    .local v20, "serviceIntentMedia":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 3705
    .end local v16    # "isValid":Z
    .end local v19    # "pickedUri":Landroid/net/Uri;
    .end local v20    # "serviceIntentMedia":Landroid/content/Intent;
    :sswitch_4
    const/16 v23, -0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 3706
    const-string v23, "FILE_URI"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/net/Uri;

    .line 3708
    .restart local v19    # "pickedUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)Z

    move-result v16

    .line 3711
    .restart local v16    # "isValid":Z
    if-eqz v16, :cond_1

    .line 3712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/contacts/ContactSaveService;->createSetMediaRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v20

    .line 3714
    .restart local v20    # "serviceIntentMedia":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 3721
    .end local v16    # "isValid":Z
    .end local v19    # "pickedUri":Landroid/net/Uri;
    .end local v20    # "serviceIntentMedia":Landroid/content/Intent;
    :sswitch_5
    const/16 v23, -0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 3723
    if-eqz p3, :cond_1

    .line 3724
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    .line 3725
    .local v21, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->handleVibrationPicked(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 3733
    .end local v21    # "uri":Landroid/net/Uri;
    :sswitch_6
    const/16 v23, -0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 3734
    const-string v23, "android.intent.extra.ringtone.PICKED_URI"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/net/Uri;

    .line 3735
    .restart local v19    # "pickedUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->handleAlerttonePicked(Landroid/net/Uri;)Z

    goto/16 :goto_0

    .line 3740
    .end local v19    # "pickedUri":Landroid/net/Uri;
    :sswitch_7
    const/16 v23, -0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 3741
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->selectAccountAndCreateContact()V

    goto/16 :goto_0

    .line 3743
    :cond_7
    const-string v23, "com.android.contacts.extra.ACCOUNT"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    .line 3744
    .restart local v4    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 3745
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 3746
    const-string v23, "android.intent.action.INSERT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 3747
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    .line 3748
    .restart local v13    # "h":Landroid/os/Handler;
    new-instance v23, Lcom/android/contacts/editor/ContactEditorFragment$18;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$18;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3765
    .end local v4    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v13    # "h":Landroid/os/Handler;
    :sswitch_8
    const/16 v23, -0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 3768
    const-string v23, "com.android.contacts.extra.ACCOUNT"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/model/AccountWithDataSet;

    .line 3769
    .local v17, "newAccount":Lcom/android/contacts/model/AccountWithDataSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/EntityDelta;

    .line 3770
    .local v12, "currentState":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v12}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v22

    .line 3771
    .local v22, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    new-instance v11, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v23, "account_name"

    invoke-virtual/range {v22 .. v23}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "account_type"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "data_set"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v11, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3776
    .local v11, "currentAccount":Lcom/android/contacts/model/AccountWithDataSet;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v11, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->changeAccount(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_0

    .line 3782
    .end local v11    # "currentAccount":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v12    # "currentState":Lcom/android/contacts/model/EntityDelta;
    .end local v17    # "newAccount":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v22    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :sswitch_9
    const/16 v23, -0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 3783
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact()V

    .line 3787
    :goto_1
    const-string v23, "android.intent.action.INSERT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 3788
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    .line 3789
    .restart local v13    # "h":Landroid/os/Handler;
    new-instance v23, Lcom/android/contacts/editor/ContactEditorFragment$19;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$19;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3785
    .end local v13    # "h":Landroid/os/Handler;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/editor/ContactEditorUtils;->getDefaultAccount()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_1

    .line 3809
    :sswitch_a
    const/16 v23, -0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 3812
    const-string v23, "output"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 3813
    .local v10, "croppedPhotoUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Lcom/android/contacts/util/ContactPhotoUtils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    .line 3814
    .local v18, "path":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3815
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    const-string v23, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;

    .line 3816
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    move-wide/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 3817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    move-object/from16 v23, v0

    const/16 v24, 0xf

    invoke-virtual/range {v23 .. v24}, Lcom/android/contacts/detail/PhotoSelectionHandler;->setPhotoMode(I)V

    goto/16 :goto_0

    .line 3823
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "croppedPhotoUri":Landroid/net/Uri;
    .end local v18    # "path":Ljava/lang/String;
    :sswitch_b
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    if-eqz v23, :cond_1

    .line 3824
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 3825
    .local v6, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 3826
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 3827
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNameCard:Z

    .line 3828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mNameCardListener:Lcom/android/contacts/editor/ContactEditorFragment$NamecardListener;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNameCard:Z

    move/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lcom/android/contacts/editor/ContactEditorFragment$NamecardListener;->onNameCardEnabled(Z)V

    .line 3829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountForNewContact:Lcom/android/contacts/model/AccountWithDataSet;

    move-object/from16 v23, v0

    if-nez v23, :cond_9

    .line 3830
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact()V

    goto/16 :goto_0

    .line 3832
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountForNewContact:Lcom/android/contacts/model/AccountWithDataSet;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_0

    .line 3604
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0x3ee -> :sswitch_b
    .end sparse-switch
.end method

.method public onAggregationSuggestionChange()V
    .locals 10

    .prologue
    const v9, 0x101006b

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3334
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3335
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3391
    :cond_0
    :goto_0
    return-void

    .line 3339
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-ne v3, v4, :cond_0

    .line 3343
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3344
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3347
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestedContactCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3351
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3352
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v6, "vnd.sec.contact.sim"

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v7, "account_type"

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v6, "account_type"

    invoke-virtual {v3, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->isDualStandbySim2(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3365
    :cond_3
    iget-wide v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    invoke-virtual {p0, v6, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/RawContactEditorView;

    .line 3367
    .local v2, "rawContactView":Lcom/android/contacts/editor/RawContactEditorView;
    if-eqz v2, :cond_0

    .line 3370
    const v3, 0x7f0902d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3372
    .local v1, "anchorView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3373
    new-instance v3, Landroid/widget/ListPopupWindow;

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6, v8, v9}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    .line 3382
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 3383
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 3384
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 3385
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    new-instance v7, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v4}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestions()Ljava/util/List;

    move-result-object v4

    invoke-direct {v7, v8, v3, p0, v4}, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;-><init>(Landroid/app/Activity;ZLcom/android/contacts/editor/AggregationSuggestionView$Listener;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3389
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3390
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    goto/16 :goto_0

    .line 3375
    :cond_4
    const-string v3, "DEFAULT"

    const-string v6, "PHONE_WHITE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3376
    new-instance v3, Landroid/widget/ListPopupWindow;

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6, v8, v9}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    goto :goto_1

    .line 3378
    :cond_5
    new-instance v3, Landroid/widget/ListPopupWindow;

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6, v8}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    goto :goto_1

    :cond_6
    move v3, v5

    .line 3385
    goto :goto_2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 508
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 509
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    .line 510
    check-cast p1, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    .line 511
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    .line 523
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 832
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/contacts/activities/ContactEditorActivity;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsRecreatedInstance:Z

    .line 833
    if-eqz p1, :cond_0

    .line 836
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 837
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    .line 840
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 842
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_namecard_contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNameCard:Z

    .line 844
    if-nez p1, :cond_2

    .line 846
    new-instance v0, Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-direct {v0}, Lcom/android/contacts/editor/ViewIdGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 891
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 832
    goto :goto_0

    .line 849
    :cond_2
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDeltaList;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 850
    const-string v0, "photorequester"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    .line 852
    const-string v0, "viewidgenerator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ViewIdGenerator;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 853
    const-string v0, "currentphotofile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;

    .line 854
    const-string v0, "contactidforjoin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 855
    const-string v0, "contactwritableforjoin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    .line 856
    const-string v0, "showJoinSuggestions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    .line 857
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 858
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 859
    const-string v0, "newLocalProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 860
    const-string v0, "isUserProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    .line 861
    const-string v0, "updatedPhotos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    .line 862
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 863
    const-string v0, "vibration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    .line 864
    const-string v0, "alerttone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAlerttone:Ljava/lang/String;

    .line 865
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;

    .line 866
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAlerttone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAlerttoneUri:Landroid/net/Uri;

    .line 868
    const-string v0, "PhoneticNameAdded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoneticNameAdded:Z

    .line 869
    const-string v0, "SelectedGroupNames"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mSelectedGroupNames:Ljava/util/ArrayList;

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 562
    const v1, 0x7f04005f

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 564
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f09017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    .line 566
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 568
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDateFormatObserver:Lcom/android/contacts/editor/ContactEditorFragment$DateFormatObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 576
    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 589
    iget-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNameCard:Z

    if-eqz v2, :cond_0

    .line 590
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-string v3, "SquareNameCard.jpg"

    invoke-static {v2, v3}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "imagePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 597
    .end local v0    # "imagePath":Ljava/lang/String;
    .end local v1    # "where":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 599
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-eqz v2, :cond_1

    .line 600
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v2}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->quit()Z

    .line 616
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDateFormatObserver:Lcom/android/contacts/editor/ContactEditorFragment$DateFormatObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 582
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mVibObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 584
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 585
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 541
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 542
    return-void
.end method

.method public onEditAction(Landroid/net/Uri;)V
    .locals 4
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 3451
    new-instance v1, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;-><init>()V

    .line 3453
    .local v1, "dialog":Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3454
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "contactUri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3455
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 3456
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 3457
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "edit"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3458
    return-void
.end method

.method public onExternalEditorRequest(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;)V
    .locals 3
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomEditContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    .line 929
    return-void
.end method

.method public onJoinAction(JLjava/util/List;)V
    .locals 6
    .param p1, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3395
    .local p3, "rawContactIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [J

    .line 3396
    .local v3, "rawContactIds":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 3397
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 3396
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3399
    :cond_0
    new-instance v1, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;-><init>()V

    .line 3401
    .local v1, "dialog":Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3402
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "rawContactIds"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 3403
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 3404
    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 3406
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "join"

    invoke-virtual {v1, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3410
    :goto_1
    return-void

    .line 3407
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onJoinCompleted(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2920
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v2, v1, v0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;)V

    .line 2921
    return-void

    :cond_0
    move v0, v2

    .line 2920
    goto :goto_0
.end method

.method public onPhoneAlerttoneChosen()V
    .locals 2

    .prologue
    .line 4028
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAlerttone:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getAlertTonePickerIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4030
    return-void
.end method

.method public onPhoneRingtoneChosen()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 4012
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 4013
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 4021
    .local v2, "ringtoneUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getRingtonePickerIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 4022
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 4023
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4025
    :cond_1
    return-void

    .line 4015
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ringtoneUri":Landroid/net/Uri;
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    const-string v4, "\\?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4016
    .local v0, "customRingtoneUri":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4017
    .restart local v2    # "ringtoneUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4018
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public onSaveAction(ZIZLandroid/net/Uri;)V
    .locals 11
    .param p1, "hadChanges"    # Z
    .param p2, "saveMode"    # I
    .param p3, "saveSucceeded"    # Z
    .param p4, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 3007
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->executedSaveAction:Z

    .line 3008
    packed-switch p2, :pswitch_data_0

    .line 3091
    :cond_0
    :goto_0
    return-void

    .line 3012
    :pswitch_0
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 3013
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v7, :cond_4

    const/4 v5, 0x0

    .line 3016
    .local v5, "requestAuthority":Ljava/lang/String;
    :goto_1
    const-string v2, "contacts"

    .line 3018
    .local v2, "legacyAuthority":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 3019
    .local v6, "resultIntent":Landroid/content/Intent;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3020
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.jcontacts"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3021
    const-string v7, "com.android.jcontacts"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3023
    :cond_1
    const-string v7, "contacts"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3025
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, p4}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3027
    .local v0, "contactId":J
    const-string v7, "content://contacts/people"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3028
    .local v3, "legacyContentUri":Landroid/net/Uri;
    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 3030
    .local v4, "legacyUri":Landroid/net/Uri;
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3040
    .end local v0    # "contactId":J
    .end local v2    # "legacyAuthority":Ljava/lang/String;
    .end local v3    # "legacyContentUri":Landroid/net/Uri;
    .end local v4    # "legacyUri":Landroid/net/Uri;
    .end local v5    # "requestAuthority":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3042
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "has_result"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3043
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, p4}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3045
    .restart local v0    # "contactId":J
    const-string v7, "index"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "index"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3046
    const-string v7, "contact_id"

    invoke-virtual {v6, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3051
    .end local v0    # "contactId":J
    :cond_2
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 3052
    sget-boolean v7, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v7, :cond_3

    .line 3053
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish404()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish403()Z

    move-result v7

    if-nez v7, :cond_7

    .line 3055
    sget-object v7, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v8, "After Contact saved sending subscribe"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    invoke-virtual {p0, p4}, Lcom/android/contacts/editor/ContactEditorFragment;->subscribeForEAB(Landroid/net/Uri;)V

    .line 3062
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v7, v6}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onSaveFinished(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3013
    .end local v6    # "resultIntent":Landroid/content/Intent;
    :cond_4
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 3033
    .restart local v2    # "legacyAuthority":Ljava/lang/String;
    .restart local v5    # "requestAuthority":Ljava/lang/String;
    .restart local v6    # "resultIntent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {v6, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 3037
    .end local v2    # "legacyAuthority":Ljava/lang/String;
    .end local v5    # "requestAuthority":Ljava/lang/String;
    .end local v6    # "resultIntent":Landroid/content/Intent;
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "resultIntent":Landroid/content/Intent;
    goto/16 :goto_2

    .line 3059
    :cond_7
    sget-object v7, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v8, "After Contact saved subscribe not sent due to Initial Publish 404"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3067
    .end local v6    # "resultIntent":Landroid/content/Intent;
    :pswitch_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3069
    const/4 v7, 0x3

    if-ne p2, v7, :cond_8

    .line 3070
    invoke-direct {p0, p4}, Lcom/android/contacts/editor/ContactEditorFragment;->showJoinAggregateActivity(Landroid/net/Uri;)V

    .line 3075
    :cond_8
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 3076
    const-string v7, "android.intent.action.EDIT"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, p4, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 3077
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 3078
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0

    .line 3083
    :pswitch_2
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 3084
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v7, :cond_9

    .line 3085
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v7, p4}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onContactSplit(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 3087
    :cond_9
    sget-object v7, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v8, "No listener registered, can not call onSplitFinished"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3008
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveCompleted(ZIZLandroid/net/Uri;)V
    .locals 16
    .param p1, "hadChanges"    # Z
    .param p2, "saveMode"    # I
    .param p3, "saveSucceeded"    # Z
    .param p4, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 2925
    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSaveCompleted("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    if-eqz p1, :cond_1

    .line 2927
    if-eqz p3, :cond_6

    .line 2928
    const/4 v1, 0x3

    move/from16 v0, p2

    if-eq v0, v1, :cond_1

    .line 2929
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2930
    const-string v1, "entities"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2931
    .local v2, "entityUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "raw_contact_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2933
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2934
    const-string v1, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>CONTACT_ADDED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " </GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2940
    .end local v2    # "entityUri":Landroid/net/Uri;
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mTutorialMode:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 2943
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0436

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2954
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v10

    .line 2956
    .local v10, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->executedSaveAction:Z

    .line 2957
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsSimPb:Z

    .line 2959
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2960
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/EntityDelta;

    .line 2961
    .local v13, "value":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v13}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v14

    .line 2962
    .local v14, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v1, "account_type"

    invoke-virtual {v14, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2963
    .local v9, "accountType":Ljava/lang/String;
    const-string v1, "vnd.sec.contact.sim"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2965
    :cond_2
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsSimPb:Z

    .line 2968
    .end local v9    # "accountType":Ljava/lang/String;
    .end local v13    # "value":Lcom/android/contacts/model/EntityDelta;
    .end local v14    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsSimPb:Z

    if-nez v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-static {v1, v10}, Lcom/android/contacts/model/EntityModifier;->hasChangesOver2Items(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2970
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e029a

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0e029b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v15, 0x104000a

    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$15;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/editor/ContactEditorFragment$15;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;ZIZLandroid/net/Uri;)V

    invoke-virtual {v1, v15, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v15, 0x1040000

    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$14;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/editor/ContactEditorFragment$14;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;ZIZLandroid/net/Uri;)V

    invoke-virtual {v1, v15, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$13;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/editor/ContactEditorFragment$13;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;ZIZLandroid/net/Uri;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 2998
    .local v12, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    .line 3003
    .end local v12    # "dialog":Landroid/app/AlertDialog;
    :goto_2
    return-void

    .line 2936
    .end local v10    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .restart local v2    # "entityUri":Landroid/net/Uri;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :cond_4
    if-eqz v11, :cond_0

    .line 2937
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2945
    .end local v2    # "entityUri":Landroid/net/Uri;
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0e007e

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2949
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0e007f

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 3001
    .restart local v10    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    :cond_7
    invoke-virtual/range {p0 .. p4}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveAction(ZIZLandroid/net/Uri;)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 3532
    const-string v6, "uri"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3533
    const-string v6, "action"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3535
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3537
    const-string v6, "state"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3540
    :cond_0
    const-string v6, "photorequester"

    iget-wide v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3541
    const-string v6, "viewidgenerator"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3542
    const-string v6, "currentphotofile"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3543
    const-string v6, "contactidforjoin"

    iget-wide v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3544
    const-string v6, "contactwritableforjoin"

    iget-boolean v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3545
    const-string v6, "showJoinSuggestions"

    iget-wide v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3546
    const-string v6, "enabled"

    iget-boolean v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3547
    const-string v6, "newLocalProfile"

    iget-boolean v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3548
    const-string v6, "isUserProfile"

    iget-boolean v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3549
    const-string v6, "status"

    iget v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3550
    const-string v6, "updatedPhotos"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3551
    const-string v6, "ringtone"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3552
    const-string v6, "vibration"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    const-string v6, "alerttone"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAlerttone:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3555
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/contacts/editor/RawContactEditorView;

    if-eqz v6, :cond_2

    .line 3556
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/RawContactEditorView;

    .line 3558
    .local v1, "editor":Lcom/android/contacts/editor/RawContactEditorView;
    if-eqz v1, :cond_2

    .line 3559
    const-string v6, "PhoneticNameAdded"

    invoke-virtual {v1}, Lcom/android/contacts/editor/RawContactEditorView;->isPhoneticNameAdded()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3561
    invoke-virtual {v1}, Lcom/android/contacts/editor/RawContactEditorView;->getSelectedGroupNames()Ljava/util/List;

    move-result-object v4

    .line 3562
    .local v4, "nameArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 3563
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3564
    .local v5, "selectedGroupNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 3565
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3566
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3564
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3568
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    const-string v6, "SelectedGroupNames"

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3573
    .end local v1    # "editor":Lcom/android/contacts/editor/RawContactEditorView;
    .end local v2    # "i":I
    .end local v4    # "nameArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "selectedGroupNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    if-eqz v6, :cond_4

    .line 3574
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3576
    :try_start_0
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3581
    :cond_3
    :goto_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    .line 3584
    :cond_4
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    if-eqz v6, :cond_5

    .line 3585
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    invoke-virtual {v6}, Lcom/android/contacts/detail/PhotoSelectionHandler;->dismissPhotoSelectionPopup()V

    .line 3587
    :cond_5
    invoke-static {}, Lcom/android/contacts/editor/PhotoActionPopup;->dismissDialog()V

    .line 3589
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3590
    return-void

    .line 3577
    :catch_0
    move-exception v0

    .line 3578
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 729
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 730
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 731
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 546
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 547
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->pause()V

    .line 558
    :cond_0
    return-void
.end method

.method public refreshAddaContactTutorialPopup()V
    .locals 1

    .prologue
    .line 4628
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddaContactTutorialManager:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    if-eqz v0, :cond_0

    .line 4629
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddaContactTutorialManager:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->refresh()V

    .line 4631
    :cond_0
    return-void
.end method

.method public refreshWritingBuddyTutorialPopup()V
    .locals 1

    .prologue
    .line 4658
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mWritingBuddyTutorialManager:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    if-eqz v0, :cond_0

    .line 4659
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mWritingBuddyTutorialManager:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->refresh()V

    .line 4661
    :cond_0
    return-void
.end method

.method public save(I)Z
    .locals 46
    .param p1, "saveMode"    # I

    .prologue
    .line 2432
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 2433
    :cond_0
    const/4 v2, 0x0

    .line 2729
    :goto_0
    return v2

    .line 2436
    :cond_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isNotAllowedToSaveEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isNotAllowedToSaveOTASPNumber()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2438
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->hasRestrictedData(Lcom/android/contacts/model/EntityDeltaList;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2439
    const/4 v2, 0x0

    goto :goto_0

    .line 2444
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mTutorialMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 2446
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isContactWritable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2447
    const/4 v2, 0x0

    goto :goto_0

    .line 2450
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0430

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Lcom/android/contacts/editor/RawContactEditorView;

    .line 2454
    .local v45, "view":Lcom/android/contacts/editor/RawContactEditorView;
    new-instance v22, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.DialerHelpActivity"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2455
    .local v22, "i":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2456
    const-string v2, "isTutorialSuccessed"

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2458
    if-eqz v45, :cond_5

    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/editor/LabeledEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    if-nez v2, :cond_6

    .line 2459
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 2461
    :cond_6
    const-string v2, "displayName"

    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/editor/LabeledEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "data1"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2462
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2463
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 2465
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 2466
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2474
    .end local v22    # "i":Landroid/content/Intent;
    .end local v45    # "view":Lcom/android/contacts/editor/RawContactEditorView;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_10

    .line 2475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 2476
    .local v17, "count":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v15

    .line 2478
    .local v15, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    const/16 v35, 0x0

    .line 2479
    .local v35, "phoneNumberCount":I
    const/16 v37, 0x0

    .line 2480
    .local v37, "shouldHaveNumber":Z
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_e

    .line 2481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/contacts/model/EntityDelta;

    .line 2482
    .local v43, "valuea":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual/range {v43 .. v43}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2483
    .local v14, "accountType":Ljava/lang/String;
    invoke-virtual/range {v43 .. v43}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    const-string v3, "data_set"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2484
    .local v18, "dataSet":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v15, v14, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v40

    .line 2485
    .local v40, "type":Lcom/android/contacts/model/AccountType;
    invoke-virtual/range {v40 .. v40}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2480
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 2489
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v43, :cond_b

    .line 2492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2494
    .local v13, "aab_profile_str":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v39

    .line 2496
    .local v39, "structuredNameValuesDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v39, :cond_b

    .line 2497
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2498
    .local v41, "value":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz v41, :cond_a

    invoke-virtual/range {v41 .. v41}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2499
    const-string v2, "data2"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "data5"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "data3"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "data6"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "#displayName"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "data4"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "data1"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v13}, Lcom/android/contacts/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v38

    .line 2508
    .local v38, "structuredNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 2509
    .local v21, "field":Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2517
    .end local v13    # "aab_profile_str":Ljava/lang/String;
    .end local v21    # "field":Ljava/lang/String;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v38    # "structuredNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v39    # "structuredNameValuesDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v41    # "value":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->isContainICEGroup(I)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddToSpeedDial:Z

    if-eqz v2, :cond_8

    .line 2518
    :cond_c
    const/16 v37, 0x1

    .line 2519
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v36

    .line 2522
    .local v36, "phoneValueDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v36, :cond_8

    .line 2526
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2527
    .restart local v41    # "value":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const/16 v34, 0x0

    .line 2528
    .local v34, "phoneNumber":Ljava/lang/String;
    if-eqz v41, :cond_d

    invoke-virtual/range {v41 .. v41}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2529
    const-string v2, "data1"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2530
    if-eqz v34, :cond_d

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 2531
    add-int/lit8 v35, v35, 0x1

    goto :goto_3

    .line 2537
    .end local v14    # "accountType":Ljava/lang/String;
    .end local v18    # "dataSet":Ljava/lang/String;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v34    # "phoneNumber":Ljava/lang/String;
    .end local v36    # "phoneValueDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v40    # "type":Lcom/android/contacts/model/AccountType;
    .end local v41    # "value":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v43    # "valuea":Lcom/android/contacts/model/EntityDelta;
    :cond_e
    if-eqz v37, :cond_10

    if-nez v35, :cond_10

    .line 2538
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddToSpeedDial:Z

    if-eqz v2, :cond_f

    .line 2539
    const v2, 0x7f0e04a2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->showToast(II)V

    .line 2543
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2541
    :cond_f
    const v2, 0x7f0e03d8

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->showToast(II)V

    goto :goto_4

    .line 2548
    .end local v15    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .end local v17    # "count":I
    .end local v22    # "i":I
    .end local v35    # "phoneNumberCount":I
    .end local v37    # "shouldHaveNumber":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/contacts/model/EntityDelta;

    .line 2550
    .local v41, "value":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual/range {v41 .. v41}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v44

    .line 2551
    .local v44, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 2553
    .local v16, "byteArrayName":[B
    if-eqz v44, :cond_1d

    .line 2554
    const-string v2, "account_type"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2555
    .restart local v14    # "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v30

    .line 2556
    .local v30, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/contacts/editor/ContactEditorFragment;->isDualStandbySim2(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2560
    :cond_11
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-nez v2, :cond_14

    .line 2565
    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v28

    .line 2566
    .local v28, "isSimEnabled":Z
    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v32

    .line 2569
    .local v32, "nameLength":I
    :goto_5
    if-eqz v28, :cond_1c

    .line 2570
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v33

    .line 2571
    .local v33, "nameValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const/16 v31, 0x0

    .line 2573
    .local v31, "name":Ljava/lang/String;
    if-eqz v33, :cond_12

    .line 2575
    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2578
    :cond_12
    if-eqz v31, :cond_13

    .line 2579
    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v16

    .line 2581
    :cond_13
    if-eqz v31, :cond_15

    move-object/from16 v0, v16

    array-length v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->SpecialCharOffset(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    move/from16 v0, v32

    if-le v2, v0, :cond_15

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0e032c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2584
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2561
    .end local v28    # "isSimEnabled":Z
    .end local v31    # "name":Ljava/lang/String;
    .end local v32    # "nameLength":I
    .end local v33    # "nameValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_14
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v28

    .line 2562
    .restart local v28    # "isSimEnabled":Z
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength(Ljava/lang/String;)I

    move-result v32

    .restart local v32    # "nameLength":I
    goto :goto_5

    .line 2587
    .restart local v31    # "name":Ljava/lang/String;
    .restart local v33    # "nameValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_15
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2590
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 2591
    .local v20, "emailValueDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const/16 v19, 0x0

    .line 2593
    .local v19, "email":Ljava/lang/String;
    if-eqz v20, :cond_16

    .line 2594
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2597
    :cond_16
    if-eqz v19, :cond_1d

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    if-eqz v31, :cond_17

    if-eqz v31, :cond_1d

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2599
    :cond_17
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v36

    .line 2601
    .restart local v36    # "phoneValueDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v36, :cond_18

    .line 2602
    const v2, 0x7f0e0080

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->showToast(II)V

    .line 2603
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2606
    :cond_18
    const/16 v34, 0x0

    .line 2607
    .restart local v34    # "phoneNumber":Ljava/lang/String;
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_19
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2608
    .local v42, "valueDelta":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz v42, :cond_19

    .line 2609
    const-string v2, "data1"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2610
    if-eqz v34, :cond_19

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 2616
    .end local v42    # "valueDelta":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_1a
    if-eqz v34, :cond_1b

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1d

    .line 2617
    :cond_1b
    const v2, 0x7f0e0080

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->showToast(II)V

    .line 2618
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2624
    .end local v19    # "email":Ljava/lang/String;
    .end local v20    # "emailValueDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v31    # "name":Ljava/lang/String;
    .end local v33    # "nameValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v34    # "phoneNumber":Ljava/lang/String;
    .end local v36    # "phoneValueDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0e007f

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2625
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2658
    .end local v14    # "accountType":Ljava/lang/String;
    .end local v16    # "byteArrayName":[B
    .end local v28    # "isSimEnabled":Z
    .end local v30    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .end local v32    # "nameLength":I
    .end local v41    # "value":Lcom/android/contacts/model/EntityDelta;
    .end local v44    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_1d
    if-eqz p1, :cond_1e

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_1f

    .line 2659
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 2662
    :cond_1f
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 2665
    const/16 v27, 0x0

    .line 2666
    .local v27, "isRingtoneChangedToDefault":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    if-nez v2, :cond_20

    .line 2667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mOldCustomRingtone:Ljava/lang/String;

    if-eqz v2, :cond_20

    .line 2668
    const/16 v27, 0x1

    .line 2672
    :cond_20
    const/16 v29, 0x0

    .line 2673
    .local v29, "isVibrationChangedToDefault":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 2674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mOldCustomVibration:Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 2675
    const/16 v29, 0x1

    .line 2679
    :cond_21
    const/16 v26, 0x0

    .line 2680
    .local v26, "isAlerttoneChangedToDefault":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAlerttone:Ljava/lang/String;

    if-nez v2, :cond_22

    .line 2681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mOldCustomAlerttone:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 2682
    const/16 v26, 0x1

    .line 2686
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v2

    if-nez v2, :cond_28

    if-eqz v27, :cond_23

    if-eqz v27, :cond_28

    const-string v2, "android.intent.action.INSERT"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_23
    if-eqz v29, :cond_24

    if-eqz v29, :cond_28

    const-string v2, "android.intent.action.INSERT"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_24
    if-eqz v26, :cond_25

    if-eqz v26, :cond_28

    const-string v2, "android.intent.action.INSERT"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2690
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v2, :cond_26

    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_26

    .line 2693
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 2694
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2696
    :cond_26
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;)V

    .line 2697
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2696
    :cond_27
    const/4 v2, 0x0

    goto :goto_6

    .line 2700
    :cond_28
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 2702
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v2

    if-nez v2, :cond_29

    .line 2704
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->saveDefaultAccountIfNecessary()V

    .line 2708
    :cond_29
    if-eqz p1, :cond_2a

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_2b

    .line 2709
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 2713
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v2}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onContactSaveRequested()V

    .line 2717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const-string v4, "saveMode"

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "saveCompleted"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAlerttone:Ljava/lang/String;

    move/from16 v5, p1

    invoke-static/range {v2 .. v12}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    .line 2721
    .local v25, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mNamecardPhotoBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_2c

    .line 2722
    const-string v2, "updatedNamecard"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mNamecardPhotoBundle:Landroid/os/Bundle;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2723
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mNamecardPhotoBundle:Landroid/os/Bundle;

    .line 2725
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2727
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    .line 2729
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public setAccountInfo(Lcom/android/contacts/model/AccountType;I)V
    .locals 0
    .param p1, "accountType"    # Lcom/android/contacts/model/AccountType;
    .param p2, "simId"    # I

    .prologue
    .line 4618
    return-void
.end method

.method public setAccountInfo(Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Lcom/android/contacts/model/AccountType;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 4621
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/editor/RawContactEditorView;

    if-eqz v0, :cond_0

    .line 4622
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/RawContactEditorView;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/editor/RawContactEditorView;->setAccountInfo(Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 4623
    :cond_0
    return-void
.end method

.method public setAggregationSuggestionViewEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 3518
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 3528
    :cond_0
    return-void

    .line 3522
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const v4, 0x7f09002d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 3524
    .local v2, "itemList":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3525
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3526
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3525
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 14
    .param p1, "data"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    const/4 v13, 0x1

    .line 895
    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v9, :cond_1

    .line 896
    sget-object v9, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v10, "Ignoring background change. This will have to be rebased later"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    .line 902
    .local v2, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v13, :cond_2

    .line 903
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity;

    .line 904
    .local v3, "entity":Landroid/content/Entity;
    invoke-virtual {v3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 905
    .local v4, "entityValues":Landroid/content/ContentValues;
    const-string v9, "account_type"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 906
    .local v8, "type":Ljava/lang/String;
    const-string v9, "data_set"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, "dataSet":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v9

    invoke-virtual {v9, v8, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 909
    .local v0, "accountType":Lcom/android/contacts/model/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v9

    if-nez v9, :cond_2

    .line 911
    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v9, :cond_0

    .line 912
    const-string v9, "account_name"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 913
    .local v5, "name":Ljava/lang/String;
    const-string v9, "_id"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 914
    .local v6, "rawContactId":J
    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    new-instance v10, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v10, v5, v8, v1}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomEditContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 923
    .end local v0    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v3    # "entity":Landroid/content/Entity;
    .end local v4    # "entityValues":Landroid/content/ContentValues;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "rawContactId":J
    .end local v8    # "type":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForExistingContact(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 492
    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    if-eq v3, p1, :cond_1

    .line 493
    iput-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 494
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 495
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 496
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 497
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 496
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->setAggregationSuggestionViewEnabled(Z)V

    .line 501
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 502
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 504
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    return-void
.end method

.method public setIntentExtras(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1033
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 1038
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v6, :cond_0

    .line 1039
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta;

    .line 1040
    .local v4, "state":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, "accountType":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "data_set"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1042
    .local v2, "dataSet":Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v5

    .line 1043
    .local v5, "type":Lcom/android/contacts/model/AccountType;
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1057
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "vnd.sec.contact.sim"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->isDualStandbySim2(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1059
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v4, p1}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1061
    :cond_4
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v4, p1}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    .line 805
    return-void
.end method

.method public setNameCardListener(Lcom/android/contacts/editor/ContactEditorFragment$NamecardListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/ContactEditorFragment$NamecardListener;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNameCardListener:Lcom/android/contacts/editor/ContactEditorFragment$NamecardListener;

    .line 440
    return-void
.end method

.method public setPhaseWritingBuddyTutorialPopup(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 4676
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mWritingBuddyTutorialManager:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    if-eqz v0, :cond_0

    .line 4677
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mWritingBuddyTutorialManager:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->setPhase(I)V

    .line 4679
    :cond_0
    return-void
.end method

.method public setTutorialMode(I)V
    .locals 2
    .param p1, "tutorialMode"    # I

    .prologue
    .line 809
    iput p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mTutorialMode:I

    .line 810
    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mTutorialMode:I

    if-eqz v0, :cond_0

    .line 811
    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mTutorialMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 812
    new-instance v0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mWritingBuddyTutorialManager:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    new-instance v0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddaContactTutorialManager:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    goto :goto_0
.end method

.method public setVisibilityTutorialPopup(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 4644
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddaContactTutorialManager:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    if-eqz v0, :cond_0

    .line 4645
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddaContactTutorialManager:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->setVisibilityTutorialPopup(Z)V

    .line 4647
    :cond_0
    return-void
.end method

.method public setVisibilityWritingBuddyTutorialPopup(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 4670
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mWritingBuddyTutorialManager:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    if-eqz v0, :cond_0

    .line 4671
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mWritingBuddyTutorialManager:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->setVisibilityTutorialPopup(Z)V

    .line 4673
    :cond_0
    return-void
.end method

.method public startAddaContactTutorial()V
    .locals 2

    .prologue
    .line 4635
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddaContactTutorialManager:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    if-eqz v0, :cond_0

    .line 4636
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountForNewContact:Lcom/android/contacts/model/AccountWithDataSet;

    if-eqz v0, :cond_1

    .line 4637
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddaContactTutorialManager:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountForNewContact:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->startTutorial(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 4641
    :cond_0
    :goto_0
    return-void

    .line 4639
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddaContactTutorialManager:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->startTutorial()V

    goto :goto_0
.end method

.method public startPickFromNamecardActivity()V
    .locals 3

    .prologue
    .line 1849
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1850
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.bcocr"

    const-string v2, "com.sec.android.app.bcocr.OCR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1851
    const-string v1, "OCR_NAMECARD_CAPTURE_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1852
    const/16 v1, 0x3ee

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1853
    return-void
.end method

.method public startWritingBuddyTutorial()V
    .locals 1

    .prologue
    .line 4664
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mWritingBuddyTutorialManager:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    if-eqz v0, :cond_0

    .line 4665
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mWritingBuddyTutorialManager:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->startTutorial()V

    .line 4667
    :cond_0
    return-void
.end method

.method public subscribeForEAB(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 4603
    if-nez p1, :cond_0

    .line 4604
    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v2, "subscribeForEAB called-ContactUri is NULL so returning without starting Subscribe Thread"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    :goto_0
    return-void

    .line 4607
    :cond_0
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)V

    .line 4608
    .local v0, "subscribe":Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
