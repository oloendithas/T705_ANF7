.class public Lcom/android/contacts/list/ContactTileAdapter;
.super Lcom/android/contacts/list/DefaultContactListAdapter;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactTileAdapter$3;,
        Lcom/android/contacts/list/ContactTileAdapter$Listener;,
        Lcom/android/contacts/list/ContactTileAdapter$ViewTypes;,
        Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;,
        Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;,
        Lcom/android/contacts/list/ContactTileAdapter$onItemCheckedStateChangedListener;,
        Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sIsTwoPaneMode:Z


# instance fields
.field private mChagingSplitRatioMode:Z

.field private mChangeViewType:Z

.field private mCheckStateListener:Lcom/android/contacts/list/ContactTileAdapter$onItemCheckedStateChangedListener;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mColumnCount:I

.field private mContactCursor:Landroid/database/Cursor;

.field private mContactLinkIndex:I

.field private mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;

.field private mContext:Landroid/content/Context;

.field private mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

.field private mDividerCount:I

.field private mDividerPosition:I

.field private mFrequentCount:I

.field private mHasEmailIndex:I

.field private mHasPhoneNumberIndex:I

.field private mIdIndex:I

.field private mIsPhone:Z

.field private mIsQuickContactEnabled:Z

.field private mIsSMSAvailable:Z

.field private mIsUserProfileIndex:I

.field private mLastSelectedView:Lcom/android/contacts/list/ContactTileView;

.field private mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

.field private mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

.field private mLookupIndex:I

.field private mNameIndex:I

.field private final mPaddingInPixels:I

.field private mPhoneNumberIndex:I

.field private mPhoneNumberLabelIndex:I

.field private mPhoneNumberTypeIndex:I

.field private mPhotoIdIndex:I

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mPhotoUriIndex:I

.field private mPresenceIndex:I

.field private mResources:Landroid/content/res/Resources;

.field private mRowPaddingAdjest:I

.field private mSelectedFavoriteUri:Landroid/net/Uri;

.field private mSelectedView:Lcom/android/contacts/list/ContactTileView;

.field private mSelectionMode:Z

.field private mSelectionVisible:Z

.field private mStaredCount:I

.field private mStarredIndex:I

.field private mStatusIndex:I

