.class public Lcom/android/contacts/detail/ContactDetailFragment;
.super Landroid/app/Fragment;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
.implements Lcom/android/contacts/detail/ViewOverlay;
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
.implements Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;
.implements Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;,
        Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$Listener;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;,
        Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeadSetPluggingReceiver;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;,
        Lcom/android/contacts/detail/ContactDetailFragment$ContextMenuIds;
    }
.end annotation


# static fields
.field private static final AVAILABILITY_OFF:Ljava/lang/String; = "1"

.field private static final AVAILABILITY_ON:Ljava/lang/String; = "0"

.field private static final CALL_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field private static final DONT_SHOW_ICON:Ljava/lang/String; = "2"

.field private static final GROUP_MAX_LINES:I = 0xa

.field public static final HANDLE_STATE_EHRPD_ON:I = 0x11

.field public static final HANDLE_STATE_INIT:I = 0xa

.field public static final HANDLE_STATE_LTE_OFF:I = 0xe

.field public static final HANDLE_STATE_LTE_ON:I = 0xd

.field public static final HANDLE_STATE_MOBILE_DATA_OFF:I = 0xc

.field public static final HANDLE_STATE_MOBILE_DATA_ON:I = 0xb

.field public static final HANDLE_STATE_USER_AVAILABILITY_ON:I = 0x12

.field public static final HANDLE_STATE_VIDEO_CALLING_OFF:I = 0x10

.field public static final HANDLE_STATE_VIDEO_CALLING_ON:I = 0xf

.field private static final HD_CALL_IDENTIFIER:Ljava/lang/String; = "Mobile"

.field private static final HEADSET_NOT_PLUGGED:I = 0x0

.field private static final HEADSET_PLUGGED:I = 0x1

.field private static final HEADSET_PLUGGED_KEY:Ljava/lang/String; = "headset_plugged"

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final KEY_CURRENT_PHOTO_FILE:Ljava/lang/String; = "currentphotofile"

.field private static final KEY_CUSTOM_ALERTTONE_URI:Ljava/lang/String; = "customAlerttoneUri"

.field private static final KEY_CUSTOM_RINTONE_URI:Ljava/lang/String; = "customRingtoneUri"

.field private static final KEY_CUSTOM_VIBRATION_URI:Ljava/lang/String; = "customVibrationUri"

.field private static final KEY_DATA_ID:Ljava/lang/String; = "id"

.field private static final KEY_IS_CHANGING_CONFIGURATION:Ljava/lang/String; = "isChangingOrientation"

.field private static final KEY_IS_DIRECTORY_CONTACT:Ljava/lang/String; = "isDirectoryContact"

.field private static final KEY_LIST_STATE:Ljava/lang/String; = "liststate"

.field private static final KEY_MENU_POSITION:Ljava/lang/String; = "menuPosition"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final KEY_WRITABLE_ENTITY_INDEX:Ljava/lang/String; = "writableEntityIndex"

.field private static final MOTION_DIALOG_PERF:Ljava/lang/String; = "MotionDialogOnOff"

.field private static final MOTION_DIALOG_PERF_BEFORE:Ljava/lang/String; = "MotionDialogOnOffBeforeCommit"

.field private static final NOTE_MAX_LINES:I = 0x3e8

.field private static final POSTAL_ADDRESS_MAX_LINES:I = 0xa

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "contacts_motionCall"

.field private static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "persist.sys.ims.reg"

.field private static final PROPERTY_IMS_VOLTE_SUPPORTED:Ljava/lang/String; = "persist.sys.ims.volte_supported"

.field private static final REQUEST_CREATE_VIBRATION:I = 0x5

.field private static final REQUEST_PHONE_ALERTTONE:I = 0x6

.field private static final REQUEST_PHONE_RINGTONE:I = 0x0

.field private static final REQUEST_PHONE_RINGTONE_RECOMMENDATION:I = 0x1

.field private static final REQUEST_PICK_VIBRATION:I = 0x4

.field private static final REQUEST_SOUNDS_RINGTONE:I = 0x2

.field private static final REQUEST_SOUND_PICKER_RINGTONE:I = 0x3

.field private static final SHOW_GREEN_ICON:Ljava/lang/String; = "0"

.field private static final SHOW_GREY_ICON:Ljava/lang/String; = "1"

.field private static final SIP_ADDRESS_MAX_LINES:I = 0x1

.field private static final SIP_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/sip_address"

.field public static final STATE_CHECK_LTE_ON:I = 0x2

.field public static final STATE_CHECK_MOBILE_DATA:I = 0x1

.field public static final STATE_CHECK_USER_AVAILABILITY:I = 0x2c

.field public static final STATE_CHECK_VIDEO_CALLING_ON:I = 0x21

.field private static final STATE_INIT:I = 0x0

.field private static final SUBACTIVITY_EDIT_CONTACT:I = 0xd

.field private static final TAG:Ljava/lang/String; = "ContactDetailFragment"

.field private static final USER_IS_CAPABLE:Ljava/lang/String; = "3"

.field private static final USE_MOTION_DIALOG_PERF:Ljava/lang/String; = "UseMotionDialogOnOff"

.field private static final USE_MOTION_DIALOG_PERF_BEFORE:Ljava/lang/String; = "UseMotionDialogOnOffBeforeCommit"

.field private static final WEBSITE_MAX_LINES:I = 0x1

.field private static callPressed:Z

.field private static imAddressPressed:Z

.field private static isVoLTEEnabled:Z

.field private static mCapabilityDiscover:I

.field private static numberavailability:Ljava/util/HashMap;
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

.field private static numbercapability:Ljava/util/HashMap;
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

.field private static sipAddressPressed:Z


# instance fields
.field private final KEY_PROFILE_DIALOG_CHECK:Ljava/lang/String;

.field private final KEY_PROFILE_DIALOG_UNCHECK:Ljava/lang/String;

.field private final SIM_ONE:I

.field private final SIM_ZERO:I

.field private UsePickUpToMakeCallPopupAni:Landroid/graphics/drawable/AnimationDrawable;

.field private detailViewEntry1:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

.field private directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

.field private fromDialer:Z

.field private headsetpluggingreceiver:Lcom/android/contacts/detail/ContactDetailFragment$HeadSetPluggingReceiver;

.field private isDeviceSettingsChanged:Z

.field private isFonblet:Z

.field private isMMSAvailable:Z

.field private isPortrait:Z

.field private isttyON:Z

.field private mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeSettingStatus:Z

.field private mAirplaneModeon:Z

.field private mAlert:Landroid/app/AlertDialog;

.field private mAlerttoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphaLayer:Landroid/view/View;

.field private mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChatOnEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContactHasSocialUpdates:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentPhotoFile:Ljava/lang/String;

.field private mCustomAlerttone:Ljava/lang/String;

.field private mCustomRingtone:Ljava/lang/String;

.field private mCustomVibrationUri:Ljava/lang/String;

.field private mDateFormatObserver:Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mDiscoverySettingStatus:Z

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mEventEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mExtraPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSizeIsSet:Z

.field private mFreeTextEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

.field private mGroupEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHasDualCall:Z

.field private mHasIPCall:Z

.field private mHasPhone:Z

.field private mHasSip:Z

.field private mHasSms:Z

.field private mHasVideoCall:Z

.field private mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mImsLowSignalHelper:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialAlphaValue:F

.field private mIsBinded:Z

.field private mIsChangingConfiguration:Z

.field private mIsDirectoryContact:Z

.field private mIsKnox:Z

.field private mIsMultiWindowSupported:Z

.field private mIsUniqueEmail:Z

.field private mIsUniqueNumber:Z

.field private mJoinEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mLVCSettingStatus:Z

.field private mLayoutMode:I

.field private mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMobileDataEnabledObserver:Landroid/database/ContentObserver;

.field private mMobileDataSettingStatus:Z

.field private mMotionCallRegistered:Z

.field private mNicknameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNumPhoneNumbers:I

.field private mOrientation:I

.field private final mOtherEntriesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoActionPopUp:Landroid/app/AlertDialog;

.field private mPhotoContainerView:Lcom/android/contacts/widget/ProportionalLayout;

.field private mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

.field private final mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

.field private mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

.field private mPrimaryPhoneUri:Landroid/net/Uri;

.field private mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

.field private mQuickFixButton:Landroid/widget/Button;

.field private mRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

.field private mRelationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRingtoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mShowEmptyLayout:Z

.field private mShowStaticPhoto:Z

.field private mSipEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/contacts/model/EntityDeltaList;

.field private mStaticPhotoUpdateView:Landroid/view/View;

.field private mStaticPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

.field private mStaticTwHeaderView:Landroid/widget/LinearLayout;

.field private mTouchInterceptLayer:Landroid/view/View;

.field private mTransitionAnimationRequested:Z

.field private mTwEmptyView:Landroid/view/View;

.field private mVAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mVibrationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCallingEnable:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

.field private mVideoCallingSettingStatus:Z

.field private mView:Landroid/view/View;

.field private mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

.field private mWebsiteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mlistGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mttySettingStatus:Z

.field private onMobileDataDialogPositiveClicked:Landroid/content/DialogInterface$OnClickListener;

.field private onVoiceOverLtePopupPositiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private pickUpToMakeCallPopupAni:Landroid/graphics/drawable/AnimationDrawable;

.field private sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

.field private sIsMotionCallEnabled:Z

.field private sIsVibrator:Z

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private textViewProfile:Landroid/widget/TextView;

.field private textViewProfile1:Landroid/widget/TextView;

.field private userNumber:Ljava/lang/String;

.field private videoCallView:Landroid/view/View;

.field private videoCheckBox:Landroid/widget/CheckBox;

.field private videoViewLayout:Landroid/widget/RelativeLayout;

.field private viewForVideoCall:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    .line 417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->numberavailability:Ljava/util/HashMap;

    .line 431
    const/4 v0, 0x1

    sput v0, Lcom/android/contacts/detail/ContactDetailFragment;->mCapabilityDiscover:I

    .line 560
    sput-boolean v1, Lcom/android/contacts/detail/ContactDetailFragment;->isVoLTEEnabled:Z

    .line 573
    sput-boolean v1, Lcom/android/contacts/detail/ContactDetailFragment;->callPressed:Z

    .line 574
    sput-boolean v1, Lcom/android/contacts/detail/ContactDetailFragment;->sipAddressPressed:Z

    .line 575
    sput-boolean v1, Lcom/android/contacts/detail/ContactDetailFragment;->imAddressPressed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 584
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 311
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 313
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoContainerView:Lcom/android/contacts/widget/ProportionalLayout;

    .line 315
    new-instance v0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    .line 362
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 363
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLayoutMode:I

    .line 366
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    .line 367
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowEmptyLayout:Z

    .line 368
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    .line 374
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    .line 375
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 376
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeon:Z

    .line 377
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z

    .line 378
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->headsetpluggingreceiver:Lcom/android/contacts/detail/ContactDetailFragment$HeadSetPluggingReceiver;

    .line 380
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 433
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isDeviceSettingsChanged:Z

    .line 435
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLVCSettingStatus:Z

    .line 437
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVideoCallingSettingStatus:Z

    .line 439
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mttySettingStatus:Z

    .line 441
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDiscoverySettingStatus:Z

    .line 443
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMobileDataSettingStatus:Z

    .line 445
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeSettingStatus:Z

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    .line 510
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFreeTextEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 513
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVideoCallingEnable:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlerttoneEntries:Ljava/util/ArrayList;

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVibrationEntries:Ljava/util/ArrayList;

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mJoinEntries:Ljava/util/ArrayList;

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mChatOnEntries:Ljava/util/ArrayList;

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVAppEntries:Ljava/util/ArrayList;

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mExtraPhoneEntries:Ljava/util/ArrayList;

    .line 537
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    .line 556
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    .line 562
    const-string v0, "skipMessage1"

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->KEY_PROFILE_DIALOG_CHECK:Ljava/lang/String;

    .line 564
    const-string v0, "skipMessage2"

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->KEY_PROFILE_DIALOG_UNCHECK:Ljava/lang/String;

    .line 570
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    .line 577
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->SIM_ZERO:I

    .line 578
    iput v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->SIM_ONE:I

    .line 588
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    .line 589
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isPortrait:Z

    .line 590
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFonblet:Z

    .line 1312
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDateFormatObserver:Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;

    .line 3079
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$26;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$26;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->onMobileDataDialogPositiveClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 3115
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$29;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$29;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->onVoiceOverLtePopupPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 6119
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$47;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$47;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 6175
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$48;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$48;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMobileDataEnabledObserver:Landroid/database/ContentObserver;

    .line 6219
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$49;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$49;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 586
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 618
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 311
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 313
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoContainerView:Lcom/android/contacts/widget/ProportionalLayout;

    .line 315
    new-instance v0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    .line 362
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 363
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLayoutMode:I

    .line 366
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    .line 367
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowEmptyLayout:Z

    .line 368
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    .line 374
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    .line 375
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 376
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeon:Z

    .line 377
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z

    .line 378
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->headsetpluggingreceiver:Lcom/android/contacts/detail/ContactDetailFragment$HeadSetPluggingReceiver;

    .line 380
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 433
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isDeviceSettingsChanged:Z

    .line 435
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLVCSettingStatus:Z

    .line 437
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVideoCallingSettingStatus:Z

    .line 439
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mttySettingStatus:Z

    .line 441
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDiscoverySettingStatus:Z

    .line 443
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMobileDataSettingStatus:Z

    .line 445
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeSettingStatus:Z

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    .line 510
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFreeTextEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 513
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVideoCallingEnable:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlerttoneEntries:Ljava/util/ArrayList;

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVibrationEntries:Ljava/util/ArrayList;

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mJoinEntries:Ljava/util/ArrayList;

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mChatOnEntries:Ljava/util/ArrayList;

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVAppEntries:Ljava/util/ArrayList;

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mExtraPhoneEntries:Ljava/util/ArrayList;

    .line 537
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    .line 556
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    .line 562
    const-string v0, "skipMessage1"

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->KEY_PROFILE_DIALOG_CHECK:Ljava/lang/String;

    .line 564
    const-string v0, "skipMessage2"

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->KEY_PROFILE_DIALOG_UNCHECK:Ljava/lang/String;

    .line 570
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    .line 577
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->SIM_ZERO:I

    .line 578
    iput v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->SIM_ONE:I

    .line 588
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    .line 589
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isPortrait:Z

    .line 590
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFonblet:Z

    .line 1312
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDateFormatObserver:Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;

    .line 3079
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$26;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$26;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->onMobileDataDialogPositiveClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 3115
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$29;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$29;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->onVoiceOverLtePopupPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 6119
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$47;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$47;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 6175
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$48;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$48;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMobileDataEnabledObserver:Landroid/database/ContentObserver;

    .line 6219
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$49;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$49;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 619
    const-string v0, "IsDialerFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    .line 620
    const-string v0, "Portrait"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isPortrait:Z

    .line 621
    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createSelectSimDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isKnoxOrPersonalAccount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->userNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->userNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Landroid/widget/CheckBox;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 235
    sget-boolean v0, Lcom/android/contacts/detail/ContactDetailFragment;->callPressed:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 235
    sput-boolean p0, Lcom/android/contacts/detail/ContactDetailFragment;->callPressed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 235
    sget-boolean v0, Lcom/android/contacts/detail/ContactDetailFragment;->sipAddressPressed:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 235
    sput-boolean p0, Lcom/android/contacts/detail/ContactDetailFragment;->sipAddressPressed:Z

    return p0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 235
    sget-boolean v0, Lcom/android/contacts/detail/ContactDetailFragment;->imAddressPressed:Z

    return v0
.end method

.method static synthetic access$2102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 235
    sput-boolean p0, Lcom/android/contacts/detail/ContactDetailFragment;->imAddressPressed:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/widget/ListAdapter;
    .param p3, "x3"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 235
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment;->showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomVibrationUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/model/DataKind;
    .param p1, "x1"    # Landroid/content/ContentValues;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 235
    invoke-static {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    .line 235
    sget-boolean v0, Lcom/android/contacts/detail/ContactDetailFragment;->isVoLTEEnabled:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/ListHoverManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/sec/android/app/contacts/ListHoverManager;)Lcom/sec/android/app/contacts/ListHoverManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/ListHoverManager;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsBinded:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailPhotoSetter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFontSizeIsSet:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/contacts/detail/ContactDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeon:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    return-object v0
.end method

