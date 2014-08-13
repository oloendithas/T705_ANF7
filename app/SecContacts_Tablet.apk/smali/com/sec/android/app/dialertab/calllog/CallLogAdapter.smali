.class public Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;,
        Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;,
        Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;,
        Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;,
        Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;,
        Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;
    }
.end annotation


# static fields
.field private static final CONTACT_INFO_CACHE_SIZE:I = 0x64

.field private static final DBG:Z

.field public static final FONT_SIZE_HUGE:I = 0x4

.field public static final FONT_SIZE_LARGE:I = 0x3

.field public static final FONT_SIZE_NORMAL:I = 0x2

.field public static final FONT_SIZE_SMALL:I = 0x1

.field public static final FONT_SIZE_TINY:I = 0x0

.field private static final REDRAW:I = 0x1

.field private static final START_PROCESSING_REQUESTS_DELAY_MILLIS:I = 0x3e8

.field private static final START_THREAD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CallLogAdapter"

.field static final buildcarrier:Ljava/lang/String;

.field private static checkScroll:Z

.field private static mPrevView:Landroid/view/View;

.field public static mResumeFromDetail:Z

.field private static prev_pos:I

.field private static refreshDetail:Z

.field private static selectedPos:I

.field public static simNameCDMA:Ljava/lang/String;

.field public static simNameGSM:Ljava/lang/String;


# instance fields
.field public final FHD_WIDTH:D

.field public final HD_WIDTH:D

.field private final NOR_INT:I

.field private final SEP_INT:I

.field public final WVGA_WIDTH:D

.field private doNotGroup:Z

.field private isSplitStatus:Z

.field private itemPosition:I

.field private itemSize:I

.field private final mCallFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;

.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field private final mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

.field private final mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field private mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

.field private mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/util/ExpirableCache",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;",
            "Lcom/sec/android/app/dialertab/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;

.field private volatile mDone:Z

.field private mDpiSize:I

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsVoLTEEnabled:Z

.field private mItemPosition:Ljava/lang/Integer;

.field private mItemSize:Ljava/lang/Integer;

.field private final mKeyActionListener:Landroid/view/View$OnKeyListener;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field private mLoading:Z

.field private mMessage:Z

.field public mNotRequestFocus:Z

.field mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private final mPhotoLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mRemindMeLater:Z