.field private mTWJoinListView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter$Listener;ILcom/android/contacts/list/ContactTileAdapter$DisplayType;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/list/ContactTileAdapter$Listener;
    .param p3, "numCols"    # I
    .param p4, "displayType"    # Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 123
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    .line 126
    iput v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mRowPaddingAdjest:I

    .line 127
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mChangeViewType:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mChagingSplitRatioMode:Z

    .line 875
    new-instance v2, Lcom/android/contacts/list/ContactTileAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/ContactTileAdapter$1;-><init>(Lcom/android/contacts/list/ContactTileAdapter;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;

    .line 187
    iput-object p2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    .line 188
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    .line 190
    sget-object v2, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne p4, v2, :cond_0

    move p3, v0

    .end local p3    # "numCols":I
    :cond_0
    iput p3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    .line 191
    iput-object p4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    .line 193
    new-instance v2, Lcom/sec/android/app/contacts/ListHoverManager;

    invoke-direct {v2, p1}, Lcom/sec/android/app/contacts/ListHoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    .line 195
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    sput-boolean v0, Lcom/android/contacts/list/ContactTileAdapter;->sIsTwoPaneMode:Z

    .line 198
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I

    .line 199
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mRowPaddingAdjest:I

    .line 203
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileAdapter;->bindColumnIndices()V

    .line 205
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsPhone:Z

    .line 206
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsSMSAvailable:Z

    .line 208
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 209
    return-void

    :cond_2
    move v0, v1

    .line 195
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactTileAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectionVisible:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/ContactPhotoManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/list/ContactTileAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectionMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/list/ContactTileAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsPhone:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/list/ContactTileAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I

    return v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/android/contacts/list/ContactTileAdapter;->sIsTwoPaneMode:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/list/ContactTileAdapter;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/list/ContactTileAdapter;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->isSelectedUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/list/ContactTileAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mChagingSplitRatioMode:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/sec/android/app/contacts/ListHoverManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/list/ContactTileAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mRowPaddingAdjest:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/list/ContactTileAdapter;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectedFavoriteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/contacts/list/ContactTileAdapter;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getDescriptionResourceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/list/ContactTileAdapter;Landroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactTileAdapter;->setFavorites(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/contacts/list/ContactTileAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->actionCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/contacts/list/ContactTileAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsSMSAvailable:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/contacts/list/ContactTileAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/contacts/list/ContactTileAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->sendEmail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectedView:Lcom/android/contacts/list/ContactTileView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/list/ContactTileAdapter;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;
    .param p1, "x1"    # Lcom/android/contacts/list/ContactTileView;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectedView:Lcom/android/contacts/list/ContactTileView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mLastSelectedView:Lcom/android/contacts/list/ContactTileView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/list/ContactTileAdapter;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;
    .param p1, "x1"    # Lcom/android/contacts/list/ContactTileView;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mLastSelectedView:Lcom/android/contacts/list/ContactTileView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ContactTileAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/ContactTileAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/list/ContactTileAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getLayoutResourceId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/contacts/list/ContactTileAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileAdapter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    return-object v0
.end method

.method private actionCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1513
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1515
    .local v0, "callIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1516
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1517
    return-void
.end method

.method private bindColumnIndices()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/16 v2, 0x8

    .line 340
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v0, v1, :cond_0

    .line 341
    iput v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    .line 342
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mLookupIndex:I

    .line 343
    iput v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoUriIndex:I

    .line 344
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mNameIndex:I

    .line 345
    iput v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStarredIndex:I

    .line 346
    iput v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPresenceIndex:I

    .line 347
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    .line 348
    iput v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mHasPhoneNumberIndex:I

    .line 349
    iput v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsUserProfileIndex:I

    .line 350
    iput v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactLinkIndex:I

    .line 351
    iput v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoIdIndex:I

    .line 370
    :goto_0
    return-void

    .line 353
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    .line 354
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mLookupIndex:I

    .line 355
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoUriIndex:I

    .line 356
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mNameIndex:I

    .line 357
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStarredIndex:I

    .line 358
    iput v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPresenceIndex:I

    .line 359
    iput v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    .line 360
    iput v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mHasPhoneNumberIndex:I

    .line 361
    iput v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsUserProfileIndex:I

    .line 362
    iput v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactLinkIndex:I

    .line 364
    iput v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberIndex:I

    .line 365
    iput v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberTypeIndex:I

    .line 366
    iput v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberLabelIndex:I

    .line 367
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mHasEmailIndex:I

    .line 368
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoIdIndex:I

    goto :goto_0
.end method

.method private createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
    .locals 16
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "position"    # I

    .prologue
    .line 471
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    move/from16 v0, p2

    if-gt v14, v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 549
    :goto_0
    return-object v2

    .line 472
    :cond_1
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v7

    .line 474
    .local v7, "mirroringEnabled":Z
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 476
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2

    .line 477
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/list/ContactTileAdapter;->bindColumnIndices()V

    .line 480
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 481
    .local v4, "id":J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoUriIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 482
    .local v11, "photoUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mLookupIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 484
    .local v6, "lookupKey":Ljava/lang/String;
    new-instance v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    invoke-direct {v2}, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;-><init>()V

    .line 485
    .local v2, "contact":Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mNameIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 487
    .local v8, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoIdIndex:I

    if-lez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoIdIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoIdIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    :goto_1
    iput-wide v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoId:J

    .line 489
    if-eqz v7, :cond_5

    .line 490
    if-eqz v8, :cond_4

    .end local v8    # "name":Ljava/lang/String;
    :goto_2
    iput-object v8, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    .line 494
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    .line 495
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mHasPhoneNumberIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->hasPhoneNumber:I

    .line 496
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mIsUserProfileIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->isUserProfile:I

    .line 497
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mContactLinkIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactLink:Ljava/lang/String;

    .line 499
    if-eqz v11, :cond_7

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    :goto_4
    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    .line 500
    iput-object v6, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->lookupKey:Ljava/lang/String;

    .line 501
    sget-object v14, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v14, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v14, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->lookupKeyUri:Landroid/net/Uri;

    .line 504
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactId:J

    .line 506
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mStarredIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->starred:I

    .line 507
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mHasEmailIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->hasEmail:I

    .line 509
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v15, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v14, v15, :cond_a

    .line 510
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberTypeIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 511
    .local v10, "phoneNumberType":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberLabelIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 513
    .local v9, "phoneNumberCustomLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/contacts/list/ContactTileAdapter;->getAccountType(J)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "accountType":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v14

    if-lez v14, :cond_9

    const-string v14, "vnd.sec.contact.sim"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 516
    const/4 v14, 0x2

    if-ne v10, v14, :cond_8

    .line 517
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    invoke-static {v14, v10, v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneLabel:Ljava/lang/String;

    .line 526
    :goto_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 487
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v9    # "phoneNumberCustomLabel":Ljava/lang/String;
    .end local v10    # "phoneNumberType":I
    .restart local v8    # "name":Ljava/lang/String;
    :cond_3
    const-wide/16 v14, -0x1

    goto/16 :goto_1

    .line 490
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0e0111

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 492
    :cond_5
    if-eqz v8, :cond_6

    .end local v8    # "name":Ljava/lang/String;
    :goto_6
    iput-object v8, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    goto/16 :goto_3

    .restart local v8    # "name":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    const v15, 0x104000e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 499
    .end local v8    # "name":Ljava/lang/String;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 520
    .restart local v1    # "accountType":Ljava/lang/String;
    .restart local v9    # "phoneNumberCustomLabel":Ljava/lang/String;
    .restart local v10    # "phoneNumberType":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0e03d9

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneLabel:Ljava/lang/String;

    goto :goto_5

    .line 523
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    invoke-static {v14, v10, v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneLabel:Ljava/lang/String;

    goto :goto_5

    .line 529
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v9    # "phoneNumberCustomLabel":Ljava/lang/String;
    .end local v10    # "phoneNumberType":I
    :cond_a
    const/4 v3, 0x0

    .line 530
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .line 531
    .local v12, "presence":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPresenceIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_b

    .line 532
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPresenceIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14, v12}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 535
    :cond_b
    iput-object v3, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->presenceIcon:Landroid/graphics/drawable/Drawable;

    .line 537
    const/4 v13, 0x0

    .line 538
    .local v13, "statusMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_c

    .line 539
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 543
    :cond_c
    if-nez v13, :cond_d

    if-eqz v12, :cond_d

    .line 544
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14, v12}, Lcom/android/contacts/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    .line 546
    :cond_d
    iput-object v13, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private createMenuWidgetFromView(Lcom/android/contacts/list/ContactTileView;Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .locals 12
    .param p1, "tileView"    # Lcom/android/contacts/list/ContactTileView;
    .param p2, "childView"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    .line 1416
    const/4 v2, 0x0

    .line 1417
    .local v2, "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->isStarred()Z

    move-result v9

    .line 1418
    .local v9, "isStarred":Z
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v5

    .line 1419
    .local v5, "contactUri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->hasPhoneNumber()Z

    move-result v7

    .line 1420
    .local v7, "hasPhoneNumber":Z
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->hasEmail()Z

    move-result v6

    .line 1422
    .local v6, "hasEmail":Z
    if-nez v5, :cond_0

    .line 1423
    const/4 v10, 0x0

    .line 1474
    :goto_0
    return-object v10

    .line 1425
    :cond_0
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 1426
    .local v3, "contactId":J
    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/list/ContactTileAdapter;->getAccountName(J)Ljava/lang/String;

    move-result-object v0

    .line 1427
    .local v0, "accountName":Ljava/lang/String;
    const-string v11, "primary.sim.account_name"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "primary.sim2.account_name"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    move v8, v10

    .line 1429
    .local v8, "isSIMcontact":Z
    :goto_1
    invoke-direct {p0, v8, v9, v7, v6}, Lcom/android/contacts/list/ContactTileAdapter;->getAdapterMenuList(ZZZZ)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v1

    .line 1430
    .local v1, "airButtonAdapter":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    if-nez p2, :cond_3

    .line 1431
    new-instance v2, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    .end local v2    # "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    invoke-direct {v2, p1, v1, v10}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .line 1436
    .restart local v2    # "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    :goto_2
    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setGravity(I)V

    .line 1437
    new-instance v10, Lcom/android/contacts/list/ContactTileAdapter$2;

    invoke-direct {v10, p0, v5, v1, v9}, Lcom/android/contacts/list/ContactTileAdapter$2;-><init>(Lcom/android/contacts/list/ContactTileAdapter;Landroid/net/Uri;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;Z)V

    invoke-virtual {v2, v10}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setItemSelectListener(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;)V

    move-object v10, v2

    .line 1474
    goto :goto_0

    .line 1427
    .end local v1    # "airButtonAdapter":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .end local v8    # "isSIMcontact":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1433
    .restart local v1    # "airButtonAdapter":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .restart local v8    # "isSIMcontact":Z
    :cond_3
    new-instance v2, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    .end local v2    # "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    invoke-direct {v2, p2, v1, v10}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .restart local v2    # "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    goto :goto_2
.end method

.method private getAdapterMenuList(ZZZZ)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 6
    .param p1, "isSIMcontact"    # Z
    .param p2, "isStarred"    # Z
    .param p3, "hasPhoneNumber"    # Z
    .param p4, "hasEmail"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1480
    .local v0, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;>;"
    if-nez p1, :cond_0

    .line 1481
    if-eqz p2, :cond_4

    .line 1482
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0208bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsPhone:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 1490
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020880

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e031f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsSMSAvailable:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 1494
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0208cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0233

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1497
    :cond_2
    if-eqz p4, :cond_3

    .line 1498
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0208cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0232

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    :cond_3
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>(Ljava/util/ArrayList;)V

    return-object v1

    .line 1485
    :cond_4
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02087c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private getDescriptionResourceId(Ljava/lang/String;)I
    .locals 3
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 1533
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    .line 1534
    :cond_0
    const/4 v0, -0x1

    .line 1549
    :cond_1
    :goto_0
    return v0

    .line 1536
    :cond_2
    const/4 v0, 0x0

    .line 1537
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1538
    const v0, 0x7f0e003c

    goto :goto_0

    .line 1539
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1540
    const v0, 0x7f0e0039

    goto :goto_0

    .line 1541
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e031f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1542
    const v0, 0x7f0e031f

    goto :goto_0

    .line 1543
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1544
    const v0, 0x7f0e0233

    goto :goto_0

    .line 1545
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0232

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1546
    const v0, 0x7f0e0232

    goto :goto_0
.end method

.method private getDivider(I)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const v6, 0x7f0e00b5

    .line 752
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f040186

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 753
    .local v0, "dividerView":Landroid/view/View;
    const v3, 0x7f0901f0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 755
    .local v2, "text":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v4, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v3, v4, :cond_4

    .line 756
    if-nez p1, :cond_2

    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-lez v3, :cond_2

    .line 757
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0e008e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 764
    :cond_0
    const v3, 0x7f09037d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 765
    .local v1, "separator":Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mChagingSplitRatioMode:Z

    if-eqz v3, :cond_3

    .line 766
    const v3, 0x7f02071d

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 779
    .end local v1    # "separator":Landroid/view/View;
    :cond_1
    :goto_1
    return-object v0

    .line 759
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 768
    .restart local v1    # "separator":Landroid/view/View;
    :cond_3
    const v3, 0x7f02071c

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 776
    .end local v1    # "separator":Landroid/view/View;
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v4, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0e00b6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private getDividerPosition(Landroid/database/Cursor;)I
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, -0x1

    .line 412
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to access cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_1
    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$3;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 434
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 420
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStarredIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 422
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 439
    :goto_0
    :pswitch_1
    return v0

    .line 432
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 439
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLayoutResourceId(I)I
    .locals 4
    .param p1, "viewType"    # I

    .prologue
    const v0, 0x7f040078

    const v1, 0x7f040074

    .line 783
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v2, v3, :cond_1

    .line 784
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 799
    :cond_0
    :goto_0
    return v0

    .line 791
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 801
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized viewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    if-eqz v1, :cond_0

    const v0, 0x7f040079

    goto :goto_0

    .line 796
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v2, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v0, v2, :cond_2

    const v0, 0x7f040075

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 799
    :pswitch_3
    const v0, 0x7f04007a

    goto :goto_0

    .line 791
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getRowCount(I)I
    .locals 2
    .param p1, "entryCount"    # I

    .prologue
    .line 601
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isSelectedUri(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectedFavoriteUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectedFavoriteUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendEmail(Ljava/lang/String;)V
    .locals 4
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 1526
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1528
    .local v0, "emailIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1529
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1530
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1520
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1522
    .local v0, "messageIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1523
    return-void
.end method

.method private setFavorites(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "isStarred"    # Z

    .prologue
    .line 1506
    if-eqz p1, :cond_0

    .line 1507
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, p1, v1}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1508
    .local v0, "favoriteIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1510
    .end local v0    # "favoriteIntent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1507
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAllCheckStates()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 257
    :cond_0
    return-void
.end method

.method public enableQuickContact(Z)V
    .locals 0
    .param p1, "enableQuickContact"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    .line 298
    return-void
.end method

.method public getAccountName(J)Ljava/lang/String;
    .locals 8
    .param p1, "contactId"    # J

    .prologue
    const/4 v4, 0x0

    .line 1396
    const/4 v6, 0x0

    .line 1397
    .local v6, "accountName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "contact_id"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "account_name"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1401
    .local v7, "cur":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1402
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    const-string v0, "account_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1405
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1407
    :cond_1
    return-object v6
.end method

.method public getAccountType(J)Ljava/lang/String;
    .locals 13
    .param p1, "dataId"    # J

    .prologue
    .line 1366
    const/4 v8, 0x0

    .line 1367
    .local v8, "accountType":Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 1369
    .local v11, "rawContactId":J
    const-string v0, "content://com.android.contacts/data/phones/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1371
    .local v1, "URI_PHONE":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "raw_contact_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1374
    .local v9, "cur1":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1375
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1378
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1381
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, v11, v2

    if-lez v0, :cond_3

    .line 1382
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "account_type"

    aput-object v5, v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1385
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 1386
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1387
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1389
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1392
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v8
.end method

.method public getCheckStates()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, "checkStatesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 281
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 282
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-object v0
.end method

.method public getContactId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 272
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 444
    move v0, p1

    .line 445
    .local v0, "cursorPosition":I
    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v7, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v6, v7, :cond_2

    iget-boolean v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-ne v6, v5, :cond_2

    .line 446
    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-lez v7, :cond_0

    :goto_0
    add-int/2addr v5, v6

    if-ge p1, v5, :cond_1

    .line 447
    add-int/lit8 v0, p1, -0x1

    .line 455
    :goto_1
    const-wide/16 v2, 0x0

    .line 456
    .local v2, "id":J
    const/4 v4, 0x0

    .line 458
    .local v4, "lookupKey":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v5, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 459
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 460
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mLookupIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 464
    :goto_2
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v5, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .end local v2    # "id":J
    .end local v4    # "lookupKey":Ljava/lang/String;
    :goto_3
    return-object v5

    .line 446
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 449
    :cond_1
    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    sub-int v0, p1, v5

    goto :goto_1

    .line 453
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 461
    .restart local v2    # "id":J
    .restart local v4    # "lookupKey":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 462
    .local v1, "e":Landroid/database/CursorIndexOutOfBoundsException;
    sget-object v5, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    const-string v6, "CursorIndexOutOfBoundsException has occurred"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getCount()I
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 554
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v4

    .line 558
    :cond_1
    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$3;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 592
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized DisplayType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 561
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v4

    goto :goto_0

    .line 563
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-ne v3, v5, :cond_4

    .line 564
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 566
    .local v2, "totalCnt":I
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    add-int/2addr v3, v2

    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mFrequentCount:I

    if-nez v6, :cond_3

    :goto_2
    add-int/2addr v4, v3

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    .line 568
    .end local v2    # "totalCnt":I
    :cond_4
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    .line 569
    .local v1, "starredRowCount":I
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-nez v3, :cond_5

    move v3, v4

    :goto_3
    add-int/2addr v1, v3

    .line 571
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mFrequentCount:I

    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    .line 572
    .local v0, "frequentRowCount":I
    if-nez v0, :cond_6

    :goto_4
    add-int/2addr v0, v4

    .line 574
    add-int v4, v1, v0

    goto :goto_0

    .end local v0    # "frequentRowCount":I
    :cond_5
    move v3, v5

    .line 569
    goto :goto_3

    .restart local v0    # "frequentRowCount":I
    :cond_6
    move v4, v5

    .line 572
    goto :goto_4

    .line 578
    .end local v0    # "frequentRowCount":I
    .end local v1    # "starredRowCount":I
    :pswitch_2
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    .line 581
    .restart local v1    # "starredRowCount":I
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    sub-int v0, v3, v6

    .line 584
    .restart local v0    # "frequentRowCount":I
    if-nez v0, :cond_7

    :goto_5
    add-int/2addr v0, v4

    .line 587
    add-int v4, v1, v0

    goto :goto_0

    :cond_7
    move v4, v5

    .line 584
    goto :goto_5

    .line 590
    .end local v0    # "frequentRowCount":I
    .end local v1    # "starredRowCount":I
    :pswitch_3
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    goto/16 :goto_0

    .line 558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getCursorCount()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 610
    new-instance v3, Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 611
    .local v3, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;>;"
    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    mul-int v1, p1, v5

    .line 613
    .local v1, "contactIndex":I
    sget-object v5, Lcom/android/contacts/list/ContactTileAdapter$3;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 671
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized DisplayType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 615
    :pswitch_0
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4, p1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_0
    :goto_0
    return-object v3

    .line 619
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "columnCounter":I
    :goto_1
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v4, :cond_0

    .line 620
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4, v1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    add-int/lit8 v1, v1, 0x1

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 625
    .end local v0    # "columnCounter":I
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-ne v5, v4, :cond_3

    .line 626
    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-lez v6, :cond_1

    :goto_2
    add-int/2addr v4, v5

    if-ge p1, v4, :cond_2

    .line 627
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    add-int/lit8 v5, p1, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 626
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 629
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    sub-int v5, p1, v5

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 632
    :cond_3
    sget-object v4, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    invoke-direct {p0, v4}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ge p1, v4, :cond_4

    .line 634
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    sub-int/2addr v1, v4

    .line 635
    const/4 v0, 0x0

    .line 636
    .restart local v0    # "columnCounter":I
    :goto_3
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v4, :cond_0

    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-eq v1, v4, :cond_0

    .line 637
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4, v1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    add-int/lit8 v1, v1, 0x1

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 641
    .end local v0    # "columnCounter":I
    :cond_4
    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    rem-int/2addr v4, v6

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    :goto_4
    sub-int v2, v5, v4

    .line 642
    .local v2, "emptyCnt":I
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-nez v4, :cond_6

    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    :goto_5
    sub-int v4, v1, v4

    sub-int v1, v4, v2

    .line 643
    sget-object v4, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contactIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    sget-object v4, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "emptyCnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v0, 0x0

    .restart local v0    # "columnCounter":I
    :goto_6
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v4, :cond_0

    .line 646
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4, v1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    add-int/lit8 v1, v1, 0x1

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 641
    .end local v0    # "columnCounter":I
    .end local v2    # "emptyCnt":I
    :cond_5
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    rem-int/2addr v4, v6

    goto :goto_4

    .line 642
    .restart local v2    # "emptyCnt":I
    :cond_6
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    mul-int/lit8 v4, v4, 0x2

    goto :goto_5

    .line 653
    .end local v2    # "emptyCnt":I
    :pswitch_3
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v4}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v4

    if-ge p1, v4, :cond_7

    .line 654
    const/4 v0, 0x0

    .line 655
    .restart local v0    # "columnCounter":I
    :goto_7
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v4, :cond_0

    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    if-eq v1, v4, :cond_0

    .line 656
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4, v1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    add-int/lit8 v1, v1, 0x1

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 666
    .end local v0    # "columnCounter":I
    :cond_7
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v4}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v4

    sub-int v4, p1, v4

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    add-int v1, v4, v5

    .line 667
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4, v1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 681
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 819
    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$3;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 860
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-eqz v3, :cond_3

    .line 822
    if-nez p1, :cond_1

    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    if-eqz v2, :cond_1

    .line 858
    :cond_0
    :goto_0
    return v0

    .line 825
    :cond_1
    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    if-ge p1, v2, :cond_2

    move v0, v1

    .line 826
    goto :goto_0

    .line 827
    :cond_2
    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    if-eq p1, v2, :cond_0

    move v0, v1

    .line 830
    goto :goto_0

    .line 833
    :cond_3
    if-nez p1, :cond_4

    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    if-nez v1, :cond_0

    .line 836
    :cond_4
    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    if-ge p1, v1, :cond_5

    move v0, v2

    .line 837
    goto :goto_0

    .line 838
    :cond_5
    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v1, v3

    if-ne p1, v1, :cond_6

    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mFrequentCount:I

    if-gtz v1, :cond_0

    :cond_6
    move v0, v2

    .line 842
    goto :goto_0

    .line 847
    :pswitch_1
    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v2

    if-ge p1, v2, :cond_7

    .line 848
    const/4 v0, 0x3

    goto :goto_0

    .line 849
    :cond_7
    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v2

    if-eq p1, v2, :cond_0

    move v0, v1

    .line 852
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 856
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 858
    goto :goto_0

    .line 819
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLookupKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 276
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mLookupIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Long;)I
    .locals 5
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 243
    const/4 v0, -0x1

    .line 244
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 246
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    goto :goto_0

    .line 252
    :cond_1
    return v0
.end method

.method public getSelectedUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectedFavoriteUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStaredCount()I
    .locals 1

    .prologue
    .line 1411
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 713
    sget-object v8, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getView(position) = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v5

    .line 716
    .local v5, "itemViewType":I
    if-ne v5, v6, :cond_0

    .line 718
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getDivider(I)Landroid/view/View;

    move-result-object v2

    .line 744
    :goto_0
    return-object v2

    .line 725
    :cond_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    .local v2, "contactTileRowView":Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 732
    .local v1, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;>;"
    if-nez v2, :cond_1

    .line 734
    new-instance v2, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;

    .end local v2    # "contactTileRowView":Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;
    iget-object v8, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v8, v5}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;-><init>(Lcom/android/contacts/list/ContactTileAdapter;Landroid/content/Context;I)V

    .line 737
    .restart local v2    # "contactTileRowView":Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;
    :cond_1
    const/4 v4, 0x0

    .line 738
    .local v4, "isLastRow":Z
    sget-boolean v8, Lcom/android/contacts/list/ContactTileAdapter;->sIsTwoPaneMode:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v9, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v8, v9, :cond_3

    if-lt p1, v6, :cond_3

    .line 739
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v8

    if-ne v8, v6, :cond_2

    move v4, v6

    .line 743
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isVoLTEEnabled()Z

    move-result v8

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v9

    if-ne v9, v6, :cond_5

    :goto_3
    invoke-virtual {v2, v1, v4, v8, v6}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->configureRow(Ljava/util/ArrayList;ZZZ)V

    goto :goto_0

    .line 726
    .end local v1    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;>;"
    .end local v2    # "contactTileRowView":Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;
    .end local v4    # "isLastRow":Z
    :catch_0
    move-exception v3

    .line 727
    .local v3, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;

    iget-object v8, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v8, v5}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;-><init>(Lcom/android/contacts/list/ContactTileAdapter;Landroid/content/Context;I)V

    .restart local v2    # "contactTileRowView":Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;
    goto :goto_1

    .end local v3    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;>;"
    .restart local v4    # "isLastRow":Z
    :cond_2
    move v4, v7

    .line 739
    goto :goto_2

    .line 741
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne p1, v8, :cond_4

    move v4, v6

    :goto_4
    goto :goto_2

    :cond_4
    move v4, v7

    goto :goto_4

    :cond_5
    move v6, v7

    .line 743
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 806
    const/4 v0, 0x4

    return v0