.method static synthetic access$4300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->viewForVideoCall:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->detailViewEntry1:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->detailViewEntry1:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/contacts/detail/ContactDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isDeviceSettingsChanged:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->deviceSettingsChangedUpdateEntries()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->getDefaultGroupId(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5400(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/contacts/detail/ContactDetailFragment;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # J

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment;->resetDefaultLine(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;
    .param p4, "x4"    # Z

    .prologue
    .line 235
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/detail/ContactDetailFragment;->showPhotoActionPopup(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method private addLastSeparator()V
    .locals 2

    .prologue
    .line 3787
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3789
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 3791
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3793
    :cond_1
    return-void
.end method

.method private addMoreNetworks()V
    .locals 5

    .prologue
    .line 3758
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-direct {v1, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)V

    .line 3762
    .local v1, "popupAdapter":Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$41;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$41;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;)V

    .line 3774
    .local v2, "popupItemListener":Landroid/widget/AdapterView$OnItemClickListener;
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$42;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$42;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3782
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->forMoreNetworks(Landroid/content/Context;Landroid/view/View$OnClickListener;)Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3783
    return-void
.end method

.method private addNetworks()V
    .locals 14

    .prologue
    const/4 v12, 0x1

    .line 3693
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3748
    :cond_0
    :goto_0
    return-void

    .line 3696
    :cond_1
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {v11, v13}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getAttribution(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v1

    .line 3697
    .local v1, "attribution":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    move v4, v12

    .line 3698
    .local v4, "hasAttribution":Z
    :goto_1
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v9

    .line 3702
    .local v9, "networksCount":I
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->getInvitableAccountTypes()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3703
    .local v7, "invitableCount":I
    if-nez v4, :cond_2

    if-nez v9, :cond_2

    if-eqz v7, :cond_0

    .line 3708
    :cond_2
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v13, 0x7f0e0186

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3709
    .local v8, "networkKindTitle":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v13, v8}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3712
    if-eqz v4, :cond_3

    .line 3713
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 3714
    .local v3, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v8, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 3715
    iput-object v1, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3716
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3719
    if-lez v9, :cond_3

    .line 3720
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v13}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3725
    .end local v3    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_3
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType;

    .line 3728
    .local v0, "accountType":Lcom/android/contacts/model/AccountType;
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v13, v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->fromAccountType(Landroid/content/Context;Lcom/android/contacts/model/AccountType;)Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3730
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 3732
    .local v2, "detailEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    new-instance v10, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v10}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    .line 3733
    .local v10, "separatorEntry":Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;
    invoke-virtual {v10, v12}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->setIsInSubSection(Z)V

    .line 3734
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3737
    invoke-virtual {v2, v12}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setIsInSubSection(Z)V

    .line 3738
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3697
    .end local v0    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v2    # "detailEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v4    # "hasAttribution":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "invitableCount":I
    .end local v8    # "networkKindTitle":Ljava/lang/String;
    .end local v9    # "networksCount":I
    .end local v10    # "separatorEntry":Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 3742
    .restart local v4    # "hasAttribution":Z
    .restart local v7    # "invitableCount":I
    .restart local v8    # "networkKindTitle":Ljava/lang/String;
    .restart local v9    # "networksCount":I
    :cond_6
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 3745
    if-lez v7, :cond_0

    .line 3746
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addMoreNetworks()V

    goto/16 :goto_0
.end method

.method private addPhoneticName()V
    .locals 5

    .prologue
    .line 3669
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {v3, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getPhoneticName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v1

    .line 3670
    .local v1, "phoneticName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3683
    :goto_0
    return-void

    .line 3675
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0185

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3676
    .local v2, "phoneticNameKindTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v4, v2}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3679
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 3680
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 3681
    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3682
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addVideoCallingEnable()V
    .locals 4

    .prologue
    .line 3307
    const-string v1, "ContactDetailFragment"

    const-string v2, "addVideoCallingEnable----start"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0e02a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3310
    .local v0, "videoCallingEnableOptionTitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v2, v0}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3311
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVideoCallingEnable:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0021

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3312
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVideoCallingEnable:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    const/4 v2, 0x1

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->videoEnableSwitch:Z
    invoke-static {v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1702(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z

    .line 3313
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVideoCallingEnable:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3314
    const-string v1, "ContactDetailFragment"

    const-string v2, "addVideoCallingEnable----end"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    return-void
.end method

.method private static buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 4028
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 4032
    :cond_0
    :goto_0
    return-object v1

    .line 4031
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v2, p2, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4032
    .local v0, "actionBody":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final buildEntries()V
    .locals 70

    .prologue
    .line 1960
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    .line 1961
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    .line 1962
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    .line 1963
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasVideoCall:Z

    .line 1964
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v4, v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;I)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->isMMSAvailable:Z

    .line 1965
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsKnox:Z

    .line 1968
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIPCall(Landroid/content/Context;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasIPCall:Z

    .line 1977
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasDualCall:Z

    .line 1980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVibrator(Landroid/content/Context;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsVibrator:Z

    .line 1983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1985
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1987
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 1988
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 1990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getCustomRingtone()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    .line 1991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getCustomVibrationUri()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomVibrationUri:Ljava/lang/String;

    .line 1992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getCustomAlerttone()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;

    .line 1994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v23

    .line 1996
    .local v23, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1998
    .local v20, "accountIconsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2001
    .local v21, "accountNamesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v4, :cond_2

    .line 2768
    :cond_1
    :goto_0
    return-void

    .line 2005
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->checkWebExAvailable()Z

    move-result v47

    .line 2007
    .local v47, "isWebExAvailable":Z
    const/16 v51, 0x0

    .line 2009
    .local v51, "mIsVAppAccount":Z
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 2010
    .local v38, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getBlackList()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mBlackList:Ljava/util/ArrayList;

    .line 2011
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mlistGroupIds:Ljava/util/ArrayList;

    .line 2012
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_3
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/Entity;

    .line 2013
    .local v35, "entity":Landroid/content/Entity;
    invoke-virtual/range {v35 .. v35}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v34

    .line 2014
    .local v34, "entValues":Landroid/content/ContentValues;
    const-string v4, "account_type"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2015
    .local v22, "accountType":Ljava/lang/String;
    const-string v4, "data_set"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2016
    .local v29, "dataSet":Ljava/lang/String;
    const-string v4, "_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v57

    .line 2018
    .local v57, "rawContactId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static/range {v57 .. v58}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static/range {v57 .. v58}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2022
    :cond_4
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v67

    .line 2023
    .local v67, "type":Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 2024
    .local v19, "accountDrawableIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v67 .. v67}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v48

    .line 2026
    .local v48, "isWritable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_5

    move-object/from16 v0, v67

    iget-object v4, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    const-string v10, "com.coolots.chaton"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2028
    const/16 v51, 0x1

    .line 2030
    :cond_5
    if-eqz v19, :cond_6

    .line 2031
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "vnd.sec.contact.phone"

    move-object/from16 v0, v67

    iget-object v10, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-wide/from16 v0, v57

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getIsRcsForRawContact(J)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2035
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f0207fa

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2039
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2042
    :cond_6
    invoke-virtual/range {v35 .. v35}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Landroid/content/Entity$NamedContentValues;

    .line 2043
    .local v65, "subValue":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v65

    iget-object v9, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 2044
    .local v9, "entryValues":Landroid/content/ContentValues;
    const-string v4, "raw_contact_id"

    invoke-static/range {v57 .. v58}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2046
    const-string v4, "_id"

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2047
    .local v7, "dataId":J
    const-string v4, "mimetype"

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2048
    .local v5, "mimeType":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 2050
    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2051
    const-string v4, "data1"

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v37

    .line 2052
    .local v37, "groupId":Ljava/lang/Long;
    if-eqz v37, :cond_7

    .line 2053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getGroupMetaData()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v4, v10, v11}, Lcom/android/contacts/detail/ContactDetailFragment;->handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V

    .line 2054
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mlistGroupIds:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2037
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v7    # "dataId":J
    .end local v9    # "entryValues":Landroid/content/ContentValues;
    .end local v37    # "groupId":Ljava/lang/Long;
    .end local v41    # "i$":Ljava/util/Iterator;
    .end local v65    # "subValue":Landroid/content/Entity$NamedContentValues;
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2060
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v7    # "dataId":J
    .restart local v9    # "entryValues":Landroid/content/ContentValues;
    .restart local v41    # "i$":Ljava/util/Iterator;
    .restart local v65    # "subValue":Landroid/content/Entity$NamedContentValues;
    :cond_9
    const-string v4, "vnd.android.cursor.item/contact_type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2066
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    if-eqz v22, :cond_13

    const-string v4, "com.android.nttdocomo"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    if-eqz v29, :cond_13

    const-string v4, "myprofile"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2069
    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 2076
    .local v6, "kind":Lcom/android/contacts/model/DataKind;
    :goto_3
    if-nez v6, :cond_a

    const-string v4, "vnd.vapp.item/vnd.com.app.account"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2079
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v10}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v11

    invoke-static/range {v4 .. v12}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v36

    .line 2083
    .local v36, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    move/from16 v0, v48

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isWritable:Z

    .line 2085
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    const/16 v39, 0x1

    .line 2086
    .local v39, "hasData":Z
    :goto_4
    const-string v4, "is_super_primary"

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v66

    .line 2087
    .local v66, "superPrimary":Ljava/lang/Integer;
    if-eqz v66, :cond_15

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_15

    const/16 v46, 0x1

    .line 2089
    .local v46, "isSuperPrimary":Z
    :goto_5
    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2091
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    if-eqz v39, :cond_24

    .line 2093
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 2094
    const-string v4, "normalized_number"

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 2096
    .local v56, "phoneNumberE164":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v27

    .line 2097
    .local v27, "currentLang":Ljava/lang/String;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v54, v0

    .line 2098
    .local v54, "orignalNumber":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2099
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2110
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v54

    invoke-static {v0, v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v55

    .line 2112
    .local v55, "phoneIntent":Landroid/content/Intent;
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v4, :cond_18

    new-instance v63, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v10, "smsto"

    const-string v11, ","

    const-string v13, "P"

    move-object/from16 v0, v54

    invoke-virtual {v0, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v13, ";"

    const-string v14, "W"

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-static {v10, v11, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v0, v63

    invoke-direct {v0, v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2117
    .local v63, "smsIntent":Landroid/content/Intent;
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsKnox:Z

    if-nez v4, :cond_c

    if-eqz v63, :cond_c

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2119
    const-string v4, "com.android.mms"

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2122
    :cond_c
    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v55, :cond_d

    .line 2123
    const-string v4, "call_from_sec"

    const/4 v10, 0x1

    move-object/from16 v0, v55

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2127
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v4, :cond_1d

    .line 2128
    move-object/from16 v0, v55

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2130
    iget v4, v6, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 2131
    move-object/from16 v0, v63

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 2132
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    if-eqz v4, :cond_e

    .line 2133
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    const/high16 v10, 0x14000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2135
    :cond_e
    iget v4, v6, Lcom/android/contacts/model/DataKind;->iconAltRes:I

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 2137
    iget v4, v6, Lcom/android/contacts/model/DataKind;->iconAltDescriptionRes:I

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 2139
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVoiceCallblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVideoCallblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkMessageblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2144
    :cond_f
    const/4 v4, 0x1

    move-object/from16 v0, v36

    iput-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    .line 2174
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasDualCall:Z

    if-eqz v4, :cond_10

    .line 2175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v62

    .line 2213
    .local v62, "simManager":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v4, "vnd.sec.contact.sim"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "vnd.sec.contact.sim2"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v4, :cond_10

    .line 2216
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2217
    const/4 v4, -0x1

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 2219
    new-instance v53, Lcom/android/contacts/detail/ContactDetailFragment$14;

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$14;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    .line 2226
    .local v53, "onClickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v53

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2283
    .end local v53    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v62    # "simManager":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_10
    if-eqz v46, :cond_11

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 2285
    :cond_11
    move/from16 v0, v46

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 2288
    sget-boolean v4, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v4, :cond_12

    .line 2289
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setEabPresenceAvailabilityEntry(Landroid/content/Entity$NamedContentValues;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    .line 2291
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->isNumber4GCapable(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2292
    const-string v4, "ContactDetailFragment"

    const-string v10, "Number is 4G capable"

    invoke-static {v4, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/contacts/detail/ContactDetailFragment;->getCallIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthIntent:Landroid/content/Intent;

    .line 2299
    :goto_a
    sget-object v4, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v10, "0"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2300
    const-string v4, "ContactDetailFragment"

    const-string v10, "Show Green Icon"

    invoke-static {v4, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const v4, 0x7f0206e6

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthActionIcon:I

    .line 2310
    :goto_b
    const v4, 0x7f0e031b

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthActionDescription:I

    .line 2311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    iget v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-static {v10}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 2317
    :cond_12
    move-object/from16 v0, v36

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v4, :cond_23

    .line 2319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    const/4 v10, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v4, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 2072
    .end local v6    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v27    # "currentLang":Ljava/lang/String;
    .end local v36    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v39    # "hasData":Z
    .end local v46    # "isSuperPrimary":Z
    .end local v54    # "orignalNumber":Ljava/lang/String;
    .end local v55    # "phoneIntent":Landroid/content/Intent;
    .end local v56    # "phoneNumberE164":Ljava/lang/String;
    .end local v63    # "smsIntent":Landroid/content/Intent;
    .end local v66    # "superPrimary":Ljava/lang/Integer;
    :cond_13
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .restart local v6    # "kind":Lcom/android/contacts/model/DataKind;
    goto/16 :goto_3

    .line 2085
    .restart local v36    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_14
    const/16 v39, 0x0

    goto/16 :goto_4

    .line 2087
    .restart local v39    # "hasData":Z
    .restart local v66    # "superPrimary":Ljava/lang/Integer;
    :cond_15
    const/16 v46, 0x0

    goto/16 :goto_5

    .line 2101
    .restart local v27    # "currentLang":Ljava/lang/String;
    .restart local v46    # "isSuperPrimary":Z
    .restart local v54    # "orignalNumber":Ljava/lang/String;
    .restart local v56    # "phoneNumberE164":Ljava/lang/String;
    :cond_16
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "iw"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2106
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-static {v4, v0, v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    goto/16 :goto_6

    .line 2110
    :cond_17
    const/16 v55, 0x0

    goto/16 :goto_7

    .line 2112
    .restart local v55    # "phoneIntent":Landroid/content/Intent;
    :cond_18
    const/16 v63, 0x0

    goto/16 :goto_8

    .line 2146
    .restart local v63    # "smsIntent":Landroid/content/Intent;
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    goto/16 :goto_9

    .line 2148
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mBlackList:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mBlackList:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1b
    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, v36

    iput-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    goto/16 :goto_9

    :cond_1c
    const/4 v4, 0x0

    goto :goto_c

    .line 2150
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v4, :cond_1e

    .line 2151
    move-object/from16 v0, v55

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2153
    iget v4, v6, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    goto/16 :goto_9

    .line 2154
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v4, :cond_1f

    .line 2155
    move-object/from16 v0, v63

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2156
    iget v4, v6, Lcom/android/contacts/model/DataKind;->iconAltRes:I

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2159
    iget v4, v6, Lcom/android/contacts/model/DataKind;->iconAltDescriptionRes:I

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    goto/16 :goto_9

    .line 2161
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2162
    const/4 v4, -0x1

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto/16 :goto_9

    .line 2295
    :cond_20
    const-string v4, "ContactDetailFragment"

    const-string v10, "Number is Not 4G capable"

    invoke-static {v4, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthIntent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 2302
    :cond_21
    sget-object v4, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2303
    const-string v4, "ContactDetailFragment"

    const-string v10, "Show Grey Icon"

    invoke-static {v4, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    const v4, 0x7f0206e8

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthActionIcon:I

    goto/16 :goto_b

    .line 2306
    :cond_22
    const-string v4, "ContactDetailFragment"

    const-string v10, "Dont Show Icon"

    invoke-static {v4, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 2322
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2325
    .end local v27    # "currentLang":Ljava/lang/String;
    .end local v54    # "orignalNumber":Ljava/lang/String;
    .end local v55    # "phoneIntent":Landroid/content/Intent;
    .end local v56    # "phoneNumberE164":Ljava/lang/String;
    .end local v63    # "smsIntent":Landroid/content/Intent;
    :cond_24
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    if-eqz v39, :cond_29

    .line 2328
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Contact_EnableOptionToSelectEmailMMS4EmailAddress"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2330
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v59

    .line 2331
    .local v59, "res":Landroid/content/res/Resources;
    const v4, 0x7f08001f

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v49

    .line 2332
    .local v49, "items":[Ljava/lang/String;
    new-instance v52, Ljava/util/ArrayList;

    invoke-static/range {v49 .. v49}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2333
    .local v52, "menu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 2335
    .local v28, "data":Ljava/lang/String;
    new-instance v53, Lcom/android/contacts/detail/ContactDetailFragment$16;

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment$16;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2344
    .restart local v53    # "onClickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v53

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2363
    .end local v28    # "data":Ljava/lang/String;
    .end local v49    # "items":[Ljava/lang/String;
    .end local v52    # "menu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v53    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v59    # "res":Landroid/content/res/Resources;
    :goto_d
    move/from16 v0, v46

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 2365
    move-object/from16 v0, v36

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v4, :cond_28

    .line 2366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    const/4 v10, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v4, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2372
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Landroid/util/LongSparseArray;

    move-result-object v4

    move-object/from16 v0, v36

    iget-wide v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->id:J

    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/android/contacts/util/DataStatus;

    .line 2373
    .local v64, "status":Lcom/android/contacts/util/DataStatus;
    if-eqz v64, :cond_7

    .line 2374
    const-string v43, "vnd.android.cursor.item/im"

    .line 2375
    .local v43, "imMime":Ljava/lang/String;
    const-string v4, "vnd.android.cursor.item/im"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v12

    .line 2377
    .local v12, "imKind":Lcom/android/contacts/model/DataKind;
    if-eqz v12, :cond_7

    .line 2378
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v11, "vnd.android.cursor.item/im"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v17

    move-wide v13, v7

    move-object v15, v9

    invoke-static/range {v10 .. v18}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v42

    .line 2381
    .local v42, "imEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v42

    invoke-static {v4, v0, v9}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/ContentValues;)V

    .line 2382
    const/4 v4, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v64

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2346
    .end local v12    # "imKind":Lcom/android/contacts/model/DataKind;
    .end local v42    # "imEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v43    # "imMime":Ljava/lang/String;
    .end local v64    # "status":Lcom/android/contacts/util/DataStatus;
    :cond_25
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.SENDTO"

    const-string v11, "mailto"

    move-object/from16 v0, v36

    iget-object v13, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2348
    const-string v4, "PHONE_WHITE"

    const-string v10, "DEFAULT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2350
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_26

    .line 2351
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v10, "theme"

    const/4 v11, 0x2

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2356
    :cond_26
    if-eqz v47, :cond_27

    .line 2357
    const v4, 0x7f0206eb

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 2358
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getWebExIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 2359
    const v4, 0x7f0e02a4

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 2361
    :cond_27
    iget v4, v6, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    goto/16 :goto_d

    .line 2368
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 2385
    :cond_29
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    if-eqz v39, :cond_2a

    .line 2387
    const/16 v4, 0xa

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 2388
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2389
    iget v4, v6, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 2390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2391
    :cond_2a
    const-string v4, "vnd.android.cursor.item/im"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    if-eqz v39, :cond_2c

    .line 2393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    invoke-static {v4, v0, v9}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/ContentValues;)V

    .line 2396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Landroid/util/LongSparseArray;

    move-result-object v4

    move-object/from16 v0, v36

    iget-wide v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->id:J

    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/android/contacts/util/DataStatus;

    .line 2397
    .restart local v64    # "status":Lcom/android/contacts/util/DataStatus;
    if-eqz v64, :cond_2b

    .line 2398
    const/4 v4, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v64

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2400
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2401
    .end local v64    # "status":Lcom/android/contacts/util/DataStatus;
    :cond_2c
    const-string v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2404
    const-string v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    if-eqz v39, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 2407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getNameRawContactId()J

    move-result-wide v10

    cmp-long v4, v10, v57

    if-nez v4, :cond_2d

    const/16 v45, 0x1

    .line 2410
    .local v45, "isNameRawContact":Z
    :goto_f
    if-eqz v45, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getDisplayNameSource()I

    move-result v4

    const/16 v10, 0x23

    if-ne v4, v10, :cond_2e

    const/16 v32, 0x1

    .line 2414
    .local v32, "duplicatesTitle":Z
    :goto_10
    if-nez v32, :cond_7

    .line 2415
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 2416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2407
    .end local v32    # "duplicatesTitle":Z
    .end local v45    # "isNameRawContact":Z
    :cond_2d
    const/16 v45, 0x0

    goto :goto_f

    .line 2410
    .restart local v45    # "isNameRawContact":Z
    :cond_2e
    const/16 v32, 0x0

    goto :goto_10

    .line 2418
    .end local v45    # "isNameRawContact":Z
    :cond_2f
    const-string v4, "vnd.android.cursor.item/note"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    if-eqz v39, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v4

    if-nez v4, :cond_30

    .line 2421
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 2422
    const/16 v4, 0x3e8

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 2424
    iget v4, v6, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 2425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2426
    :cond_30
    const-string v4, "vnd.android.cursor.item/website"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    if-eqz v39, :cond_32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v4

    if-nez v4, :cond_32

    .line 2429
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 2430
    const/4 v4, 0x1

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 2432
    :try_start_0
    new-instance v69, Landroid/net/WebAddress;

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, v69

    invoke-direct {v0, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 2433
    .local v69, "webAddress":Landroid/net/WebAddress;
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual/range {v69 .. v69}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2435
    const-string v4, "PHONE_WHITE"

    const-string v10, "DEFAULT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 2437
    if-eqz v36, :cond_31

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_31

    .line 2438
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v10, "theme"

    const/4 v11, 0x2

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2442
    :cond_31
    iget v4, v6, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2446
    .end local v69    # "webAddress":Landroid/net/WebAddress;
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2443
    :catch_0
    move-exception v33

    .line 2444
    .local v33, "e":Landroid/net/ParseException;
    const-string v4, "ContactDetailFragment"

    const-string v10, "Couldn\'t parse website"

    invoke-static {v4, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2447
    .end local v33    # "e":Landroid/net/ParseException;
    :cond_32
    const-string v4, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    if-eqz v39, :cond_35

    .line 2449
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 2450
    const/4 v4, 0x1

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 2451
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Contact_DisableTriggerInternetCall"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2453
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2454
    const/4 v4, -0x1

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2464
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2455
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    if-eqz v4, :cond_34

    .line 2456
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    const-string v11, "sip"

    move-object/from16 v0, v36

    iget-object v13, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2459
    iget v4, v6, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    goto :goto_12

    .line 2461
    :cond_34
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2462
    const/4 v4, -0x1

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto :goto_12

    .line 2471
    :cond_35
    const-string v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    if-eqz v39, :cond_39

    .line 2472
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->birthday:Ljava/lang/String;

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v10, 0x1040536

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2481
    :cond_36
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Calendar_EnableLunar"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 2483
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/16 v10, 0x28

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v68

    .line 2484
    .local v68, "typeIndex":I
    const/4 v4, -0x1

    move/from16 v0, v68

    if-eq v0, v4, :cond_37

    .line 2485
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v10, 0x0

    move/from16 v0, v68

    invoke-virtual {v4, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 2486
    .local v30, "date":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-static {v10, v0}, Lcom/android/contacts/util/DateUtils;->formatDateForLunar(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move/from16 v0, v68

    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2494
    .end local v30    # "date":Ljava/lang/String;
    .end local v68    # "typeIndex":I
    :goto_13
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 2495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2489
    .restart local v68    # "typeIndex":I
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v4, v10}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_13

    .line 2492
    .end local v68    # "typeIndex":I
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v4, v10}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_13

    .line 2497
    :cond_39
    const-string v4, "vnd.android.cursor.item/relation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    if-eqz v39, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 2499
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2500
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v10, "query"

    move-object/from16 v0, v36

    iget-object v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2501
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v10, "vnd.android.cursor.dir/contact"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2502
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v10, "fromDetail"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2503
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/activities/ContactDetailActivity;

    if-eqz v4, :cond_3a

    .line 2504
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v10, "fromNotPeople"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2506
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 2507
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2512
    :cond_3b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2513
    const/4 v4, 0x1

    move-object/from16 v0, v36

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z
    invoke-static {v0, v4}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1202(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z

    .line 2515
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2517
    :cond_3d
    const-string v4, "vnd.chaton.item/vnd.com.chaton.profile"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2519
    const-string v4, "normalized_number"

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 2521
    .restart local v56    # "phoneNumberE164":Ljava/lang/String;
    const-string v4, "data1"

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2523
    .local v25, "buddyId":Ljava/lang/String;
    if-nez v25, :cond_3e

    .line 2524
    move-object/from16 v25, v56

    .line 2527
    :cond_3e
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2528
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, v36

    iget-object v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2529
    const v4, 0x7f0e0171

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 2530
    const v4, 0x7f02068c

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0373

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mChatOnEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2534
    .end local v25    # "buddyId":Ljava/lang/String;
    .end local v56    # "phoneNumberE164":Ljava/lang/String;
    :cond_3f
    const-string v4, "vnd.vapp.item/vnd.com.app.account"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2535
    const-string v4, "data1"

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 2536
    .local v60, "samsungAccount":Ljava/lang/String;
    const-string v4, "data2"

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2537
    .local v26, "chatOnID":Ljava/lang/String;
    move-object/from16 v0, v60

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2540
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2541
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v10, "com.sds.vapp.voipcall"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2542
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v10, "user_account"

    move-object/from16 v0, v26

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2543
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v10, "video_call"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2544
    const v4, 0x7f0e0172

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 2545
    const v4, 0x7f0206ea

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2547
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 2548
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    const-string v10, "com.sds.vapp.voipcall"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2549
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    const-string v10, "user_account"

    move-object/from16 v0, v26

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2550
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    const-string v10, "video_call"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2551
    const v4, 0x7f0e0173

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 2552
    const v4, 0x7f0206e7

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 2554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0374

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mVAppEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2558
    .end local v26    # "chatOnID":Ljava/lang/String;
    .end local v60    # "samsungAccount":Ljava/lang/String;
    :cond_40
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2559
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, v36

    iget-object v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2560
    const/4 v4, -0x1

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2562
    iget-object v4, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-eqz v4, :cond_41

    .line 2563
    iget-object v4, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-interface {v4, v10, v9}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 2564
    .local v24, "body":Ljava/lang/CharSequence;
    if-nez v24, :cond_42

    const/4 v4, 0x0

    :goto_14
    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2567
    .end local v24    # "body":Ljava/lang/CharSequence;
    :cond_41
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2570
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v67

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 2571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v67

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/List;

    .line 2572
    .local v50, "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    move-object/from16 v0, v50

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2564
    .end local v50    # "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    .restart local v24    # "body":Ljava/lang/CharSequence;
    :cond_42
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    .line 2575
    .end local v24    # "body":Ljava/lang/CharSequence;
    :cond_43
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 2576
    .restart local v50    # "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    move-object/from16 v0, v50

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v67

    move-object/from16 v1, v50

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2584
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v7    # "dataId":J
    .end local v9    # "entryValues":Landroid/content/ContentValues;
    .end local v19    # "accountDrawableIcon":Landroid/graphics/drawable/Drawable;
    .end local v22    # "accountType":Ljava/lang/String;
    .end local v29    # "dataSet":Ljava/lang/String;
    .end local v34    # "entValues":Landroid/content/ContentValues;
    .end local v35    # "entity":Landroid/content/Entity;
    .end local v36    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v39    # "hasData":Z
    .end local v41    # "i$":Ljava/util/Iterator;
    .end local v46    # "isSuperPrimary":Z
    .end local v48    # "isWritable":Z
    .end local v50    # "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    .end local v57    # "rawContactId":J
    .end local v65    # "subValue":Landroid/content/Entity$NamedContentValues;
    .end local v66    # "superPrimary":Ljava/lang/Integer;
    .end local v67    # "type":Lcom/android/contacts/model/AccountType;
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2585
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .local v40, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2586
    .local v31, "detailViewEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 2590
    .end local v31    # "detailViewEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_45
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 2592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_46

    .line 2593
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasIPCall:Z

    if-eqz v4, :cond_46

    .line 2594
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->makeIPCallEntry()V

    .line 2600
    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_47

    .line 2601
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasVideoCall:Z

    if-eqz v4, :cond_47

    .line 2602
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->makeVideoCallEntry()V

    .line 2607
    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    .line 2611
    .local v44, "isGalContact":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v4

    if-nez v4, :cond_49

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Contact_DisableAccountIconsInContactList"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_49

    :cond_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v4

    if-nez v4, :cond_49

    .line 2617
    if-eqz v20, :cond_4f

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4f

    .line 2618
    new-instance v36, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct/range {v36 .. v36}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2619
    .restart local v36    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    new-instance v53, Lcom/android/contacts/detail/ContactDetailFragment$17;

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$17;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 2628
    .restart local v53    # "onClickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v20

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->accountIcon:Ljava/util/ArrayList;

    .line 2629
    move-object/from16 v0, v21

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->accountNames:Ljava/util/ArrayList;

    .line 2630
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 2631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0187

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2641
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mJoinEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2646
    .end local v36    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v53    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_49
    :goto_17
    new-instance v53, Lcom/android/contacts/detail/ContactDetailFragment$18;

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$18;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;)V

    .line 2684
    .restart local v53    # "onClickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v4, :cond_4a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v4

    if-nez v4, :cond_4a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_4a

    if-nez v51, :cond_4a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsKnox:Z

    if-nez v4, :cond_4a

    .line 2686
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getCustomRingtoneName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->makeRingtoneEntry(Ljava/lang/String;)V

    .line 2691
    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v4, :cond_4b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsVibrator:Z

    if-eqz v4, :cond_4b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v4

    if-nez v4, :cond_4b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v4

    if-nez v4, :cond_4b

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mVibrationEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_4b

    if-nez v51, :cond_4b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v4

    if-nez v4, :cond_4b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsKnox:Z

    if-nez v4, :cond_4b

    .line 2694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getCustomVibrationUri()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->makeVibrationEntry(Ljava/lang/String;)V

    .line 2699
    :cond_4b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->isMMSAvailable:Z

    if-eqz v4, :cond_4c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v4

    if-nez v4, :cond_4c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlerttoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_4c

    if-nez v51, :cond_4c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsKnox:Z

    if-nez v4, :cond_4c

    .line 2703
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getCustomAlerttoneName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->makeAlerttoneEntry(Ljava/lang/String;)V

    .line 2709
    :cond_4c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v4

    if-nez v4, :cond_4d

    if-eqz v51, :cond_50

    .line 2756
    .end local v53    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_4d
    :goto_18
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2757
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->makeFreeTextEntry()V

    .line 2759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getIsRcs()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->homepage:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->makeAdditionalWebsiteEntry(Ljava/lang/String;)V

    .line 2761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->facebook:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->makeAdditionalWebsiteEntry(Ljava/lang/String;)V

    .line 2762
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->twitter:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->makeAdditionalWebsiteEntry(Ljava/lang/String;)V

    .line 2763
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->cyworld:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->makeAdditionalWebsiteEntry(Ljava/lang/String;)V

    .line 2764
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->makeAdditionalEmailEntry()V

    .line 2765
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->makeAdditionalEventEntry()V

    goto/16 :goto_0

    .line 2633
    .restart local v36    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .restart local v53    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0186

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2634
    const v4, 0x7f02069c

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2635
    const v4, 0x7f0e0188

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 2636
    const v4, 0x7f02069c

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 2637
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.android.contacts.action.JOINED_CONTACT"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 2638
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2639
    const v4, 0x7f0e0188

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    goto/16 :goto_16

    .line 2643
    .end local v36    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v53    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_4f
    const-string v4, "ContactDetailFragment"

    const-string v10, "Account icons are unavailable."

    invoke-static {v4, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 2712
    .restart local v53    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_50
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_55

    .line 2713
    new-instance v36, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct/range {v36 .. v36}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2714
    .restart local v36    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static/range {v38 .. v38}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2715
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    .line 2716
    .local v61, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->covertToSystemTitle(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2717
    const-string v4, "mimetype"

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 2718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0127

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2719
    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2720
    const/16 v4, 0xa

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 2722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v4

    if-nez v4, :cond_51

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isGooglePlus()Z

    move-result v4

    if-eqz v4, :cond_52

    :cond_51
    const/16 v53, 0x0

    .end local v53    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_52
    move-object/from16 v0, v53

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2724
    const/4 v4, -0x1

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2727
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 2728
    const/4 v4, 0x1

    move-object/from16 v0, v36

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z
    invoke-static {v0, v4}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1202(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z

    .line 2731
    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v4

    if-eqz v4, :cond_54

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0250

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 2733
    :cond_54
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    .line 2736
    .end local v36    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v61    # "sb":Ljava/lang/StringBuilder;
    .restart local v53    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_55
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 2737
    new-instance v36, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct/range {v36 .. v36}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2738
    .restart local v36    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static/range {v38 .. v38}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2740
    const-string v4, "mimetype"

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 2741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0127

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0297

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2743
    const/16 v4, 0xa

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 2744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isGooglePlus()Z

    move-result v4

    if-eqz v4, :cond_56

    const/16 v53, 0x0

    .end local v53    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_56
    move-object/from16 v0, v53

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2745
    const/4 v4, -0x1

    move-object/from16 v0, v36

    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2747
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 2748
    const/4 v4, 0x1

    move-object/from16 v0, v36

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z
    invoke-static {v0, v4}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1202(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z

    .line 2750
    :cond_57
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v4

    if-eqz v4, :cond_58

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0250

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 2752
    :cond_58
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18
.end method

.method public static buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/ContentValues;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x5

    const v12, 0x7f0e0171

    const v11, 0x7f0206e0

    .line 4041
    const-string v8, "vnd.android.cursor.item/email_v2"

    const-string v10, "mimetype"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 4043
    .local v6, "isEmail":Z
    if-nez v6, :cond_1

    invoke-static {p2}, Lcom/android/contacts/detail/ContactDetailFragment;->isProtocolValid(Landroid/content/ContentValues;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 4101
    :cond_0
    :goto_0
    return-void

    .line 4047
    :cond_1
    if-eqz v6, :cond_2

    const-string v8, "data1"

    :goto_1
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4048
    .local v3, "data":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 4052
    if-eqz v6, :cond_3

    move v7, v9

    .line 4054
    .local v7, "protocol":I
    :goto_2
    if-ne v7, v9, :cond_7

    .line 4055
    const-string v8, "chat_capability"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 4056
    .local v2, "chatCapabilityObj":Ljava/lang/Integer;
    if-nez v2, :cond_4

    const/4 v1, 0x0

    .line 4057
    .local v1, "chatCapability":I
    :goto_3
    iput v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    .line 4058
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 4060
    and-int/lit8 v8, v1, 0x4

    if-eqz v8, :cond_5

    .line 4061
    iput v11, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 4062
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 4064
    iput v12, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 4065
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?call"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 4067
    const v8, 0x7f0e0173

    iput v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    goto/16 :goto_0

    .line 4047
    .end local v1    # "chatCapability":I
    .end local v2    # "chatCapabilityObj":Ljava/lang/Integer;
    .end local v3    # "data":Ljava/lang/String;
    .end local v7    # "protocol":I
    :cond_2
    const-string v8, "data1"

    goto/16 :goto_1

    .line 4052
    .restart local v3    # "data":Ljava/lang/String;
    :cond_3
    const-string v8, "data5"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto/16 :goto_2

    .line 4056
    .restart local v2    # "chatCapabilityObj":Ljava/lang/Integer;
    .restart local v7    # "protocol":I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    .line 4068
    .restart local v1    # "chatCapability":I
    :cond_5
    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_6

    .line 4070
    iput v11, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 4071
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 4073
    iput v12, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 4074
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?call"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 4076
    const v8, 0x7f0e0172

    iput v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    goto/16 :goto_0

    .line 4078
    :cond_6
    iput v11, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 4079
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 4081
    iput v12, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    goto/16 :goto_0

    .line 4085
    .end local v1    # "chatCapability":I
    .end local v2    # "chatCapabilityObj":Ljava/lang/Integer;
    :cond_7
    const-string v8, "data6"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4087
    .local v4, "host":Ljava/lang/String;
    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 4089
    invoke-static {v7}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v4

    .line 4092
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 4093
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 4094
    .local v0, "authority":Ljava/lang/String;
    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    const-string v9, "imto"

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 4096
    .local v5, "imUri":Landroid/net/Uri;
    iput v11, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 4097
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    invoke-direct {v8, v9, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 4098
    iput v12, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    goto/16 :goto_0
.end method

.method private callMessagePopup(I)V
    .locals 5
    .param p1, "viewEntryPosition"    # I

    .prologue
    .line 6020
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 6021
    .local v0, "detailViewEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 6022
    .local v2, "phoneNumber":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 6024
    .local v1, "mimeType":Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/vcall-address"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6025
    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v4, "video_number"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6026
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->launch(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6030
    :goto_0
    return-void

    .line 6028
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->launch(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private checkDeviceSettingsForEAB()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3274
    const-string v3, "ContactDetailFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device settings : isMobileDataEnabled = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "!mAirplaneModeon = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isAirplaneModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "!isttyON = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "isVoiceOverLTEEnabled"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isVoiceOverLTEEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "isSettingsVideoCallEnabled = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isSettingsVideoCallEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isAirplaneModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isVoiceOverLTEEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isSettingsVideoCallEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3282
    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 3274
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 3282
    goto :goto_2
.end method

.method private checkWebExAvailable()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 3935
    :try_start_0
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v6, "com.cisco.webex.meetings"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 3938
    .local v3, "webexContext":Landroid/content/Context;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3939
    .local v1, "isSignIn":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 3940
    const-string v5, "share"

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3942
    .local v2, "settings":Landroid/content/SharedPreferences;
    const-string v5, "SignInFlag"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3944
    .end local v2    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 3945
    const/4 v4, 0x1

    .line 3951
    .end local v1    # "isSignIn":Ljava/lang/Boolean;
    .end local v3    # "webexContext":Landroid/content/Context;
    :cond_1
    :goto_0
    return v4

    .line 3949
    :catch_0
    move-exception v0

    .line 3950
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ContactDetailFragment"

    const-string v6, "WebEx app is not installed"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearDefaultContactMethod(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 5942
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 5943
    .local v0, "clearIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5944
    return-void
.end method

.method private configureQuickFix()V
    .locals 6

    .prologue
    .line 1912
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 1914
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .local v0, "arr$":[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1915
    .local v1, "fix":Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->isApplicable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1916
    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 1922
    .end local v1    # "fix":Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    if-nez v4, :cond_2

    .line 1923
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1928
    :goto_1
    return-void

    .line 1914
    .restart local v1    # "fix":Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1925
    .end local v1    # "fix":Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1926
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private copyToClipboard(I)V
    .locals 7
    .param p1, "viewEntryPosition"    # I

    .prologue
    .line 5948
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 5949
    .local v3, "detailViewEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 5952
    .local v2, "data":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5981
    :goto_0
    return-void

    .line 5955
    :cond_0
    const-string v5, "vnd.android.cursor.item/phone_v2"

    iget-object v6, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5956
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5963
    .local v4, "textToCopy":Ljava/lang/CharSequence;
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v6, "clipboardEx"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 5964
    .local v0, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 5965
    .local v1, "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v1, v4}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 5966
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    goto :goto_0

    .line 5958
    .end local v0    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    .end local v1    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v4    # "textToCopy":Ljava/lang/CharSequence;
    :cond_1
    move-object v4, v2

    .restart local v4    # "textToCopy":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private copyToDialingScreen(I)V
    .locals 6
    .param p1, "viewEntryPosition"    # I

    .prologue
    .line 6008
    const/4 v1, 0x0

    .line 6010
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 6011
    .local v0, "detailViewEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 6013
    .local v2, "phoneNumber":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.DIAL"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6014
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "withSpecialChar"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6015
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6016
    return-void
.end method

.method private createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 5712
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-eqz v0, :cond_0

    .line 5713
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getContentValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onCreateRawContactRequested(Ljava/util/ArrayList;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 5715
    :cond_0
    return-void
.end method

.method private createSelectSimDialog(Ljava/lang/String;)V
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 3497
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3598
    :goto_0
    return-void

    .line 3501
    :cond_0
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "vnd.sec.contact.sim"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "vnd.sec.contact.sim2"

    aput-object v2, v4, v1

    .line 3505
    .local v4, "simType":[Ljava/lang/String;
    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x1030128

    invoke-direct {v8, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3507
    .local v8, "dialogContext":Landroid/content/Context;
    const-string v1, "layout_inflater"

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 3510
    .local v5, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$38;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0401e5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailFragment$38;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;I[Ljava/lang/String;Landroid/view/LayoutInflater;)V

    .line 3549
    .local v0, "accountAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v7, Lcom/android/contacts/detail/ContactDetailFragment$39;

    invoke-direct {v7, p0, p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment$39;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;Landroid/widget/ArrayAdapter;)V

    .line 3584
    .local v7, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Lcom/android/contacts/detail/ContactDetailFragment$40;

    invoke-direct {v6, p0}, Lcom/android/contacts/detail/ContactDetailFragment$40;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 3593
    .local v6, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e031a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private deleteContactMethod(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 6002
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createDeleteItemIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 6003
    .local v0, "deleteIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6004
    return-void
.end method

.method private deselectSimForDS(JI)Z
    .locals 5
    .param p1, "id"    # J
    .param p3, "menuPosition"    # I

    .prologue
    .line 6948
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6949
    .local v0, "args":Landroid/os/Bundle;
    move-wide v1, p1

    .line 6950
    .local v1, "data_id":J
    const-string v4, "id"

    invoke-virtual {v0, v4, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6951
    const-string v4, "menuPosition"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6954
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$50;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$50;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;J)V

    .line 6960
    .local v3, "listener":Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/contacts/detail/DeselectSimDialogFragment;->show(Landroid/app/FragmentManager;Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;)V

    .line 6962
    const/4 v4, 0x1

    return v4
.end method

.method private deviceSettingsChangedUpdateEntries()V
    .locals 2

    .prologue
    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isDeviceSettingsChanged:Z

    .line 906
    const-string v0, "ContactDetailFragment"

    const-string v1, "Device settings are changed so rebuild the data to update the videoCapability icon"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 910
    :cond_0
    return-void
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    const/4 v6, 0x0

    .line 3961
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3964
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 3965
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v3, v4, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 3967
    .local v3, "kind":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3968
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v2

    .line 3969
    .local v2, "isNosync":Z
    if-eqz v3, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3970
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v5, v3, v2}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3983
    .end local v2    # "isNosync":Z
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3984
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->getValidTitlePosition()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 3985
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->setValidTitlePosition(I)V

    .line 3991
    .end local v3    # "kind":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 3993
    if-eqz v1, :cond_1

    .line 3994
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v5}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3997
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3991
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3972
    .end local v1    # "i":I
    .restart local v2    # "isNosync":Z
    .restart local v3    # "kind":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v5}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3975
    .end local v2    # "isNosync":Z
    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3976
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v5, v3}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3978
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v5}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4001
    .end local v3    # "kind":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4002
    return-void
.end method

.method private getCallIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isVideoCall"    # Z

    .prologue
    .line 2772
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2774
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "videocall"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2775
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2777
    return-object v0
.end method

.method private getDefaultGroupId(Ljava/util/List;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    const-wide/16 v4, -0x1

    .line 1932
    const-wide/16 v0, -0x1

    .line 1933
    .local v0, "defaultGroupId":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/GroupMetaData;

    .line 1934
    .local v2, "group":Lcom/android/contacts/GroupMetaData;
    invoke-virtual {v2}, Lcom/android/contacts/GroupMetaData;->isDefaultGroup()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1936
    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    move-wide v0, v4

    .line 1940
    .end local v0    # "defaultGroupId":J
    .end local v2    # "group":Lcom/android/contacts/GroupMetaData;
    :cond_1
    return-wide v0

    .line 1937
    .restart local v0    # "defaultGroupId":J
    .restart local v2    # "group":Lcom/android/contacts/GroupMetaData;
    :cond_2
    invoke-virtual {v2}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v0

    goto :goto_0
.end method

.method private final getNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1945
    const/4 v2, 0x0

    .line 1946
    .local v2, "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1947
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1948
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1949
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v3, :cond_0

    .line 1950
    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_0

    .line 1954
    .end local v0    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method private handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V
    .locals 5
    .param p3, "groupId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 4010
    .local p1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "groupMetaData":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    if-nez p2, :cond_1

    .line 4024
    :cond_0
    :goto_0
    return-void

    .line 4014
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupMetaData;

    .line 4015
    .local v0, "group":Lcom/android/contacts/GroupMetaData;
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-nez v3, :cond_2

    .line 4017
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 4018
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4019
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isKnoxOrPersonalAccount()Z
    .locals 5

    .prologue
    .line 7024
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .line 7025
    .local v2, "entity":Landroid/content/Entity;
    invoke-virtual {v2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 7026
    .local v1, "entValues":Landroid/content/ContentValues;
    const-string v4, "account_type"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7028
    .local v0, "accountType":Ljava/lang/String;
    const-string v4, "vnd.sec.contact.phone_knox100"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "vnd.sec.contact.phone_personal"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7029
    :cond_1
    const/4 v4, 0x1

    .line 7031
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "entValues":Landroid/content/ContentValues;
    .end local v2    # "entity":Landroid/content/Entity;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isNumber4GCapable(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z
    .locals 2
    .param p1, "mainPhoneEntry"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    .line 2781
    sget-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2783
    :cond_0
    const/4 v0, 0x1

    .line 2785
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isProtocolValid(Landroid/content/ContentValues;)Z
    .locals 4
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 4104
    const-string v3, "data5"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4105
    .local v1, "protocolString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4113
    :goto_0
    return v2

    .line 4109
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4113
    const/4 v2, 0x1

    goto :goto_0

    .line 4110
    :catch_0
    move-exception v0

    .line 4111
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private isSharableData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 5864
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/im"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/website"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/relation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/note"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5876
    :cond_0
    const/4 v0, 0x1

    .line 5878
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 2790
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2792
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2794
    .local v1, "mWifi":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2797
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeAdditionalEmailEntry()V
    .locals 12

    .prologue
    const v11, 0x7f0e006e

    .line 3369
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 3371
    .local v1, "entryEmail":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    const-string v6, "vnd.android.cursor.item/email_v2"

    iput-object v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 3372
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->email:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3373
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 3374
    const v6, 0x7f020695

    iput v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 3376
    iget-object v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 3378
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableOptionToSelectEmailMMS4EmailAddress"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3380
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3381
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x7f08001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3382
    .local v2, "items":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3383
    .local v3, "menu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3385
    .local v0, "data":Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$35;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/contacts/detail/ContactDetailFragment$35;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 3394
    .local v4, "onClickListener":Landroid/view/View$OnClickListener;
    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3407
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "items":[Ljava/lang/String;
    .end local v3    # "menu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v5    # "res":Landroid/content/res/Resources;
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3409
    :cond_0
    return-void

    .line 3396
    :cond_1
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    const-string v8, "mailto"

    iget-object v9, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 3399
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->checkWebExAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3400
    const v6, 0x7f0206eb

    iput v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 3401
    iget-object v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getWebExIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 3402
    const v6, 0x7f0e02a4

    iput v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 3404
    :cond_2
    iput v11, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    goto :goto_0
.end method

.method private makeAdditionalEventEntry()V
    .locals 6

    .prologue
    .line 3320
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 3322
    .local v1, "entryBirthday":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    const-string v3, "vnd.android.cursor.item/contact_event"

    iput-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 3323
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->birthday:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3324
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0125

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 3325
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v4, 0x1040536

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 3327
    iget-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 3329
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Calendar_EnableLunar"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3331
    iget-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 3332
    .local v2, "typeIndex":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 3333
    iget-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3334
    .local v0, "date":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/contacts/util/DateUtils;->formatDateForLunar(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3342
    .end local v0    # "date":Ljava/lang/String;
    .end local v2    # "typeIndex":I
    :goto_0
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 3343
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3345
    :cond_0
    return-void

    .line 3337
    .restart local v2    # "typeIndex":I
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_0

    .line 3340
    .end local v2    # "typeIndex":I
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_0
.end method

.method private makeAdditionalWebsiteEntry(Ljava/lang/String;)V
    .locals 6
    .param p1, "websiteData"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0e0124

    .line 3349
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 3350
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 3352
    .local v0, "entryWeb":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    const-string v2, "vnd.android.cursor.item/website"

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 3353
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 3354
    iput-object p1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3355
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 3356
    const v2, 0x7f020696

    iput v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 3358
    new-instance v1, Landroid/net/WebAddress;

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 3359
    .local v1, "webAddress":Landroid/net/WebAddress;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 3361
    iput v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 3363
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3365
    .end local v0    # "entryWeb":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v1    # "webAddress":Landroid/net/WebAddress;
    :cond_0
    return-void
.end method

.method private makeAlerttoneEntry(Ljava/lang/String;)V
    .locals 5
    .param p1, "alerttoneName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 3853
    if-nez p1, :cond_1

    .line 3894
    :cond_0
    :goto_0
    return-void

    .line 3857
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0254

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3862
    :cond_2
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$44;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragment$44;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 3880
    .local v1, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 3882
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3883
    iput-object p1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3884
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0e02a8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 3885
    const-string v2, "vnd.android.cursor.item/alerttone"

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 3886
    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3887
    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 3888
    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 3890
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3891
    const/4 v2, 0x1

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z
    invoke-static {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1202(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z

    .line 3893
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlerttoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private makeFreeTextEntry()V
    .locals 3

    .prologue
    .line 3290
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$34;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$34;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 3298
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3299
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFreeTextEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3301
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFreeTextEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    const-string v2, "rcs_free_text"

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 3302
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFreeTextEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3303
    return-void
.end method

.method private makeIPCallEntry()V
    .locals 6

    .prologue
    const v5, 0x7f0e039c

    .line 3469
    const/4 v2, 0x0

    .line 3470
    .local v2, "onClickListener":Landroid/view/View$OnClickListener;
    const/4 v1, 0x0

    .line 3471
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "ContactDetailFragment"

    const-string v4, "makeIpCallEntry"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 3474
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$37;

    .end local v2    # "onClickListener":Landroid/view/View$OnClickListener;
    invoke-direct {v2, p0}, Lcom/android/contacts/detail/ContactDetailFragment$37;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 3486
    .restart local v2    # "onClickListener":Landroid/view/View$OnClickListener;
    :goto_0
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 3487
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3488
    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 3489
    const v3, 0x7f02069b

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 3490
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3491
    iput v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 3492
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mExtraPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3493
    return-void

    .line 3483
    .end local v0    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method private makeRingtoneEntry(Ljava/lang/String;)V
    .locals 5
    .param p1, "ringtoneName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 3802
    if-nez p1, :cond_1

    .line 3844
    :cond_0
    :goto_0
    return-void

    .line 3806
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0254

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3811
    :cond_2
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$43;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragment$43;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 3830
    .local v1, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 3832
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3833
    iput-object p1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3834
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0e028c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 3835
    const-string v2, "vnd.android.cursor.item/ringtone"

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 3836
    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3837
    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 3838
    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 3840
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3841
    const/4 v2, 0x1

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z
    invoke-static {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1202(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z

    .line 3843
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private makeVibrationEntry(Ljava/lang/String;)V
    .locals 5
    .param p1, "vibrationUri"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 3897
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getCustomVibrationName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3926
    :goto_0
    return-void

    .line 3900
    :cond_0
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$45;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragment$45;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 3913
    .local v1, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 3915
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getCustomVibrationName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3916
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0e02a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 3917
    const-string v2, "vnd.android.cursor.item/vibration"

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 3918
    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3919
    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 3920
    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 3922
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3923
    const/4 v2, 0x1

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z
    invoke-static {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1202(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z

    .line 3925
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVibrationEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private makeVideoCallEntry()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 3412
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3413
    .local v4, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 3414
    .local v5, "onClickListener":Landroid/view/View$OnClickListener;
    const/4 v3, 0x0

    .line 3416
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 3417
    .local v0, "detailViewEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasIPCall:Z

    if-eqz v6, :cond_1

    .line 3419
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0e039c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3423
    :cond_1
    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3424
    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3428
    .end local v0    # "detailViewEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    .line 3429
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$36;

    .end local v5    # "onClickListener":Landroid/view/View$OnClickListener;
    invoke-direct {v5, p0, v4}, Lcom/android/contacts/detail/ContactDetailFragment$36;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;)V

    .line 3442
    .restart local v5    # "onClickListener":Landroid/view/View$OnClickListener;
    :goto_1
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 3443
    .local v1, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v5, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3444
    iput-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 3445
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 3446
    const-string v6, "feature_skt"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3447
    const v6, 0x7f0206e5

    iput v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 3459
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0e02a3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3461
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mExtraPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3462
    return-void

    .line 3439
    .end local v1    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_4
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getVideoCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_1

    .line 3448
    .restart local v1    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_5
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3449
    const v6, 0x7f0206e4

    iput v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto :goto_2

    .line 3450
    :cond_6
    const-string v6, "feature_kt"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3451
    const v6, 0x7f0206e3

    iput v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 3452
    const-string v6, "vnd.android.cursor.item/vcall-address"

    iput-object v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 3453
    iget-object v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_3

    .line 3454
    iget-object v7, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v8, "video_number"

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 3457
    :cond_7
    const v6, 0x7f0206e2

    iput v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto :goto_2
.end method

.method private resetDefaultLine(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 6967
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->ResetDefaultLineIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 6968
    .local v0, "setIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6969
    return-void
.end method

.method private selectSimForDS(JII)Z
    .locals 9
    .param p1, "id"    # J
    .param p3, "menuPosition"    # I
    .param p4, "primaryLine"    # I

    .prologue
    const v8, 0x7f0e0281

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6898
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6899
    .local v0, "args":Landroid/os/Bundle;
    const-string v6, "id"

    invoke-virtual {v0, v6, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6900
    const-string v6, "menuPosition"

    invoke-virtual {v0, v6, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6902
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    .line 6904
    .local v3, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    if-nez v3, :cond_0

    .line 6916
    :goto_0
    return v5

    .line 6906
    :cond_0
    invoke-virtual {v3, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "0"

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move v1, v4

    .line 6907
    .local v1, "isSim1LineAvailable":Z
    :goto_1
    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "0"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    .line 6909
    .local v2, "isSim2LineAvailable":Z
    :goto_2
    if-ne p4, v4, :cond_4

    if-eqz v2, :cond_4

    .line 6910
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    sget-object v6, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_ONLY_SIM1:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v5, p0, v8, v6, v0}, Lcom/android/contacts/editor/SelectSimDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    :cond_1
    :goto_3
    move v5, v4

    .line 6916
    goto :goto_0

    .end local v1    # "isSim1LineAvailable":Z
    .end local v2    # "isSim2LineAvailable":Z
    :cond_2
    move v1, v5

    .line 6906
    goto :goto_1

    .restart local v1    # "isSim1LineAvailable":Z
    :cond_3
    move v2, v5

    .line 6907
    goto :goto_2

    .line 6911
    .restart local v2    # "isSim2LineAvailable":Z
    :cond_4
    if-nez p4, :cond_5

    if-eqz v1, :cond_5

    .line 6912
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    sget-object v6, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_ONLY_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v5, p0, v8, v6, v0}, Lcom/android/contacts/editor/SelectSimDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_3

    .line 6913
    :cond_5
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 6914
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    sget-object v6, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SIM1_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v5, p0, v8, v6, v0}, Lcom/android/contacts/editor/SelectSimDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_3
.end method

.method private setDefaultContactMethod(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 5937
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 5938
    .local v0, "setIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5939
    return-void
.end method

.method private setDefaultLine(JILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "simId"    # I
    .param p4, "numberData"    # Ljava/lang/String;

    .prologue
    .line 6941
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/contacts/ContactSaveService;->createSetDefaultLineIntent(Landroid/content/Context;JILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 6942
    .local v0, "setIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6943
    return-void
.end method

.method private setEabPresenceAvailabilityEntry(Landroid/content/Entity$NamedContentValues;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 6
    .param p1, "subValue"    # Landroid/content/Entity$NamedContentValues;
    .param p2, "mainPhoneEntry"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    .line 3207
    const-string v3, "ContactDetailFragment"

    const-string v4, "setEabPresenceAvailabilityEntry Enter"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    iget-object v2, p1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 3209
    .local v2, "entryValues":Landroid/content/ContentValues;
    const-string v3, "data5"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3210
    .local v1, "capability":Ljava/lang/String;
    const-string v3, "data6"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3211
    .local v0, "availability":Ljava/lang/String;
    const-string v3, "ContactDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MDN = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CAPABILITY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AVAILABILITY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->toShowVideoCallingGroup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3215
    const-string v3, "ContactDetailFragment"

    const-string v4, "USER IS DE-PROVISIONED"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    sget-object v3, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3271
    :goto_0
    return-void

    .line 3220
    :cond_0
    if-eqz v0, :cond_3

    .line 3224
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3225
    sget-object v3, Lcom/android/contacts/detail/ContactDetailFragment;->numberavailability:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3233
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->fetchCapabilityDiscovery()V

    .line 3234
    sget v3, Lcom/android/contacts/detail/ContactDetailFragment;->mCapabilityDiscover:I

    if-nez v3, :cond_6

    .line 3235
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v3

    iget-object v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isNumSendSubscribe(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3236
    const-string v3, "ContactDetailFragment"

    const-string v4, "EABContactsDaemon.mCapabilityDiscover is OFF so setting the number as available "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->checkDeviceSettingsForEAB()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3239
    const-string v3, "ContactDetailFragment"

    const-string v4, "Show Green icon as device settings are proper"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    sget-object v3, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3226
    :cond_2
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3227
    sget-object v3, Lcom/android/contacts/detail/ContactDetailFragment;->numberavailability:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3230
    :cond_3
    sget-object v3, Lcom/android/contacts/detail/ContactDetailFragment;->numberavailability:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3242
    :cond_4
    const-string v3, "ContactDetailFragment"

    const-string v4, "Show grey icon as one of the device setting is disabled"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    sget-object v3, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3246
    :cond_5
    sget-object v3, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3251
    :cond_6
    if-eqz v1, :cond_9

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 3252
    const-string v3, "3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3253
    const-string v3, "ContactDetailFragment"

    const-string v4, "Number is capable"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->checkDeviceSettingsForEAB()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3256
    const-string v3, "ContactDetailFragment"

    const-string v4, "Show Green icon as device settings are proper"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    sget-object v3, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3270
    :goto_2
    const-string v3, "ContactDetailFragment"

    const-string v4, "setEabPresenceAvailabilityEntry Exit"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3259
    :cond_7
    const-string v3, "ContactDetailFragment"

    const-string v4, "Show grey icon as one of the device setting is disabled"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    sget-object v3, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3263
    :cond_8
    const-string v3, "ContactDetailFragment"

    const-string v4, "Number is not capable"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    sget-object v3, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3267
    :cond_9
    const-string v3, "ContactDetailFragment"

    const-string v4, "Number is not capable"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    sget-object v3, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private setupFlattenedList()V
    .locals 2

    .prologue
    .line 3607
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3608
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLayoutMode:I

    sget-object v1, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->VIEW_PAGER_AND_TAB_CAROUSEL:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3610
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3615
    :cond_1
    sget-boolean v0, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v0, :cond_2

    .line 3616
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3617
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addVideoCallingEnable()V

    .line 3622
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3624
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addPhoneticName()V

    .line 3627
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3628
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFreeTextEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3632
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3634
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    if-eqz v0, :cond_5

    .line 3635
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->setValidTitlePosition(I)V

    .line 3638
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3639
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mExtraPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3640
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3641
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mChatOnEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3642
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVAppEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3643
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3644
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3645
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mJoinEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3646
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3647
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3649
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addNetworks()V

    .line 3651
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3652
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3653
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3654
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3655
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3656
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlerttoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3657
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVibrationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3658
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3659
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 3661
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addLastSeparator()V

    .line 3662
    return-void
.end method

.method private shareContactMethod(I)V
    .locals 8
    .param p1, "viewEntryPosition"    # I

    .prologue
    .line 5985
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 5986
    .local v0, "detailViewEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 5989
    .local v3, "textToShare":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5999
    :goto_0
    return-void

    .line 5992
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5994
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "sms_body"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 5995
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5996
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 5997
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "ContactDetailFragment"

    const-string v5, "SMS activity is not found"

    invoke-static {v4, v5, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "adapter"    # Landroid/widget/ListAdapter;
    .param p3, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 4121
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4122
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 4123
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 4124
    invoke-virtual {v0, p2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4125
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 4129
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$46;

    invoke-direct {v1, p0, p3, v0}, Lcom/android/contacts/detail/ContactDetailFragment$46;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4137
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 4138
    return-void
.end method

.method private showPhotoActionPopup(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;
    .param p4, "isnamecard"    # Z

    .prologue
    .line 6750
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6751
    :cond_0
    const/4 v1, 0x4

    invoke-static {p1, p2, p3, v1}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    .line 6753
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 6754
    check-cast v0, Landroid/app/Activity;

    .line 6755
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6761
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 6759
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showPhotoActionPopup(Landroid/view/View;)V
    .locals 5
    .param p1, "photoView"    # Landroid/view/View;

    .prologue
    .line 6732
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6734
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 6735
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_1

    .line 6736
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 6738
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 6739
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 6742
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v2, p1, v3, v4}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    .line 6743
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 6745
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method private validateDeviceSettings()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 876
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->fetchCapabilityDiscovery()V

    .line 878
    iget-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mttySettingStatus:Z

    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z

    if-eq v2, v3, :cond_2

    .line 879
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isDeviceSettingsChanged:Z

    .line 880
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mttySettingStatus:Z

    .line 899
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isDeviceSettingsChanged:Z

    if-eqz v0, :cond_1

    .line 900
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->deviceSettingsChangedUpdateEntries()V

    .line 902
    :cond_1
    return-void

    .line 881
    :cond_2
    iget-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVideoCallingSettingStatus:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isSettingsVideoCallEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 882
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isDeviceSettingsChanged:Z

    .line 883
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isSettingsVideoCallEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVideoCallingSettingStatus:Z

    goto :goto_0

    .line 884
    :cond_3
    iget-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLVCSettingStatus:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isVoiceOverLTEEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 885
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isDeviceSettingsChanged:Z

    .line 886
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isVoiceOverLTEEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLVCSettingStatus:Z

    goto :goto_0

    .line 887
    :cond_4
    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDiscoverySettingStatus:Z

    sget v2, Lcom/android/contacts/detail/ContactDetailFragment;->mCapabilityDiscover:I

    if-ne v2, v0, :cond_5

    move v2, v0

    :goto_1
    if-eq v3, v2, :cond_7

    .line 888
    const-string v2, "ContactDetailFragment"

    const-string v3, "Capability Discovery setting has changed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isDeviceSettingsChanged:Z

    .line 890
    sget v2, Lcom/android/contacts/detail/ContactDetailFragment;->mCapabilityDiscover:I

    if-ne v2, v0, :cond_6

    :goto_2
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDiscoverySettingStatus:Z

    goto :goto_0

    :cond_5
    move v2, v1

    .line 887
    goto :goto_1

    :cond_6
    move v0, v1

    .line 890
    goto :goto_2

    .line 891
    :cond_7
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMobileDataSettingStatus:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isMobileDataEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_8

    .line 892
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isDeviceSettingsChanged:Z

    .line 893
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMobileDataSettingStatus:Z

    goto :goto_0

    .line 894
    :cond_8
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeSettingStatus:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isAirplaneModeEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 895
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isDeviceSettingsChanged:Z

    .line 896
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isAirplaneModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeSettingStatus:Z

    goto :goto_0
.end method


# virtual methods
.method protected bindData()V
    .locals 27

    .prologue
    .line 1466
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 1905
    :cond_0
    :goto_0
    return-void

    .line 1471
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mTwEmptyView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 1472
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mTwEmptyView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1475
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3

    .line 1476
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1479
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1480
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1483
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mTransitionAnimationRequested:Z

    if-eqz v5, :cond_5

    .line 1484
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v5, :cond_8

    const/4 v5, 0x1

    :goto_1
    invoke-static {v6, v5}, Lcom/android/contacts/widget/TransitionAnimationView;->startAnimation(Landroid/view/View;Z)V

    .line 1485
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mTransitionAnimationRequested:Z

    .line 1488
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v5, :cond_9

    .line 1489
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    if-eqz v5, :cond_6

    .line 1491
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->setVisibility(I)V

    .line 1493
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoUpdateView:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 1494
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoUpdateView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1496
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1497
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-eqz v5, :cond_0

    .line 1498
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1484
    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    .line 1504
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->createEntityDeltaList()Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 1505
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v5, :cond_0

    .line 1509
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1510
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/EntityDelta;

    .line 1511
    .local v12, "delta":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v12}, Lcom/android/contacts/model/EntityDelta;->setProfileQueryUri()V

    goto :goto_2

    .line 1514
    .end local v12    # "delta":Lcom/android/contacts/model/EntityDelta;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsDirectoryContact:Z

    .line 1515
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v5, v6}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->setState(Lcom/android/contacts/model/EntityDeltaList;)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsDirectoryContact:Z

    invoke-virtual {v5, v6}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->setDirectoryContact(Z)V

    .line 1517
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getPhotoBinaryData()[B

    move-result-object v22

    .line 1520
    .local v22, "photoBiteArray":[B
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_20

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    .line 1522
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isPrivateContact()Z

    move-result v5

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isChangedNamecard()Z

    move-result v5

    if-nez v5, :cond_21

    const/16 v17, 0x1

    .line 1523
    .local v17, "isNamecard":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    if-eqz v5, :cond_10

    .line 1524
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v6, 0x7f09014d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 1526
    .local v21, "overlayView":Landroid/view/View;
    if-eqz v21, :cond_f

    .line 1528
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isAvailableOCR(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1529
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/widget/FrameLayout;

    .line 1530
    .local v23, "photoContainer":Landroid/widget/FrameLayout;
    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1531
    if-eqz v17, :cond_22

    .line 1532
    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1533
    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1539
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1540
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    check-cast v5, Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1542
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 1546
    .end local v23    # "photoContainer":Landroid/widget/FrameLayout;
    :cond_c
    if-eqz v22, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_23

    const/16 v18, 0x1

    .line 1547
    .local v18, "isZoominPhotoPopup":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->getWritableEntityIndex()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    if-eqz v18, :cond_24

    .line 1548
    :cond_e
    new-instance v19, Lcom/android/contacts/detail/ContactDetailFragment$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v18

    move-object/from16 v3, v22

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$5;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Z[BZ)V

    .line 1564
    .local v19, "listener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1565
    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1594
    .end local v18    # "isZoominPhotoPopup":Z
    .end local v19    # "listener":Landroid/view/View$OnClickListener;
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoUpdateView:Landroid/view/View;

    if-eqz v5, :cond_10

    .line 1595
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_10

    .line 1597
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoUpdateView:Landroid/view/View;

    const v6, 0x7f090111

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoUpdateView:Landroid/view/View;

    const v9, 0x7f090110

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {v7, v8, v5, v6}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setSocialSnippet(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v6, 0x7f0903ce

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 1601
    .local v26, "updatePhotoOverlayView":Landroid/view/View;
    if-eqz v26, :cond_10

    .line 1602
    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1603
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/contacts/detail/ContactDetailFragment$7;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1620
    .end local v21    # "overlayView":Landroid/view/View;
    .end local v26    # "updatePhotoOverlayView":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    if-eqz v5, :cond_12

    .line 1625
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    if-eqz v5, :cond_26

    .line 1626
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->setVisibility(I)V

    .line 1628
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoUpdateView:Landroid/view/View;

    if-eqz v5, :cond_11

    .line 1629
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    if-eqz v5, :cond_25

    .line 1630
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoUpdateView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1635
    :cond_11
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-virtual {v10}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Lcom/sec/android/app/contacts/widget/AnimatableImageView;ZLcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;

    .line 1645
    :cond_12
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->buildEntries()V

    .line 1648
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    if-eqz v5, :cond_13

    .line 1649
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v5

    if-nez v5, :cond_13

    .line 1650
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    const/4 v6, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/contacts/util/MotionCallManager;->updateDirectCall(ILjava/lang/String;)V

    .line 1655
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1656
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1662
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1664
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1667
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1669
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1672
    :cond_14
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableBPMFSortList"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1674
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1677
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_27

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    .line 1678
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_28

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    .line 1681
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->setupFlattenedList()V

    .line 1683
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-nez v5, :cond_17

    .line 1684
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    .line 1685
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1689
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v5, :cond_18

    .line 1690
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1691
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    .line 1694
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->notifyDataSetChanged()V

    .line 1696
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->configureQuickFix()V

    .line 1698
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->isShowing(Landroid/app/FragmentManager;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1699
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->notifyDataChange(Landroid/app/FragmentManager;)V

    .line 1702
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoContainerView:Lcom/android/contacts/widget/ProportionalLayout;

    if-eqz v5, :cond_1a

    .line 1703
    new-instance v25, Landroid/util/TypedValue;

    invoke-direct/range {v25 .. v25}, Landroid/util/TypedValue;-><init>()V

    .line 1704
    .local v25, "tv":Landroid/util/TypedValue;
    const/4 v5, 0x4

    move-object/from16 v0, v25

    iput v5, v0, Landroid/util/TypedValue;->type:I

    .line 1705
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    if-eqz v5, :cond_29

    .line 1706
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00a4

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1712
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoContainerView:Lcom/android/contacts/widget/ProportionalLayout;

    invoke-virtual/range {v25 .. v25}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/widget/ProportionalLayout;->setRatio(F)V

    .line 1715
    .end local v25    # "tv":Landroid/util/TypedValue;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1e

    .line 1716
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    instance-of v5, v5, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v5, :cond_2b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1718
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v6, 0x7f090143

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1719
    .local v15, "headerEditor":Landroid/widget/LinearLayout;
    if-eqz v15, :cond_1c

    .line 1720
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v6, 0x7f090145

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1721
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/contacts/detail/ContactDetailFragment$8;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1755
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v8, 0x7f090140

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v6, v7, v5}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v8, 0x7f090141

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v6, v7, v5}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setCompanyName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v6, 0x7f090147

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    .line 1761
    .local v14, "favoritesStar":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v6, 0x7f090142

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 1763
    .local v13, "favoritesContainer":Landroid/widget/LinearLayout;
    if-eqz v14, :cond_1d

    .line 1764
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/widget/CheckBox;->setHoverPopupType(I)V

    .line 1765
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v14, v6}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/CheckBox;Landroid/content/Context;)V

    .line 1766
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v20

    .line 1767
    .local v20, "lookupUri":Landroid/net/Uri;
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$9;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/net/Uri;)V

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1782
    .end local v20    # "lookupUri":Landroid/net/Uri;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v6, 0x7f090141

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1784
    .local v11, "companyTextView":Landroid/widget/TextView;
    if-eqz v11, :cond_1e

    if-eqz v13, :cond_1e

    .line 1785
    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2a

    .line 1786
    const/16 v5, 0x31

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1873
    .end local v11    # "companyTextView":Landroid/widget/TextView;
    .end local v13    # "favoritesContainer":Landroid/widget/LinearLayout;
    .end local v14    # "favoritesStar":Landroid/widget/CheckBox;
    .end local v15    # "headerEditor":Landroid/widget/LinearLayout;
    :cond_1e
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1879
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1880
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    if-nez v5, :cond_31

    .line 1881
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1882
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1896
    :goto_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1897
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    instance-of v5, v5, Lcom/android/contacts/activities/ContactDetailActivity;

    if-eqz v5, :cond_1f

    .line 1898
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ContactDetailActivity;->getSvcUtils()Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v24

    .line 1899
    .local v24, "svcUtils":Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    if-eqz v24, :cond_1f

    .line 1900
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->refreshEntriesFromServer(Ljava/util/ArrayList;)V

    .line 1904
    .end local v24    # "svcUtils":Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    :cond_1f
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsBinded:Z

    goto/16 :goto_0

    .line 1520
    .end local v17    # "isNamecard":Z
    :cond_20
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1522
    :cond_21
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1535
    .restart local v17    # "isNamecard":Z
    .restart local v21    # "overlayView":Landroid/view/View;
    .restart local v23    # "photoContainer":Landroid/widget/FrameLayout;
    :cond_22
    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0082

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1536
    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0082

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_5

    .line 1546
    .end local v23    # "photoContainer":Landroid/widget/FrameLayout;
    :cond_23
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 1567
    .restart local v18    # "isZoominPhotoPopup":Z
    :cond_24
    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1568
    const/4 v5, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1632
    .end local v18    # "isZoominPhotoPopup":Z
    .end local v21    # "overlayView":Landroid/view/View;
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoUpdateView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 1638
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->setVisibility(I)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoUpdateView:Landroid/view/View;

    if-eqz v5, :cond_12

    .line 1640
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoUpdateView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 1677
    :cond_27
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 1678
    :cond_28
    const/4 v5, 0x0

    goto/16 :goto_b

    .line 1709
    .restart local v25    # "tv":Landroid/util/TypedValue;
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c009e

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto/16 :goto_c

    .line 1788
    .end local v25    # "tv":Landroid/util/TypedValue;
    .restart local v11    # "companyTextView":Landroid/widget/TextView;
    .restart local v13    # "favoritesContainer":Landroid/widget/LinearLayout;
    .restart local v14    # "favoritesStar":Landroid/widget/CheckBox;
    .restart local v15    # "headerEditor":Landroid/widget/LinearLayout;
    :cond_2a
    const/16 v5, 0x11

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_d

    .line 1792
    .end local v11    # "companyTextView":Landroid/widget/TextView;
    .end local v13    # "favoritesContainer":Landroid/widget/LinearLayout;
    .end local v14    # "favoritesStar":Landroid/widget/CheckBox;
    .end local v15    # "headerEditor":Landroid/widget/LinearLayout;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v6, 0x7f090143

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1794
    .restart local v15    # "headerEditor":Landroid/widget/LinearLayout;
    if-eqz v15, :cond_2d

    .line 1795
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1796
    const/16 v5, 0x8

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1800
    :goto_f
    const v5, 0x7f090145

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 1801
    const v5, 0x7f090145

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1803
    :cond_2c
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/contacts/detail/ContactDetailFragment$10;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1836
    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v8, 0x7f090140

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v6, v7, v5}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 1839
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v8, 0x7f090141

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v6, v7, v5}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setCompanyName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 1841
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v6, 0x7f090147

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    .line 1842
    .restart local v14    # "favoritesStar":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v6, 0x7f090142

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 1844
    .restart local v13    # "favoritesContainer":Landroid/widget/LinearLayout;
    if-eqz v14, :cond_2e

    .line 1845
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/widget/CheckBox;->setHoverPopupType(I)V

    .line 1846
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v14, v6}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/CheckBox;Landroid/content/Context;)V

    .line 1847
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v20

    .line 1848
    .restart local v20    # "lookupUri":Landroid/net/Uri;
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1, v14}, Lcom/android/contacts/detail/ContactDetailFragment$11;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/net/Uri;Landroid/widget/CheckBox;)V

    invoke-virtual {v14, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1861
    .end local v20    # "lookupUri":Landroid/net/Uri;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v6, 0x7f090141

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1863
    .restart local v11    # "companyTextView":Landroid/widget/TextView;
    if-eqz v11, :cond_1e

    if-eqz v13, :cond_1e

    .line 1864
    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_30

    .line 1865
    const/16 v5, 0x31

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_d

    .line 1798
    .end local v11    # "companyTextView":Landroid/widget/TextView;
    .end local v13    # "favoritesContainer":Landroid/widget/LinearLayout;
    .end local v14    # "favoritesStar":Landroid/widget/CheckBox;
    :cond_2f
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_f

    .line 1867
    .restart local v11    # "companyTextView":Landroid/widget/TextView;
    .restart local v13    # "favoritesContainer":Landroid/widget/LinearLayout;
    .restart local v14    # "favoritesStar":Landroid/widget/CheckBox;
    :cond_30
    const/16 v5, 0x11

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_d

    .line 1884
    .end local v11    # "companyTextView":Landroid/widget/TextView;
    .end local v13    # "favoritesContainer":Landroid/widget/LinearLayout;
    .end local v14    # "favoritesStar":Landroid/widget/CheckBox;
    .end local v15    # "headerEditor":Landroid/widget/LinearLayout;
    :cond_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1885
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_e

    .line 1888
    :cond_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_e
.end method

.method public checkMobileDataPopup()V
    .locals 5

    .prologue
    .line 3059
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3061
    .local v1, "video_calling_switch":Landroid/content/SharedPreferences;
    const-string v2, "video_switch"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3064
    .local v0, "isVideoCallingOn":Ljava/lang/Boolean;
    const-string v2, "ContactDetailFragment"

    const-string v3, "Inside Mobile data"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$25;

    invoke-direct {v4, p0}, Lcom/android/contacts/detail/ContactDetailFragment$25;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->onMobileDataDialogPositiveClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3077
    return-void
.end method

.method public disableTouchInterceptor()V
    .locals 2

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    :cond_0
    return-void
.end method

.method public ehrpdOn()V
    .locals 3

    .prologue
    .line 3020
    const-string v1, "ContactDetailFragment"

    const-string v2, "Inside EHRPD and is wifiEnabled"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3022
    .local v0, "alert1":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e04ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3023
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$22;

    invoke-direct {v2, p0}, Lcom/android/contacts/detail/ContactDetailFragment$22;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3032
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$23;

    invoke-direct {v2, p0}, Lcom/android/contacts/detail/ContactDetailFragment$23;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3042
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$24;

    invoke-direct {v2, p0}, Lcom/android/contacts/detail/ContactDetailFragment$24;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3055
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3056
    return-void
.end method

.method public enableMobileData()V
    .locals 3

    .prologue
    .line 2952
    const-string v1, "ContactDetailFragment"

    const-string v2, "enabling mobiledata"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2956
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 2957
    return-void
.end method

.method public enableTouchInterceptor(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1351
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1353
    :cond_0
    return-void
.end method

.method public fetchCapabilityDiscovery()V
    .locals 4

    .prologue
    .line 2942
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v2, "Capability_Discovery"

    const-string v3, "Capability_Discovery"

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2945
    .local v0, "capaDiscovery":Ljava/lang/String;
    const-string v1, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCapabilityDiscover is  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2947
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/contacts/detail/ContactDetailFragment;->mCapabilityDiscover:I

    .line 2949
    :cond_0
    return-void
.end method

.method protected getContactData()Lcom/android/contacts/ContactLoader$Result;
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFirstListItemOffset()I
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getFirstListItemOffset(Landroid/widget/ListView;)I

    move-result v0

    return v0
.end method

.method public getFromDialer()Z
    .locals 1

    .prologue
    .line 7021
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    return v0
.end method

.method protected getListener()Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public handleAlerttonePicked(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    .line 1135
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1136
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;

    .line 1140
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->createSetAlerttone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1141
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1142
    const/4 v1, 0x1

    return v1

    .line 1138
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleKeyDown(I)Z
    .locals 13
    .param p1, "keyCode"    # I

    .prologue
    .line 6034
    packed-switch p1, :pswitch_data_0

    .line 6115
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 6037
    :pswitch_0
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v11

    .line 6039
    .local v11, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 6047
    .end local v11    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v9

    .line 6048
    .local v9, "index":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_7

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0, v9}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    if-eqz v0, :cond_7

    .line 6049
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0, v9}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 6051
    .local v8, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    if-eqz v8, :cond_2

    iget-object v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 6052
    iget-object v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 6053
    .local v6, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6054
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6055
    const/4 v0, 0x1

    goto :goto_0

    .line 6057
    .end local v6    # "action":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    iget-object v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e031b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6058
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 6059
    .local v12, "vcallentry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    if-eqz v12, :cond_4

    iget-object v0, v12, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 6060
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    const-string v1, "tel"

    iget-object v2, v12, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6062
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "videocall"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6063
    const/high16 v0, 0x10000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6064
    invoke-virtual {p0, v10}, Lcom/android/contacts/detail/ContactDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 6065
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 6068
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "vcallentry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_3
    if-eqz v8, :cond_6

    iget-object v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e039c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6070
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x3

    const v3, 0x7f0e039c

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    .line 6096
    .end local v8    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    .line 6097
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 6098
    .local v7, "callentry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    if-eqz v7, :cond_a

    iget-object v0, v7, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_a

    .line 6099
    iget-object v0, v7, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 6100
    .restart local v6    # "action":Ljava/lang/String;
    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6101
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, v7, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6105
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 6073
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "callentry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .restart local v8    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_6
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasDualCall:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v0, :cond_4

    if-eqz v8, :cond_4

    .line 6074
    const-string v0, "vnd.android.cursor.item/phone_v2"

    iget-object v1, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6075
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    const-string v1, "vnd.sec.contact.sim"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    const-string v1, "vnd.sec.contact.sim2"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6077
    iget-object v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->createSelectSimDialog(Ljava/lang/String;)V

    goto :goto_2

    .line 6081
    .end local v8    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 6083
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6085
    .restart local v10    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6086
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 6087
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6089
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v0, :cond_9

    .line 6090
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v10

    .line 6091
    .restart local v10    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6093
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 6111
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 6043
    .end local v9    # "index":I
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 6034
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public handleRingtonePicked(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    .line 1118
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1119
    :cond_0
    const/4 v0, 0x0

    .line 1126
    .local v0, "ringtone":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v3, v0}, Lcom/android/contacts/ContactSaveService;->createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1127
    .local v1, "serviceIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1130
    const/4 v2, 0x1

    return v2

    .line 1121
    .end local v0    # "ringtone":Ljava/lang/String;
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1122
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getMediaContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1124
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ringtone":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v0    # "ringtone":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 2865
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->viewForVideoCall:Landroid/view/View;

    if-nez v3, :cond_1

    .line 2916
    :cond_0
    :goto_0
    return-void

    .line 2869
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->viewForVideoCall:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 2870
    .local v1, "entry":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 2872
    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2874
    .local v0, "detailViewEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2876
    :pswitch_0
    const-string v3, "TAG"

    const-string v4, "inside HANDLE_STATE_INIT"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setState(I)V

    goto :goto_0

    .line 2880
    :pswitch_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setState(I)V

    goto :goto_0

    .line 2883
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->checkMobileDataPopup()V

    goto :goto_0

    .line 2886
    :pswitch_3
    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setState(I)V

    goto :goto_0

    .line 2890
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->voiceOverLTEPopup()V

    goto :goto_0

    .line 2893
    :pswitch_5
    const-string v3, "ContactDetailFragment"

    const-string v4, "video calling on"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    const v3, 0x7f0206e6

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthActionIcon:I

    .line 2895
    sget-object v3, Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2896
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-eqz v3, :cond_2

    .line 2897
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->notifyDataSetChanged()V

    .line 2898
    :cond_2
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setState(I)V

    goto :goto_0

    .line 2901
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->videoCallingPopup()V

    goto :goto_0

    .line 2904
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->ehrpdOn()V

    goto :goto_0

    .line 2907
    :pswitch_8
    const-string v3, "ContactDetailFragment"

    const-string v4, "initiating video call"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-eqz v3, :cond_0

    .line 2910
    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthIntent:Landroid/content/Intent;

    .line 2911
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 2913
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-interface {v3, v2}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    goto :goto_0

    .line 2874
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public handleVibrationPicked(Landroid/net/Uri;)V
    .locals 6
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    .line 1055
    const/4 v1, 0x0

    .line 1056
    .local v1, "uriString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1057
    const-string v2, "ContactDetailFragment"

    const-string v3, "Nothing returned"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1062
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v2, "setVibration"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    const-string v2, "contactUri"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1064
    const-string v2, "customVibration"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Intent;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1075
    return-void

    .line 1059
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hideSoftKeyboard(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5733
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5734
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5735
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5737
    :cond_0
    return-void
.end method

.method protected inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isAirplaneModeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2935
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeon:Z

    .line 2937
    const-string v0, "ContactDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checking AirplaneModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeon:Z

    return v0
.end method

.method public isDirectoryEntry()Z
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEarJackConnected()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2972
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "headset_plugged"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2973
    .local v0, "earJackConnected":I
    const-string v2, "ContactDetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings earjack connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMobileDataEnabled()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2919
    const-string v6, "ContactDetailFragment"

    const-string v7, "checking mobiledata"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2923
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2924
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getMobileDataEnabled"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2925
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2926
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 2927
    .local v4, "mobileData":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2931
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "mobileData":Ljava/lang/Boolean;
    :goto_0
    return v5

    .line 2928
    :catch_0
    move-exception v2

    .line 2929
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isSettingsVideoCallEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2966
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volteVTEnabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2968
    .local v0, "voltevideocalling":I
    const-string v2, "ContactDetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voltevideocalling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVoiceOverLTEEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2960
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voicecall_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2961
    .local v0, "voltevalue":I
    const-string v2, "ContactDetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings Voice over LTE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 5708
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 5709
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 5704
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 983
    if-eq p2, v7, :cond_1

    if-eq p2, v8, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 994
    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1009
    :pswitch_1
    if-ne p2, v8, :cond_3

    .line 1010
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSoundPickerIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1011
    .local v1, "intent":Landroid/content/Intent;
    const/4 v6, 0x3

    invoke-virtual {p0, v1, v6}, Lcom/android/contacts/detail/ContactDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 996
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    const-string v6, "FILE_URI"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 998
    .local v3, "pickedUri":Landroid/net/Uri;
    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->handleRingtonePicked(Landroid/net/Uri;)Z

    move-result v2

    .line 1001
    .local v2, "isValid":Z
    if-eqz v2, :cond_0

    .line 1002
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/contacts/ContactSaveService;->createSetMediaRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 1004
    .local v4, "serviceIntentMedia":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1014
    .end local v2    # "isValid":Z
    .end local v3    # "pickedUri":Landroid/net/Uri;
    .end local v4    # "serviceIntentMedia":Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.sec.android.contacts.action.ringtonerecommendation"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1015
    .local v0, "i":Landroid/content/Intent;
    const-string v6, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1016
    .restart local v3    # "pickedUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1017
    const-string v6, "KEY_PICKEDUP_URI"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1018
    invoke-virtual {p0, v0, v8}, Lcom/android/contacts/detail/ContactDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1023
    .end local v0    # "i":Landroid/content/Intent;
    .end local v3    # "pickedUri":Landroid/net/Uri;
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1024
    .restart local v3    # "pickedUri":Landroid/net/Uri;
    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->handleRingtonePicked(Landroid/net/Uri;)Z

    move-result v2

    .line 1025
    .restart local v2    # "isValid":Z
    if-eqz v2, :cond_0

    .line 1026
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/contacts/ContactSaveService;->createSetMediaRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 1028
    .restart local v4    # "serviceIntentMedia":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1033
    .end local v2    # "isValid":Z
    .end local v3    # "pickedUri":Landroid/net/Uri;
    .end local v4    # "serviceIntentMedia":Landroid/content/Intent;
    :pswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1034
    .restart local v3    # "pickedUri":Landroid/net/Uri;
    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->handleRingtonePicked(Landroid/net/Uri;)Z

    goto :goto_0

    .line 1038
    .end local v3    # "pickedUri":Landroid/net/Uri;
    :pswitch_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 1039
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->handleVibrationPicked(Landroid/net/Uri;)V

    goto :goto_0

    .line 1046
    .end local v5    # "uri":Landroid/net/Uri;
    :pswitch_6
    if-ne p2, v7, :cond_0

    .line 1047
    const-string v6, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1048
    .restart local v3    # "pickedUri":Landroid/net/Uri;
    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->handleAlerttonePicked(Landroid/net/Uri;)Z

    goto/16 :goto_0

    .line 994
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1147
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1148
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 1149
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    .line 1150
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    .line 1151
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMotionCallEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    .line 1152
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5885
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5895
    .local v2, "menuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 5897
    .local v1, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 5931
    const-string v3, "ContactDetailFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown menu option "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 5932
    .end local v1    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v2    # "menuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_0
    return v3

    .line 5886
    :catch_0
    move-exception v0

    .line 5887
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "ContactDetailFragment"

    const-string v5, "bad menuInfo"

    invoke-static {v3, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 5888
    goto :goto_0

    .line 5899
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .restart local v2    # "menuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_0
    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->copyToClipboard(I)V

    goto :goto_0

    .line 5902
    :pswitch_1
    iget-wide v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->showingEntryId:J

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->setDefaultContactMethod(J)V

    goto :goto_0

    .line 5905
    :pswitch_2
    iget-wide v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->showingEntryId:J

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->clearDefaultContactMethod(J)V

    goto :goto_0

    .line 5908
    :pswitch_3
    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->shareContactMethod(I)V

    goto :goto_0

    .line 5911
    :pswitch_4
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->deleteContactMethod(J)V

    goto :goto_0

    .line 5914
    :pswitch_5
    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->copyToDialingScreen(I)V

    goto :goto_0

    .line 5917
    :pswitch_6
    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->callMessagePopup(I)V

    goto :goto_0

    .line 5921
    :pswitch_7
    iget-wide v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->showingEntryId:J

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v7, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->primaryLine:I

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/contacts/detail/ContactDetailFragment;->selectSimForDS(JII)Z

    goto :goto_0

    .line 5925
    :pswitch_8
    iget-wide v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->showingEntryId:J

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v4, v5, v6}, Lcom/android/contacts/detail/ContactDetailFragment;->deselectSimForDS(JI)Z

    goto :goto_0

    .line 5897
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 625
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 628
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iput-boolean v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    .line 631
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_8

    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isPortrait:Z

    .line 632
    iput-boolean v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFonblet:Z

    .line 635
    :cond_0
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;IZLcom/android/contacts/model/EntityDeltaList;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    .line 636
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsMultiWindowSupported:Z

    .line 638
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsMultiWindowSupported:Z

    if-eqz v0, :cond_1

    .line 639
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 642
    :cond_1
    if-eqz p1, :cond_2

    .line 643
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    .line 644
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    .line 646
    const-string v0, "isChangingOrientation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    .line 648
    const-string v0, "currentphotofile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;

    .line 649
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDeltaList;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 650
    const-string v0, "isDirectoryContact"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsDirectoryContact:Z

    .line 651
    const-string v0, "customRingtoneUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    .line 652
    const-string v0, "customVibrationUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomVibrationUri:Ljava/lang/String;

    .line 653
    const-string v0, "customAlerttoneUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;

    .line 655
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->setState(Lcom/android/contacts/model/EntityDeltaList;)V

    .line 656
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsDirectoryContact:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->setDirectoryContact(Z)V

    .line 661
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->refreshRCSeSettingValue(Landroid/content/Context;)V

    .line 662
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    .line 667
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    if-eqz v0, :cond_4

    .line 668
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->getMotionCallManager(Landroid/content/Context;)Lcom/sec/android/app/contacts/util/MotionCallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    .line 679
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 680
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/ContactDetailActivity;

    if-eqz v0, :cond_5

    .line 681
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/activities/ContactDetailActivity;

    .line 682
    .local v6, "detailsActivity":Lcom/android/contacts/activities/ContactDetailActivity;
    invoke-virtual {v6}, Lcom/android/contacts/activities/ContactDetailActivity;->getSvcUtils()Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    .line 683
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    if-nez v0, :cond_5

    const-string v0, "ContactDetailFragment"

    const-string v1, "directorySvcUtils is NULL"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    .end local v6    # "detailsActivity":Lcom/android/contacts/activities/ContactDetailActivity;
    :cond_5
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFonblet:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isPortrait:Z

    if-nez v0, :cond_6

    .line 696
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v7}, Lcom/android/contacts/detail/ContactDetailFragment;->setMotionCallByOrientation(IZ)V

    .line 699
    :cond_6
    sget-boolean v0, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v0, :cond_7

    .line 700
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isVoiceOverLTEEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLVCSettingStatus:Z

    .line 701
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isSettingsVideoCallEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVideoCallingSettingStatus:Z

    .line 702
    new-instance v0, Lcom/android/contacts/detail/TTY;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/TTY;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/contacts/detail/TTY;->getTTYState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mttySettingStatus:Z

    .line 703
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->fetchCapabilityDiscovery()V

    .line 704
    sget v0, Lcom/android/contacts/detail/ContactDetailFragment;->mCapabilityDiscover:I

    if-ne v0, v7, :cond_9

    :goto_1
    iput-boolean v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDiscoverySettingStatus:Z

    .line 705
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMobileDataSettingStatus:Z

    .line 706
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isAirplaneModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeSettingStatus:Z

    .line 709
    :cond_7
    return-void

    :cond_8
    move v0, v4

    .line 631
    goto/16 :goto_0

    :cond_9
    move v7, v4

    .line 704
    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const v10, 0x7f0e02f4

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 5741
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 5743
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v4, :cond_1

    .line 5860
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p3

    .line 5747
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 5748
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 5750
    .local v2, "selectedEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0185

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5752
    :cond_2
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 5755
    .local v3, "selectedMimeType":Ljava/lang/String;
    iget-boolean v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isWritable:Z

    if-eqz v4, :cond_3

    .line 5756
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5775
    :cond_3
    :goto_1
    const-string v4, "vnd.android.cursor.item/vcall-address"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5776
    iget v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    if-ne v4, v8, :cond_0

    .line 5777
    const v4, 0x7f0e046e

    invoke-virtual {p0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5784
    :cond_4
    iget-object v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 5786
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "vnd.android.cursor.item/website"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "vnd.android.cursor.item/note"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5791
    :cond_5
    const v4, 0x7f0e003f

    invoke-virtual {p0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v6, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5796
    :cond_6
    const/4 v1, 0x1

    .line 5816
    .local v1, "isUniqueMimeType":Z
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5817
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    .line 5822
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 5835
    :cond_8
    :goto_3
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5836
    const-string v4, "call_message"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "instant_lettering"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5838
    :cond_9
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 5839
    const v4, 0x7f0e0469

    invoke-virtual {p0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5852
    :cond_a
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCopyToDialer"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5855
    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v4, :cond_0

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5856
    const/4 v4, 0x5

    const v5, 0x7f0e0234

    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 5762
    .end local v1    # "isUniqueMimeType":Z
    :cond_b
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v4

    if-nez v4, :cond_e

    .line 5763
    iget v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    if-le v4, v8, :cond_c

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isContainEmergencyGroup()Z

    move-result v4

    if-nez v4, :cond_d

    :cond_c
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isContainEmergencyGroup()Z

    move-result v4

    if-nez v4, :cond_3

    .line 5765
    :cond_d
    invoke-virtual {p0, v10}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v9, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 5768
    :cond_e
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v4

    if-nez v4, :cond_3

    .line 5769
    invoke-virtual {p0, v10}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v9, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 5818
    .restart local v1    # "isUniqueMimeType":Z
    :cond_f
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5819
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    goto/16 :goto_2

    .line 5826
    :cond_10
    iget-boolean v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v4, :cond_11

    .line 5827
    const v4, 0x7f0e01d8

    invoke-virtual {p0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v8, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 5829
    :cond_11
    if-nez v1, :cond_8

    .line 5830
    const/4 v4, 0x2

    const v5, 0x7f0e01d7

    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 5841
    :cond_12
    const-string v4, "feature_kt"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 5842
    const v4, 0x7f0e046e

    invoke-virtual {p0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 5844
    :cond_13
    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5845
    const v4, 0x7f0e0467

    invoke-virtual {p0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v9, 0x2000000

    const v5, 0x102000a

    const/4 v8, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1156
    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    if-eqz v4, :cond_f

    .line 1157
    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFonblet:Z

    if-eqz v4, :cond_d

    .line 1158
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 1159
    const v4, 0x7f0401fc

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    .line 1183
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 1185
    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    if-eqz v4, :cond_12

    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFonblet:Z

    if-eqz v4, :cond_12

    .line 1186
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-nez v4, :cond_1

    .line 1187
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    .line 1188
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 1189
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1190
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1191
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1204
    :cond_1
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableMultiplePinyinSearch"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1206
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$3;

    invoke-direct {v5, p0}, Lcom/android/contacts/detail/ContactDetailFragment$3;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1216
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/activities/PeopleActivity;

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1219
    const/4 v3, 0x0

    .line 1220
    .local v3, "photocontainer":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1222
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0401ff

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "photocontainer":Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 1227
    .restart local v3    # "photocontainer":Landroid/widget/LinearLayout;
    :goto_2
    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 1229
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1233
    .end local v3    # "photocontainer":Landroid/widget/LinearLayout;
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v5, 0x7f090109

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    .line 1234
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v5, 0x7f0903cd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoUpdateView:Landroid/view/View;

    .line 1237
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    if-nez v4, :cond_7

    .line 1238
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    if-eqz v4, :cond_14

    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFonblet:Z

    if-eqz v4, :cond_14

    .line 1240
    :cond_6
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v5, 0x7f09046d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    .line 1259
    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v5, 0x7f09014c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/widget/ProportionalLayout;

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoContainerView:Lcom/android/contacts/widget/ProportionalLayout;

    .line 1263
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    if-eqz v4, :cond_15

    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFonblet:Z

    if-eqz v4, :cond_15

    .line 1265
    :cond_9
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v5, 0x7f0902eb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    .line 1270
    :goto_4
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v5, 0x7f09014b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTwEmptyView:Landroid/view/View;

    .line 1272
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v5, 0x7f09010f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    .line 1273
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v5, 0x7f09010d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlphaLayer:Landroid/view/View;

    .line 1274
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlphaLayer:Landroid/view/View;

    iget v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInitialAlphaValue:F

    invoke-static {v4, v5}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    .line 1276
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v5, 0x7f090149

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    .line 1277
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$4;

    invoke-direct {v5, p0}, Lcom/android/contacts/detail/ContactDetailFragment$4;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1286
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1288
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v4, :cond_a

    .line 1289
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 1292
    :cond_a
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1293
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->setInflater(Landroid/view/LayoutInflater;)V

    .line 1297
    :cond_b
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDateFormatObserver:Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1299
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/activities/ContactDetailActivity;

    if-nez v4, :cond_c

    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isPortrait:Z

    if-nez v4, :cond_c

    .line 1300
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->updateWindowLayout()V

    .line 1303
    :cond_c
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    return-object v4

    .line 1163
    :cond_d
    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isPortrait:Z

    if-eqz v4, :cond_e

    .line 1164
    const v4, 0x7f04004f

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 1167
    :cond_e
    const v4, 0x7f040050

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 1171
    :cond_f
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1173
    const v4, 0x7f0401fc

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 1175
    :cond_10
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/activities/ContactDetailActivity;

    if-eqz v4, :cond_11

    .line 1176
    const v4, 0x7f040051

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 1179
    :cond_11
    const v4, 0x7f04004c

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 1195
    :cond_12
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    .line 1196
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 1197
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVerticalScrollBarPadding(Z)V

    .line 1198
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 1199
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1200
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1201
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto/16 :goto_1

    .line 1224
    .restart local v3    # "photocontainer":Landroid/widget/LinearLayout;
    :cond_13
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0401fe

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "photocontainer":Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .restart local v3    # "photocontainer":Landroid/widget/LinearLayout;
    goto/16 :goto_2

    .line 1242
    .end local v3    # "photocontainer":Landroid/widget/LinearLayout;
    :cond_14
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v5, 0x7f09016f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    .line 1243
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1245
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v5, 0x7f0903cc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 1246
    .local v2, "photoFrame":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1248
    .local v1, "param":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1249
    .local v0, "nosync":Landroid/widget/ImageView;
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 1250
    const v4, 0x7f0207bd

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1251
    const/16 v4, 0x53

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1252
    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 1267
    .end local v0    # "nosync":Landroid/widget/ImageView;
    .end local v1    # "param":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "photoFrame":Landroid/widget/FrameLayout;
    :cond_15
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    goto/16 :goto_4
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 965
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 968
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFonblet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    if-nez v0, :cond_1

    .line 969
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-eqz v0, :cond_1

    .line 970
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    if-nez v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->updateDirectCall(ILjava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->clear()V

    .line 973
    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    .line 977
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDateFormatObserver:Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 960
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 961
    return-void
.end method

.method public onItemChosen(IILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "which"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 6689
    const/4 v0, 0x0

    .line 6691
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 6722
    :goto_0
    return-void

    .line 6695
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 6719
    :pswitch_0
    const-string v1, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nothing chosen :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6697
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {p3, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getVideoCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 6698
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6701
    :pswitch_2
    if-nez p2, :cond_1

    .line 6702
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6704
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6705
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 6706
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6708
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6710
    :cond_2
    const-string v1, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nothing chosen in Email dialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6715
    :pswitch_3
    invoke-static {p3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 6716
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6695
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 5726
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-nez v1, :cond_1

    .line 5730
    :cond_0
    :goto_0
    return-void

    .line 5727
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v1, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    .line 5728
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    .line 5729
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-virtual {v0, p2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    goto :goto_0
.end method

.method public onItemSelectorCancelled()V
    .locals 0

    .prologue
    .line 6727
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 914
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 917
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-eqz v1, :cond_2

    .line 918
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFonblet:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    if-nez v1, :cond_2

    .line 919
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    .line 920
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/contacts/util/MotionCallManager;->updateDirectCall(ILjava/lang/String;)V

    .line 925
    :cond_2
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 926
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->resetCurrentViewAndEntry()V

    .line 927
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->pinOnPause()V

    .line 937
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    .line 938
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 945
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsBinded:Z

    .line 946
    sget-boolean v1, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v1, :cond_5

    .line 947
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 949
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMobileDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 951
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 952
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->headsetpluggingreceiver:Lcom/android/contacts/detail/ContactDetailFragment$HeadSetPluggingReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 954
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_5
    return-void
.end method

.method public onPhoneRingtoneChosen()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6668
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 6669
    invoke-static {v7}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 6677
    .local v3, "ringtoneUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getRingtonePickerIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 6678
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 6680
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6685
    :cond_1
    :goto_1
    return-void

    .line 6671
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "ringtoneUri":Landroid/net/Uri;
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    const-string v5, "\\?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6672
    .local v0, "customRingtoneUri":[Ljava/lang/String;
    aget-object v4, v0, v6

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 6673
    .restart local v3    # "ringtoneUri":Landroid/net/Uri;
    invoke-static {v3}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6674
    invoke-static {v7}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 6681
    .end local v0    # "customRingtoneUri":[Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 6682
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "ContactDetailFragment"

    const-string v5, "onPhoneRingtoneChosen : activity is not found"

    invoke-static {v4, v5, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onPhotoOfTabCarouselSelected(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6766
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->getWritableEntityIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6768
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->showPhotoActionPopup(Landroid/view/View;)V

    .line 6770
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 736
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 737
    const-string v3, "ContactDetailFragment"

    const-string v4, "inside onresume"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    if-eqz v3, :cond_1

    .line 740
    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFonblet:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    if-nez v3, :cond_1

    .line 741
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-eqz v3, :cond_1

    .line 742
    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v7, v4}, Lcom/sec/android/app/contacts/util/MotionCallManager;->updateDirectCall(ILjava/lang/String;)V

    .line 747
    :cond_1
    sget-boolean v3, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v3, :cond_4

    .line 748
    const-string v3, "ContactDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inside onresume tagims flag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isSettingsVideoCallEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 751
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->headsetpluggingreceiver:Lcom/android/contacts/detail/ContactDetailFragment$HeadSetPluggingReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 752
    new-instance v3, Lcom/android/contacts/detail/TTY;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/contacts/detail/TTY;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/contacts/detail/TTY;->getTTYState()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z

    .line 753
    const-string v3, "ContactDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inside onresume isttyON = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    .line 755
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isSettingsVideoCallEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 756
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 758
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish403()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish404()Z

    move-result v3

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeon:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isEarJackConnected()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isVoiceOverLTEEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 762
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 763
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 764
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 765
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 777
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 778
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "huge_font"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 779
    iput-boolean v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFontSizeIsSet:Z

    .line 782
    :cond_5
    sput-boolean v6, Lcom/android/contacts/detail/ContactDetailFragment;->callPressed:Z

    .line 783
    sput-boolean v6, Lcom/android/contacts/detail/ContactDetailFragment;->sipAddressPressed:Z

    .line 784
    sput-boolean v6, Lcom/android/contacts/detail/ContactDetailFragment;->imAddressPressed:Z

    .line 822
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 823
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v3, :cond_6

    .line 824
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 826
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->pinOnResume(Landroid/net/Uri;)V

    .line 836
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableMultiplePinyinSearch"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 838
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v3, :cond_8

    .line 839
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 842
    :cond_8
    sget-boolean v3, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v3, :cond_9

    .line 843
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/ContactsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 845
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMobileDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 848
    const-string v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 854
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->validateDeviceSettings()V

    .line 856
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_9
    return-void

    .line 767
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    :cond_a
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 768
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 770
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 771
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 713
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 714
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 715
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 716
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 718
    :cond_0
    const-string v0, "isChangingOrientation"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 721
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 722
    const-string v0, "currentphotofile"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v0, :cond_2

    .line 725
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 727
    :cond_2
    const-string v0, "isDirectoryContact"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsDirectoryContact:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 728
    const-string v0, "customRingtoneUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v0, "customVibrationUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomVibrationUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v0, "customAlerttoneUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public onSimChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 6926
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    const-string v2, "menuPosition"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 6929
    .local v0, "selectedEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    const-string v1, "id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "vnd.sec.contact.sim2"

    iget-object v4, p1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->setDefaultLine(JILjava/lang/String;)V

    .line 6931
    return-void

    .line 6929
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSimSelectorCancelled()V
    .locals 0

    .prologue
    .line 6937
    return-void
.end method

.method public registerMotionCallManager()V
    .locals 3

    .prologue
    .line 7000
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    if-eqz v0, :cond_1

    .line 7001
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFonblet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    if-nez v0, :cond_1

    .line 7002
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    if-nez v0, :cond_1

    .line 7003
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->updateDirectCall(ILjava/lang/String;)V

    .line 7007
    :cond_1
    return-void
.end method

.method public requestToMoveToOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->requestToMoveToOffset(Landroid/widget/ListView;I)V

    .line 1463
    return-void
.end method

.method public setAlphaLayerValue(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlphaLayer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1340
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInitialAlphaValue:F

    .line 1345
    :goto_0
    return-void

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlphaLayer:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public setCallSipPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 6890
    sput-boolean p1, Lcom/android/contacts/detail/ContactDetailFragment;->callPressed:Z

    .line 6891
    sput-boolean p1, Lcom/android/contacts/detail/ContactDetailFragment;->sipAddressPressed:Z

    .line 6892
    sput-boolean p1, Lcom/android/contacts/detail/ContactDetailFragment;->imAddressPressed:Z

    .line 6893
    return-void
.end method

.method public setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 5
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .param p2, "result"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    const v4, 0x7f0902e5

    const/4 v3, 0x0

    .line 1413
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    .line 1415
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 1417
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1419
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1420
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v1, :cond_0

    .line 1421
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->setIsUserProfile(Z)V

    .line 1424
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->resetCurrentViewAndEntry()V

    .line 1425
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->pinStartEntityQuery(Landroid/net/Uri;)V

    .line 1427
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 1430
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 1431
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowEmptyLayout:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTwEmptyView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1432
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1433
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTwEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1434
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_2

    .line 1436
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    .line 1437
    .local v0, "peopleActivity":Lcom/android/contacts/activities/PeopleActivity;
    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getListFragment()Lcom/android/contacts/list/ContactBrowseListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1438
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTwEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1439
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTwEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1444
    .end local v0    # "peopleActivity":Lcom/android/contacts/activities/PeopleActivity;
    :cond_2
    return-void
.end method

.method public setEmptyPhoto(Z)V
    .locals 0
    .param p1, "setEmptyLayout"    # Z

    .prologue
    .line 1400
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowEmptyLayout:Z

    .line 1401
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1395
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLayoutMode:I

    .line 1396
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 1334
    return-void
.end method

.method public setMotionCallByOrientation(IZ)V
    .locals 6
    .param p1, "orientation"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6973
    const-string v0, "ContactDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotionCallByOrientation config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMotionCallRegistered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMotionCallRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6974
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOrientation:I

    .line 6975
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    if-eqz v0, :cond_2

    .line 6976
    if-ne p1, v4, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMotionCallRegistered:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_3

    .line 6979
    :cond_0
    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMotionCallRegistered:Z

    .line 6981
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-nez v0, :cond_1

    .line 6982
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->getMotionCallManager(Landroid/content/Context;)Lcom/sec/android/app/contacts/util/MotionCallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    .line 6985
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-eqz v0, :cond_2

    .line 6986
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    invoke-virtual {v0, v3, v5}, Lcom/sec/android/app/contacts/util/MotionCallManager;->updateDirectCall(ILjava/lang/String;)V

    .line 6997
    :cond_2
    :goto_0
    return-void

    .line 6988
    :cond_3
    if-ne p1, v3, :cond_2

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMotionCallRegistered:Z

    if-eq v0, v3, :cond_4

    if-eqz p2, :cond_2

    .line 6991
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-eqz v0, :cond_5

    .line 6992
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/contacts/util/MotionCallManager;->updateDirectCall(ILjava/lang/String;)V

    .line 6994
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMotionCallRegistered:Z

    goto :goto_0
.end method

.method public setShowStaticPhoto(Z)V
    .locals 0
    .param p1, "showPhoto"    # Z

    .prologue
    .line 1391
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    .line 1392
    return-void
.end method

.method public setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/16 v5, 0x12

    .line 2802
    sparse-switch p1, :sswitch_data_0

    .line 2862
    :cond_0
    :goto_0
    return-void

    .line 2804
    :sswitch_0
    const-string v2, "Anu"

    const-string v3, "inside STATE_INIT"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    iget-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isEarJackConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2806
    const-string v2, "ContactDetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTY is  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2809
    :cond_1
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isDeviceOnEHRPD()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2810
    const-string v2, "ContactDetailFragment"

    const-string v3, "inside STATE_EHRPD"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->handleState(I)V

    goto :goto_0

    .line 2813
    :cond_2
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->handleState(I)V

    goto :goto_0

    .line 2816
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2817
    const-string v2, "ContactDetailFragment"

    const-string v3, "inside STATE_CHECK_MOBILE_ON"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->handleState(I)V

    goto :goto_0

    .line 2820
    :cond_3
    const-string v2, "ContactDetailFragment"

    const-string v3, "inside STATE_CHECK_MOBILE_OFF"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->handleState(I)V

    goto :goto_0

    .line 2825
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isVoiceOverLTEEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2826
    const-string v2, "ContactDetailFragment"

    const-string v3, "inside STATE_CHECK_LTE_ON"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->handleState(I)V

    goto :goto_0

    .line 2829
    :cond_4
    const-string v2, "ContactDetailFragment"

    const-string v3, "inside STATE_CHECK_LTE_OFF"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->handleState(I)V

    goto/16 :goto_0

    .line 2834
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isSettingsVideoCallEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2835
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->handleState(I)V

    goto/16 :goto_0

    .line 2837
    :cond_5
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->handleState(I)V

    goto/16 :goto_0

    .line 2841
    :sswitch_4
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->viewForVideoCall:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 2842
    .local v1, "entry":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 2844
    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2845
    .local v0, "detailViewEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    const-string v2, "ContactDetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numberavailability is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/detail/ContactDetailFragment;->numberavailability:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    const-string v2, "ContactDetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detailViewEntry.data is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    sget v2, Lcom/android/contacts/detail/ContactDetailFragment;->mCapabilityDiscover:I

    if-nez v2, :cond_6

    .line 2848
    const-string v2, "ContactDetailFragment"

    const-string v3, "capability discovery is OFF"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->handleState(I)V

    goto/16 :goto_0

    .line 2851
    :cond_6
    sget-object v2, Lcom/android/contacts/detail/ContactDetailFragment;->numberavailability:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/contacts/detail/ContactDetailFragment;->numberavailability:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2853
    const-string v2, "ContactDetailFragment"

    const-string v3, "User is available"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->handleState(I)V

    goto/16 :goto_0

    .line 2856
    :cond_7
    const-string v2, "ContactDetailFragment"

    const-string v3, "User is not available"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->videoCallAvailabilityOff()V

    goto/16 :goto_0

    .line 2802
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x21 -> :sswitch_3
        0x2c -> :sswitch_4
    .end sparse-switch
.end method

.method public setTwHeaderView(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "tw_header_container"    # Landroid/widget/LinearLayout;

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    .line 1410
    return-void
.end method

.method public setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1376
    return-void
.end method

.method public showEmptyState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1404
    invoke-virtual {p0, v0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    .line 1405
    return-void
.end method

.method public unregisterMotionCallManager()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7010
    const-string v0, "ContactDetailFragment"

    const-string v1, "unregisterMotionCallManager"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 7011
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    if-eqz v0, :cond_0

    .line 7012
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-eqz v0, :cond_0

    .line 7013
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->updateDirectCall(ILjava/lang/String;)V

    .line 7014
    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    .line 7015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMotionCallRegistered:Z

    .line 7018
    :cond_0
    return-void
.end method

.method public updateWindowLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 859
    const-string v2, "ContactDetailFragment"

    const-string v3, "updateWindowLayout"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v3, 0x7f0903cb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 861
    .local v1, "photo_layout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v3, 0x7f09014e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 862
    .local v0, "detail_layout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    .line 864
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 865
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 866
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 867
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 869
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 870
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 871
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public videoCallAvailabilityOff()V
    .locals 6

    .prologue
    .line 2978
    const-string v3, "ContactDetailFragment"

    const-string v4, "Inside videocallavailabilityoff "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 2980
    .local v1, "contactName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0503

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2982
    .local v2, "videooff_msg":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2983
    .local v0, "alert1":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2984
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$19;

    invoke-direct {v4, p0}, Lcom/android/contacts/detail/ContactDetailFragment$19;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2993
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$20;

    invoke-direct {v4, p0}, Lcom/android/contacts/detail/ContactDetailFragment$20;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3003
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$21;

    invoke-direct {v4, p0}, Lcom/android/contacts/detail/ContactDetailFragment$21;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3016
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3017
    return-void
.end method

.method public videoCallingPopup()V
    .locals 10

    .prologue
    .line 3130
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3132
    .local v6, "video_calling_switch":Landroid/content/SharedPreferences;
    const-string v7, "video_switch"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3134
    .local v4, "isVideoCallingOn":Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 3136
    .local v3, "inflatee":Landroid/view/LayoutInflater;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e04f6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3138
    .local v0, "alertMsg":Ljava/lang/String;
    const v7, 0x7f0400a9

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3139
    .local v1, "dialogView":Landroid/view/View;
    const v7, 0x7f09022b

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 3140
    .local v2, "dialog_checkbox":Landroid/widget/CheckBox;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 3142
    .local v5, "videoAlertDialog":Landroid/app/AlertDialog;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e04fa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3143
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 3144
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0347

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/contacts/detail/ContactDetailFragment$30;

    invoke-direct {v8, p0, v2, v6}, Lcom/android/contacts/detail/ContactDetailFragment$30;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3163
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e04f7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e04f8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/contacts/detail/ContactDetailFragment$33;

    invoke-direct {v9, p0, v6, v5}, Lcom/android/contacts/detail/ContactDetailFragment$33;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/SharedPreferences;Landroid/app/AlertDialog;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0062

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/contacts/detail/ContactDetailFragment$32;

    invoke-direct {v9, p0}, Lcom/android/contacts/detail/ContactDetailFragment$32;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/contacts/detail/ContactDetailFragment$31;

    invoke-direct {v8, p0}, Lcom/android/contacts/detail/ContactDetailFragment$31;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3202
    return-void
.end method

.method public voiceOverLTEPopup()V
    .locals 5

    .prologue
    .line 3094
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3096
    .local v1, "video_calling_switch":Landroid/content/SharedPreferences;
    const-string v2, "video_switch"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3099
    .local v0, "isVideoCallingOn":Ljava/lang/Boolean;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0501

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->onVoiceOverLtePopupPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$28;

    invoke-direct {v4, p0}, Lcom/android/contacts/detail/ContactDetailFragment$28;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$27;

    invoke-direct {v3, p0}, Lcom/android/contacts/detail/ContactDetailFragment$27;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3113
    return-void
.end method
