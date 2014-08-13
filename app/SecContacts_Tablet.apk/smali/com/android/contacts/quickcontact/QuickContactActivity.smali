.class public Lcom/android/contacts/quickcontact/QuickContactActivity;
.super Landroid/app/Activity;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactActivity$GALDataQuery;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$DataQuery;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$GALContactQuery;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$DirectoryQuery;
    }
.end annotation


# static fields
.field public static CONTACT_URI:Landroid/net/Uri; = null

.field private static final EASY_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLER_ID_DATA:I = 0x1

.field private static final HANDLER_ID_LINKEDIN:I = 0x4

.field private static final HANDLER_ID_PHOTO:I = 0x3

.field private static final LEADING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEADING_MIMETYPES_CHN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEADING_MIMETYPES_DSDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEADING_MIMETYPES_DSDS_CHN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEADING_MIMETYPES_DUAL_CHN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEGACY_AUTHORITY:Ljava/lang/String; = "contacts"

.field public static final LOG_PROJECTION:[Ljava/lang/String;

.field private static final MSG_EAS_CONTACT_QUERY_COMPLETE:I = 0x64

.field public static final NAMECARD_IS_PRIVATE_INDEX:I = 0x2

.field public static final NAMECARD_PHOTO_ID_COLUMN_INDEX:I = 0x1

.field private static final POST_DRAW_WAIT_DURATION:I = 0x3c

.field public static final PROJECTION_CONTACT_NAMECARD:[Ljava/lang/String;

.field private static final RCS_APP_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.rcs"

.field public static final SELECTION_CONTACT_NAMECARD:Ljava/lang/String; = "_id = ? and is_private > 0 and is_private IS NOT NULL"

.field private static final SHOW_OR_CREATE_EMAIL:I = 0x2

.field private static final SHOW_OR_CREATE_NAME:I = 0x4

.field private static final SHOW_OR_CREATE_PHONE:I = 0x1

.field private static final SHOW_OR_CREATE_SIP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "QuickContact"

.field private static final TOKEN_SERVICE:I = 0x2

.field private static final TRACE_LAUNCH:Z = false

.field private static final TRACE_TAG:Ljava/lang/String; = "quickcontact"

.field private static final TRAILING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static capability:Ljava/lang/String;

.field private static isVoLTEEnabled:Z

.field public static mChatOnVideoCallCapability:Z

.field public static mChatOnVoiceCallCapability:Z

.field public static mNamecardDataId:I

.field private static msIsTutorialMode:Z


# instance fields
.field private mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mContactId:J

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mCreateExtras:Landroid/os/Bundle;

.field private mCurrentMode:I

.field private mDataObserver:Landroid/database/ContentObserver;

.field private mDefaultsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectoryIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEASHandler:Landroid/os/Handler;

.field private mEmails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExcludeMimes:[Ljava/lang/String;

.field private mFeatureGrupper:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;

.field private mFirstQuery:Z

.field private mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

.field private mGalContactId:J

.field private mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

.field private mHasFinishedAnimatingIn:Z

.field private mHasPhone:Z

.field private mHasSms:Z

.field private mHasStartedAnimatingOut:Z

.field private mIsEASDataLoaded:Z

.field private mIsEASMode:Z

.field private mIsEasyFavoriteswidget:Z

.field private mIsEasyMode:Z

.field private mIsMultiWindowSupported:Z

.field private mIsOwnFtCapable:Z

.field private mIsProfile:Z

.field private mIsTutorialMode:Z

.field private mLineAfterTrack:Landroid/view/View;

.field private mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

.field private final mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

.field private mListPager:Landroid/support/v4/view/ViewPager;

.field private mLookupUri:Landroid/net/Uri;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mNamecardMode:Z

.field private mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

.field private mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

.field private mPhotoContainer:Landroid/view/View;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mQueryListener:Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

.field private mRcsActionMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsServiceObserver:Landroid/database/ContentObserver;

.field private final mRcsTypeViewClickListener:Landroid/view/View$OnClickListener;

.field private mRcsViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScheme:Ljava/lang/String;

.field private mSelectedTabRectangle:Landroid/view/View;

.field private mServiceLookup:Landroid/net/Uri;

.field private mShowOrCreateMode:Z

.field private mSortedActionMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSsp:Ljava/lang/String;

.field private mStarImage:Landroid/widget/CheckBox;

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackScroller:Landroid/widget/HorizontalScrollView;

.field private final mTypeViewClickListener:Landroid/view/View$OnClickListener;

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    sput-boolean v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->isVoLTEEnabled:Z

    .line 179
    const-string v0, ""

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->capability:Ljava/lang/String;

    .line 284
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->CONTACT_URI:Landroid/net/Uri;

    .line 308
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/vcall-address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v6

    const-string v1, "linkedIn"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    .line 312
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/cdmacall-address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/gsmcall-address"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/gsmcall2-address"

    aput-object v1, v0, v6

    const-string v1, "vnd.android.cursor.item/ipcall-address"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "vnd.android.cursor.item/vcall-address"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vnd.android.cursor.item/sip_address"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "vnd.chaton.item/vnd.com.chaton.profile"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vnd.vapp.item/vnd.com.app.account"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "vnd.android.cursor.item/im"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "vnd.android.cursor.item/photo"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "vnd.android.cursor.item/name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.android.exchange.directory.provider"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->EASY_MIMETYPES:Ljava/util/List;

    .line 321
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/ipcall-address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/vcall-address"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v6

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_CHN:Ljava/util/List;

    .line 325
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/cdmacall-address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/gsmcall-address"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/ipcall-address"

    aput-object v1, v0, v6

    const-string v1, "vnd.android.cursor.item/vcall-address"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "vnd.android.cursor.item/sip_address"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_DUAL_CHN:Ljava/util/List;

    .line 330
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/gsmcall-address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/gsmcall2-address"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/ipcall-address"

    aput-object v1, v0, v6

    const-string v1, "vnd.android.cursor.item/vcall-address"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "vnd.android.cursor.item/sip_address"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_DSDS_CHN:Ljava/util/List;

    .line 335
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/gsmcall-address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/gsmcall2-address"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/vcall-address"

    aput-object v1, v0, v6

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_DSDS:Ljava/util/List;

    .line 340
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/website"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    .line 381
    sput-boolean v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->mChatOnVoiceCallCapability:Z

    .line 382
    sput-boolean v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->mChatOnVideoCallCapability:Z

    .line 383
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "cityid"

    aput-object v1, v0, v5

    const-string v1, "cnap_name"

    aput-object v1, v0, v6

    const-string v1, "fname"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lname"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LOG_PROJECTION:[Ljava/lang/String;

    .line 406
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "is_private"

    aput-object v1, v0, v5

    const-string v1, "photo_uri"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->PROJECTION_CONTACT_NAMECARD:[Ljava/lang/String;

    .line 419
    sput v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNamecardDataId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 177
    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    .line 181
    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;

    .line 182
    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFirstQuery:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsOwnFtCapable:Z

    .line 198
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEASHandler:Landroid/os/Handler;

    .line 228
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    .line 230
    iput-wide v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactId:J

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDirectoryIds:Ljava/util/ArrayList;

    .line 232
    iput-wide v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mGalContactId:J

    .line 234
    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasFinishedAnimatingIn:Z

    .line 235
    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasStartedAnimatingOut:Z

    .line 251
    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

    .line 262
    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNamecardMode:Z

    .line 263
    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    .line 281
    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDataObserver:Landroid/database/ContentObserver;

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    .line 295
    new-instance v0, Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-direct {v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEmails:Ljava/util/List;

    .line 392
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsServiceObserver:Landroid/database/ContentObserver;

    .line 1249
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$14;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mQueryListener:Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 2690
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$19;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$19;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    .line 2702
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$20;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$20;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsTypeViewClickListener:Landroid/view/View$OnClickListener;

    .line 2756
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$21;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$21;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    .line 2886
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/util/NotifyingAsyncQueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/FloatingChildLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASDataLoaded:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASDataLoaded:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showForShowOrCreate()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->verifyIsEasAddress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEASHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsProfile:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsTutorialMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindLinkedInInfo(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/contacts/quickcontact/QuickContactActivity;ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Landroid/database/Cursor;

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->onServiceQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFirstQuery:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindPhotoData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasFinishedAnimatingIn:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->queryLinkedInInfo()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ActionMultiMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/contacts/quickcontact/QuickContactActivity;I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/contacts/quickcontact/QuickContactActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getDimensionValuesByRoundOff(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->show()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->rcsShow()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->handleOutsideTouch()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getClassNameOfBaseActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    return-void
.end method

.method private bindData(Landroid/database/Cursor;)V
    .locals 108
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1661
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v45

    .line 1662
    .local v45, "cache":Lcom/android/contacts/quickcontact/ResolveCache;
    move-object/from16 v5, p0

    .line 1667
    .local v5, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1669
    new-instance v95, Lcom/android/contacts/util/DataStatus;

    invoke-direct/range {v95 .. v95}, Lcom/android/contacts/util/DataStatus;-><init>()V

    .line 1670
    .local v95, "status":Lcom/android/contacts/util/DataStatus;
    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v40

    .line 1672
    .local v40, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    const-string v59, ""

    .line 1673
    .local v59, "easDisplayname":Ljava/lang/String;
    const v6, 0x7f090109

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v88

    check-cast v88, Lcom/sec/android/app/contacts/widget/ContactPhotoView;

    .line 1674
    .local v88, "photoView":Lcom/sec/android/app/contacts/widget/ContactPhotoView;
    if-eqz v88, :cond_0

    .line 1675
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v88

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1678
    :cond_0
    const/16 v85, 0x0

    .line 1680
    .local v85, "photoBitmap":Landroid/graphics/Bitmap;
    const/16 v91, 0x1

    .line 1681
    .local v91, "simActive1":Z
    const/16 v92, 0x1

    .line 1688
    .local v92, "simActive2":Z
    :cond_1
    :goto_0
    if-eqz p1, :cond_2d

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1690
    move-object/from16 v0, v95

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/DataStatus;->possibleUpdate(Landroid/database/Cursor;)V

    .line 1692
    const/16 v6, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1695
    .local v25, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1697
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1698
    .local v8, "dataId":J
    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1699
    .local v39, "accountType":Ljava/lang/String;
    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 1700
    .local v54, "dataSet":Ljava/lang/String;
    const/16 v6, 0x13

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_4

    const/16 v79, 0x1

    .line 1701
    .local v79, "isPrimary":Z
    :goto_1
    const/16 v6, 0x14

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_5

    const/16 v81, 0x1

    .line 1702
    .local v81, "isSuperPrimary":Z
    :goto_2
    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v80, 0x1

    .line 1703
    .local v80, "isStarred":Z
    :goto_3
    const v6, 0x7f0902e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v94

    check-cast v94, Landroid/widget/LinearLayout;

    .line 1704
    .local v94, "starButtonContainer":Landroid/widget/LinearLayout;
    const v6, 0x7f090147

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/CheckBox;

    .line 1705
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/CheckBox;

    move/from16 v0, v80

    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1706
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isSimAccount(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1707
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/CheckBox;

    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1725
    :goto_4
    const-string v6, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1726
    const-string v6, "data1"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 1728
    .local v49, "company":Ljava/lang/String;
    const-string v6, "data4"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v96

    .line 1732
    .local v96, "title":Ljava/lang/String;
    invoke-static/range {v49 .. v49}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1733
    move-object/from16 v48, v96

    .line 1744
    .local v48, "combined":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v12, 0x7f0903fc

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/TextView;

    .line 1745
    .local v50, "companyView":Landroid/widget/TextView;
    if-eqz v50, :cond_2

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNamecardMode:Z

    if-nez v6, :cond_2

    .line 1746
    if-eqz v48, :cond_a

    .line 1747
    const/4 v6, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1748
    move-object/from16 v0, v50

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1756
    .end local v48    # "combined":Ljava/lang/String;
    .end local v49    # "company":Ljava/lang/String;
    .end local v50    # "companyView":Landroid/widget/TextView;
    .end local v96    # "title":Ljava/lang/String;
    :cond_2
    :goto_6
    const-string v6, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1757
    const-string v6, "data14"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v55

    .line 1758
    .local v55, "displayPhotoColumnIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v55

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_b

    const/16 v70, 0x1

    .line 1759
    .local v70, "hasDisplayPhoto":Z
    :goto_7
    if-eqz v70, :cond_3

    .line 1760
    move-object/from16 v0, p1

    move/from16 v1, v55

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    .line 1761
    .local v56, "displayPhotoId":J
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNamecardMode:Z

    if-eqz v6, :cond_c

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v12, "display_photo"

    invoke-static {v6, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget v12, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNamecardDataId:I

    int-to-long v12, v12

    invoke-static {v6, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v58

    .line 1765
    .local v58, "displayPhotoUri":Landroid/net/Uri;
    :goto_8
    new-instance v12, Lcom/android/contacts/quickcontact/QuickContactActivity$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v88

    invoke-direct {v12, v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity$17;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/net/Uri;Lcom/sec/android/app/contacts/widget/ContactPhotoView;)V

    sget-object v13, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Void;

    invoke-virtual {v12, v13, v6}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1786
    .end local v56    # "displayPhotoId":J
    .end local v58    # "displayPhotoUri":Landroid/net/Uri;
    :cond_3
    const-string v6, "data15"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v87

    .line 1787
    .local v87, "photoColumnIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v87

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v86

    .line 1788
    .local v86, "photoBlob":[B
    if-eqz v86, :cond_1

    .line 1789
    const/4 v6, 0x0

    move-object/from16 v0, v86

    array-length v12, v0

    move-object/from16 v0, v86

    invoke-static {v0, v6, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v85

    goto/16 :goto_0

    .line 1700
    .end local v55    # "displayPhotoColumnIndex":I
    .end local v70    # "hasDisplayPhoto":Z
    .end local v79    # "isPrimary":Z
    .end local v80    # "isStarred":Z
    .end local v81    # "isSuperPrimary":Z
    .end local v86    # "photoBlob":[B
    .end local v87    # "photoColumnIndex":I
    .end local v94    # "starButtonContainer":Landroid/widget/LinearLayout;
    :cond_4
    const/16 v79, 0x0

    goto/16 :goto_1

    .line 1701
    .restart local v79    # "isPrimary":Z
    :cond_5
    const/16 v81, 0x0

    goto/16 :goto_2

    .line 1702
    .restart local v81    # "isSuperPrimary":Z
    :cond_6
    const/16 v80, 0x0

    goto/16 :goto_3

    .line 1709
    .restart local v80    # "isStarred":Z
    .restart local v94    # "starButtonContainer":Landroid/widget/LinearLayout;
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/CheckBox;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1710
    new-instance v6, Lcom/android/contacts/quickcontact/QuickContactActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity$16;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/content/Context;)V

    move-object/from16 v0, v94

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 1735
    .restart local v49    # "company":Ljava/lang/String;
    .restart local v96    # "title":Ljava/lang/String;
    :cond_8
    invoke-static/range {v96 .. v96}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1736
    move-object/from16 v48, v49

    .restart local v48    # "combined":Ljava/lang/String;
    goto/16 :goto_5

    .line 1738
    .end local v48    # "combined":Ljava/lang/String;
    :cond_9
    const v6, 0x7f0e01c1

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v49, v12, v13

    const/4 v13, 0x1

    aput-object v96, v12, v13

    invoke-virtual {v5, v6, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    .restart local v48    # "combined":Ljava/lang/String;
    goto/16 :goto_5

    .line 1750
    .restart local v50    # "companyView":Landroid/widget/TextView;
    :cond_a
    const/16 v6, 0x8

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 1758
    .end local v48    # "combined":Ljava/lang/String;
    .end local v49    # "company":Ljava/lang/String;
    .end local v50    # "companyView":Landroid/widget/TextView;
    .end local v96    # "title":Ljava/lang/String;
    .restart local v55    # "displayPhotoColumnIndex":I
    :cond_b
    const/16 v70, 0x0

    goto/16 :goto_7

    .line 1761
    .restart local v56    # "displayPhotoId":J
    .restart local v70    # "hasDisplayPhoto":Z
    :cond_c
    sget-object v6, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v56

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v58

    goto/16 :goto_8

    .line 1794
    .end local v55    # "displayPhotoColumnIndex":I
    .end local v56    # "displayPhotoId":J
    .end local v70    # "hasDisplayPhoto":Z
    :cond_d
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    move-object/from16 v2, v54

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v7

    .line 1796
    .local v7, "kind":Lcom/android/contacts/model/DataKind;
    if-eqz v7, :cond_13

    .line 1800
    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v93

    .line 1801
    .local v93, "simManager":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v6, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_23

    const/16 v78, 0x1

    .line 1803
    .local v78, "isAirPlaneOn":Z
    :goto_9
    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_24

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsTutorialMode:Z

    if-nez v6, :cond_24

    const-string v6, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const-string v6, "vnd.sec.contact.sim"

    move-object/from16 v0, v93

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "vnd.sec.contact.sim2"

    move-object/from16 v0, v93

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    :cond_e
    if-eqz v78, :cond_24

    .line 1809
    :cond_f
    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/quickcontact/ResolveCache;->clear()V

    .line 1810
    new-instance v4, Lcom/android/contacts/quickcontact/DataAction;

    const-string v6, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1812
    .local v4, "CDMACallAction":Lcom/android/contacts/quickcontact/Action;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v81

    invoke-direct {v0, v4, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    move-result v103

    .line 1813
    .local v103, "wasCDMACallAdded":Z
    if-eqz v103, :cond_11

    .line 1815
    if-nez v81, :cond_10

    if-eqz v79, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_11

    .line 1816
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    const-string v12, "vnd.android.cursor.item/cdmacall-address"

    invoke-virtual {v6, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    :cond_11
    new-instance v10, Lcom/android/contacts/quickcontact/DataAction;

    const-string v12, "vnd.android.cursor.item/gsmcall-address"

    move-object v11, v5

    move-object v13, v7

    move-wide v14, v8

    move-object/from16 v16, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1822
    .local v10, "GSMCallAction":Lcom/android/contacts/quickcontact/Action;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v81

    invoke-direct {v0, v10, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    move-result v104

    .line 1823
    .local v104, "wasGSMCallAdded":Z
    if-eqz v104, :cond_13

    .line 1825
    if-nez v81, :cond_12

    if-eqz v79, :cond_13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_13

    .line 1826
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    const-string v12, "vnd.android.cursor.item/gsmcall-address"

    invoke-virtual {v6, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    .end local v4    # "CDMACallAction":Lcom/android/contacts/quickcontact/Action;
    .end local v10    # "GSMCallAction":Lcom/android/contacts/quickcontact/Action;
    .end local v78    # "isAirPlaneOn":Z
    .end local v93    # "simManager":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .end local v103    # "wasCDMACallAdded":Z
    .end local v104    # "wasGSMCallAdded":Z
    :cond_13
    :goto_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v12, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v6, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1928
    const-string v6, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    if-eqz v7, :cond_15

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIPCall(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1929
    new-instance v17, Lcom/android/contacts/quickcontact/DataAction;

    const-string v19, "vnd.android.cursor.item/ipcall-address"

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    move-wide/from16 v21, v8

    move-object/from16 v23, p1

    invoke-direct/range {v17 .. v23}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1931
    .local v17, "IPCallAction":Lcom/android/contacts/quickcontact/Action;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v45

    move/from16 v3, v81

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    move-result v105

    .line 1933
    .local v105, "wasIPCallAdded":Z
    if-eqz v105, :cond_15

    .line 1935
    if-nez v81, :cond_14

    if-eqz v79, :cond_15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_15

    .line 1936
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    const-string v12, "vnd.android.cursor.item/ipcall-address"

    move-object/from16 v0, v17

    invoke-virtual {v6, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    .end local v17    # "IPCallAction":Lcom/android/contacts/quickcontact/Action;
    .end local v105    # "wasIPCallAdded":Z
    :cond_15
    const-string v6, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    if-eqz v7, :cond_17

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1943
    new-instance v18, Lcom/android/contacts/quickcontact/DataAction;

    const-string v20, "vnd.android.cursor.item/vcall-address"

    move-object/from16 v19, v5

    move-object/from16 v21, v7

    move-wide/from16 v22, v8

    move-object/from16 v24, p1

    invoke-direct/range {v18 .. v24}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1945
    .local v18, "VTCallAction":Lcom/android/contacts/quickcontact/Action;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v45

    move/from16 v3, v81

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    move-result v106

    .line 1947
    .local v106, "wasVTCallAdded":Z
    if-eqz v106, :cond_17

    .line 1949
    if-nez v81, :cond_16

    if-eqz v79, :cond_17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_17

    .line 1950
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    const-string v12, "vnd.android.cursor.item/vcall-address"

    move-object/from16 v0, v18

    invoke-virtual {v6, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    .end local v18    # "VTCallAction":Lcom/android/contacts/quickcontact/Action;
    .end local v106    # "wasVTCallAdded":Z
    :cond_17
    const-string v6, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v6, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v6, "vnd.android.cursor.item/vnd.twitter.profile"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1958
    :cond_18
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    move-object/from16 v2, v54

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v22

    .line 1959
    .local v22, "socialKind":Lcom/android/contacts/model/DataKind;
    if-eqz v22, :cond_19

    .line 1960
    new-instance v11, Lcom/android/contacts/quickcontact/DataAction;

    const-string v21, "com.sec.android.app.contacts/vnd.social"

    move-object/from16 v19, v11

    move-object/from16 v20, v5

    move-wide/from16 v23, v8

    invoke-direct/range {v19 .. v24}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;J)V

    .line 1961
    .local v11, "action":Lcom/android/contacts/quickcontact/DataAction;
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1, v6}, Lcom/android/contacts/quickcontact/DataAction;->setSocialData(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v11, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    .line 1971
    .end local v11    # "action":Lcom/android/contacts/quickcontact/DataAction;
    .end local v22    # "socialKind":Lcom/android/contacts/model/DataKind;
    :cond_19
    const-string v6, "vnd.vapp.item/vnd.com.app.account"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isChatOnVSupport(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1973
    const-string v6, "data1"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1974
    .local v26, "vAppAccount":Ljava/lang/String;
    const-string v6, "data2"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v99

    .line 1975
    .local v99, "vAppChatOnID":Ljava/lang/String;
    new-instance v28, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1976
    .local v28, "vAppIntent":Landroid/content/Intent;
    const-string v6, "com.sds.vapp.voipcall"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1977
    const-string v6, "user_account"

    move-object/from16 v0, v28

    move-object/from16 v1, v99

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1978
    const-string v6, "video_call"

    const/4 v12, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1979
    new-instance v11, Lcom/android/contacts/quickcontact/DataAction;

    const/16 v27, 0x0

    move-object/from16 v23, v11

    move-object/from16 v24, v5

    invoke-direct/range {v23 .. v28}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1980
    .local v11, "action":Lcom/android/contacts/quickcontact/Action;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v11, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    move-result v102

    .line 1981
    .local v102, "wasAdded":Z
    if-eqz v102, :cond_1b

    .line 1983
    if-nez v81, :cond_1a

    if-eqz v79, :cond_1b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1b

    .line 1984
    :cond_1a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    .end local v11    # "action":Lcom/android/contacts/quickcontact/Action;
    .end local v26    # "vAppAccount":Ljava/lang/String;
    .end local v28    # "vAppIntent":Landroid/content/Intent;
    .end local v99    # "vAppChatOnID":Ljava/lang/String;
    .end local v102    # "wasAdded":Z
    :cond_1b
    const/16 v6, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_2c

    const/16 v71, 0x1

    .line 1992
    .local v71, "hasPresence":Z
    :goto_b
    if-eqz v71, :cond_1c

    const-string v6, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1993
    const-string v6, "vnd.android.cursor.item/im"

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v32

    .line 1995
    .local v32, "imKind":Lcom/android/contacts/model/DataKind;
    if-eqz v32, :cond_1c

    .line 1996
    new-instance v11, Lcom/android/contacts/quickcontact/DataAction;

    const-string v31, "vnd.android.cursor.item/im"

    move-object/from16 v29, v11

    move-object/from16 v30, v5

    move-wide/from16 v33, v8

    move-object/from16 v35, p1

    invoke-direct/range {v29 .. v35}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1998
    .local v11, "action":Lcom/android/contacts/quickcontact/DataAction;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v81

    invoke-direct {v0, v11, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    .line 2002
    .end local v11    # "action":Lcom/android/contacts/quickcontact/DataAction;
    .end local v32    # "imKind":Lcom/android/contacts/model/DataKind;
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    if-eqz v6, :cond_1

    .line 2003
    const/16 v6, 0x27

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v67

    .line 2004
    .local v67, "gal_title":Ljava/lang/String;
    const/16 v6, 0x28

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v66

    .line 2005
    .local v66, "gal_company":Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 2006
    const v6, 0x7f0903e9

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v6, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 2008
    :cond_1d
    invoke-static/range {v66 .. v66}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 2009
    const v6, 0x7f0903ea

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v6, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 2011
    :cond_1e
    const/16 v6, 0x26

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v65

    .line 2012
    .local v65, "galPhotoString":Ljava/lang/String;
    invoke-static/range {v65 .. v65}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 2013
    const/4 v6, 0x0

    move-object/from16 v0, v65

    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v64

    .line 2014
    .local v64, "galPhotoDataByte":[B
    const/4 v6, 0x0

    move-object/from16 v0, v64

    array-length v12, v0

    move-object/from16 v0, v64

    invoke-static {v0, v6, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v85

    .line 2017
    .end local v64    # "galPhotoDataByte":[B
    :cond_1f
    const-string v6, "vnd.android.cursor.item/name"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 2018
    const-string v6, "data1"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 2020
    const-string v6, "data2"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v68

    .line 2022
    .local v68, "givenname":Ljava/lang/String;
    const-string v6, "data3"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 2024
    .local v61, "familyname":Ljava/lang/String;
    new-instance v100, Landroid/content/ContentValues;

    invoke-direct/range {v100 .. v100}, Landroid/content/ContentValues;-><init>()V

    .line 2025
    .local v100, "values":Landroid/content/ContentValues;
    const-string v6, "data2"

    move-object/from16 v0, v100

    move-object/from16 v1, v68

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    const-string v6, "data3"

    move-object/from16 v0, v100

    move-object/from16 v1, v61

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-static {v0, v1}, Lcom/android/contacts/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v90

    .line 2028
    .local v90, "result":Ljava/lang/String;
    invoke-static/range {v90 .. v90}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 2029
    move-object/from16 v59, v90

    .line 2031
    :cond_20
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v12, 0x7f0903ff

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v63

    check-cast v63, Landroid/view/ViewStub;

    .line 2032
    .local v63, "galContainer":Landroid/view/ViewStub;
    if-eqz v63, :cond_21

    .line 2033
    const/4 v6, 0x0

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2034
    const v6, 0x7f0903e8

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v6, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    .line 2035
    const v6, 0x7f09010a

    const-string v12, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    .line 2039
    .end local v61    # "familyname":Ljava/lang/String;
    .end local v63    # "galContainer":Landroid/view/ViewStub;
    .end local v68    # "givenname":Ljava/lang/String;
    .end local v90    # "result":Ljava/lang/String;
    .end local v100    # "values":Landroid/content/ContentValues;
    :cond_21
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v12, 0x7f090401

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/Button;

    .line 2041
    .local v52, "createButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v12, 0x7f090402

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v97

    check-cast v97, Landroid/widget/Button;

    .line 2043
    .local v97, "updateButton":Landroid/widget/Button;
    if-eqz v52, :cond_22

    .line 2044
    const/16 v6, 0x8

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2046
    :cond_22
    if-eqz v97, :cond_1

    .line 2047
    const/16 v6, 0x8

    move-object/from16 v0, v97

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1801
    .end local v52    # "createButton":Landroid/widget/Button;
    .end local v65    # "galPhotoString":Ljava/lang/String;
    .end local v66    # "gal_company":Ljava/lang/String;
    .end local v67    # "gal_title":Ljava/lang/String;
    .end local v71    # "hasPresence":Z
    .end local v97    # "updateButton":Landroid/widget/Button;
    .restart local v93    # "simManager":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_23
    const/16 v78, 0x0

    goto/16 :goto_9

    .line 1861
    .restart local v78    # "isAirPlaneOn":Z
    :cond_24
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v12, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v6, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1862
    const-string v6, "vnd.android.cursor.item/im"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1863
    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/quickcontact/ResolveCache;->clear()V

    .line 1866
    :cond_25
    new-instance v11, Lcom/android/contacts/quickcontact/DataAction;

    move-object v12, v5

    move-object/from16 v13, v25

    move-object v14, v7

    move-wide v15, v8

    move-object/from16 v17, p1

    invoke-direct/range {v11 .. v17}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1867
    .local v11, "action":Lcom/android/contacts/quickcontact/Action;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyFavoriteswidget:Z

    if-eqz v6, :cond_26

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasPhone:Z

    if-eqz v6, :cond_26

    const-string v6, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-interface {v11}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1870
    invoke-interface {v11}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v12, "com.android.phone"

    const-string v13, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1872
    :cond_26
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v81

    invoke-direct {v0, v11, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    move-result v102

    .line 1873
    .restart local v102    # "wasAdded":Z
    if-eqz v102, :cond_28

    .line 1875
    if-nez v81, :cond_27

    if-eqz v79, :cond_28

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_28

    .line 1876
    :cond_27
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    :cond_28
    const-string v6, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    const-string v6, "com.sec.android.app.snsaccountlinkedin.account_type"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 1882
    invoke-interface {v11}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v60

    check-cast v60, Ljava/lang/String;

    .line 1883
    .local v60, "email":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEmails:Ljava/util/List;

    move-object/from16 v0, v60

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1886
    .end local v60    # "email":Ljava/lang/String;
    :cond_29
    const-string v15, "mimetype=? AND _id=?"

    .line 1887
    .local v15, "selection":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/contacts/quickcontact/QuickContactActivity;->CONTACT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v19, "data6"

    aput-object v19, v14, v6

    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v6, 0x0

    const-string v19, "vnd.android.cursor.item/phone_v2"

    aput-object v19, v16, v6

    const/4 v6, 0x1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v16, v6

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v53

    .line 1889
    .local v53, "cursor1":Landroid/database/Cursor;
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1890
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2a

    .line 1892
    const-string v6, "data6"

    move-object/from16 v0, v53

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v53

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->capability:Ljava/lang/String;

    .line 1893
    sget-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->capability:Ljava/lang/String;

    if-nez v6, :cond_2a

    .line 1894
    const-string v6, " "

    sput-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->capability:Ljava/lang/String;

    .line 1898
    :cond_2a
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->close()V

    .line 1902
    const-string v6, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    sget-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->capability:Ljava/lang/String;

    const-string v12, "0"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    sget-boolean v6, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v6, :cond_13

    .line 1903
    new-instance v16, Lcom/android/contacts/quickcontact/DataAction;

    const-string v18, "vnd.android.cursor.item/video-call"

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-wide/from16 v20, v8

    move-object/from16 v22, p1

    invoke-direct/range {v16 .. v22}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1904
    .local v16, "videoCallingAction":Lcom/android/contacts/quickcontact/Action;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    move-result v107

    .line 1905
    .local v107, "wasVideoCallingAdded":Z
    if-eqz v107, :cond_13

    .line 1906
    if-nez v81, :cond_2b

    if-eqz v79, :cond_13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_13

    .line 1907
    :cond_2b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    const-string v12, "vnd.android.cursor.item/video-call"

    move-object/from16 v0, v16

    invoke-virtual {v6, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 1991
    .end local v11    # "action":Lcom/android/contacts/quickcontact/Action;
    .end local v15    # "selection":Ljava/lang/String;
    .end local v16    # "videoCallingAction":Lcom/android/contacts/quickcontact/Action;
    .end local v53    # "cursor1":Landroid/database/Cursor;
    .end local v78    # "isAirPlaneOn":Z
    .end local v93    # "simManager":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .end local v102    # "wasAdded":Z
    .end local v107    # "wasVideoCallingAdded":Z
    :cond_2c
    const/16 v71, 0x0

    goto/16 :goto_b

    .line 2053
    .end local v7    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v8    # "dataId":J
    .end local v25    # "mimeType":Ljava/lang/String;
    .end local v39    # "accountType":Ljava/lang/String;
    .end local v54    # "dataSet":Ljava/lang/String;
    .end local v79    # "isPrimary":Z
    .end local v80    # "isStarred":Z
    .end local v81    # "isSuperPrimary":Z
    .end local v94    # "starButtonContainer":Landroid/widget/LinearLayout;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v73

    .local v73, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v73 .. v73}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface/range {v73 .. v73}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    .line 2054
    .local v41, "actionChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-static/range {v41 .. v41}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    goto :goto_c

    .line 2057
    .end local v41    # "actionChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    :cond_2e
    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2f

    if-eqz p1, :cond_2f

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 2059
    const/16 v84, 0x0

    .line 2060
    .local v84, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v6}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v6

    const/4 v12, 0x1

    if-ne v6, v12, :cond_32

    .line 2061
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v84

    .line 2066
    :goto_d
    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v89

    .line 2067
    .local v89, "presence":I
    const/16 v6, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 2071
    .local v47, "chatCapability":I
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 2072
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFirstQuery:Z

    if-eqz v6, :cond_2f

    .line 2073
    const v6, 0x7f09010a

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-direct {v0, v6, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    .line 2074
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFirstQuery:Z

    .line 2083
    .end local v47    # "chatCapability":I
    .end local v84    # "name":Ljava/lang/String;
    .end local v89    # "presence":I
    :cond_2f
    :goto_e
    if-eqz p1, :cond_30

    if-eqz v88, :cond_30

    .line 2085
    if-eqz v85, :cond_34

    .line 2086
    move-object/from16 v0, v88

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2109
    :cond_30
    :goto_f
    new-instance v51, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    move-object/from16 v0, v51

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2110
    .local v51, "containedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2113
    const/16 v46, 0x0

    .line 2116
    .local v46, "callAdded":Z
    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_36

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsTutorialMode:Z

    if-nez v6, :cond_36

    .line 2117
    sget-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_DUAL_CHN:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v73

    :cond_31
    :goto_10
    invoke-interface/range {v73 .. v73}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface/range {v73 .. v73}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 2118
    .restart local v25    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v51

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 2119
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2120
    move-object/from16 v0, v51

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_10

    .line 2063
    .end local v25    # "mimeType":Ljava/lang/String;
    .end local v46    # "callAdded":Z
    .end local v51    # "containedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v84    # "name":Ljava/lang/String;
    :cond_32
    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v84

    goto/16 :goto_d

    .line 2077
    .restart local v47    # "chatCapability":I
    .restart local v89    # "presence":I
    :cond_33
    const v6, 0x7f09010a

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-direct {v0, v6, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    goto :goto_e

    .line 2088
    .end local v47    # "chatCapability":I
    .end local v84    # "name":Ljava/lang/String;
    .end local v89    # "presence":I
    :cond_34
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 2089
    invoke-virtual/range {v88 .. v88}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_30

    .line 2091
    const/4 v6, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactId:J

    invoke-static {v6, v12, v13, v14}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v6

    move-object/from16 v0, v88

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->setImageResource(I)V

    goto :goto_f

    .line 2095
    :cond_35
    const/4 v6, 0x1

    move-object/from16 v0, v88

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->setIsDefaultImage(Z)V

    .line 2096
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-static {v12, v13, v0, v1}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, v88

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f

    .line 2146
    .restart local v46    # "callAdded":Z
    .restart local v51    # "containedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_36
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v12, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v6, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 2148
    sget-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_CHN:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v73

    :cond_37
    :goto_11
    invoke-interface/range {v73 .. v73}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface/range {v73 .. v73}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 2149
    .restart local v25    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v51

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 2150
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2151
    move-object/from16 v0, v51

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 2155
    .end local v25    # "mimeType":Ljava/lang/String;
    :cond_38
    sget-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v73

    :cond_39
    :goto_12
    invoke-interface/range {v73 .. v73}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface/range {v73 .. v73}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 2156
    .restart local v25    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v51

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 2157
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2158
    move-object/from16 v0, v51

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2160
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 2161
    const-string v6, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 2162
    const/16 v46, 0x1

    goto :goto_12

    .line 2170
    .end local v25    # "mimeType":Ljava/lang/String;
    :cond_3a
    invoke-interface/range {v51 .. v51}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-interface {v0, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [Ljava/lang/String;

    .local v43, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v83, v0

    .local v83, "len$":I
    const/16 v73, 0x0

    .local v73, "i$":I
    :goto_13
    move/from16 v0, v73

    move/from16 v1, v83

    if-ge v0, v1, :cond_3c

    aget-object v25, v43, v73

    .line 2171
    .restart local v25    # "mimeType":Ljava/lang/String;
    sget-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 2172
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2173
    move-object/from16 v0, v51

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2170
    :cond_3b
    add-int/lit8 v73, v73, 0x1

    goto :goto_13

    .line 2178
    .end local v25    # "mimeType":Ljava/lang/String;
    :cond_3c
    sget-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v73

    .local v73, "i$":Ljava/util/Iterator;
    :cond_3d
    :goto_14
    invoke-interface/range {v73 .. v73}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface/range {v73 .. v73}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 2179
    .restart local v25    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v51

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 2180
    move-object/from16 v0, v51

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2181
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 2185
    .end local v25    # "mimeType":Ljava/lang/String;
    :cond_3e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v12, "CscFeature_Contact_DisableTriggerInternetCall"

    invoke-virtual {v6, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 2187
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    const-string v12, "vnd.android.cursor.item/sip_address"

    invoke-interface {v6, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 2188
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    const-string v12, "vnd.android.cursor.item/sip_address"

    invoke-interface {v6, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2193
    :cond_3f
    const/16 v44, 0x0

    .line 2194
    .local v44, "buttonIndex":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2195
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v73

    :goto_15
    invoke-interface/range {v73 .. v73}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface/range {v73 .. v73}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 2196
    .restart local v25    # "mimeType":Ljava/lang/String;
    if-eqz v44, :cond_40

    .line 2197
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v12, 0x7f0401bf

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v6, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v101

    check-cast v101, Landroid/widget/ImageView;

    .line 2198
    .local v101, "verticaldivider":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, v101

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2201
    .end local v101    # "verticaldivider":Landroid/widget/ImageView;
    :cond_40
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v45

    move/from16 v3, v44

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v42

    .line 2202
    .local v42, "actionView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2203
    add-int/lit8 v44, v44, 0x1

    .line 2204
    goto :goto_15

    .line 2206
    .end local v25    # "mimeType":Ljava/lang/String;
    .end local v42    # "actionView":Landroid/view/View;
    :cond_41
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d000a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    if-ge v6, v12, :cond_42

    .line 2207
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v12, 0x7f0401bf

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v6, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v101

    check-cast v101, Landroid/widget/ImageView;

    .line 2208
    .restart local v101    # "verticaldivider":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, v101

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2235
    .end local v101    # "verticaldivider":Landroid/widget/ImageView;
    :cond_42
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 2236
    const/16 v74, 0x0

    .line 2237
    .local v74, "idxIcon":I
    const/16 v76, 0x0

    .line 2239
    .local v76, "idxMimeType":I
    if-eqz v46, :cond_43

    .line 2240
    const/16 v74, 0x1

    .line 2241
    const/16 v76, 0x1

    .line 2244
    :cond_43
    const/16 v72, 0x0

    .local v72, "i":I
    :goto_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v72

    if-ge v0, v6, :cond_45

    .line 2246
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    add-int/lit8 v77, v76, 0x1

    .end local v76    # "idxMimeType":I
    .local v77, "idxMimeType":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    move/from16 v0, v72

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move/from16 v0, v76

    invoke-interface {v6, v0, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2247
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v12, 0x7f0401bf

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v6, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v101

    check-cast v101, Landroid/widget/ImageView;

    .line 2248
    .restart local v101    # "verticaldivider":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    add-int/lit8 v75, v74, 0x1

    .end local v74    # "idxIcon":I
    .local v75, "idxIcon":I
    move-object/from16 v0, v101

    move/from16 v1, v74

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    move/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 2251
    .local v42, "actionView":Lcom/android/contacts/quickcontact/CheckableImageView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    add-int/lit8 v74, v75, 0x1

    .end local v75    # "idxIcon":I
    .restart local v74    # "idxIcon":I
    move-object/from16 v0, v42

    move/from16 v1, v75

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2252
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;

    .line 2254
    .local v62, "fd":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;
    move-object/from16 v0, v62

    iget-object v6, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->uris:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v82

    .line 2255
    .local v82, "it":Ljava/util/Iterator;
    :goto_17
    invoke-interface/range {v82 .. v82}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 2256
    invoke-interface/range {v82 .. v82}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v98

    check-cast v98, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;

    .line 2257
    .local v98, "uris":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;
    move-object/from16 v0, v98

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;->displayUri:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 2259
    .local v36, "uri":Ljava/lang/String;
    const-string v6, "sip:"

    const-string v12, ""

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    .line 2260
    const-string v6, "tel:"

    const-string v12, ""

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    .line 2262
    new-instance v11, Lcom/android/contacts/quickcontact/DataAction;

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->serviceName:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v98

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;->intent:Landroid/content/Intent;

    move-object/from16 v38, v0

    move-object/from16 v33, v11

    move-object/from16 v34, p0

    invoke-direct/range {v33 .. v38}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2263
    .local v11, "action":Lcom/android/contacts/quickcontact/DataAction;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    move-object/from16 v0, v62

    iget-object v12, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    invoke-virtual {v6, v12, v11}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;)V

    .line 2264
    const-string v6, "QuickContact"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "binddata(), fd.name:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v62

    iget-object v13, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 2244
    .end local v11    # "action":Lcom/android/contacts/quickcontact/DataAction;
    .end local v36    # "uri":Ljava/lang/String;
    .end local v98    # "uris":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;
    :cond_44
    add-int/lit8 v72, v72, 0x1

    move/from16 v76, v77

    .end local v77    # "idxMimeType":I
    .restart local v76    # "idxMimeType":I
    goto/16 :goto_16

    .line 2270
    .end local v42    # "actionView":Lcom/android/contacts/quickcontact/CheckableImageView;
    .end local v62    # "fd":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;
    .end local v72    # "i":I
    .end local v74    # "idxIcon":I
    .end local v76    # "idxMimeType":I
    .end local v82    # "it":Ljava/util/Iterator;
    .end local v101    # "verticaldivider":Landroid/widget/ImageView;
    :cond_45
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_47

    const/16 v69, 0x1

    .line 2271
    .local v69, "hasData":Z
    :goto_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    if-eqz v69, :cond_48

    const/4 v6, 0x0

    :goto_19
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2272
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    if-eqz v69, :cond_49

    const/4 v6, 0x0

    :goto_1a
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2273
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    if-eqz v6, :cond_46

    .line 2274
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    if-eqz v69, :cond_4a

    const/4 v6, 0x0

    :goto_1b
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2276
    :cond_46
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    if-eqz v69, :cond_4b

    const/4 v6, 0x0

    :goto_1c
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2278
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setLayoutForMultiWindow()V

    .line 2280
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 2281
    return-void

    .line 2270
    .end local v69    # "hasData":Z
    :cond_47
    const/16 v69, 0x0

    goto :goto_18

    .line 2271
    .restart local v69    # "hasData":Z
    :cond_48
    const/16 v6, 0x8

    goto :goto_19

    .line 2272
    :cond_49
    const/16 v6, 0x8

    goto :goto_1a

    .line 2274
    :cond_4a
    const/16 v6, 0x8

    goto :goto_1b

    .line 2276
    :cond_4b
    const/16 v6, 0x8

    goto :goto_1c
.end method

.method private bindLinkedInInfo(Landroid/database/Cursor;)V
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1348
    if-nez p1, :cond_1

    .line 1373
    :cond_0
    return-void

    .line 1352
    :cond_1
    if-eqz p1, :cond_0

    .line 1353
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1354
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1355
    new-instance v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;

    invoke-direct {v6}, Lcom/sec/android/app/contacts/detail/SnsUserInfo;-><init>()V

    .line 1356
    .local v6, "info":Lcom/sec/android/app/contacts/detail/SnsUserInfo;
    const-string v1, "linkedIn"

    iput-object v1, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->mimeType:Ljava/lang/String;

    .line 1357
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->memberId:Ljava/lang/String;

    .line 1358
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->name:Ljava/lang/String;

    .line 1359
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->headline:Ljava/lang/String;

    .line 1360
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->company:Ljava/lang/String;

    .line 1361
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->positionTitle:Ljava/lang/String;

    .line 1362
    iget-object v1, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->memberId:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/contacts/detail/SnsUserInfo$LINKEDIN_USER_INFO;->getProfileIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->profileIntent:Landroid/content/Intent;

    .line 1363
    const-string v1, "QuickContact"

    const-string v2, "mimeType:%s, memberId:%s, name:%s, headline:%s, company:%s, positionTitle:%s, profileAction:%s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->mimeType:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->memberId:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->name:Ljava/lang/String;

    aput-object v4, v3, v9

    iget-object v4, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->headline:Ljava/lang/String;

    aput-object v4, v3, v10

    iget-object v4, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->company:Ljava/lang/String;

    aput-object v4, v3, v11

    const/4 v4, 0x5

    iget-object v5, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->positionTitle:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->profileIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    new-instance v0, Lcom/android/contacts/quickcontact/DataAction;

    iget-object v2, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->mimeType:Ljava/lang/String;

    iget-object v3, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->headline:Ljava/lang/String;

    iget-object v4, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->name:Ljava/lang/String;

    iget-object v5, v6, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->profileIntent:Landroid/content/Intent;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1370
    .local v0, "snsUserInfoAction":Lcom/android/contacts/quickcontact/DataAction;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/DataAction;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;)V

    goto :goto_0
.end method

.method private bindPhotoData(Landroid/database/Cursor;)V
    .locals 17
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1584
    new-instance v11, Lcom/android/contacts/util/DataStatus;

    invoke-direct {v11}, Lcom/android/contacts/util/DataStatus;-><init>()V

    .line 1586
    .local v11, "status":Lcom/android/contacts/util/DataStatus;
    const v12, 0x7f090109

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/widget/ContactPhotoView;

    .line 1588
    .local v10, "photoView":Lcom/sec/android/app/contacts/widget/ContactPhotoView;
    if-eqz v10, :cond_0

    .line 1589
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1592
    :cond_0
    const/4 v7, 0x0

    .line 1593
    .local v7, "photoBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1595
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/contacts/util/DataStatus;->possibleUpdate(Landroid/database/Cursor;)V

    .line 1597
    const/16 v12, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1600
    .local v6, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1604
    const-string v12, "vnd.android.cursor.item/photo"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1605
    const-string v12, "data14"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1606
    .local v1, "displayPhotoColumnIndex":I
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v5, 0x1

    .line 1607
    .local v5, "hasDisplayPhoto":Z
    :goto_1
    if-eqz v5, :cond_2

    .line 1608
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1609
    .local v2, "displayPhotoId":J
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNamecardMode:Z

    if-eqz v12, :cond_4

    sget-object v12, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v13, "display_photo"

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sget v13, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNamecardDataId:I

    int-to-long v13, v13

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1613
    .local v4, "displayPhotoUri":Landroid/net/Uri;
    :goto_2
    new-instance v13, Lcom/android/contacts/quickcontact/QuickContactActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4, v10}, Lcom/android/contacts/quickcontact/QuickContactActivity$15;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/net/Uri;Lcom/sec/android/app/contacts/widget/ContactPhotoView;)V

    sget-object v14, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v12, 0x0

    check-cast v12, [Ljava/lang/Void;

    invoke-virtual {v13, v14, v12}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1636
    .end local v2    # "displayPhotoId":J
    .end local v4    # "displayPhotoUri":Landroid/net/Uri;
    :cond_2
    const-string v12, "data15"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1637
    .local v9, "photoColumnIndex":I
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 1638
    .local v8, "photoBlob":[B
    if-eqz v8, :cond_1

    .line 1639
    const/4 v12, 0x0

    array-length v13, v8

    invoke-static {v8, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    .line 1606
    .end local v5    # "hasDisplayPhoto":Z
    .end local v8    # "photoBlob":[B
    .end local v9    # "photoColumnIndex":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1609
    .restart local v2    # "displayPhotoId":J
    .restart local v5    # "hasDisplayPhoto":Z
    :cond_4
    sget-object v12, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_2

    .line 1644
    .end local v1    # "displayPhotoColumnIndex":I
    .end local v2    # "displayPhotoId":J
    .end local v5    # "hasDisplayPhoto":Z
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_5
    if-eqz v10, :cond_6

    .line 1646
    if-eqz v7, :cond_7

    .line 1647
    invoke-virtual {v10, v7}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1654
    :cond_6
    :goto_3
    return-void

    .line 1650
    :cond_7
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->setIsDefaultImage(Z)V

    .line 1651
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactId:J

    invoke-static/range {v13 .. v16}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method private checkNamecardMode(Landroid/net/Uri;)Z
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 662
    const/4 v10, 0x0

    .line 663
    .local v10, "isNamecardMode":Z
    move-object/from16 v11, p1

    .line 665
    .local v11, "lookupUri":Landroid/net/Uri;
    if-nez v11, :cond_0

    .line 666
    const/4 v0, 0x0

    .line 699
    :goto_0
    return v0

    .line 670
    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 671
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    .line 675
    :cond_1
    if-eqz v11, :cond_2

    const-string v0, "contacts"

    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 678
    .local v13, "rawContactId":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    .line 681
    .end local v13    # "rawContactId":J
    :cond_2
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 682
    .local v7, "contactId":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/quickcontact/QuickContactActivity;->PROJECTION_CONTACT_NAMECARD:[Ljava/lang/String;

    const-string v3, "_id = ? and is_private > 0 and is_private IS NOT NULL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 686
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 687
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 688
    .local v12, "photoId":I
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNamecardDataId:I

    .line 689
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data11"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 692
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 693
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v10, 0x1

    .line 696
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v12    # "photoId":I
    :cond_3
    :goto_1
    if-eqz v9, :cond_4

    .line 697
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v10

    .line 699
    goto/16 :goto_0

    .line 693
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v12    # "photoId":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private close(Z)V
    .locals 3
    .param p1, "withAnimation"    # Z

    .prologue
    .line 1197
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1198
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1199
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1203
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1204
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1205
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mServiceLookup:Landroid/net/Uri;

    .line 1208
    :cond_1
    if-eqz p1, :cond_3

    .line 1209
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->fadeOutBackground()V

    .line 1210
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$13;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$13;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->hideContent(Ljava/lang/Runnable;)Z

    move-result v0

    .line 1234
    .local v0, "animated":Z
    if-nez v0, :cond_2

    .line 1237
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1242
    .end local v0    # "animated":Z
    :cond_2
    :goto_0
    return-void

    .line 1240
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z
    .locals 1
    .param p1, "action"    # Lcom/android/contacts/quickcontact/Action;
    .param p2, "resolveCache"    # Lcom/android/contacts/quickcontact/ResolveCache;

    .prologue
    .line 2595
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    move-result v0

    return v0
.end method

.method private considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z
    .locals 2
    .param p1, "action"    # Lcom/android/contacts/quickcontact/Action;
    .param p2, "resolveCache"    # Lcom/android/contacts/quickcontact/ResolveCache;
    .param p3, "front"    # Z

    .prologue
    .line 2608
    invoke-virtual {p2, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->hasResolve(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2609
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p3}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;Z)V

    .line 2610
    const/4 v0, 0x1

    .line 2612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2675
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    mul-int/lit8 v2, p1, 0x2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/CheckableImageView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2679
    :goto_0
    return-object v1

    .line 2677
    :catch_0
    move-exception v0

    .line 2679
    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getClassNameOfBaseActivity()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2961
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2962
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 2963
    .local v2, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2965
    .local v1, "p":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDimensionValuesByRoundOff(I)I
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/high16 v2, 0x3f000000

    .line 2322
    if-gtz p1, :cond_0

    .line 2323
    const/4 v1, 0x0

    .line 2329
    :goto_0
    return v1

    .line 2325
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2326
    .local v0, "value":F
    const/high16 v1, 0x3f800000

    rem-float v1, v0, v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 2327
    add-float/2addr v0, v2

    .line 2329
    :cond_1
    float-to-int v1, v0

    goto :goto_0
.end method

.method public static getIsTutorialMode()Z
    .locals 1

    .prologue
    .line 2969
    sget-boolean v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->msIsTutorialMode:Z

    return v0
.end method

.method private getServiceLookupUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 1173
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 1175
    .local v1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1177
    .local v0, "noOfParts":I
    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_LOOKUP_URI:Landroid/net/Uri;

    add-int/lit8 v3, v0, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1179
    .local v2, "uri":Landroid/net/Uri;
    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1181
    iget-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFirstQuery:Z

    if-nez v3, :cond_0

    .line 1182
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->addOptionsToQuery(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v2

    .line 1184
    :cond_0
    return-object v2
.end method

.method private getServiceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 1489
    const/4 v2, 0x0

    .line 1491
    .local v2, "retValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.rcs"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1492
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v3, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1493
    const-string v3, "im_application_name"

    const-string v4, "string"

    const-string v5, "com.samsung.rcs"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    move-object v3, v2

    .line 1502
    .end local v1    # "resources":Landroid/content/res/Resources;
    :goto_1
    return-object v3

    .line 1495
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :cond_1
    const-string v3, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1496
    const-string v3, "ft_application_name"

    const-string v4, "string"

    const-string v5, "com.samsung.rcs"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1499
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1500
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private handleOutsideTouch()V
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->isContentFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    .line 1193
    :cond_0
    return-void
.end method

.method private inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 8
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "resolveCache"    # Lcom/android/contacts/quickcontact/ResolveCache;
    .param p3, "root"    # Landroid/view/ViewGroup;
    .param p4, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 2620
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-eqz v5, :cond_1

    const v5, 0x7f0401cd

    :goto_0
    invoke-virtual {v6, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 2625
    .local v4, "typeView":Lcom/android/contacts/quickcontact/CheckableImageView;
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2626
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2628
    if-eqz v0, :cond_0

    .line 2629
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/Action;

    .line 2632
    .local v2, "firstInfo":Lcom/android/contacts/quickcontact/Action;
    invoke-virtual {p2, v2}, Lcom/android/contacts/quickcontact/ResolveCache;->getDescription(Lcom/android/contacts/quickcontact/Action;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2633
    .local v1, "descrip":Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2634
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v7}, Lcom/android/contacts/quickcontact/CheckableImageView;->setChecked(Z)V

    .line 2635
    invoke-virtual {v4, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2638
    const-string v5, "vnd.android.cursor.item/video-call"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v5, :cond_2

    .line 2639
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02024b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2667
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2669
    .end local v1    # "descrip":Ljava/lang/CharSequence;
    .end local v2    # "firstInfo":Lcom/android/contacts/quickcontact/Action;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v4

    .line 2620
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    .end local v4    # "typeView":Lcom/android/contacts/quickcontact/CheckableImageView;
    :cond_1
    const v5, 0x7f0401cc

    goto :goto_0

    .line 2641
    .restart local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    .restart local v1    # "descrip":Ljava/lang/CharSequence;
    .restart local v2    # "firstInfo":Lcom/android/contacts/quickcontact/Action;
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "typeView":Lcom/android/contacts/quickcontact/CheckableImageView;
    :cond_2
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private isEASAccountRegistered()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 763
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/quickcontact/QuickContactActivity$DirectoryQuery;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/quickcontact/QuickContactActivity$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/android/contacts/quickcontact/QuickContactActivity$DirectoryQuery;->SELECTION:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 767
    .local v6, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 768
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 769
    .local v7, "id":J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDirectoryIds:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 774
    .end local v7    # "id":J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 775
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 774
    :cond_2
    if-eqz v6, :cond_3

    .line 775
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 779
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDirectoryIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_4
    move v0, v9

    goto :goto_1
.end method

.method private isMimeExcluded(Ljava/lang/String;)Z
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1569
    iget-boolean v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->EASY_MIMETYPES:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1579
    :cond_0
    :goto_0
    return v4

    .line 1572
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    if-nez v6, :cond_2

    move v4, v5

    .line 1573
    goto :goto_0

    .line 1574
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1575
    .local v1, "excludedMime":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1574
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "excludedMime":Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 1579
    goto :goto_0
.end method

.method private isSimAccount(Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 2973
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.sec.contact.sim2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2975
    :cond_0
    const/4 v0, 0x1

    .line 2977
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onServiceQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 32
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->getFeatureDescriptions()Ljava/util/Collection;

    move-result-object v27

    .line 1381
    .local v27, "services":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;>;"
    if-nez p3, :cond_1

    .line 1485
    :cond_0
    return-void

    .line 1385
    :cond_1
    const-string v2, "feature_tag"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1386
    .local v17, "featuretag_idx":I
    const-string v2, "icon_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1387
    .local v19, "icon_idx":I
    const-string v2, "package_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 1388
    .local v25, "package_name_idx":I
    const-string v2, "is_enabled"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1389
    .local v24, "is_enabled_idx":I
    const-string v2, "int_category"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1390
    .local v21, "int_cat_idx":I
    const-string v2, "int_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 1391
    .local v22, "int_name_idx":I
    const-string v2, "displayname"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1392
    .local v15, "displayname_idx":I
    const-string v2, "sip_uri"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1393
    .local v29, "uri_idx":I
    const-string v2, "service_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 1401
    .local v26, "service_name_idx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->reset()V

    .line 1403
    :cond_2
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1405
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1406
    .local v3, "feature_tag":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1408
    .local v23, "is_enabled":I
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1409
    .local v13, "category":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1411
    .local v4, "icon_id":I
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1413
    .local v5, "package_name":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1414
    .local v8, "displayName":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1417
    .local v9, "uriName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v6, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v2, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1418
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "tel"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1419
    new-instance v28, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.presence.action.anonymousfetch"

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1421
    .local v28, "testIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.rcs.framework.presence"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1422
    const-string v2, "com.samsung.rcs.framework.presence.action"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1423
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1424
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1429
    .end local v28    # "testIntent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getServiceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1430
    .local v10, "serviceName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1431
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1433
    :cond_4
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1434
    .local v11, "action":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v7, v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1435
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1437
    invoke-virtual {v7, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1443
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;

    if-lez v23, :cond_5

    const/4 v6, 0x1

    :goto_1
    invoke-virtual/range {v2 .. v10}, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->addInfo(Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 1452
    .end local v3    # "feature_tag":Ljava/lang/String;
    .end local v4    # "icon_id":I
    .end local v5    # "package_name":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v9    # "uriName":Ljava/lang/String;
    .end local v10    # "serviceName":Ljava/lang/String;
    .end local v11    # "action":Ljava/lang/String;
    .end local v13    # "category":Ljava/lang/String;
    .end local v23    # "is_enabled":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v20

    .line 1453
    .local v20, "index":I
    :cond_7
    :goto_2
    add-int/lit8 v20, v20, -0x1

    if-ltz v20, :cond_9

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1455
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    add-int/lit8 v6, v20, 0x1

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_2

    .line 1462
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1464
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;

    .line 1465
    .local v16, "fd":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->isEnabled:Z

    if-eqz v2, :cond_a

    .line 1468
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    const-string v6, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsOwnFtCapable:Z

    if-eqz v2, :cond_a

    .line 1471
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-eqz v2, :cond_c

    const v2, 0x7f0401cd

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v6, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 1474
    .local v12, "actionView":Lcom/android/contacts/quickcontact/CheckableImageView;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsTypeViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1477
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconPackagename:Ljava/lang/String;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconId:I

    move/from16 v30, v0

    const/16 v31, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v2, v6, v0, v1}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1478
    .local v14, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    const-string v2, "QuickContact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "onServiceQueryComplete(), fd.name:"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1471
    .end local v12    # "actionView":Lcom/android/contacts/quickcontact/CheckableImageView;
    .end local v14    # "d":Landroid/graphics/drawable/Drawable;
    :cond_c
    const v2, 0x7f0401cc

    goto :goto_4
.end method

.method private queryLinkedInInfo()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1143
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1145
    .local v9, "selection":Ljava/lang/StringBuilder;
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/app/contacts/detail/SnsUserInfo$LINKEDIN_USER_INFO;->refreshUserInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email IN (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x4

    sget-object v3, Lcom/sec/android/app/contacts/detail/SnsUserInfo$LINKEDIN_USER_INFO;->LOOKUP_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/detail/SnsUserInfo$LINKEDIN_USER_INFO;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    :goto_1
    return-void

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEmails:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEmails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1150
    :cond_1
    const-string v0, "QuickContact"

    const-string v1, "queryLinkedInInfo() no emails"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1154
    :cond_2
    const-string v0, "email IN ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEmails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 1156
    if-eqz v8, :cond_3

    .line 1157
    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    :cond_3
    const-string v0, "\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEmails:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    const-string v0, "\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1163
    :cond_4
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private rcsShow()V
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x0

    .line 1003
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->rcsQueryOwn()V

    .line 1005
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.samsung.rcs.serviceprovider"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1015
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getServiceLookupUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mServiceLookup:Landroid/net/Uri;

    .line 1012
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1013
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mServiceLookup:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setHeaderImage(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1557
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1558
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1559
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1560
    if-nez p2, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1562
    :cond_0
    return-void

    .line 1560
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setHeaderNameText(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "resId"    # I

    .prologue
    .line 1509
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    .line 1510
    return-void
.end method

.method private setHeaderNameText(ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 1514
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1515
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1516
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1518
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1519
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    :cond_0
    move-object v1, v0

    .line 1521
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v0

    .line 1522
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1523
    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-eqz v1, :cond_1

    .line 1524
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1531
    :cond_1
    :goto_0
    return-void

    .line 1528
    .restart local v0    # "view":Landroid/view/View;
    :cond_2
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setHeaderText(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 1548
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1549
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1550
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1551
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1553
    :cond_0
    return-void

    .line 1551
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setLayoutForMultiWindow()V
    .locals 0

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->adjustLayout()V

    .line 896
    return-void
.end method

.method private show()V
    .locals 26

    .prologue
    .line 915
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 917
    .local v17, "intent":Landroid/content/Intent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 919
    .local v8, "lookupUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    if-nez v2, :cond_2

    .line 921
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 922
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 926
    :cond_0
    if-eqz v8, :cond_1

    const-string v2, "contacts"

    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 927
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    .line 928
    .local v22, "rawContactId":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 931
    .end local v22    # "rawContactId":J
    :cond_1
    const-string v2, "missing lookupUri"

    invoke-static {v8, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 933
    :try_start_0
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    :cond_2
    :goto_0
    const-string v2, "exclude_mimes"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .line 943
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 944
    .local v20, "mimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 945
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .local v14, "arr$":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v24, v14, v16

    .line 946
    .local v24, "s":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 934
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .end local v20    # "mimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "s":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 935
    .local v15, "e":Ljava/lang/NumberFormatException;
    const-string v2, "QuickContact"

    const-string v3, "NumberFormatException"

    invoke-static {v2, v3, v15}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactId:J

    goto :goto_0

    .line 949
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    .restart local v20    # "mimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v2, "vnd.android.cursor.item/contact_type"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 955
    const v2, 0x7f0903fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    .line 956
    const v2, 0x7f09010a

    const v3, 0x104000e

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(II)V

    .line 957
    const v2, 0x7f090111

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 958
    const v2, 0x7f0903fd

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 959
    const v2, 0x7f0903fe

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderImage(ILandroid/graphics/drawable/Drawable;)V

    .line 965
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 966
    const/16 v19, 0x0

    .line 967
    .local v19, "lookupString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v21

    .line 968
    .local v21, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v25

    .line 970
    .local v25, "segmentsNo":I
    const/4 v2, 0x4

    move/from16 v0, v25

    if-ne v0, v2, :cond_4

    .line 971
    add-int/lit8 v2, v25, -0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "lookupString":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 973
    .restart local v19    # "lookupString":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v2, v25, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 975
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_LOOKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 977
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->rcsShow()V

    .line 980
    .end local v19    # "lookupString":Ljava/lang/String;
    .end local v21    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "segmentsNo":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 984
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    if-eqz v2, :cond_6

    .line 985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    const-string v3, "entities"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 986
    .local v5, "entityUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity$GALDataQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    .end local v5    # "entityUri":Landroid/net/Uri;
    .end local v8    # "lookupUri":Landroid/net/Uri;
    :goto_2
    return-void

    .line 989
    .restart local v8    # "lookupUri":Landroid/net/Uri;
    :cond_6
    const-string v2, "data"

    invoke-static {v8, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 990
    .local v9, "dataUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v7, 0x1

    sget-object v10, Lcom/android/contacts/quickcontact/QuickContactActivity$DataQuery;->PROJECTION:[Ljava/lang/String;

    const-string v11, "mimetype!=? OR (mimetype=? AND _id=photo_id)"

    const/4 v2, 0x2

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "vnd.android.cursor.item/photo"

    aput-object v3, v12, v2

    const/4 v2, 0x1

    const-string v3, "vnd.android.cursor.item/photo"

    aput-object v3, v12, v2

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private showForShowOrCreate()V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1065
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1067
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "exclude_mimes"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .line 1070
    const v5, 0x7f0903fb

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    .line 1073
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    new-instance v6, Lcom/android/contacts/quickcontact/QuickContactActivity$10;

    invoke-direct {v6, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$10;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1082
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v6, 0x7f09010a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_0

    .line 1084
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/view/View;->setClickable(Z)V

    .line 1085
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1086
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1088
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v6, 0x7f090401

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1089
    .local v0, "createButton":Landroid/widget/Button;
    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsProfile:Z

    if-eqz v5, :cond_1

    .line 1090
    const v5, 0x7f0e01dd

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1092
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    new-instance v5, Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    invoke-direct {v5, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$11;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1116
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v6, 0x7f090402

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1117
    .local v2, "updateButton":Landroid/widget/Button;
    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsProfile:Z

    if-eqz v5, :cond_2

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    new-instance v3, Lcom/android/contacts/quickcontact/QuickContactActivity$12;

    invoke-direct {v3, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$12;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1135
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "mailto"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1136
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->queryLinkedInInfo()V

    .line 1140
    :goto_1
    return-void

    :cond_2
    move v3, v4

    .line 1117
    goto :goto_0

    .line 1138
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindDataForShowOrCreate()V

    goto :goto_1
.end method

.method private verifyIsEasAddress()Z
    .locals 15

    .prologue
    .line 784
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 786
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDirectoryIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 787
    .local v9, "directoryId":J
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 788
    .local v7, "builder":Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 789
    const-string v0, "directory"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 791
    const-string v0, "limit"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 793
    const-string v13, ""

    .line 794
    .local v13, "lookupkey":Ljava/lang/String;
    const/4 v8, 0x0

    .line 796
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/quickcontact/QuickContactActivity$GALContactQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "LIMIT 1"

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 798
    if-eqz v8, :cond_2

    .line 799
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 800
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mGalContactId:J

    .line 801
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 803
    iget-wide v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mGalContactId:J

    invoke-static {v0, v1, v13}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 804
    .local v14, "uri":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "directory"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    const/4 v0, 0x1

    .line 813
    if-eqz v8, :cond_1

    .line 814
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 819
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "directoryId":J
    .end local v13    # "lookupkey":Ljava/lang/String;
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    return v0

    .line 813
    .restart local v7    # "builder":Landroid/net/Uri$Builder;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "directoryId":J
    .restart local v13    # "lookupkey":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_0

    .line 814
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 810
    :catch_0
    move-exception v11

    .line 811
    .local v11, "e":Landroid/os/OperationCanceledException;
    :try_start_1
    const-string v0, "QuickContact"

    const-string v1, "EAS query canceled"

    invoke-static {v0, v1, v11}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 813
    if-eqz v8, :cond_0

    .line 814
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 813
    .end local v11    # "e":Landroid/os/OperationCanceledException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 814
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 819
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "directoryId":J
    .end local v13    # "lookupkey":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public adjustLayout()V
    .locals 10

    .prologue
    const v9, 0x7f0c0023

    .line 2287
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f0d0000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2289
    .local v0, "MAX":I
    iget-boolean v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-eqz v7, :cond_2

    const v7, 0x7f0c0038

    :goto_0
    invoke-direct {p0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getDimensionValuesByRoundOff(I)I

    move-result v7

    invoke-direct {p0, v9}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getDimensionValuesByRoundOff(I)I

    move-result v8

    add-int v2, v7, v8

    .line 2292
    .local v2, "heightOfARow":I
    const/4 v6, 0x0

    .line 2294
    .local v6, "numOfLines":I
    iget-boolean v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-eqz v7, :cond_0

    .line 2295
    add-int/lit8 v0, v0, -0x1

    .line 2296
    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 2299
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    if-eqz v7, :cond_4

    .line 2300
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 2301
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2302
    .local v5, "mimeType":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2303
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    if-eqz v1, :cond_1

    .line 2304
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 2305
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 2300
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2289
    .end local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    .end local v2    # "heightOfARow":I
    .end local v3    # "i":I
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "numOfLines":I
    :cond_2
    const v7, 0x7f0c0019

    goto :goto_0

    .restart local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    .restart local v2    # "heightOfARow":I
    .restart local v3    # "i":I
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v6    # "numOfLines":I
    :cond_3
    move v6, v0

    .line 2305
    goto :goto_2

    .line 2311
    .end local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    .end local v3    # "i":I
    .end local v5    # "mimeType":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2313
    .local v4, "lisLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    mul-int v7, v2, v6

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2315
    if-lez v6, :cond_5

    .line 2316
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v9}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getDimensionValuesByRoundOff(I)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2318
    :cond_5
    return-void
.end method

.method bindDataForShowOrCreate()V
    .locals 43

    .prologue
    .line 2333
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v31

    .line 2334
    .local v31, "cache":Lcom/android/contacts/quickcontact/ResolveCache;
    move-object/from16 v5, p0

    .line 2336
    .local v5, "context":Landroid/content/Context;
    const/16 v39, 0x1

    .line 2337
    .local v39, "simActive1":Z
    const/16 v40, 0x1

    .line 2346
    .local v40, "simActive2":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2348
    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v26

    .line 2351
    .local v26, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    const v6, 0x7f090109

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Lcom/sec/android/app/contacts/widget/ContactPhotoView;

    .line 2352
    .local v38, "photoView":Lcom/sec/android/app/contacts/widget/ContactPhotoView;
    if-eqz v38, :cond_0

    .line 2353
    const/4 v6, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2356
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    packed-switch v6, :pswitch_data_0

    .line 2476
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .line 2477
    .local v27, "actionChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-static/range {v27 .. v27}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    goto :goto_1

    .line 2358
    .end local v27    # "actionChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    .end local v34    # "i$":Ljava/util/Iterator;
    :pswitch_0
    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v41

    .line 2359
    .local v41, "simManager":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v35, 0x1

    .line 2361
    .local v35, "isAirPlaneOn":Z
    :goto_2
    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsTutorialMode:Z

    if-nez v6, :cond_7

    const-string v6, "vnd.sec.contact.sim"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "vnd.sec.contact.sim2"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    if-eqz v35, :cond_7

    .line 2366
    :cond_3
    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/quickcontact/ResolveCache;->clear()V

    .line 2367
    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIconChanged()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2368
    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->setSimInfo()[Z

    .line 2369
    :cond_4
    const-string v6, "vnd.sec.contact.phone"

    const-string v9, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v9}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v7

    .line 2371
    .local v7, "kind2":Lcom/android/contacts/model/DataKind;
    new-instance v4, Lcom/android/contacts/quickcontact/DataAction;

    const-string v6, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 2373
    .local v4, "action2":Lcom/android/contacts/quickcontact/DataAction;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    .line 2375
    const-string v6, "vnd.sec.contact.phone"

    const-string v9, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v9}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v11

    .line 2377
    .local v11, "kind3":Lcom/android/contacts/model/DataKind;
    new-instance v8, Lcom/android/contacts/quickcontact/DataAction;

    const-string v10, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    const/4 v13, 0x2

    move-object v9, v5

    invoke-direct/range {v8 .. v13}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 2379
    .local v8, "action3":Lcom/android/contacts/quickcontact/DataAction;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v8, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    .line 2433
    .end local v8    # "action3":Lcom/android/contacts/quickcontact/DataAction;
    .end local v11    # "kind3":Lcom/android/contacts/model/DataKind;
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v9, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v6, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2435
    const-string v6, "vnd.sec.contact.phone"

    const-string v9, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v9}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v11

    .line 2437
    .restart local v11    # "kind3":Lcom/android/contacts/model/DataKind;
    new-instance v8, Lcom/android/contacts/quickcontact/DataAction;

    const-string v10, "vnd.android.cursor.item/ipcall-address"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    const/4 v13, 0x2

    move-object v9, v5

    invoke-direct/range {v8 .. v13}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 2439
    .restart local v8    # "action3":Lcom/android/contacts/quickcontact/DataAction;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v8, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    .line 2442
    .end local v8    # "action3":Lcom/android/contacts/quickcontact/DataAction;
    .end local v11    # "kind3":Lcom/android/contacts/model/DataKind;
    :cond_5
    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2443
    const-string v6, "vnd.sec.contact.phone"

    const-string v9, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v9}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v11

    .line 2445
    .restart local v11    # "kind3":Lcom/android/contacts/model/DataKind;
    new-instance v8, Lcom/android/contacts/quickcontact/DataAction;

    const-string v10, "vnd.android.cursor.item/vcall-address"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    const/4 v13, 0x2

    move-object v9, v5

    invoke-direct/range {v8 .. v13}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 2447
    .restart local v8    # "action3":Lcom/android/contacts/quickcontact/DataAction;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v8, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    goto/16 :goto_0

    .line 2359
    .end local v4    # "action2":Lcom/android/contacts/quickcontact/DataAction;
    .end local v7    # "kind2":Lcom/android/contacts/model/DataKind;
    .end local v8    # "action3":Lcom/android/contacts/quickcontact/DataAction;
    .end local v11    # "kind3":Lcom/android/contacts/model/DataKind;
    .end local v35    # "isAirPlaneOn":Z
    :cond_6
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 2425
    .restart local v35    # "isAirPlaneOn":Z
    :cond_7
    const-string v6, "vnd.sec.contact.phone"

    const-string v9, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v9}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v7

    .line 2427
    .restart local v7    # "kind2":Lcom/android/contacts/model/DataKind;
    new-instance v4, Lcom/android/contacts/quickcontact/DataAction;

    const-string v14, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object v12, v4

    move-object v13, v5

    move-object v15, v7

    invoke-direct/range {v12 .. v17}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 2429
    .restart local v4    # "action2":Lcom/android/contacts/quickcontact/DataAction;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    goto :goto_3

    .line 2451
    .end local v4    # "action2":Lcom/android/contacts/quickcontact/DataAction;
    .end local v7    # "kind2":Lcom/android/contacts/model/DataKind;
    .end local v35    # "isAirPlaneOn":Z
    .end local v41    # "simManager":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :pswitch_1
    const-string v6, "vnd.sec.contact.phone"

    const-string v9, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v9}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v15

    .line 2453
    .local v15, "kind1":Lcom/android/contacts/model/DataKind;
    new-instance v12, Lcom/android/contacts/quickcontact/DataAction;

    const-string v14, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    move-object v13, v5

    invoke-direct/range {v12 .. v17}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 2455
    .local v12, "action1":Lcom/android/contacts/quickcontact/DataAction;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v12, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    goto/16 :goto_0

    .line 2458
    .end local v12    # "action1":Lcom/android/contacts/quickcontact/DataAction;
    .end local v15    # "kind1":Lcom/android/contacts/model/DataKind;
    :pswitch_2
    const-string v6, "vnd.sec.contact.phone"

    const-string v9, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v9}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v19

    .line 2460
    .local v19, "kind":Lcom/android/contacts/model/DataKind;
    new-instance v16, Lcom/android/contacts/quickcontact/DataAction;

    const-string v18, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v17, v5

    invoke-direct/range {v16 .. v21}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 2462
    .local v16, "action":Lcom/android/contacts/quickcontact/DataAction;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    goto/16 :goto_0

    .line 2465
    .end local v16    # "action":Lcom/android/contacts/quickcontact/DataAction;
    .end local v19    # "kind":Lcom/android/contacts/model/DataKind;
    :pswitch_3
    const-string v6, "vnd.sec.contact.phone"

    const-string v9, "vnd.android.cursor.item/name"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v9}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v23

    .line 2467
    .local v23, "kind4":Lcom/android/contacts/model/DataKind;
    new-instance v20, Lcom/android/contacts/quickcontact/DataAction;

    const-string v22, "vnd.android.cursor.item/name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v21, v5

    invoke-direct/range {v20 .. v25}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 2469
    .local v20, "action4":Lcom/android/contacts/quickcontact/DataAction;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    goto/16 :goto_0

    .line 2480
    .end local v20    # "action4":Lcom/android/contacts/quickcontact/DataAction;
    .end local v23    # "kind4":Lcom/android/contacts/model/DataKind;
    .restart local v34    # "i$":Ljava/util/Iterator;
    :cond_8
    if-eqz v38, :cond_9

    .line 2482
    const/4 v6, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->setIsDefaultImage(Z)V

    .line 2483
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    int-to-long v13, v13

    invoke-static {v9, v10, v13, v14}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2487
    :cond_9
    new-instance v32, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2488
    .local v32, "containedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2490
    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsTutorialMode:Z

    if-nez v6, :cond_b

    .line 2491
    sget-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_DUAL_CHN:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_a
    :goto_4
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 2492
    .local v37, "mimeType":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2493
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2494
    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2520
    .end local v37    # "mimeType":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v9, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v6, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2522
    sget-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_CHN:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_c
    :goto_5
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 2523
    .restart local v37    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2524
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2525
    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2529
    .end local v37    # "mimeType":Ljava/lang/String;
    :cond_d
    sget-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_e
    :goto_6
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 2530
    .restart local v37    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2531
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2532
    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2538
    .end local v37    # "mimeType":Ljava/lang/String;
    :cond_f
    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-interface {v0, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Ljava/lang/String;

    .local v29, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v36, v0

    .local v36, "len$":I
    const/16 v34, 0x0

    .local v34, "i$":I
    :goto_7
    move/from16 v0, v34

    move/from16 v1, v36

    if-ge v0, v1, :cond_11

    aget-object v37, v29, v34

    .line 2539
    .restart local v37    # "mimeType":Ljava/lang/String;
    sget-object v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 2540
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2541
    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2538
    :cond_10
    add-int/lit8 v34, v34, 0x1

    goto :goto_7

    .line 2544
    .end local v37    # "mimeType":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 2547
    const/16 v30, 0x0

    .line 2548
    .local v30, "buttonIndex":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 2549
    .restart local v37    # "mimeType":Ljava/lang/String;
    if-eqz v30, :cond_12

    .line 2550
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v9, 0x7f0401bf

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v6, v9, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/ImageView;

    .line 2551
    .local v42, "verticaldivider":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2554
    .end local v42    # "verticaldivider":Landroid/widget/ImageView;
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v31

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v28

    .line 2555
    .local v28, "actionView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2556
    add-int/lit8 v30, v30, 0x1

    .line 2557
    goto :goto_8

    .line 2559
    .end local v28    # "actionView":Landroid/view/View;
    .end local v37    # "mimeType":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v9, 0x7f0401bf

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v6, v9, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/ImageView;

    .line 2560
    .restart local v42    # "verticaldivider":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2562
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    const/16 v33, 0x1

    .line 2563
    .local v33, "hasData":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    if-eqz v33, :cond_16

    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2564
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    if-eqz v33, :cond_17

    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2565
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    if-eqz v6, :cond_14

    .line 2566
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    if-eqz v33, :cond_18

    const/4 v6, 0x0

    :goto_c
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2568
    :cond_14
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    if-eqz v33, :cond_19

    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2570
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setLayoutForMultiWindow()V

    .line 2574
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v9, Lcom/android/contacts/quickcontact/QuickContactActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$18;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-static {v6, v9}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2586
    return-void

    .line 2562
    .end local v33    # "hasData":Z
    :cond_15
    const/16 v33, 0x0

    goto :goto_9

    .line 2563
    .restart local v33    # "hasData":Z
    :cond_16
    const/16 v6, 0x8

    goto :goto_a

    .line 2564
    :cond_17
    const/16 v6, 0x8

    goto :goto_b

    .line 2566
    :cond_18
    const/16 v6, 0x8

    goto :goto_c

    .line 2568
    :cond_19
    const/16 v6, 0x8

    goto :goto_d

    .line 2356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 2685
    check-cast p1, Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .line 2686
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V

    .line 2687
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1246
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    .line 1247
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/high16 v10, 0x20000

    const/16 v6, 0x400

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 423
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 425
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsMultiWindowSupported:Z

    .line 428
    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsMultiWindowSupported:Z

    if-eqz v5, :cond_0

    .line 429
    new-instance v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 433
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 434
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x800000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 435
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 437
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 438
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "is_invalid_uri"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    .line 439
    const-string v5, "tutorial_mode_from_dialer"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsTutorialMode:Z

    sput-boolean v5, Lcom/android/contacts/quickcontact/QuickContactActivity;->msIsTutorialMode:Z

    .line 440
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEasyMode(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    .line 441
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    .line 442
    const-string v5, "is_easyfavoriteswidget"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyFavoriteswidget:Z

    .line 444
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasPhone:Z

    .line 445
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasSms:Z

    .line 446
    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasPhone:Z

    invoke-static {v5}, Lcom/android/contacts/quickcontact/DataAction;->setPhoneAvailable(Z)V

    .line 447
    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasSms:Z

    invoke-static {v5}, Lcom/android/contacts/quickcontact/DataAction;->setSmsAvailable(Z)V

    .line 448
    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    invoke-static {v5}, Lcom/android/contacts/quickcontact/DataAction;->setIsEasyMode(Z)V

    .line 450
    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-eqz v5, :cond_4

    .line 452
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 453
    .local v2, "originalExtras":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 454
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 455
    const-string v5, "isprofile"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsProfile:Z

    .line 458
    :cond_1
    const-string v5, "scheme"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    .line 459
    const-string v5, "ssp"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    .line 460
    const-string v5, "mailto"

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 461
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    .line 462
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v6, "email"

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v6, "query"

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 465
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 466
    iput-boolean v9, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    .line 485
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 486
    :cond_3
    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    .line 490
    .end local v2    # "originalExtras":Landroid/os/Bundle;
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-nez v5, :cond_a

    .line 491
    const v5, 0x7f0e006b

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 493
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 659
    :cond_5
    :goto_1
    return-void

    .line 469
    .restart local v2    # "originalExtras":Landroid/os/Bundle;
    :cond_6
    const-string v5, "tel"

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 470
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v6, "phone"

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v6, "query"

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iput v9, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    goto :goto_0

    .line 473
    :cond_7
    const-string v5, "sip"

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 474
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v6, "sip"

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v6, "query"

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    goto :goto_0

    .line 477
    :cond_8
    const-string v5, "name"

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 478
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v6, "name"

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v6, "query"

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    goto/16 :goto_0

    .line 482
    :cond_9
    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    goto/16 :goto_0

    .line 498
    .end local v2    # "originalExtras":Landroid/os/Bundle;
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 501
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isAvailableOCR(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-nez v5, :cond_b

    .line 502
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->checkNamecardMode(Landroid/net/Uri;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNamecardMode:Z

    .line 505
    :cond_b
    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNamecardMode:Z

    if-eqz v5, :cond_10

    .line 506
    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-eqz v5, :cond_f

    const v5, 0x7f0401ba

    :goto_2
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 513
    :goto_3
    const v5, 0x7f0903e5

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .line 514
    const v5, 0x7f090404

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    .line 515
    const v5, 0x7f090403

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    .line 516
    const v5, 0x7f090124

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    .line 517
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 518
    const v5, 0x7f0903e7

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    .line 519
    const v5, 0x7f090405

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    .line 520
    const v5, 0x7f0903e6

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    .line 522
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v6, Lcom/android/contacts/quickcontact/QuickContactActivity$3;

    invoke-direct {v6, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v5, v6}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setOnOutsideTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 530
    new-instance v5, Lcom/android/contacts/quickcontact/QuickContactActivity$4;

    invoke-direct {v5, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

    .line 550
    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-nez v5, :cond_12

    .line 551
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    :goto_4
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 555
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPager;->disableBounceBack(Z)V

    .line 556
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 558
    new-instance v5, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mQueryListener:Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    invoke-direct {v5, p0, v6}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 561
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->refreshRCSeSettingValue(Landroid/content/Context;)V

    .line 562
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 563
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    .line 564
    new-instance v5, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;

    invoke-direct {v5}, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;-><init>()V

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;

    .line 565
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    .line 568
    :cond_c
    new-instance v5, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v5, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 570
    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-nez v5, :cond_13

    .line 571
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->show()V

    .line 574
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 575
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    const-string v6, "data"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 576
    .local v0, "dataUri":Landroid/net/Uri;
    new-instance v5, Lcom/android/contacts/quickcontact/QuickContactActivity$5;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/os/Handler;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDataObserver:Landroid/database/ContentObserver;

    .line 595
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v0, v9, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 612
    .end local v0    # "dataUri":Landroid/net/Uri;
    :cond_d
    :goto_5
    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 613
    .local v4, "sourceBounds":Landroid/graphics/Rect;
    if-eqz v4, :cond_e

    .line 614
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v5, v4}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setChildTargetScreen(Landroid/graphics/Rect;)V

    .line 617
    :cond_e
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v6, Lcom/android/contacts/quickcontact/QuickContactActivity$6;

    invoke-direct {v6, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$6;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-static {v5, v6}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 627
    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    if-eqz v5, :cond_5

    .line 628
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isEASAccountRegistered()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 629
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 630
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v6, 0x7f0e01bd

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 632
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 633
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 634
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v6, Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    invoke-direct {v6, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$7;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 644
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 645
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/contacts/quickcontact/QuickContactActivity$8;

    invoke-direct {v5, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$8;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 653
    .local v3, "progressThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 506
    .end local v3    # "progressThread":Ljava/lang/Thread;
    .end local v4    # "sourceBounds":Landroid/graphics/Rect;
    :cond_f
    const v5, 0x7f0401bb

    goto/16 :goto_2

    .line 509
    :cond_10
    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-eqz v5, :cond_11

    const v5, 0x7f0401b9

    :goto_6
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_3

    :cond_11
    const v5, 0x7f0401b8

    goto :goto_6

    .line 553
    :cond_12
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_4

    .line 599
    :cond_13
    iget-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    if-nez v5, :cond_d

    .line 600
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showForShowOrCreate()V

    goto/16 :goto_5

    .line 655
    .restart local v4    # "sourceBounds":Landroid/graphics/Rect;
    :cond_14
    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    .line 656
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showForShowOrCreate()V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 858
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 862
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 863
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDataObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 864
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 866
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 867
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 704
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 705
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 714
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 717
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 722
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 724
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 726
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 728
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 755
    :cond_0
    const-string v1, "com.android.contacts.activities.PeopleActivity"

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getClassNameOfBaseActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 760
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 871
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 872
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 901
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 902
    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    .line 905
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 0
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setLayoutForMultiWindow()V

    .line 877
    return-void
.end method

.method rcsQueryOwn()V
    .locals 12

    .prologue
    .line 1018
    const-string v0, "QuickContact"

    const-string v1, "queryOwn"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_OWN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1024
    .local v9, "ownCursor":Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 1025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsOwnFtCapable:Z

    .line 1026
    const-string v0, "QuickContact"

    const-string v1, "queryOwn : ownCursor == null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    .end local v9    # "ownCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 1030
    .restart local v9    # "ownCursor":Landroid/database/Cursor;
    :cond_1
    const-string v0, "QuickContact"

    const-string v1, "QueryOwn ownCursor is not null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1034
    const-string v0, "feature_tag"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1035
    .local v10, "serviceTagNo":I
    const-string v0, "is_enabled"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1037
    .local v7, "enabledNo":I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1038
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1039
    .local v11, "tag":Ljava/lang/String;
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1040
    .local v6, "enabled":I
    const-string v0, "QuickContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryOwn tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    if-eqz v11, :cond_2

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez v6, :cond_2

    .line 1043
    const-string v0, "QuickContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryOwn mIsOwnFtCapable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsOwnFtCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsOwnFtCapable:Z

    .line 1045
    if-eqz v9, :cond_0

    .line 1046
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1058
    .end local v6    # "enabled":I
    .end local v7    # "enabledNo":I
    .end local v9    # "ownCursor":Landroid/database/Cursor;
    .end local v10    # "serviceTagNo":I
    .end local v11    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1059
    .local v8, "ise":Ljava/lang/IllegalStateException;
    const-string v0, "QuickContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOwn : RCS Query Failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1053
    .end local v8    # "ise":Ljava/lang/IllegalStateException;
    .restart local v9    # "ownCursor":Landroid/database/Cursor;
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsOwnFtCapable:Z

    .line 1054
    const-string v0, "QuickContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryOwn mIsOwnFtCapable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsOwnFtCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateImage(Z)V
    .locals 4
    .param p1, "isVolteEnabled"    # Z

    .prologue
    .line 824
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 825
    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v1

    .line 826
    .local v1, "v":Lcom/android/contacts/quickcontact/CheckableImageView;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 827
    sget-boolean v2, Lcom/android/contacts/quickcontact/QuickContactActivity;->isVoLTEEnabled:Z

    if-eqz v2, :cond_5

    .line 828
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 829
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 830
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0203dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 848
    .end local v1    # "v":Lcom/android/contacts/quickcontact/CheckableImageView;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    if-eqz v2, :cond_1

    .line 849
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-virtual {v2, p1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->updateVolteImage(Z)V

    .line 851
    :cond_1
    return-void

    .line 832
    .restart local v1    # "v":Lcom/android/contacts/quickcontact/CheckableImageView;
    :cond_2
    const-string v2, "feature_kt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 833
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0203d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 835
    :cond_3
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 836
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0203d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 839
    :cond_4
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02077f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 842
    :cond_5
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0203d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 824
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