.end method

.method protected isChangingSplitRatioMode()Z
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mChagingSplitRatioMode:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 692
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v1

    .line 693
    .local v1, "itemViewType":I
    if-ne v1, v3, :cond_0

    .line 708
    :goto_0
    return v4

    .line 697
    :cond_0
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    move v0, v3

    .line 698
    .local v0, "columnCount":I
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v6, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v5, v6, :cond_1

    .line 699
    iget-boolean v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-ne v5, v3, :cond_3

    .line 700
    const/4 v0, 0x1

    .line 707
    :cond_1
    :goto_2
    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    if-nez v5, :cond_4

    move v2, v4

    .line 708
    .local v2, "rowCount":I
    :goto_3
    if-eq p1, v2, :cond_5

    :goto_4
    move v4, v3

    goto :goto_0

    .line 697
    .end local v0    # "columnCount":I
    .end local v2    # "rowCount":I
    :cond_2
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    goto :goto_1

    .line 702
    .restart local v0    # "columnCount":I
    :cond_3
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    goto :goto_2

    .line 707
    :cond_4
    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v0

    add-int/lit8 v2, v5, 0x1

    goto :goto_3

    .restart local v2    # "rowCount":I
    :cond_5
    move v3, v4

    .line 708
    goto :goto_4
.end method