.field private mRemindTimeArray:[I

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private final mSecondaryLongActionListener:Landroid/view/View$OnLongClickListener;

.field private mTodayFormat:Ljava/lang/CharSequence;

.field private mToolsValue:I

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private mYesterdayFormat:Ljava/lang/CharSequence;

.field private seperatorIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->buildcarrier:Ljava/lang/String;

    .line 150
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    .line 217
    const-string v0, "Slot 1"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameCDMA:Ljava/lang/String;

    .line 218
    const-string v0, "Slot 2"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameGSM:Ljava/lang/String;

    .line 228
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mResumeFromDetail:Z

    .line 320
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrevView:Landroid/view/View;

    .line 321
    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    .line 322
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->refreshDetail:Z

    .line 323
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->checkScroll:Z

    .line 325
    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->prev_pos:I

    return-void

    :cond_0
    move v0, v2

    .line 150
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callLogFragment"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p3, "callFetcher"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;
    .param p4, "currentCountryIso"    # Ljava/lang/String;
    .param p5, "voicemailNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 722
    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 152
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mNotRequestFocus:Z

    .line 191
    const/16 v2, 0xa

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->NOR_INT:I

    .line 192
    const/16 v2, 0x37

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->SEP_INT:I

    .line 209
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isSplitStatus:Z

    .line 210
    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 212
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mIsVoLTEEnabled:Z

    .line 214
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->doNotGroup:Z

    .line 215
    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 220
    const-wide v2, 0x4090e00000000000L

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->FHD_WIDTH:D

    .line 221
    const-wide v2, 0x4086800000000000L

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->HD_WIDTH:D

    .line 222
    const-wide/high16 v2, 0x407e000000000000L

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->WVGA_WIDTH:D

    .line 296
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mLoading:Z

    .line 315
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 328
    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    .line 329
    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    .line 332
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRemindMeLater:Z

    .line 405
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mKeyActionListener:Landroid/view/View$OnKeyListener;

    .line 464
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 562
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 638
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhotoLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 658
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$5;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 677
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mSecondaryLongActionListener:Landroid/view/View$OnLongClickListener;

    .line 706
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    .line 1171
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mMessage:Z

    .line 724
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 725
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 726
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;

    .line 727
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .line 729
    const/16 v2, 0x64

    invoke-static {v2}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    .line 730
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    .line 731
    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 733
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 734
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    .line 736
    .local v0, "callTypeHelper":Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 737
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v1, p5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 738
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v1, v0, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    .line 740
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v3, v4, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;-><init>(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    .line 743
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    .line 745
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    .line 759
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mDpiSize:I

    .line 760
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;ILcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callLogFragment"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p3, "callFetcher"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;
    .param p4, "currentCountryIso"    # Ljava/lang/String;
    .param p5, "voicemailNumber"    # Ljava/lang/String;
    .param p6, "toolsValue"    # I
    .param p7, "listener"    # Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .prologue
    .line 764
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iput p6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    .line 766
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 767
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    const/16 v1, 0x226

    if-ne v0, v1, :cond_0

    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->doNotGroup:Z

    .line 771
    :goto_0
    return-void

    .line 770
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->doNotGroup:Z

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 140
    sget v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->prev_pos:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 140
    sput p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->prev_pos:I

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isSplitStatus:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mMessage:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mMessage:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 140
    sget v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 140
    sput p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->refreshDetail:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 140
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->refreshDetail:Z

    return p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .prologue
    .line 140
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mItemSize:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mItemSize:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$900()Landroid/view/View;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrevView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$902(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 140
    sput-object p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrevView:Landroid/view/View;

    return-object p0
.end method

.method private adjustListItemLayoutBy7FontSize(Landroid/view/View;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "views"    # Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .prologue
    .line 3223
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3224
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3225
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "font_size"

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3226
    .local v2, "fontSize":I
    const v7, 0x7f0900e2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3227
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v7, 0x7f0900ec

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3228
    .local v5, "name_mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v7, 0x7f0900e9

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3230
    .local v0, "callIndi_mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v7, "CallLogAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adjustListItemLayoutBy7FontSize fontSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mlp.topMargin : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", name_mlp.topMargin : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", getTextSize() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 3233
    packed-switch v2, :pswitch_data_0

    .line 3298
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3240
    :pswitch_1
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x1e0

    if-ne v7, v8, :cond_0

    .line 3241
    const/4 v7, 0x3

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3242
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3247
    :pswitch_2
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x140

    if-eq v7, v8, :cond_1

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x1e0

    if-ne v7, v8, :cond_0

    .line 3248
    :cond_1
    const/4 v7, -0x3

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3249
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f11005c

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3250
    const/high16 v7, -0x3fc00000

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3251
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3252
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callIndi:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3256
    :pswitch_3
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x140

    if-eq v7, v8, :cond_2

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x1e0

    if-ne v7, v8, :cond_0

    .line 3257
    :cond_2
    const-string v7, "feature_kor"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3258
    const/4 v7, -0x6

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3262
    :goto_1
    const/high16 v7, -0x3ef00000

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3264
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f11005d

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3265
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3266
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callIndi:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3260
    :cond_3
    const/16 v7, -0xa

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 3271
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v7

    .line 3273
    .local v3, "lcdWidth":F
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v6, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3275
    .local v6, "smallestWidthdp":I
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 3284
    :pswitch_4
    const/high16 v7, 0x45200000

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_5

    const/high16 v7, 0x44c80000

    cmpl-float v7, v3, v7

    if-nez v7, :cond_6

    :cond_5
    const/16 v7, 0x320

    if-eq v6, v7, :cond_7

    :cond_6
    const/16 v7, 0x258

    if-ne v6, v7, :cond_0

    .line 3285
    :cond_7
    const/4 v7, -0x1

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3286
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3290
    :pswitch_5
    const/high16 v7, 0x45200000

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_8

    const/high16 v7, 0x44c80000

    cmpl-float v7, v3, v7

    if-nez v7, :cond_9

    :cond_8
    const/16 v7, 0x320

    if-eq v6, v7, :cond_a

    :cond_9
    const/16 v7, 0x258

    if-ne v6, v7, :cond_0

    .line 3291
    :cond_a
    const/16 v7, -0xa

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3292
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f11005d

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3293
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 3275
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private adjustListItemLayoutBy7FontSizeDetail(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v13, 0x320

    const/high16 v12, 0x45200000

    const/high16 v11, 0x44c80000

    .line 3396
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3397
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3398
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "font_size"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3399
    .local v3, "fontSize":I
    const v8, 0x7f09009c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3400
    .local v0, "callTime":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3402
    .local v5, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v8, "CallLogAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adjustListItemLayoutBy7FontSizeDetail fontSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mlp.topMargin : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3405
    packed-switch v3, :pswitch_data_0

    .line 3456
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3414
    :pswitch_1
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x1e0

    if-ne v8, v9, :cond_0

    .line 3415
    const/16 v8, -0xc

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3416
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f11005d

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3417
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3422
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v8

    .line 3423
    .local v4, "lcdWidth":F
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v7, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3425
    .local v7, "smallestWidthdp":I
    const v8, 0x7f0900a3

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3426
    .local v2, "duration":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3428
    .local v6, "mlpDuration":Landroid/view/ViewGroup$MarginLayoutParams;
    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 3436
    :pswitch_2
    cmpl-float v8, v4, v12

    if-eqz v8, :cond_2

    cmpl-float v8, v4, v11

    if-nez v8, :cond_0

    .line 3437
    :cond_2
    if-ne v7, v13, :cond_0

    .line 3438
    const/4 v8, -0x8

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3439
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110056

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3440
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3445
    :pswitch_3
    cmpl-float v8, v4, v12

    if-eqz v8, :cond_3

    cmpl-float v8, v4, v11

    if-nez v8, :cond_0

    .line 3446
    :cond_3
    if-ne v7, v13, :cond_0

    .line 3447
    const/16 v8, -0x15

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3448
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f11005b

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3449
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3405
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3428
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private adjustListItemLayoutByFontSize(Landroid/view/View;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "views"    # Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .prologue
    .line 3063
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3064
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3065
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "font_size"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3066
    .local v2, "fontSize":I
    const v8, 0x7f0900e2

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3067
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v8, 0x7f0900ec

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3068
    .local v5, "name_mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v8, 0x7f0900e9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3069
    .local v0, "callIndi_mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v8, 0x7f0900ee

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3071
    .local v6, "number_mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v8, "CallLogAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adjustListItemLayoutByFontSize fontSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mlp.topMargin : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", name_mlp.topMargin : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", getTextSize() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 3074
    packed-switch v2, :pswitch_data_0

    .line 3160
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid font size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3080
    :pswitch_0
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x140

    if-ne v8, v9, :cond_1

    iget v8, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v9, 0x43910000

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 3081
    const/16 v8, 0xb

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3082
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f110053

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3083
    const v8, 0x7f0900e2

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3215
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 3085
    :cond_1
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0xf0

    if-eq v8, v9, :cond_2

    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x1e0

    if-ne v8, v9, :cond_0

    .line 3086
    :cond_2
    const-string v8, "CallLogAdapter"

    const-string v9, "Large"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    const-string v8, "feature_qhd"

    invoke-static {v8}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "feature_common_use_multisim"

    invoke-static {v8}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3088
    const/4 v8, -0x8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3092
    :goto_1
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f110054

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3093
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3090
    :cond_3
    const/4 v8, 0x0

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 3097
    :pswitch_2
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x140

    if-ne v8, v9, :cond_6

    iget v8, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v9, 0x43910000

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    .line 3098
    const-string v8, "feature_is_note"

    invoke-static {v8}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "ms013gctc"

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3099
    :cond_4
    const/16 v8, 0xb

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3100
    const/4 v8, 0x0

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3101
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f110057

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3102
    const v8, 0x7f0900e2

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3103
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3109
    :goto_2
    const/high16 v8, -0x3ee00000

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 3105
    :cond_5
    const/16 v8, 0x16

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3106
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f110057

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3107
    const v8, 0x7f0900e2

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 3111
    :cond_6
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x140

    if-ne v8, v9, :cond_7

    .line 3112
    const/16 v8, 0xb

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3113
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f110059

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3114
    const v8, 0x7f0900e2

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3116
    :cond_7
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_e

    .line 3117
    const-string v8, "CallLogAdapter"

    const-string v9, "huge DENSITY_HIGH"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    const-string v8, "feature_is_fonblet"

    invoke-static {v8}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "feature_qhd"

    invoke-static {v8}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "feature_common_use_multisim"

    invoke-static {v8}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3119
    :cond_8
    const-string v8, "feature_kor"

    invoke-static {v8}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3120
    const/4 v8, -0x6

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3124
    :goto_3
    const/high16 v8, -0x3f200000

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3144
    :goto_4
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f110059

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3145
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3146
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callIndi:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3122
    :cond_9
    const/16 v8, -0xc

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 3126
    :cond_a
    iget v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mDpiSize:I

    const/16 v9, 0x140

    if-ne v8, v9, :cond_d

    .line 3127
    const-string v8, "DEFAULT"

    const-string v9, "PHONE_WHITE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3128
    const/16 v8, -0xc

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3131
    :goto_5
    const-string v8, "feature_support_keypad"

    invoke-static {v8}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 3132
    const/high16 v8, -0x3ee00000

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_4

    .line 3130
    :cond_b
    const/4 v8, -0x6

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_5

    .line 3134
    :cond_c
    const/high16 v8, -0x3f400000

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_4

    .line 3138
    :cond_d
    const/4 v8, 0x0

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3139
    const/high16 v8, -0x3f200000

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_4

    .line 3149
    :cond_e
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x1e0

    if-ne v8, v9, :cond_0

    .line 3150
    const-string v8, "CallLogAdapter"

    const-string v9, "huge DENSITY_XXHIGH"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    const/16 v8, -0xc

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3152
    const/high16 v8, -0x3f200000

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3154
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f110059

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3155
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3156
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callIndi:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3163
    :cond_f
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v8

    .line 3165
    .local v3, "lcdWidth":F
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v7, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3167
    .local v7, "smallestWidthdp":I
    const-string v8, "CallLogAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lcdWidth : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    const-string v8, "CallLogAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "smallestWidthdp : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    packed-switch v2, :pswitch_data_1

    .line 3217
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid font size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3176
    :pswitch_3
    const-string v8, "CallLogAdapter"

    const-string v9, "Large"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    const/high16 v8, 0x44a00000

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_10

    const/high16 v8, 0x44480000

    cmpl-float v8, v3, v8

    if-nez v8, :cond_12

    .line 3178
    :cond_10
    const/16 v8, 0x258

    if-eq v7, v8, :cond_11

    const/16 v8, 0x320

    if-ne v7, v8, :cond_0

    .line 3179
    :cond_11
    const/4 v8, 0x0

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3180
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f110054

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3181
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3183
    :cond_12
    const/high16 v8, 0x45200000

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_13

    const/high16 v8, 0x44c80000

    cmpl-float v8, v3, v8

    if-nez v8, :cond_0

    .line 3184
    :cond_13
    const/16 v8, 0x320

    if-ne v7, v8, :cond_0

    .line 3185
    const/16 v8, -0xa

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3186
    const/16 v8, 0xa

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3187
    const-string v8, "CallLogAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name_mlp.topMargin = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; name_mlp.bottomMargin = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f110054

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3189
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3194
    :pswitch_4
    const-string v8, "CallLogAdapter"

    const-string v9, "Huge"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    const/high16 v8, 0x44a00000

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_14

    const/high16 v8, 0x44480000

    cmpl-float v8, v3, v8

    if-nez v8, :cond_16

    .line 3196
    :cond_14
    const/16 v8, 0x258

    if-eq v7, v8, :cond_15

    const/16 v8, 0x320

    if-ne v7, v8, :cond_0

    .line 3197
    :cond_15
    const/4 v8, 0x0

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3198
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f110059

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3199
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3201
    :cond_16
    const/high16 v8, 0x45200000

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_17

    const/high16 v8, 0x44c80000

    cmpl-float v8, v3, v8

    if-nez v8, :cond_0

    .line 3202
    :cond_17
    const/16 v8, 0x320

    if-ne v7, v8, :cond_0

    .line 3203
    const/16 v8, -0x14

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3204
    const/16 v8, 0x14

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3205
    const/16 v8, 0xf

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3206
    const/16 v8, -0xf

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3207
    const-string v8, "CallLogAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name_mlp.topMargin = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; name_mlp.bottomMargin = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    const-string v8, "CallLogAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "number_mlp.topMargin = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; number_mlp.bottomMargin = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f110059

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3211
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3212
    iget-object v8, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3074
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3170
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private adjustListItemLayoutByFontSizeDetail(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3301
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3302
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3303
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "font_size"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3304
    .local v3, "fontSize":I
    const v8, 0x7f09009c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3305
    .local v0, "callTime":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3307
    .local v5, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v8, "CallLogAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adjustListItemLayoutByFontSizeDetail fontSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mlp.topMargin : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 3310
    packed-switch v3, :pswitch_data_0

    .line 3340
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid font size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3316
    :pswitch_0
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x140

    if-ne v8, v9, :cond_1

    iget v8, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v9, 0x43910000

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 3317
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110053

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3388
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 3319
    :cond_1
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_0

    .line 3320
    const/4 v8, 0x6

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3321
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110054

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3322
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3326
    :pswitch_2
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x140

    if-ne v8, v9, :cond_2

    iget v8, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v9, 0x43910000

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 3327
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110057

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 3333
    :cond_2
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0xf0

    if-eq v8, v9, :cond_3

    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x1e0

    if-ne v8, v9, :cond_0

    .line 3334
    :cond_3
    const/4 v8, 0x0

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3335
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110059

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3336
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3343
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v8

    .line 3344
    .local v4, "lcdWidth":F
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v7, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3346
    .local v7, "smallestWidthdp":I
    const-string v8, "CallLogAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lcdWidth : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    const-string v8, "CallLogAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "smallestWidthdp : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    const v8, 0x7f0900a3

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3350
    .local v2, "duration":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3352
    .local v6, "mlpDuration":Landroid/view/ViewGroup$MarginLayoutParams;
    packed-switch v3, :pswitch_data_1

    .line 3390
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid font size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3358
    :pswitch_3
    const-string v8, "CallLogAdapter"

    const-string v9, "Large"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    const/high16 v8, 0x44a00000

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_5

    const/high16 v8, 0x44480000

    cmpl-float v8, v4, v8

    if-nez v8, :cond_7

    .line 3360
    :cond_5
    const/16 v8, 0x258

    if-eq v7, v8, :cond_6

    const/16 v8, 0x320

    if-ne v7, v8, :cond_0

    .line 3361
    :cond_6
    const/4 v8, -0x8

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3362
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110056

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3363
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3365
    :cond_7
    const/high16 v8, 0x45200000

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_8

    const/high16 v8, 0x44c80000

    cmpl-float v8, v4, v8

    if-nez v8, :cond_0

    .line 3366
    :cond_8
    const/16 v8, 0x320

    if-ne v7, v8, :cond_0

    .line 3367
    const/4 v8, -0x8

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3368
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110056

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3369
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3374
    :pswitch_4
    const-string v8, "CallLogAdapter"

    const-string v9, "Huge"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    const/high16 v8, 0x44a00000

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_9

    const/high16 v8, 0x44480000

    cmpl-float v8, v4, v8

    if-nez v8, :cond_b

    .line 3376
    :cond_9
    const/16 v8, 0x258

    if-eq v7, v8, :cond_a

    const/16 v8, 0x320

    if-ne v7, v8, :cond_0

    .line 3377
    :cond_a
    const/16 v8, -0x15

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3378
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f11005b

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3379
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3381
    :cond_b
    const/high16 v8, 0x45200000

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_c

    const/high16 v8, 0x44c80000

    cmpl-float v8, v4, v8

    if-nez v8, :cond_0

    .line 3382
    :cond_c
    const/16 v8, 0x320

    if-ne v7, v8, :cond_0

    .line 3383
    const/16 v8, -0x15

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3384
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f11005b

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3385
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3310
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3352
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 118
    .param p1, "view"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "count"    # I

    .prologue
    .line 1751
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v117

    check-cast v117, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .line 1767
    .local v117, "views":Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getSeperatorIDList()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    .line 1771
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getStrSeparatorArray()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    .line 1773
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_5

    .line 1775
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v4, :cond_3f

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    if-nez v4, :cond_3f

    const-string v4, "feature_tmo"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "feature_vzw"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v4, v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3f

    :cond_1
    const-string v4, "feature_tmo"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "feature_vzw"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v4, v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v4, :cond_3f

    .line 1780
    :cond_2
    const/16 v116, 0x0

    .line 1781
    .local v116, "viewby_items_array":[Ljava/lang/String;
    const/16 v76, 0x0

    .line 1782
    .local v76, "arrayId":I
    const-string v4, "feature_spr"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "feature_cspire"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 1783
    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v4, :cond_25

    const-string v4, "feature_easy_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1784
    const v76, 0x7f08000c

    .line 1868
    :goto_0
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v76

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v116

    .line 1870
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-nez v4, :cond_4

    .line 1871
    :cond_3
    const-string v4, "feature_chn_duos_gsm_gsm"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameCDMA:Ljava/lang/String;

    .line 1873
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameGSM:Ljava/lang/String;

    .line 1874
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0400

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v22, 0x0

    sget-object v23, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameCDMA:Ljava/lang/String;

    aput-object v23, v8, v22

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v116, v4

    .line 1875
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0400

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v22, 0x0

    sget-object v23, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameGSM:Ljava/lang/String;

    aput-object v23, v8, v22

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v116, v4

    .line 1887
    :cond_4
    :goto_1
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogViewby_text:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1889
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v0, v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    move/from16 v97, v0

    .line 1890
    .local v97, "log_index":I
    const-string v4, "CallLogAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "log_index :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v97

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/16 v4, 0x50

    move/from16 v0, v97

    if-lt v0, v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/16 v4, 0x52

    move/from16 v0, v97

    if-gt v0, v4, :cond_3e

    .line 1894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v4, v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    add-int/lit8 v97, v4, -0x50

    .line 1895
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogViewby_text:Landroid/widget/TextView;

    aget-object v5, v116, v97

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1904
    .end local v76    # "arrayId":I
    .end local v97    # "log_index":I
    .end local v116    # "viewby_items_array":[Ljava/lang/String;
    :goto_2
    const/16 v99, 0x0

    .line 1905
    .local v99, "mDateText":Ljava/lang/String;
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1906
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    aget-object v99, v4, v5

    .line 1907
    invoke-virtual/range {v99 .. v99}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v99

    .line 1908
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate_text:Landroid/widget/TextView;

    move-object/from16 v0, v99

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1909
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1910
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 1915
    .end local v99    # "mDateText":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1916
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1917
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1919
    const/16 v4, 0x19

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v105

    .line 1920
    .local v105, "msgId":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1921
    .local v9, "number":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1922
    .local v14, "date":J
    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1923
    .local v16, "duration":J
    const/16 v4, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v82

    .line 1924
    .local v82, "callType":I
    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1925
    .local v11, "countryIso":Ljava/lang/String;
    const/16 v4, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1926
    .local v18, "logType":I
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    const/16 v4, 0x15

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_40

    const/16 v24, 0x1

    .line 1927
    .local v24, "simcardIndx":I
    :goto_3
    const/16 v4, 0x18

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 1928
    .local v25, "calloutduration":J
    const/16 v4, 0x22

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1929
    .local v27, "roamingCall":Ljava/lang/String;
    const/16 v4, 0x23

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1931
    .local v28, "iddValue":Ljava/lang/String;
    const/16 v4, 0x14

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 1932
    .local v41, "mCnapName":Ljava/lang/String;
    const/16 v4, 0x16

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 1933
    .local v42, "mCdnipNumber":Ljava/lang/String;
    const/16 v4, 0x17

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 1935
    .local v40, "mServiceType":I
    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v98

    .line 1936
    .local v98, "mCallType":I
    const/16 v4, 0x1c

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v75

    .line 1937
    .local v75, "simcardId":I
    const/16 v4, 0x1c

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v113

    .line 1938
    .local v113, "simcardIdIndex":Ljava/lang/String;
    const/16 v4, 0x1b

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v88, v0

    .line 1940
    .local v88, "durationSim2":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v79

    .line 1943
    .local v79, "cachedContactInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/16 v4, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v91

    .line 1944
    .local v91, "firstName":Ljava/lang/String;
    const/16 v4, 0x11

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v96

    .line 1945
    .local v96, "lastName":Ljava/lang/String;
    const/16 v4, 0x12

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v78

    .line 1946
    .local v78, "bussName":Ljava/lang/String;
    const/16 v4, 0x14

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v86

    .line 1947
    .local v86, "cnapName":Ljava/lang/String;
    const/16 v4, 0x13

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v84

    .line 1948
    .local v84, "cityId":Ljava/lang/String;
    const/4 v4, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v93

    .line 1950
    .local v93, "gedLocation":Ljava/lang/String;
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    .line 1951
    .local v87, "csc":Ljava/lang/String;
    const-string v4, "feature_volte_support_videocall"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "VZW"

    move-object/from16 v0, v87

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1953
    const-string v4, "CallLogAdapter"

    const-string v5, "Setting TAG for vide call type\t:"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    const v5, 0x7f0e03cb

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 1964
    :cond_6
    const-string v4, "feature_cityid"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1965
    if-eqz v84, :cond_7

    .line 1966
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->truncateCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    .line 1975
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    const/16 v5, 0x21

    if-eq v4, v5, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    const/16 v5, 0x22

    if-ne v4, v5, :cond_42

    .line 1976
    :cond_8
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1989
    :cond_9
    :goto_5
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v4, :cond_e

    .line 1991
    const/16 v106, 0x0

    .line 1992
    .local v106, "myActivity":Lcom/android/contacts/activities/DialtactsActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v110

    .line 1993
    .local v110, "obj":Landroid/app/Activity;
    move-object/from16 v0, v110

    instance-of v4, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v4, :cond_a

    .line 1994
    move-object/from16 v0, v110

    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity;

    move-object/from16 v106, v0

    .line 1997
    :cond_a
    if-eqz v106, :cond_e

    invoke-virtual/range {v106 .. v106}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    .line 1999
    const-string v4, "feature_folder_type"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    .line 2003
    const/16 v77, 0x1

    .line 2004
    .local v77, "bCanRequestFocus":Z
    const-string v4, "feature_support_call_log_search"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isSearchOn()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v92

    .line 2006
    .local v92, "focusView":Landroid/view/View;
    if-eqz v92, :cond_b

    move-object/from16 v0, v92

    instance-of v4, v0, Landroid/widget/SearchView$SearchAutoComplete;

    if-nez v4, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mNotRequestFocus:Z

    if-eqz v4, :cond_d

    .line 2007
    :cond_c
    const/16 v77, 0x0

    .line 2008
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mNotRequestFocus:Z

    .line 2012
    .end local v92    # "focusView":Landroid/view/View;
    :cond_d
    if-eqz v77, :cond_e

    .line 2013
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    if-nez v4, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_44

    .line 2014
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2015
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 2016
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 2024
    :goto_6
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v5

    if-ne v4, v5, :cond_e

    .line 2025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->clearFocus()V

    .line 2026
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 2034
    .end local v77    # "bCanRequestFocus":Z
    .end local v106    # "myActivity":Lcom/android/contacts/activities/DialtactsActivity;
    .end local v110    # "obj":Landroid/app/Activity;
    :cond_e
    const v4, 0x7f0900e7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v81

    .line 2035
    .local v81, "callButton_divider":Landroid/view/View;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCallButtonInList"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 2037
    const/4 v4, 0x4

    move-object/from16 v0, v81

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2038
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2041
    :cond_f
    move-object/from16 v85, v84

    .line 2044
    .local v85, "city_Id":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "-1"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "-2"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "-3"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "P"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isCalledPartyBCDNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 2051
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 2052
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCallButtonInList"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2054
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2055
    const/4 v4, 0x0

    move-object/from16 v0, v81

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2059
    sparse-switch v18, :sswitch_data_0

    .line 2114
    :cond_11
    :goto_7
    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2115
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 2116
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2117
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2118
    const-string v4, "CallLogAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simcardIdIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_4a

    .line 2120
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    sget v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexCDMA:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSimCardIcon(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2153
    :cond_12
    :goto_8
    const-string v4, "feature_common_dsds_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "ctc_single_simcard_and_use_dsds_feature"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 2155
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move/from16 v0, v75

    invoke-static {v5, v0}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimIcon(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2156
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    move-object/from16 v0, v113

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2159
    :cond_13
    const-string v4, "feature_remind_me_later_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 2160
    const/4 v4, 0x1

    move/from16 v0, p3

    if-le v0, v4, :cond_51

    .line 2161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getRemindTimeArray()[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRemindTimeArray:[I

    .line 2162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRemindTimeArray:[I

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    aget v4, v4, v5

    if-eqz v4, :cond_50

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRemindMeLater:Z

    .line 2167
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRemindMeLater:Z

    if-eqz v4, :cond_53

    .line 2169
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    const v5, 0x7f020759

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2170
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2176
    :cond_14
    :goto_b
    const-string v4, "feature_tablet_selection_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2177
    const-string v4, "CallLogAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindView mCallLogFragment : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getSelectionMode() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v4, :cond_54

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v4

    if-nez v4, :cond_54

    .line 2179
    const v4, 0x7f0900f7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2185
    :cond_15
    :goto_c
    new-instance v109, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;

    move-object/from16 v0, v109

    invoke-direct {v0, v9, v11}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    .local v109, "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    move-object/from16 v0, v109

    invoke-virtual {v4, v0}, Lcom/android/contacts/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;

    move-result-object v80

    .line 2188
    .local v80, "cachedInfo":Lcom/android/contacts/util/ExpirableCache$CachedValue;, "Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    if-nez v80, :cond_55

    const/16 v94, 0x0

    .line 2189
    .local v94, "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {v4, v9}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 2193
    sget-object v94, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 2221
    :cond_16
    :goto_e
    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v57, v0

    .line 2222
    .local v57, "lookupUri":Landroid/net/Uri;
    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2223
    .local v19, "name":Ljava/lang/String;
    move-object/from16 v0, v94

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    move/from16 v20, v0

    .line 2224
    .local v20, "ntype":I
    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2225
    .local v21, "label":Ljava/lang/String;
    move-object/from16 v0, v94

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    move-wide/from16 v111, v0

    .line 2226
    .local v111, "photoId":J
    move-object/from16 v0, v94

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 2227
    .local v10, "formattedNumber":Ljava/lang/CharSequence;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v13

    .line 2228
    .local v13, "callTypes":[I
    const/4 v4, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2230
    .local v12, "geocode":Ljava/lang/String;
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v4, :cond_17

    .line 2231
    const-string v4, "CallLogAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detail.name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    :cond_17
    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 2233
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 2234
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v8, -0x1

    const-string v19, ""

    .end local v19    # "name":Ljava/lang/String;
    const/16 v20, 0x0

    const-string v21, ""

    .end local v20    # "ntype":I
    .end local v21    # "label":Ljava/lang/String;
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v7 .. v28}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJLjava/lang/String;Ljava/lang/String;)V

    .line 2275
    .local v7, "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :goto_f
    const-string v4, "feature_view_by_vvm"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 2276
    const/16 v4, 0x21

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_62

    const/16 v4, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x3b6

    if-ne v4, v5, :cond_62

    const/16 v95, 0x1

    .line 2282
    .local v95, "isNew":Z
    :goto_10
    move/from16 v33, v95

    .line 2285
    .local v33, "isHighlighted":Z
    const-string v4, "feature_cnam"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 2286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v31, v117

    move-object/from16 v32, v7

    move/from16 v34, p3

    move-object/from16 v35, v86

    move-object/from16 v36, v91

    move-object/from16 v37, v96

    move-object/from16 v38, v78

    move-object/from16 v39, v84

    invoke-virtual/range {v29 .. v39}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    :goto_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_DisableContactPhoto"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    const-string v4, "GT-I9205"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    const-string v4, "SM-P905"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 2299
    const v4, 0x7f0900e2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2388
    :cond_18
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v4, :cond_19

    .line 2389
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 2390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2393
    :cond_19
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2394
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2396
    const-string v4, "feature_use_7_font_size"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 2397
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v117

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->adjustListItemLayoutBy7FontSize(Landroid/view/View;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V

    .line 2402
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    const/4 v5, 0x0

    aget v5, v13, v5

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->getCallTypeTextForTalkback(II)Ljava/lang/CharSequence;

    move-result-object v83

    .line 2403
    .local v83, "callTypeText":Ljava/lang/CharSequence;
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v0, v83

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2405
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2406
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    if-eqz v9, :cond_1a

    .line 2407
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2409
    :cond_1a
    if-eqz v9, :cond_1b

    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1b

    .line 2410
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2413
    :cond_1b
    const-string v4, "feature_chn_duos_gsm_gsm"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 2414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v103

    .line 2416
    .local v103, "mVoiceMailNumberSim1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const-string v5, "phone2"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v104

    .line 2418
    .local v104, "mVoiceMailNumberSim2":Ljava/lang/String;
    if-eqz v9, :cond_1e

    .line 2419
    if-eqz v103, :cond_1c

    move-object/from16 v0, v103

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    :cond_1c
    if-eqz v104, :cond_1e

    move-object/from16 v0, v104

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2421
    :cond_1d
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    const v5, 0x7f0e009b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2422
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2436
    .end local v103    # "mVoiceMailNumberSim1":Ljava/lang/String;
    .end local v104    # "mVoiceMailNumberSim2":Ljava/lang/String;
    :cond_1e
    :goto_14
    const-string v4, "feature_common_dsds_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    const-string v4, "feature_common_use_multisim"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 2438
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v101

    .line 2439
    .local v101, "mVoiceMailNumber1":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v102

    .line 2440
    .local v102, "mVoiceMailNumber2":Ljava/lang/String;
    if-eqz v9, :cond_21

    .line 2441
    if-eqz v101, :cond_1f

    move-object/from16 v0, v101

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    :cond_1f
    if-eqz v102, :cond_21

    move-object/from16 v0, v102

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2443
    :cond_20
    const-string v4, "feature_marvell_dsds"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 2444
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    const v5, 0x7f0e009b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2445
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2463
    .end local v101    # "mVoiceMailNumber1":Ljava/lang/String;
    .end local v102    # "mVoiceMailNumber2":Ljava/lang/String;
    :cond_21
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v4, :cond_22

    .line 2464
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-object/from16 v0, v117

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->registerForList(Landroid/view/View;)V

    .line 2467
    :cond_22
    const-string v4, "feature_support_call_log_search"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isSearchOn()Z

    move-result v4

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSearchString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 2468
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    if-eqz v4, :cond_23

    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 2469
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v115

    check-cast v115, Ljava/lang/String;

    .line 2470
    .local v115, "strText":Ljava/lang/String;
    new-instance v114, Landroid/text/SpannableString;

    invoke-direct/range {v114 .. v115}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2471
    .local v114, "span":Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSearchString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v115

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v108

    .line 2472
    .local v108, "nStart":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSearchString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v107, v108, v4

    .line 2473
    .local v107, "nEnd":I
    const/4 v4, -0x1

    move/from16 v0, v108

    if-le v0, v4, :cond_23

    .line 2474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v38

    .line 2475
    .local v38, "colors":Landroid/content/res/ColorStateList;
    new-instance v34, Landroid/text/style/TextAppearanceSpan;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v34 .. v39}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/4 v4, 0x0

    move-object/from16 v0, v114

    move-object/from16 v1, v34

    move/from16 v2, v108

    move/from16 v3, v107

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2476
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    move-object/from16 v0, v114

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2479
    .end local v38    # "colors":Landroid/content/res/ColorStateList;
    .end local v107    # "nEnd":I
    .end local v108    # "nStart":I
    .end local v114    # "span":Landroid/text/Spannable;
    .end local v115    # "strText":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    if-eqz v4, :cond_24

    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 2480
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v115

    check-cast v115, Ljava/lang/String;

    .line 2481
    .restart local v115    # "strText":Ljava/lang/String;
    new-instance v114, Landroid/text/SpannableString;

    invoke-direct/range {v114 .. v115}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2482
    .restart local v114    # "span":Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSearchString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v115

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v108

    .line 2483
    .restart local v108    # "nStart":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSearchString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v107, v108, v4

    .line 2484
    .restart local v107    # "nEnd":I
    const/4 v4, -0x1

    move/from16 v0, v108

    if-le v0, v4, :cond_24

    .line 2485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v38

    .line 2486
    .restart local v38    # "colors":Landroid/content/res/ColorStateList;
    new-instance v34, Landroid/text/style/TextAppearanceSpan;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v34 .. v39}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/4 v4, 0x0

    move-object/from16 v0, v114

    move-object/from16 v1, v34

    move/from16 v2, v108

    move/from16 v3, v107

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2487
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    move-object/from16 v0, v114

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2493
    .end local v38    # "colors":Landroid/content/res/ColorStateList;
    .end local v107    # "nEnd":I
    .end local v108    # "nStart":I
    .end local v114    # "span":Landroid/text/Spannable;
    .end local v115    # "strText":Ljava/lang/String;
    :cond_24
    new-instance v100, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$9;

    move-object/from16 v0, v100

    move-object/from16 v1, p0

    move-object/from16 v2, v117

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$9;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V

    .line 2588
    .local v100, "mHoverListListener":Landroid/widget/HoverPopupWindow$HoverPopupListener;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v117

    move-object/from16 v2, v100

    invoke-direct {v5, v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2621
    .end local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .end local v9    # "number":Ljava/lang/String;
    .end local v10    # "formattedNumber":Ljava/lang/CharSequence;
    .end local v11    # "countryIso":Ljava/lang/String;
    .end local v12    # "geocode":Ljava/lang/String;
    .end local v13    # "callTypes":[I
    .end local v14    # "date":J
    .end local v16    # "duration":J
    .end local v18    # "logType":I
    .end local v24    # "simcardIndx":I
    .end local v25    # "calloutduration":J
    .end local v27    # "roamingCall":Ljava/lang/String;
    .end local v28    # "iddValue":Ljava/lang/String;
    .end local v33    # "isHighlighted":Z
    .end local v40    # "mServiceType":I
    .end local v41    # "mCnapName":Ljava/lang/String;
    .end local v42    # "mCdnipNumber":Ljava/lang/String;
    .end local v57    # "lookupUri":Landroid/net/Uri;
    .end local v75    # "simcardId":I
    .end local v78    # "bussName":Ljava/lang/String;
    .end local v79    # "cachedContactInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v80    # "cachedInfo":Lcom/android/contacts/util/ExpirableCache$CachedValue;, "Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    .end local v81    # "callButton_divider":Landroid/view/View;
    .end local v82    # "callType":I
    .end local v83    # "callTypeText":Ljava/lang/CharSequence;
    .end local v84    # "cityId":Ljava/lang/String;
    .end local v85    # "city_Id":Ljava/lang/String;
    .end local v86    # "cnapName":Ljava/lang/String;
    .end local v87    # "csc":Ljava/lang/String;
    .end local v88    # "durationSim2":J
    .end local v91    # "firstName":Ljava/lang/String;
    .end local v93    # "gedLocation":Ljava/lang/String;
    .end local v94    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v95    # "isNew":Z
    .end local v96    # "lastName":Ljava/lang/String;
    .end local v98    # "mCallType":I
    .end local v100    # "mHoverListListener":Landroid/widget/HoverPopupWindow$HoverPopupListener;
    .end local v105    # "msgId":Ljava/lang/String;
    .end local v109    # "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;
    .end local v111    # "photoId":J
    .end local v113    # "simcardIdIndex":Ljava/lang/String;
    :goto_16
    return-void

    .line 1786
    .restart local v76    # "arrayId":I
    .restart local v116    # "viewby_items_array":[Ljava/lang/String;
    :cond_25
    const v76, 0x7f08000b

    goto/16 :goto_0

    .line 1789
    :cond_26
    const-string v4, "feature_vzw"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1790
    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v4, :cond_27

    const-string v4, "feature_easy_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1791
    const v76, 0x7f08000a

    goto/16 :goto_0

    .line 1792
    :cond_27
    const-string v4, "feature_volte_support_videocall"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1793
    const v76, 0x7f080009

    goto/16 :goto_0

    .line 1795
    :cond_28
    const v76, 0x7f080008

    goto/16 :goto_0

    .line 1798
    :cond_29
    const-string v4, "feature_att"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1799
    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v4, :cond_2a

    const-string v4, "feature_easy_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1800
    const v76, 0x7f08000f

    goto/16 :goto_0

    .line 1802
    :cond_2a
    const v76, 0x7f08000e

    goto/16 :goto_0

    .line 1805
    :cond_2b
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1806
    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v4, :cond_2c

    .line 1807
    const v76, 0x7f080006

    goto/16 :goto_0

    .line 1808
    :cond_2c
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    if-eqz v4, :cond_2d

    .line 1809
    const v76, 0x7f080016

    goto/16 :goto_0

    .line 1811
    :cond_2d
    const v76, 0x7f080015

    goto/16 :goto_0

    .line 1814
    :cond_2e
    const-string v4, "dcm_not_support_extra_calllog_type"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1815
    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v4, :cond_2f

    const-string v4, "feature_easy_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1816
    const v76, 0x7f080006

    goto/16 :goto_0

    .line 1818
    :cond_2f
    const v76, 0x7f08000d

    goto/16 :goto_0

    .line 1821
    :cond_30
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1822
    const-string v4, "not_support_msg_logs"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1823
    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v4, :cond_31

    const-string v4, "feature_easy_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1824
    const v76, 0x7f08001a

    goto/16 :goto_0

    .line 1826
    :cond_31
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v4, :cond_32

    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v4, :cond_32

    .line 1827
    const v76, 0x7f08001d

    goto/16 :goto_0

    .line 1830
    :cond_32
    const v76, 0x7f080019

    goto/16 :goto_0

    .line 1833
    :cond_33
    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v4, :cond_34

    const-string v4, "feature_easy_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1834
    const v76, 0x7f080018

    goto/16 :goto_0

    .line 1836
    :cond_34
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v4, :cond_35

    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v4, :cond_35

    .line 1837
    const v76, 0x7f08001d

    goto/16 :goto_0

    .line 1840
    :cond_35
    const v76, 0x7f080017

    goto/16 :goto_0

    .line 1844
    :cond_36
    const-string v4, "feature_view_by_vvm"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1845
    const v76, 0x7f08001c

    goto/16 :goto_0

    .line 1847
    :cond_37
    const-string v4, "feature_view_by_vvm"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1848
    const v76, 0x7f08001b

    goto/16 :goto_0

    .line 1851
    :cond_38
    const-string v4, "feature_kdi"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1852
    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v4, :cond_39

    const-string v4, "feature_easy_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1853
    const v76, 0x7f080012

    goto/16 :goto_0

    .line 1855
    :cond_39
    const v76, 0x7f080011

    goto/16 :goto_0

    .line 1861
    :cond_3a
    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v4, :cond_3b

    const-string v4, "feature_easy_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1862
    const v76, 0x7f080006

    goto/16 :goto_0

    .line 1864
    :cond_3b
    const v76, 0x7f080005

    goto/16 :goto_0

    .line 1876
    :cond_3c
    const-string v4, "feature_chn_duos_cdma_gsm"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1877
    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameCDMA:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0e0394

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v116, v4

    .line 1878
    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameGSM:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0e0395

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v116, v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2613
    .end local v76    # "arrayId":I
    .end local v116    # "viewby_items_array":[Ljava/lang/String;
    :catch_0
    move-exception v90

    .line 2614
    .local v90, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual/range {v90 .. v90}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 2616
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2617
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2618
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2619
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_16

    .line 1884
    .end local v90    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v76    # "arrayId":I
    .restart local v116    # "viewby_items_array":[Ljava/lang/String;
    :cond_3d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v76

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v116

    goto/16 :goto_1

    .line 1898
    .restart local v97    # "log_index":I
    :cond_3e
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogViewby_text:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v5, v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    aget-object v5, v116, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1901
    .end local v76    # "arrayId":I
    .end local v97    # "log_index":I
    .end local v116    # "viewby_items_array":[Ljava/lang/String;
    :cond_3f
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogViewby_text:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1926
    .restart local v9    # "number":Ljava/lang/String;
    .restart local v11    # "countryIso":Ljava/lang/String;
    .restart local v14    # "date":J
    .restart local v16    # "duration":J
    .restart local v18    # "logType":I
    .restart local v82    # "callType":I
    .restart local v105    # "msgId":Ljava/lang/String;
    :cond_40
    const/16 v4, 0x15

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    goto/16 :goto_3

    .line 1969
    .restart local v24    # "simcardIndx":I
    .restart local v25    # "calloutduration":J
    .restart local v27    # "roamingCall":Ljava/lang/String;
    .restart local v28    # "iddValue":Ljava/lang/String;
    .restart local v40    # "mServiceType":I
    .restart local v41    # "mCnapName":Ljava/lang/String;
    .restart local v42    # "mCdnipNumber":Ljava/lang/String;
    .restart local v75    # "simcardId":I
    .restart local v78    # "bussName":Ljava/lang/String;
    .restart local v79    # "cachedContactInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .restart local v84    # "cityId":Ljava/lang/String;
    .restart local v86    # "cnapName":Ljava/lang/String;
    .restart local v87    # "csc":Ljava/lang/String;
    .restart local v88    # "durationSim2":J
    .restart local v91    # "firstName":Ljava/lang/String;
    .restart local v93    # "gedLocation":Ljava/lang/String;
    .restart local v96    # "lastName":Ljava/lang/String;
    .restart local v98    # "mCallType":I
    .restart local v113    # "simcardIdIndex":Ljava/lang/String;
    :cond_41
    const-string v4, "feature_ged_location"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1970
    if-eqz v93, :cond_7

    .line 1971
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->truncateCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    goto/16 :goto_4

    .line 1979
    :cond_42
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1980
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v4, :cond_43

    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v4, :cond_43

    .line 1981
    move-object/from16 v0, v117

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v4, p0

    move/from16 v8, p3

    invoke-static/range {v4 .. v9}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getVIPCallDetailIntentProvider(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1983
    :cond_43
    move-object/from16 v0, v117

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v4, p0

    move/from16 v8, p3

    invoke-static/range {v4 .. v9}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2021
    .restart local v77    # "bCanRequestFocus":Z
    .restart local v106    # "myActivity":Lcom/android/contacts/activities/DialtactsActivity;
    .restart local v110    # "obj":Landroid/app/Activity;
    :cond_44
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2022
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    goto/16 :goto_6

    .line 2076
    .end local v77    # "bCanRequestFocus":Z
    .end local v106    # "myActivity":Lcom/android/contacts/activities/DialtactsActivity;
    .end local v110    # "obj":Landroid/app/Activity;
    .restart local v81    # "callButton_divider":Landroid/view/View;
    .restart local v85    # "city_Id":Ljava/lang/String;
    :sswitch_0
    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    if-eqz v4, :cond_46

    .line 2077
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    move/from16 v0, v98

    invoke-static {v9, v0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProviderLGT(Ljava/lang/String;I)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 2081
    :goto_17
    const-string v4, "call_message"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_45

    const-string v4, "instant_lettering"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2083
    :cond_45
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v5, 0x7f0900e0

    invoke-virtual {v4, v5, v9}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 2079
    :cond_46
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_17

    .line 2087
    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2088
    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    if-eqz v4, :cond_47

    .line 2089
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    move/from16 v0, v98

    invoke-static {v9, v0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProviderLGT(Ljava/lang/String;I)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2091
    :cond_47
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2095
    :sswitch_2
    const-string v4, "feature_vzw"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 2096
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    move-object/from16 v0, v105

    invoke-static {v9, v0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnVoicemailVZWIntentProvider(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2098
    :cond_48
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2109
    :cond_49
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v4, :cond_11

    .line 2110
    const-string v4, "CallLogAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "secondaryActionView is invisible, number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2121
    :cond_4a
    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_4d

    .line 2122
    const-string v4, "feature_chn_duos_cdma_gsm"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 2123
    const-string v4, "ril.ICC_TYPE2"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4b

    .line 2124
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSimCardIcon(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 2126
    :cond_4b
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const-string v5, "gsm.sim.icon2"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSimCardIcon(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 2128
    :cond_4c
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    sget v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexGSM:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSimCardIcon(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 2132
    :cond_4d
    const-string v4, "ril.ICC_TYPE"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4e

    const-string v4, "ril.ICC_TYPE2"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4e

    .line 2134
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSimCardIcon(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 2136
    :cond_4e
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const-string v5, "gsm.sim.icon.dual"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSimCardIcon(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 2147
    :cond_4f
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const v5, 0x7f0202c6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2148
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 2162
    :cond_50
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 2164
    :cond_51
    const/16 v4, 0x1f

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_52

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRemindMeLater:Z

    goto/16 :goto_a

    :cond_52
    const/4 v4, 0x0

    goto :goto_18

    .line 2172
    :cond_53
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    .line 2181
    :cond_54
    const v4, 0x7f0900f7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 2188
    .restart local v80    # "cachedInfo":Lcom/android/contacts/util/ExpirableCache$CachedValue;, "Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    .restart local v109    # "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;
    :cond_55
    invoke-interface/range {v80 .. v80}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v94, v4

    goto/16 :goto_d

    .line 2194
    .restart local v94    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_56
    if-nez v80, :cond_57

    .line 2195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v0, v109

    invoke-virtual {v4, v0, v5}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2197
    move-object/from16 v94, v79

    .line 2200
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v9, v11, v1, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    goto/16 :goto_e

    .line 2203
    :cond_57
    invoke-interface/range {v80 .. v80}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 2206
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v9, v11, v1, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    .line 2215
    :cond_58
    :goto_19
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v0, v94

    if-ne v0, v4, :cond_16

    .line 2217
    move-object/from16 v94, v79

    goto/16 :goto_e

    .line 2207
    :cond_59
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move-object/from16 v2, v94

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 2212
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v9, v11, v1, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    goto :goto_19

    .line 2238
    .restart local v10    # "formattedNumber":Ljava/lang/CharSequence;
    .restart local v12    # "geocode":Ljava/lang/String;
    .restart local v13    # "callTypes":[I
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v20    # "ntype":I
    .restart local v21    # "label":Ljava/lang/String;
    .restart local v57    # "lookupUri":Landroid/net/Uri;
    .restart local v111    # "photoId":J
    :cond_5a
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v8, -0x1

    const/16 v23, 0x0

    move-object/from16 v22, v57

    invoke-direct/range {v7 .. v28}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJLjava/lang/String;Ljava/lang/String;)V

    .restart local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_f

    .line 2241
    .end local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_5b
    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mIsSamsungCorean:Z

    if-eqz v4, :cond_5d

    .line 2242
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 2243
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mIsVoLTEEnabled:Z

    move/from16 v43, v0

    move-object/from16 v29, v7

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move-wide/from16 v35, v14

    move-wide/from16 v37, v16

    move/from16 v39, v18

    invoke-direct/range {v29 .. v43}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/String;Ljava/lang/String;Z)V

    .restart local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_f

    .line 2247
    .end local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_5c
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v58, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mIsVoLTEEnabled:Z

    move/from16 v62, v0

    move-object/from16 v43, v7

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move-object/from16 v46, v11

    move-object/from16 v47, v12

    move-object/from16 v48, v13

    move-wide/from16 v49, v14

    move-wide/from16 v51, v16

    move/from16 v53, v18

    move-object/from16 v54, v19

    move/from16 v55, v20

    move-object/from16 v56, v21

    move/from16 v59, v40

    move-object/from16 v60, v41

    move-object/from16 v61, v42

    invoke-direct/range {v43 .. v62}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    .restart local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_f

    .line 2250
    .end local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_5d
    const-string v4, "feature_common_dsds_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 2251
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 2252
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v59, -0x1

    const-string v70, ""

    const/16 v71, 0x0

    const-string v72, ""

    const/16 v73, 0x0

    const/16 v74, 0x0

    move-object/from16 v58, v7

    move-object/from16 v60, v9

    move-object/from16 v61, v10

    move-object/from16 v62, v11

    move-object/from16 v63, v12

    move-object/from16 v64, v13

    move-wide/from16 v65, v14

    move-wide/from16 v67, v16

    move/from16 v69, v18

    invoke-direct/range {v58 .. v75}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V

    .restart local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_f

    .line 2255
    .end local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_5e
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v59, -0x1

    const/16 v74, 0x0

    move-object/from16 v58, v7

    move-object/from16 v60, v9

    move-object/from16 v61, v10

    move-object/from16 v62, v11

    move-object/from16 v63, v12

    move-object/from16 v64, v13

    move-wide/from16 v65, v14

    move-wide/from16 v67, v16

    move/from16 v69, v18

    move-object/from16 v70, v19

    move/from16 v71, v20

    move-object/from16 v72, v21

    move-object/from16 v73, v57

    invoke-direct/range {v58 .. v75}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V

    .restart local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_f

    .line 2260
    .end local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_5f
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    if-eqz v57, :cond_60

    .line 2261
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v58, 0x0

    move-object/from16 v43, v7

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move-object/from16 v46, v11

    move-object/from16 v47, v12

    move-object/from16 v48, v13

    move-wide/from16 v49, v14

    move-wide/from16 v51, v16

    move/from16 v53, v18

    move-object/from16 v54, v9

    move/from16 v55, v20

    move-object/from16 v56, v21

    invoke-direct/range {v43 .. v58}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    .restart local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_f

    .line 2263
    .end local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_60
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 2264
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object v8, v7

    invoke-direct/range {v8 .. v18}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJI)V

    .restart local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_f

    .line 2268
    .end local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_61
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v23, 0x0

    move-object v8, v7

    move-object/from16 v22, v57

    invoke-direct/range {v8 .. v23}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    .restart local v7    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_f

    .line 2276
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "ntype":I
    .end local v21    # "label":Ljava/lang/String;
    :cond_62
    const/16 v95, 0x0

    goto/16 :goto_10

    .line 2279
    :cond_63
    const/16 v95, 0x0

    .restart local v95    # "isNew":Z
    goto/16 :goto_10

    .line 2287
    .restart local v33    # "isHighlighted":Z
    :cond_64
    const-string v4, "feature_cnap"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 2288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v31, v117

    move-object/from16 v32, v7

    move/from16 v34, p3

    move-object/from16 v35, v86

    invoke-virtual/range {v29 .. v39}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 2289
    :cond_65
    const-string v4, "cnap_text_for_smc_test"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 2290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v31, v117

    move-object/from16 v32, v7

    move/from16 v34, p3

    move-object/from16 v35, v86

    invoke-virtual/range {v29 .. v35}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;)V

    goto/16 :goto_11

    .line 2292
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v31, v117

    move-object/from16 v32, v7

    move/from16 v34, p3

    invoke-virtual/range {v29 .. v34}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZI)V

    goto/16 :goto_11

    .line 2301
    :cond_67
    if-nez v57, :cond_6e

    .line 2302
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 2303
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->imageLayout:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2304
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->randomThumbnail(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2305
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2306
    const-string v4, "feature_tablet_selection_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 2307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v4, :cond_6c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v4

    if-nez v4, :cond_6c

    .line 2308
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 2309
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhotoLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2315
    :cond_68
    :goto_1a
    const-string v4, "feature_folder_type"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 2316
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2318
    :cond_69
    const-string v4, "feature_tablet_selection_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_6b

    :cond_6a
    const-string v4, "feature_tablet_selection_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 2320
    :cond_6b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {v4, v9}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 2321
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    new-instance v43, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$8;

    move-object/from16 v44, p0

    move-object/from16 v45, v9

    move-object/from16 v46, v86

    move-object/from16 v47, v91

    move-object/from16 v48, v96

    move-object/from16 v49, v85

    invoke-direct/range {v43 .. v49}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$8;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_12

    .line 2311
    :cond_6c
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2312
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    goto :goto_1a

    .line 2365
    :cond_6d
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_12

    .line 2368
    :cond_6e
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 2369
    const-string v4, "feature_tablet_selection_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 2370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v4, :cond_71

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v4

    if-nez v4, :cond_71

    .line 2371
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/widget/QuickContactBadge;->setTag(Ljava/lang/Object;)V

    .line 2372
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhotoLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2378
    :cond_6f
    :goto_1b
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->imageLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2379
    const-string v4, "feature_folder_type"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 2380
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setFocusable(Z)V

    .line 2381
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2383
    :cond_70
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-object/from16 v53, p0

    move-object/from16 v54, v117

    move-wide/from16 v55, v111

    invoke-direct/range {v53 .. v59}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V

    goto/16 :goto_12

    .line 2374
    :cond_71
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 2375
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setLongClickable(Z)V

    goto :goto_1b

    .line 2399
    :cond_72
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v117

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->adjustListItemLayoutByFontSize(Landroid/view/View;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V

    goto/16 :goto_13

    .line 2426
    .restart local v83    # "callTypeText":Ljava/lang/CharSequence;
    :cond_73
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    if-eqz v9, :cond_1e

    .line 2428
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2429
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    const v5, 0x7f0e009b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2430
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 2449
    :cond_74
    const-string v4, "feature_common_use_multisim"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v103

    .line 2452
    .restart local v103    # "mVoiceMailNumberSim1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const-string v5, "phone2"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v104

    .line 2454
    .restart local v104    # "mVoiceMailNumberSim2":Ljava/lang/String;
    if-eqz v9, :cond_21

    .line 2455
    if-eqz v103, :cond_75

    move-object/from16 v0, v103

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    if-eqz v75, :cond_76

    :cond_75
    if-eqz v104, :cond_21

    move-object/from16 v0, v104

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    move/from16 v0, v75

    if-ne v0, v4, :cond_21

    .line 2457
    :cond_76
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    const v5, 0x7f0e009b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2458
    move-object/from16 v0, v117

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_15

    .line 2059
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1fe -> :sswitch_0
        0x320 -> :sswitch_0
        0x384 -> :sswitch_2
        0x3e8 -> :sswitch_0
        0x44c -> :sswitch_1
    .end sparse-switch
.end method

.method private bindViewDetail(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 33
    .param p1, "view"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "count"    # I

    .prologue
    .line 1517
    const/16 v29, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1518
    .local v17, "duration":J
    const/16 v29, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1519
    .local v6, "callType":I
    const/16 v29, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1520
    .local v14, "date":J
    const/16 v29, 0xf

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1521
    .local v23, "logType":I
    const/16 v29, 0x18

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1522
    .local v10, "calloutduration":J
    const/16 v29, 0x16

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1523
    .local v12, "cdnipNumber":Ljava/lang/String;
    const/16 v29, 0x17

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 1525
    .local v28, "serviceType":I
    const v29, 0x7f090099

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1526
    .local v16, "detail_date":Landroid/widget/TextView;
    const v29, 0x7f09009c

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1527
    .local v5, "callTime":Landroid/widget/TextView;
    const v29, 0x7f0900a3

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1528
    .local v19, "durationView":Landroid/widget/TextView;
    const v29, 0x7f0900a1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 1529
    .local v24, "logTypeView":Landroid/widget/ImageView;
    const v29, 0x7f0900ab

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1531
    .local v13, "cdnipNumberView":Landroid/widget/TextView;
    const v29, 0x7f09009b

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;

    .line 1532
    .local v7, "callTypeIconView":Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;
    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->clear()V

    .line 1533
    invoke-virtual {v7, v6}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->add(I)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v30, 0x101

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v0, v14, v15, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1537
    const-string v29, "feature_kor"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 1538
    sget-wide v29, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWidth:D

    const-wide/high16 v31, 0x407e000000000000L

    cmpl-double v29, v29, v31

    if-nez v29, :cond_0

    .line 1539
    const v29, 0x7f09009a

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 1540
    .local v22, "itemlayout":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "font_size"

    const/16 v31, 0x2

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 1541
    .local v20, "fontSize":I
    const/16 v29, 0x4

    move/from16 v0, v20

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    .line 1542
    const/16 v29, 0x0

    const/16 v30, 0x5

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 1549
    .end local v20    # "fontSize":I
    .end local v22    # "itemlayout":Landroid/widget/RelativeLayout;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getSeperatorIDList()Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getStrSeparatorArray()[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    const/16 v30, 0x37

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 1553
    const/16 v25, 0x0

    .line 1554
    .local v25, "mDateText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v30

    aget-object v25, v29, v30

    .line 1556
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1557
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1562
    .end local v25    # "mDateText":Ljava/lang/String;
    :goto_1
    sparse-switch v23, :sswitch_data_0

    .line 1671
    :cond_1
    :goto_2
    const/16 v29, 0x12c

    move/from16 v0, v23

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    const/16 v29, 0xc8

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    .line 1672
    :cond_2
    const/16 v29, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1729
    :cond_3
    :goto_3
    const-string v29, "disable_call_duration_information"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 1730
    const/16 v29, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1733
    :cond_4
    const-string v29, "feature_use_7_font_size"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_25

    .line 1734
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->adjustListItemLayoutBy7FontSizeDetail(Landroid/view/View;)V

    .line 1739
    :goto_4
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1740
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1741
    return-void

    .line 1544
    .restart local v20    # "fontSize":I
    .restart local v22    # "itemlayout":Landroid/widget/RelativeLayout;
    :cond_5
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0xa

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    goto/16 :goto_0

    .line 1559
    .end local v20    # "fontSize":I
    .end local v22    # "itemlayout":Landroid/widget/RelativeLayout;
    :cond_6
    const/16 v29, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1565
    :sswitch_0
    const v29, 0x7f020712

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1567
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1568
    sparse-switch v6, :sswitch_data_1

    goto :goto_2

    .line 1574
    :sswitch_1
    const v29, 0x7f02070a

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1578
    :sswitch_2
    const v29, 0x7f020700

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1587
    :sswitch_3
    const-string v29, "feature_skt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 1588
    const v29, 0x7f020711

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1589
    :cond_7
    const-string v29, "feature_kt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 1590
    const v29, 0x7f02070f

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1591
    :cond_8
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 1592
    const v29, 0x7f020710

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1594
    :cond_9
    const v29, 0x7f02070e

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1598
    :sswitch_4
    const v29, 0x7f020701

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1601
    :sswitch_5
    const v29, 0x7f020717

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1604
    :sswitch_6
    const v29, 0x7f0206f5

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1607
    :sswitch_7
    const v29, 0x7f0206f4

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1610
    :sswitch_8
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    const/16 v29, 0x14

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 1612
    const v29, 0x7f020765

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1614
    :cond_a
    const-string v29, "feature_vzw"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_b

    const-string v29, "feature_vzw_sed"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_b

    .line 1615
    const v29, 0x7f020761

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1617
    :cond_b
    const-string v29, "feature_usa_message_icon"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 1618
    const v29, 0x7f020760

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1621
    :cond_c
    const v29, 0x7f02075f

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1626
    :sswitch_9
    const-string v29, "feature_cdma_layout"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_d

    const-string v29, "feature_gsm_layout"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 1627
    :cond_d
    const-string v29, "feature_vzw"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_e

    const-string v29, "feature_vzw_sed"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_e

    const-string v29, "feature_not_change_message_icon"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_e

    .line 1628
    const v29, 0x7f020767

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1630
    :cond_e
    const-string v29, "feature_usa_message_icon"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 1631
    const v29, 0x7f020766

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1634
    :cond_f
    const v29, 0x7f020764

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1636
    :cond_10
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    const/16 v29, 0x14

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 1638
    const v29, 0x7f020765

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1640
    :cond_11
    const v29, 0x7f020764

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1644
    :sswitch_a
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1645
    const v29, 0x7f020706

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1649
    :sswitch_b
    const-string v29, "feature_kor"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 1650
    const-string v29, "feature_skt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 1651
    const v29, 0x7f020716

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1652
    :cond_12
    const-string v29, "feature_kt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 1653
    const-string v29, "feature_wb_amr"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 1654
    const v29, 0x7f020712

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1656
    :cond_13
    const v29, 0x7f020713

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1658
    :cond_14
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 1659
    const v29, 0x7f020714

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1661
    :cond_15
    const v29, 0x7f020715

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1664
    :cond_16
    const v29, 0x7f020715

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1674
    :cond_17
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1675
    const-string v29, "feature_ctc"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1d

    .line 1676
    const/16 v27, 0x0

    .line 1677
    .local v27, "mDurationDescription":Ljava/lang/String;
    const/16 v26, 0x0

    .line 1679
    .local v26, "mDuration":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1680
    .local v21, "isCtcDuosForShow":Z
    const-string v29, "feature_chn_duos"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 1681
    const/16 v29, 0x6

    move/from16 v0, v29

    if-ne v6, v0, :cond_19

    .line 1682
    const/16 v21, 0x1

    .line 1689
    :goto_5
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v6, v0, :cond_18

    const/16 v29, 0x3

    move/from16 v0, v29

    if-eq v6, v0, :cond_18

    const/16 v29, 0x5

    move/from16 v0, v29

    if-eq v6, v0, :cond_18

    if-eqz v21, :cond_1b

    .line 1690
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0e0393

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1700
    :goto_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v26

    .line 1701
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1684
    :cond_19
    const/16 v21, 0x0

    goto :goto_5

    .line 1687
    :cond_1a
    const/16 v21, 0x0

    goto :goto_5

    .line 1692
    :cond_1b
    move-wide v8, v10

    .line 1693
    .local v8, "call_out_duration":J
    const-wide/16 v29, 0x0

    cmp-long v29, v8, v29

    if-eqz v29, :cond_1c

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0e0393

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto :goto_6

    .line 1697
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0e0392

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto :goto_6

    .line 1703
    .end local v8    # "call_out_duration":J
    .end local v21    # "isCtcDuosForShow":Z
    .end local v26    # "mDuration":Ljava/lang/String;
    .end local v27    # "mDurationDescription":Ljava/lang/String;
    :cond_1d
    const-wide/16 v29, 0x0

    cmp-long v29, v17, v29

    if-nez v29, :cond_23

    .line 1704
    const-string v29, "feature_kdi"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_20

    .line 1705
    const/16 v29, 0x3

    move/from16 v0, v29

    if-eq v6, v0, :cond_1e

    const/16 v29, 0xe

    move/from16 v0, v29

    if-ne v6, v0, :cond_1f

    .line 1706
    :cond_1e
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1708
    :cond_1f
    const v29, 0x7f0e0328

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 1710
    :cond_20
    const/16 v29, 0x3

    move/from16 v0, v29

    if-eq v6, v0, :cond_21

    const/16 v29, 0xe

    move/from16 v0, v29

    if-ne v6, v0, :cond_22

    .line 1711
    :cond_21
    const v29, 0x7f0e0329

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 1713
    :cond_22
    const v29, 0x7f0e0328

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 1716
    :cond_23
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1717
    const-string v29, "feature_kor"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 1718
    if-eqz v12, :cond_24

    .line 1719
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1720
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1722
    :cond_24
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1736
    :cond_25
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->adjustListItemLayoutByFontSizeDetail(Landroid/view/View;)V

    goto/16 :goto_4

    .line 1562
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_6
        0xc8 -> :sswitch_8
        0x12c -> :sswitch_9
        0x1f4 -> :sswitch_3
        0x1fe -> :sswitch_7
        0x320 -> :sswitch_4
        0x384 -> :sswitch_5
        0x3e8 -> :sswitch_b
        0x44c -> :sswitch_a
    .end sparse-switch

    .line 1568
    :sswitch_data_1
    .sparse-switch
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0xf -> :sswitch_1
        0x32 -> :sswitch_2
    .end sparse-switch
.end method

.method private callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 2
    .param p1, "callLogInfo"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .param p2, "info"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .prologue
    .line 2701
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iget v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findAndCacheViews(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v9, 0x96

    const/4 v8, -0x2

    const/4 v7, 0x1

    .line 1440
    const-string v3, "CallLogAdapter"

    const-string v4, "========= findAndCacheViews ========="

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    invoke-static {p1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    move-result-object v2

    .line 1452
    .local v2, "views":Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    const-string v3, "feature_support_keypad"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1454
    const v3, 0x7f0900df

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    .line 1455
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 1459
    :cond_0
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1460
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1461
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v3, 0x3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1462
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1463
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1465
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    sget-wide v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWidth:D

    const-wide v5, 0x4090e00000000000L

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    .line 1466
    const/16 v3, 0xe6

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1467
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1469
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1470
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1472
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1473
    .restart local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v3, 0x1e

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1474
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1496
    .end local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    :goto_0
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1499
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "feature_tablet_selection_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1501
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->PrimaryActionLongClickListener:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1512
    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1513
    return-void

    .line 1475
    .restart local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    sget-wide v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWidth:D

    const-wide v5, 0x4086800000000000L

    cmpl-double v3, v3, v5

    if-nez v3, :cond_4

    .line 1476
    iput v9, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1477
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1479
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1480
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 1481
    :cond_4
    sget-wide v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWidth:D

    const-wide/high16 v5, 0x407e000000000000L

    cmpl-double v3, v3, v5

    if-nez v3, :cond_5

    .line 1482
    const/16 v3, 0x5d

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1483
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1485
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1486
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 1487
    :cond_5
    const-string v3, "feature_is_fonblet"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1488
    iput v9, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1489
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1491
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1492
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 1503
    .end local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1504
    const-string v3, "call_message"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "instant_lettering"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1506
    :cond_7
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mSecondaryLongActionListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1508
    :cond_8
    const-string v3, "feature_support_keypad"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1509
    iget-object v3, v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mKeyActionListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_1
.end method

.method private static formatArabicDuration(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "elapsedTimeString"    # Ljava/lang/String;

    .prologue
    .line 3514
    const/16 v1, 0x660

    .line 3515
    .local v1, "arabic_zero_unicode":I
    const/16 v0, 0x3a

    .line 3516
    .local v0, "TIME_SEPARATOR":C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3518
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3519
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_0

    .line 3520
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3518
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3522
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v4, v1

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3524
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 10
    .param p1, "elapsedSeconds"    # J

    .prologue
    .line 3463
    const-wide/16 v1, 0x0

    .line 3464
    .local v1, "hours":J
    const-wide/16 v3, 0x0

    .line 3465
    .local v3, "minutes":J
    const-wide/16 v5, 0x0

    .line 3466
    .local v5, "seconds":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3468
    .local v7, "timeString":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x3c

    cmp-long v8, p1, v8

    if-ltz v8, :cond_4

    .line 3469
    const-wide/16 v8, 0x3c

    rem-long v5, p1, v8

    .line 3470
    const-wide/16 v8, 0x3c

    div-long v3, p1, v8

    .line 3472
    const-wide/16 v8, 0x3c

    cmp-long v8, v3, v8

    if-ltz v8, :cond_0

    .line 3473
    const-wide/16 v8, 0x3c

    div-long v1, v3, v8

    .line 3474
    const-wide/16 v8, 0x3c

    rem-long/2addr v3, v8

    .line 3480
    :cond_0
    :goto_0
    const-wide/16 v8, 0xa

    cmp-long v8, v1, v8

    if-gez v8, :cond_1

    .line 3481
    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3483
    :cond_1
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3484
    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3486
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-lez v8, :cond_5

    .line 3487
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 3488
    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3490
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3491
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3496
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_6

    .line 3497
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 3498
    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3500
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3505
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3506
    .local v0, "curLanguage":Ljava/lang/String;
    const-string v8, "ar"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3507
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->formatArabicDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3510
    :goto_3
    return-object v8

    .line 3478
    .end local v0    # "curLanguage":Ljava/lang/String;
    :cond_4
    move-wide v5, p1

    goto :goto_0

    .line 3494
    :cond_5
    const-string v8, "00:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3503
    :cond_6
    const-string v8, "00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3510
    .restart local v0    # "curLanguage":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "normalizedNumber"    # Ljava/lang/String;
    .param p3, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 2868
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2869
    const-string p1, ""

    .line 2881
    .end local p1    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 2872
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2875
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2876
    iget-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 2878
    :cond_2
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2881
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "count"    # I

    .prologue
    .line 2815
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 2816
    .local v2, "position":I
    new-array v0, p2, [I

    .line 2817
    .local v0, "callTypes":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 2818
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    .line 2819
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2817
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2821
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2822
    return-object v0
.end method

.method private getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/16 v5, 0x8

    .line 2789
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 2790
    .local v0, "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 2791
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v2, :cond_0

    .line 2792
    const-string v2, "CallLogAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContactInfoFromCallLog. name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    :cond_0
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 2794
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 2795
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 2796
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2797
    .local v1, "matchedNumber":Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "matchedNumber":Ljava/lang/String;
    :cond_1
    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 2798
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 2799
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 2800
    const/16 v2, 0x1d

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    .line 2802
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 2803
    const/16 v2, 0x1e

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 2804
    return-object v0
.end method

.method private isContactsProviderBusy()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 3528
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v9

    const-string v4, "data1"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3533
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3535
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3536
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3537
    .local v7, "status":I
    const-string v0, "CallLogAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3539
    packed-switch v7, :pswitch_data_0

    .line 3553
    .end local v7    # "status":I
    :cond_0
    :pswitch_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    .line 3556
    :goto_0
    return v0

    .line 3545
    .restart local v7    # "status":I
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0e019c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3553
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    .end local v7    # "status":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isLastOfSection(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    .line 2689
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2694
    :cond_0
    :goto_0
    return v0

    .line 2691
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2693
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 2694
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 9
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .prologue
    const/4 v4, 0x0

    .line 1124
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1126
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v3

    .line 1127
    .local v3, "sipInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    sget-boolean v7, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v7, :cond_0

    .line 1128
    const-string v7, "CallLogAdapter"

    const-string v8, "queryContactInfo, queryContactInfoForSipAddress"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_0
    if-eqz v3, :cond_1

    sget-object v7, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-ne v3, v7, :cond_2

    .line 1131
    :cond_1
    const/16 v7, 0x40

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1132
    .local v6, "username":Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1133
    invoke-direct {p0, v6, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v3

    .line 1136
    .end local v6    # "username":Ljava/lang/String;
    :cond_2
    move-object v1, v3

    .line 1142
    .end local v3    # "sipInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .local v1, "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :goto_0
    if-nez v1, :cond_4

    .line 1168
    :goto_1
    return v4

    .line 1138
    .end local v1    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v1

    .restart local v1    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_0

    .line 1146
    :cond_4
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-ne v1, v7, :cond_6

    .line 1148
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v5}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 1149
    .local v5, "updatedInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    iput-object p1, v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 1150
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 1158
    :goto_2
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v2, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    .local v2, "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v7, v2}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 1160
    .local v0, "existingInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-eq v0, v7, :cond_5

    invoke-virtual {v5, v0}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v4, 0x1

    .line 1164
    .local v4, "updated":Z
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v7, v2, v5}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1167
    invoke-direct {p0, p1, p2, v5, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V

    goto :goto_1

    .line 1152
    .end local v0    # "existingInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v2    # "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;
    .end local v4    # "updated":Z
    .end local v5    # "updatedInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_6
    move-object v5, v1

    .restart local v5    # "updatedInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_2
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 18
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 1027
    const/16 v17, 0x0

    .line 1030
    .local v17, "phonesCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v14

    .line 1033
    .local v14, "mMatchLen":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 1035
    .local v15, "nLen":I
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v3, :cond_0

    .line 1036
    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[queryContactInfoForPhoneNumber] mMatchLen :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   nLen :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_0
    const/4 v13, 0x0

    .line 1040
    .local v13, "mIsSpecialNum":Z
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v13

    .line 1041
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v3, :cond_1

    .line 1042
    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactInfoForPhoneNumber: mIsSpecialNum"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_1
    if-le v15, v14, :cond_4

    if-nez v13, :cond_4

    .line 1046
    const-string v3, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1047
    .local v16, "phoneLookup":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1077
    .end local v13    # "mIsSpecialNum":Z
    .end local v14    # "mMatchLen":I
    .end local v15    # "nLen":I
    .end local v16    # "phoneLookup":Landroid/net/Uri;
    :goto_0
    if-eqz v17, :cond_8

    .line 1078
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1079
    new-instance v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v11}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 1080
    .local v11, "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1081
    .local v9, "contactId":J
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    .line 1082
    const/4 v3, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1083
    .local v12, "lookupKey":Ljava/lang/String;
    invoke-static {v9, v10, v12}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 1084
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 1085
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 1086
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 1087
    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 1088
    const/4 v3, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 1089
    const/4 v3, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 1090
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v3, :cond_2

    .line 1091
    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactInfoForPhoneNumber name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .end local v9    # "contactId":J
    .end local v12    # "lookupKey":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1101
    :goto_2
    if-eqz v11, :cond_3

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-eq v11, v3, :cond_3

    .line 1102
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 1104
    :cond_3
    return-object v11

    .line 1054
    .end local v11    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .restart local v13    # "mIsSpecialNum":Z
    .restart local v14    # "mMatchLen":I
    .restart local v15    # "nLen":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 1063
    .end local v13    # "mIsSpecialNum":Z
    .end local v14    # "mMatchLen":I
    .end local v15    # "nLen":I
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1064
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v5, "phone_lookup_with_profile"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 1069
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 1093
    :cond_7
    sget-object v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .restart local v11    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto/16 :goto_1

    .line 1098
    .end local v11    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto/16 :goto_2
.end method

.method private queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 13
    .param p1, "sipAddress"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 944
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 955
    .local v1, "contactRef":Landroid/net/Uri;
    const-string v3, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 958
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 960
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 968
    .local v8, "dataTableCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 969
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    new-instance v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v9}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 980
    .local v9, "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 982
    .local v6, "contactId":J
    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    .line 984
    const-string v0, "lookup"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 986
    .local v10, "lookupKey":Ljava/lang/String;
    invoke-static {v6, v7, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 987
    const-string v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 990
    const/4 v0, 0x3

    iput v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 991
    iput-object v2, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 995
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 996
    iput-object v2, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 997
    const-string v0, "photo_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 999
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v0, :cond_0

    .line 1000
    const-string v0, "CallLogAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactInfoForSipAddress name : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v6    # "contactId":J
    .end local v10    # "lookupKey":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1009
    :goto_1
    return-object v9

    .line 1002
    .end local v9    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_1
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .restart local v9    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_0

    .line 1007
    .end local v9    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_1
.end method

.method private setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V
    .locals 7
    .param p1, "views"    # Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    .param p2, "photoId"    # J
    .param p4, "contactUri"    # Landroid/net/Uri;
    .param p5, "randomSeed"    # J

    .prologue
    .line 2826
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 2827
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->refreshCache()V

    .line 2828
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x1

    move-wide v2, p2

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    .line 2830
    return-void
.end method

.method private setSimCardIcon(I)I
    .locals 2
    .param p1, "nIndex"    # I

    .prologue
    .line 2992
    const-string v1, "number_of_select_icon_is_9"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2993
    packed-switch p1, :pswitch_data_0

    .line 3022
    const v0, 0x7f020825

    .line 3059
    .local v0, "Image":I
    :goto_0
    return v0

    .line 2995
    .end local v0    # "Image":I
    :pswitch_0
    const v0, 0x7f020825

    .line 2996
    .restart local v0    # "Image":I
    goto :goto_0

    .line 2998
    .end local v0    # "Image":I
    :pswitch_1
    const v0, 0x7f020828

    .line 2999
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3001
    .end local v0    # "Image":I
    :pswitch_2
    const v0, 0x7f020819

    .line 3002
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3004
    .end local v0    # "Image":I
    :pswitch_3
    const v0, 0x7f020845

    .line 3005
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3007
    .end local v0    # "Image":I
    :pswitch_4
    const v0, 0x7f02083b

    .line 3008
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3010
    .end local v0    # "Image":I
    :pswitch_5
    const v0, 0x7f020837

    .line 3011
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3013
    .end local v0    # "Image":I
    :pswitch_6
    const v0, 0x7f020832

    .line 3014
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3016
    .end local v0    # "Image":I
    :pswitch_7
    const v0, 0x7f020840

    .line 3017
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3019
    .end local v0    # "Image":I
    :pswitch_8
    const v0, 0x7f02082c

    .line 3020
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3026
    .end local v0    # "Image":I
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 3055
    const v0, 0x7f020824

    .restart local v0    # "Image":I
    goto :goto_0

    .line 3028
    .end local v0    # "Image":I
    :pswitch_9
    const v0, 0x7f020824

    .line 3029
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3031
    .end local v0    # "Image":I
    :pswitch_a
    const v0, 0x7f020827

    .line 3032
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3034
    .end local v0    # "Image":I
    :pswitch_b
    const v0, 0x7f020831

    .line 3035
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3037
    .end local v0    # "Image":I
    :pswitch_c
    const v0, 0x7f02083f

    .line 3038
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3040
    .end local v0    # "Image":I
    :pswitch_d
    const v0, 0x7f02082b

    .line 3041
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3043
    .end local v0    # "Image":I
    :pswitch_e
    const v0, 0x7f020848

    .line 3044
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3046
    .end local v0    # "Image":I
    :pswitch_f
    const v0, 0x7f02081c

    .line 3047
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3049
    .end local v0    # "Image":I
    :pswitch_10
    const v0, 0x7f02081d

    .line 3050
    .restart local v0    # "Image":I
    goto :goto_0

    .line 3052
    .end local v0    # "Image":I
    :pswitch_11
    const v0, 0x7f020822

    .line 3053
    .restart local v0    # "Image":I
    goto :goto_0

    .line 2993
    :pswitch_data_0
    .packed-switch 0x0
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

    .line 3026
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private unregisterPreDrawListener()V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 850
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 851
    return-void
.end method

.method private updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "updatedInfo"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .param p4, "callLogInfo"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .prologue
    .line 2709
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2710
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 2712
    .local v1, "needsUpdate":Z
    if-eqz p4, :cond_8

    .line 2713
    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v4, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2714
    const-string v3, "name"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    const/4 v1, 0x1

    .line 2718
    :cond_0
    iget v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iget v4, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    if-eq v3, v4, :cond_1

    .line 2719
    const-string v3, "numbertype"

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2720
    const/4 v1, 0x1

    .line 2723
    :cond_1
    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v4, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2724
    const-string v3, "numberlabel"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2725
    const/4 v1, 0x1

    .line 2727
    :cond_2
    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v4, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2728
    const-string v3, "lookup_uri"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    const/4 v1, 0x1

    .line 2737
    :cond_3
    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v4, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2738
    const-string v3, "matched_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    const/4 v1, 0x1

    .line 2741
    :cond_4
    iget-wide v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    iget-wide v5, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 2742
    const-string v3, "photo_id"

    iget-wide v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2743
    const/4 v1, 0x1

    .line 2745
    :cond_5
    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v4, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2746
    const-string v3, "formatted_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    const/4 v1, 0x1

    .line 2749
    :cond_6
    iget v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    iget v4, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    if-eq v3, v4, :cond_7

    .line 2750
    const-string v3, "contactid"

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2751
    const/4 v1, 0x1

    .line 2767
    :cond_7
    :goto_0
    if-nez v1, :cond_9

    .line 2785
    :goto_1
    return-void

    .line 2755
    :cond_8
    const-string v3, "name"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    const-string v3, "numbertype"

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2757
    const-string v3, "numberlabel"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    const-string v3, "lookup_uri"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    const-string v3, "matched_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2760
    const-string v3, "normalized_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    const-string v3, "photo_id"

    iget-wide v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2762
    const-string v3, "formatted_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2763
    const-string v3, "contactid"

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2764
    const/4 v1, 0x1

    goto :goto_0

    .line 2772
    :cond_9
    if-nez p2, :cond_a

    .line 2773
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v5, "number = ? AND countryiso IS NULL"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2782
    :catch_0
    move-exception v0

    .line 2783
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1

    .line 2777
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_a
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v5, "number = ? AND countryiso = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 2
    .param p1, "cursorPosition"    # I
    .param p2, "size"    # I
    .param p3, "expanded"    # Z

    .prologue
    .line 2851
    const-string v0, "CallLogAdapter"

    const-string v1, "========= addGroup ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    .line 2853
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1242
    const-string v0, "CallLogAdapter"

    const-string v1, "========= addGroups ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->doNotGroup:Z

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;Z)V

    .line 1244
    return-void
.end method

.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1367
    const-string v0, "CallLogAdapter"

    const-string v1, "========= bindChildView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    const/16 v1, 0x226

    if-ne v0, v1, :cond_0

    .line 1369
    invoke-direct {p0, p1, p3, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindViewDetail(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 1372
    :goto_0
    return-void

    .line 1371
    :cond_0
    invoke-direct {p0, p1, p3, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    goto :goto_0
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "groupSize"    # I
    .param p5, "expanded"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1432
    const-string v0, "CallLogAdapter"

    const-string v1, "========= bindGroupView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    const/16 v1, 0x226

    if-ne v0, v1, :cond_0

    .line 1434
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindViewDetail(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 1437
    :goto_0
    return-void

    .line 1436
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    goto :goto_0
.end method

.method public bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1304
    const-string v0, "CallLogAdapter"

    const-string v1, "========= bindStandAloneView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    const/16 v1, 0x226

    if-ne v0, v1, :cond_0

    .line 1306
    invoke-direct {p0, p1, p3, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindViewDetail(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 1309
    :goto_0
    return-void

    .line 1308
    :cond_0
    invoke-direct {p0, p1, p3, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    goto :goto_0
.end method

.method disableRequestProcessingForTest()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2840
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 2841
    return-void
.end method

.method enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .param p4, "immediate"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 916
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V

    .line 917
    .local v0, "request":Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 918
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 919
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 920
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 922
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->startRequestProcessing()V

    .line 924
    :cond_1
    return-void

    .line 922
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBetterNumberFromContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 2895
    const/4 v11, 0x0

    .line 2897
    .local v11, "matchingNumber":Ljava/lang/String;
    new-instance v13, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    .local v13, "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v2, v13}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 2899
    .local v8, "ci":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    if-eqz v8, :cond_3

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-eq v8, v2, :cond_3

    .line 2900
    iget-object v11, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 2959
    :cond_0
    :goto_0
    if-eqz v11, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "+"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 2962
    :cond_1
    move-object/from16 p1, v11

    .line 2964
    :cond_2
    return-object p1

    .line 2903
    :cond_3
    const/4 v15, 0x0

    .line 2906
    .local v15, "phonesCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v10

    .line 2909
    .local v10, "mMatchLen":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 2911
    .local v12, "nLen":I
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v2, :cond_4

    .line 2912
    const-string v2, "CallLogAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getBetterNumberFromContacts] mMatchLen :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   nLen :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    :cond_4
    const/4 v9, 0x0

    .line 2916
    .local v9, "mIsSpecialNum":Z
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v9

    .line 2917
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v2, :cond_5

    .line 2918
    const-string v2, "CallLogAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBetterNumberFromContacts: mIsSpecialNum"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    :cond_5
    if-le v12, v10, :cond_7

    if-nez v9, :cond_7

    .line 2922
    const-string v2, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 2923
    .local v14, "phoneLookup":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2949
    .end local v9    # "mIsSpecialNum":Z
    .end local v10    # "mMatchLen":I
    .end local v12    # "nLen":I
    .end local v14    # "phoneLookup":Landroid/net/Uri;
    :goto_1
    if-eqz v15, :cond_0

    .line 2950
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2951
    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2953
    :cond_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2955
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 2930
    .restart local v9    # "mIsSpecialNum":Z
    .restart local v10    # "mMatchLen":I
    .restart local v12    # "nLen":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_1

    .line 2938
    .end local v9    # "mIsSpecialNum":Z
    .end local v10    # "mMatchLen":I
    .end local v12    # "nLen":I
    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 2939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_1

    .line 2943
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "phone_lookup_with_profile"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    goto :goto_1
.end method

.method public getEnableTouchScreenHeight()D
    .locals 6

    .prologue
    .line 687
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 688
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 689
    .local v0, "dsp":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feae147ae147ae1L

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public getGroupCountList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/GroupCount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3587
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getGroupCountList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedPos()I
    .locals 1

    .prologue
    .line 2978
    sget v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 3561
    const-string v2, "feature_tablet_selection_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3562
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v2, :cond_2

    .line 3563
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3565
    .local v1, "currView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 3566
    const-string v2, "CallLogAdapter"

    const-string v3, "getView is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    const/4 v1, 0x0

    .line 3583
    .end local v1    # "currView":Landroid/view/View;
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-object v1

    .line 3570
    .restart local v1    # "currView":Landroid/view/View;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    const-string v2, "CallLogAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView - position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    const-string v3, "CallLogAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView - (TwSweepActionListView) parent).isItemChecked(position) : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, p3

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isItemChecked(I)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3575
    const v2, 0x7f0900f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 3576
    .local v0, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    check-cast p3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {p3, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isItemChecked(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 3583
    .end local v0    # "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v1    # "currView":Landroid/view/View;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "contactInfo"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2845
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2846
    .local v0, "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2847
    return-void
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/contacts/util/ExpirableCache;->expireAll()V

    .line 857
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 858
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    .line 859
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 805
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 807
    const/4 v0, 0x0

    .line 809
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/common/widget/GroupingListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const v8, 0x7f040024

    const v7, 0x7f040018

    const/16 v6, 0x226

    const/4 v5, 0x0

    .line 1314
    const-string v3, "CallLogAdapter"

    const-string v4, "========= newChildView ========="

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1319
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 1320
    .local v2, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 1321
    .local v1, "simcard_image":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1322
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    if-ne v3, v6, :cond_2

    .line 1323
    invoke-virtual {v0, v7, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1359
    :cond_0
    :goto_0
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    if-eq v3, v6, :cond_1

    .line 1360
    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 1361
    :cond_1
    return-object v2

    .line 1325
    :cond_2
    const-string v3, "feature_tablet_selection_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1326
    const v3, 0x7f04002b

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1328
    :cond_3
    const v3, 0x7f04002a

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1332
    :cond_4
    const-string v3, "feature_common_dsds_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1333
    const-string v3, "feature_marvell_dsds"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1334
    invoke-virtual {v0, v8, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1335
    const v3, 0x7f0900ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "simcard_image":Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 1336
    .restart local v1    # "simcard_image":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 1337
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1339
    :cond_5
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v3, :cond_6

    const-string v3, "feature_easy_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1340
    const v3, 0x7f040028

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1342
    :cond_6
    const v3, 0x7f040027

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1346
    :cond_7
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    if-ne v3, v6, :cond_8

    .line 1347
    invoke-virtual {v0, v7, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1348
    :cond_8
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1352
    const v3, 0x7f040025

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1355
    :cond_9
    invoke-virtual {v0, v8, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const v8, 0x7f040024

    const v7, 0x7f040018

    const/16 v6, 0x226

    const/4 v5, 0x0

    .line 1377
    const-string v3, "CallLogAdapter"

    const-string v4, "========= newGroupView ========="

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1382
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 1383
    .local v2, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 1384
    .local v1, "simcard_image":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1385
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    if-ne v3, v6, :cond_2

    .line 1386
    invoke-virtual {v0, v7, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1423
    :cond_0
    :goto_0
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    if-eq v3, v6, :cond_1

    .line 1424
    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 1425
    :cond_1
    return-object v2

    .line 1388
    :cond_2
    const-string v3, "feature_tablet_selection_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1389
    const v3, 0x7f04002b

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1391
    :cond_3
    const v3, 0x7f04002a

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1396
    :cond_4
    const-string v3, "feature_common_dsds_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1397
    const-string v3, "feature_marvell_dsds"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1398
    invoke-virtual {v0, v8, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1399
    const v3, 0x7f0900ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "simcard_image":Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 1400
    .restart local v1    # "simcard_image":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 1401
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1403
    :cond_5
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v3, :cond_6

    const-string v3, "feature_easy_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1404
    const v3, 0x7f040028

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1406
    :cond_6
    const v3, 0x7f040027

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1410
    :cond_7
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    if-ne v3, v6, :cond_8

    .line 1411
    invoke-virtual {v0, v7, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1412
    :cond_8
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1416
    const v3, 0x7f040025

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1419
    :cond_9
    invoke-virtual {v0, v8, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const v8, 0x7f040024

    const v7, 0x7f040018

    const/16 v6, 0x226

    const/4 v5, 0x0

    .line 1249
    const-string v3, "CallLogAdapter"

    const-string v4, "========= newStandAloneView ========="

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1254
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 1255
    .local v2, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 1256
    .local v1, "simcard_image":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1257
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    if-ne v3, v6, :cond_2

    .line 1258
    invoke-virtual {v0, v7, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1296
    :cond_0
    :goto_0
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    if-eq v3, v6, :cond_1

    .line 1297
    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 1298
    :cond_1
    return-object v2

    .line 1260
    :cond_2
    const-string v3, "feature_tablet_selection_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1261
    const v3, 0x7f04002b

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1263
    :cond_3
    const v3, 0x7f04002a

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1268
    :cond_4
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I

    if-ne v3, v6, :cond_5

    .line 1269
    invoke-virtual {v0, v7, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1270
    :cond_5
    const-string v3, "feature_common_dsds_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1271
    const-string v3, "feature_marvell_dsds"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1272
    invoke-virtual {v0, v8, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1273
    const v3, 0x7f0900ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "simcard_image":Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 1274
    .restart local v1    # "simcard_image":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 1275
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1277
    :cond_6
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v3, :cond_7

    const-string v3, "feature_easy_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1278
    const v3, 0x7f040028

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1280
    :cond_7
    const v3, 0x7f040027

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1284
    :cond_8
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1288
    const v3, 0x7f040025

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1291
    :cond_9
    invoke-virtual {v0, v8, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 783
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->refreshDetail:Z

    .line 784
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->checkScroll:Z

    .line 786
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->resetAfterDelete()V

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDoNotRefreshAfterDelete:Z

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;->fetchLogs()V

    .line 796
    :cond_1
    const-string v0, "CallLogAdapter"

    const-string v1, "onContentChanged is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 703
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetDetailUpdate()V
    .locals 2

    .prologue
    .line 2972
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v0, :cond_0

    .line 2973
    const-string v0, "CallLogAdapter"

    const-string v1, "resetDetailUpdate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->refreshDetail:Z

    .line 2975
    return-void
.end method

.method public resetSelectedPos()V
    .locals 1

    .prologue
    .line 2968
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    .line 2969
    return-void
.end method

.method setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 800
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mLoading:Z

    .line 801
    return-void
.end method

.method protected setScrollState(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 3459
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setScrollState(I)V

    .line 3460
    return-void
.end method

.method public setSelectedPos(I)V
    .locals 0
    .param p1, "newPos"    # I

    .prologue
    .line 2982
    sput p1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    .line 2983
    return-void
.end method

.method public setSplitBarEnabled(Z)V
    .locals 0
    .param p1, "isSplitBarEnabled"    # Z

    .prologue
    .line 2986
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isSplitStatus:Z

    .line 2987
    return-void
.end method

.method public setVoLTEEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 774
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mIsVoLTEEnabled:Z

    .line 775
    return-void
.end method

.method public declared-synchronized startRequestProcessing()V
    .locals 2

    .prologue
    .line 815
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 823
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 818
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 820
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->setPriority(I)V

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 815
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRequestProcessing()V
    .locals 2

    .prologue
    .line 834
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->stopProcessing()V

    .line 838
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->interrupt()V

    .line 839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    :cond_0
    monitor-exit p0

    return-void

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public truncateCityId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "city_id"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2c

    const/4 v8, 0x0

    .line 863
    const/4 v4, 0x1

    .line 864
    .local v4, "orientation":I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 865
    .local v2, "configuration":Landroid/content/res/Configuration;
    if-eqz v2, :cond_0

    .line 866
    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    .line 869
    :cond_0
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 871
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 872
    .local v3, "len_city":I
    const/16 v0, 0x11

    .line 874
    .local v0, "MAX_LEN":I
    const-string v6, "feature_wvga"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 875
    const/16 v0, 0xf

    .line 884
    :cond_1
    :goto_0
    if-lt v3, v0, :cond_2

    .line 885
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v7, v3, -0x4

    if-ne v6, v7, :cond_2

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 886
    add-int/lit8 v6, v3, -0x4

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 887
    .local v1, "city_name":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 888
    .local v5, "state_abbr":Ljava/lang/String;
    const-string v6, "feature_wvga"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 889
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x8

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 900
    .end local v0    # "MAX_LEN":I
    .end local v1    # "city_name":Ljava/lang/String;
    .end local v3    # "len_city":I
    .end local v5    # "state_abbr":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p1

    .line 877
    .restart local v0    # "MAX_LEN":I
    .restart local v3    # "len_city":I
    :cond_3
    const-string v6, "feature_is_note"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 878
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 880
    :cond_4
    const-string v6, "feature_is_fonblet"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 881
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 890
    .restart local v1    # "city_name":Ljava/lang/String;
    .restart local v5    # "state_abbr":Ljava/lang/String;
    :cond_5
    const-string v6, "feature_is_note"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 891
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xd

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 892
    :cond_6
    const-string v6, "feature_is_fonblet"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 893
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v0, -0x5

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 895
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xc

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1
.end method