.method public selectAllCheckStates()V
    .locals 4

    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 260
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 261
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method public setActivatedState(Lcom/android/contacts/list/ContactTileView;Z)V
    .locals 0
    .param p1, "v"    # Lcom/android/contacts/list/ContactTileView;
    .param p2, "isActivated"    # Z

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method

.method protected setChangingSplitRatioMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 866
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mChagingSplitRatioMode:Z

    .line 867
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 868
    return-void
.end method

.method public setCheckStates(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "checkStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 288
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 289
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method public setColumnCount(I)V
    .locals 0
    .param p1, "columnCount"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    .line 217
    return-void
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 378
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 379
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getDividerPosition(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    .line 380
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v0, v1, :cond_1

    .line 381
    iput v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    .line 382
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    .line 384
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-lez v0, :cond_2

    .line 385
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    .line 390
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mFrequentCount:I

    .line 391
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-lez v0, :cond_0

    .line 392
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    .line 394
    :cond_0
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mFrequentCount:I

    if-lez v0, :cond_1

    .line 395
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    .line 398
    :cond_1
    sget-object v0, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDividerPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-object v0, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStaredCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v0, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrequentCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mFrequentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 403
    return-void

    .line 387
    :cond_2
    iput v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    goto :goto_0
.end method

.method public setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V
    .locals 0
    .param p1, "displayType"    # Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    .line 294
    return-void
.end method

.method public setItemChecked(Ljava/lang/Long;Z)V
    .locals 5
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "checked"    # Z

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getPosition(Ljava/lang/Long;)I

    move-result v1

    .line 232
    .local v1, "position":I
    if-eqz p2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 237
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->getContactId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 238
    .local v0, "contactId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mCheckStateListener:Lcom/android/contacts/list/ContactTileAdapter$onItemCheckedStateChangedListener;

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mCheckStateListener:Lcom/android/contacts/list/ContactTileAdapter$onItemCheckedStateChangedListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4, p2}, Lcom/android/contacts/list/ContactTileAdapter$onItemCheckedStateChangedListener;->onItemCheckedStateChanged(JZ)V

    .line 241
    :cond_0
    return-void

    .line 235
    .end local v0    # "contactId":Ljava/lang/Long;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0
.end method

.method public setOnItemCheckedStateChangedListener(Lcom/android/contacts/list/ContactTileAdapter$onItemCheckedStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/ContactTileAdapter$onItemCheckedStateChangedListener;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mCheckStateListener:Lcom/android/contacts/list/ContactTileAdapter$onItemCheckedStateChangedListener;

    .line 228
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoLoader"    # Lcom/android/contacts/ContactPhotoManager;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 213
    return-void
.end method

.method public setSelectedUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectedFavoriteUri:Landroid/net/Uri;

    .line 319
    return-void
.end method

.method public setSelectionMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectionMode:Z

    .line 221
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectionVisible:Z

    .line 306
    return-void
.end method

.method public setViewType(Z)V
    .locals 0
    .param p1, "bList"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    .line 302
    return-void
.end method
