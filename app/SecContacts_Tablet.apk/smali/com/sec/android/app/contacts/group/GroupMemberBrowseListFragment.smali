.class public Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
.super Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberBrowseAdapterListener;,
        Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;,
        Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;,
        Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;
    }
.end annotation


# static fields
.field private static final EXTRA_KEY_IS_PROGRESS_SHOWING:Ljava/lang/String; = "isShowing"

.field private static final EXTRA_KEY_RESOURCE_ID:Ljava/lang/String; = "resourId"

.field public static final ICE_SELECTION_PREFIX:Ljava/lang/String; = "mimetype = \'vnd.android.cursor.item/phone_v2\' AND lookup = \'"

.field private static final KEY_HAS_FOCUS:Ljava/lang/String; = "hasFocus"

.field private static final KEY_IS_DEFAULT_ICE:Ljava/lang/String; = "isDefaultICE"

.field private static final KEY_SELECTED_NAME:Ljava/lang/String; = "selectedName"

.field private static final KEY_TARGET_LOOKUP_KEY:Ljava/lang/String; = "targetLookupKey"

.field private static final MAX_QUERY_STRING_LENGTH:I = 0x3e8

.field private static final SOFT_INPUT_MODE_DEFAULT:I = 0x10

.field private static final TAG:Ljava/lang/String; = "GroupMemberBrowseListFragment"

.field private static mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasPermanentMenuKey:Z

.field private mFromEmergencyDial:Z

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mGroupType:I

.field private mHasFocus:Z

.field private mHeaderView:Lcom/sec/android/app/contacts/group/GroupMemberListItemView;

.field private mIsAutoAdd:Z

.field mIsBlackTheme:Z

.field private mIsEditable:Z

.field private mIsMMSAvailable:Z

.field private mIsProgressShowing:Z

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

.field private mResId:I

.field private mSearchView:Landroid/widget/SearchView;

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

.field private mSoftInputMode:I

.field private mStatus:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

.field private mToast:Landroid/widget/Toast;

.field private popupMenu:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 211
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSoftInputMode:I

    .line 160
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsBlackTheme:Z

    .line 172
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;->LOADING:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    .line 212
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setPhotoLoaderEnabled(Z)V

    .line 213
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 214
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 215
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 219
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setForceReverseFastScrollBarPositionEnabled(Z)V

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .prologue
    .line 100
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getPhoneNubmerAndCall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->addFrequentContactToGroup(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->constructPopupMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->requestSearchViewFocus(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchMode:Z

    return p1
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Landroid/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method private addFrequentContactToGroup(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1305
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v6, v0

    .line 1307
    .local v6, "contactId":J
    const/4 v5, -0x1

    .line 1308
    .local v5, "mode":I
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1309
    const/4 v5, 0x3

    .line 1314
    :goto_0
    const/4 v0, 0x1

    new-array v2, v0, [J

    const/4 v0, 0x0

    aput-wide v6, v2, v0

    .line 1315
    .local v2, "member":[J
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/sec/android/app/contacts/group/GroupInfo;[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 1319
    .local v8, "saveIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1320
    return-void

    .line 1311
    .end local v2    # "member":[J
    .end local v8    # "saveIntent":Landroid/content/Intent;
    :cond_0
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private addNotAssignedHeaderView(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mHeaderView:Lcom/sec/android/app/contacts/group/GroupMemberListItemView;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberListItemView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mHeaderView:Lcom/sec/android/app/contacts/group/GroupMemberListItemView;

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mHeaderView:Lcom/sec/android/app/contacts/group/GroupMemberListItemView;

    new-instance v1, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    :cond_0
    if-nez p1, :cond_1

    .line 510
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mHeaderView:Lcom/sec/android/app/contacts/group/GroupMemberListItemView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mHeaderView:Lcom/sec/android/app/contacts/group/GroupMemberListItemView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private adjustLayoutPadding()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0901a9

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 376
    .local v1, "listContainer":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0901e1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 378
    .local v6, "searchView":Landroid/view/View;
    const/4 v0, 0x0

    .line 379
    .local v0, "leftPadding":I
    const/4 v4, 0x0

    .line 380
    .local v4, "searchBar_leftPadding":I
    const/4 v7, 0x0

    .line 381
    .local v7, "searchbar_topPadding":I
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0109

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 383
    .local v3, "rightPadding":I
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c010e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 385
    .local v8, "topPadding":I
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c010b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 388
    .local v5, "searchBar_rightPadding":I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v9

    const v10, 0x102000a

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 389
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/high16 v10, 0x3000000

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    .line 391
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c010a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 393
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c010c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 395
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c010d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 398
    iget-boolean v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    if-eqz v9, :cond_2

    .line 399
    div-int/lit8 v9, v3, 0x2

    invoke-virtual {v1, v9, v8, v3, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 406
    :goto_0
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 407
    add-int v9, v0, v4

    add-int v10, v8, v7

    add-int v11, v3, v5

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 412
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 413
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 415
    .local v2, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v12, v12, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 416
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    .end local v2    # "param":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void

    .line 400
    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 401
    invoke-virtual {v1, v12, v12, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 403
    :cond_3
    invoke-virtual {v1, v0, v8, v3, v12}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 408
    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 409
    add-int v9, v3, v4

    invoke-virtual {v6, v12, v8, v9, v12}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method private configureEemrgencyServiceHeader(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1121
    return-void
.end method

.method private configureEmptyText()V
    .locals 5

    .prologue
    const v4, 0x7f0e0269

    .line 1125
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    if-eqz v2, :cond_0

    .line 1126
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1127
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1128
    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1129
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1130
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0902e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1131
    .local v0, "helpText":Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1141
    .end local v0    # "helpText":Landroid/widget/TextView;
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 1134
    .restart local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1135
    const v2, 0x7f0e026a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1137
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private configureEmptyView(Z)V
    .locals 6
    .param p1, "isEmpty"    # Z

    .prologue
    const/16 v3, 0x30

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 719
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchMode:Z

    if-eqz v2, :cond_1

    .line 720
    if-eqz p1, :cond_0

    .line 721
    const/16 v2, 0x10

    iput v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSoftInputMode:I

    .line 722
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSoftInputMode()V

    .line 723
    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showNoMatchesView(Z)V

    .line 724
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setNoMatchesText()V

    .line 767
    :goto_0
    return-void

    .line 726
    :cond_0
    iput v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSoftInputMode:I

    .line 727
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSoftInputMode()V

    .line 728
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showNoMatchesView(Z)V

    .line 729
    invoke-virtual {p0, v5, v5, v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    goto :goto_0

    .line 732
    :cond_1
    iput v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSoftInputMode:I

    .line 733
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSoftInputMode()V

    .line 734
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showNoMatchesView(Z)V

    .line 735
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    if-eqz v2, :cond_6

    .line 740
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 741
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    if-nez v2, :cond_4

    .line 743
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09048e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 744
    .local v0, "containerView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 745
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 746
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 747
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 749
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0, p1, v5, v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 765
    .end local v0    # "containerView":Landroid/view/View;
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->configureEmptyText()V

    goto :goto_0

    .line 752
    :cond_4
    invoke-virtual {p0, p1, v4, v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    goto :goto_1

    .line 755
    :cond_5
    invoke-virtual {p0, p1, v5, v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    goto :goto_1

    .line 757
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 758
    invoke-virtual {p0, p1, v5, v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 759
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setGroupMemberHelpTextAndImage()V

    goto :goto_1

    .line 762
    :cond_7
    invoke-virtual {p0, p1, v4, v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 763
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setGroupMemberHelpTextAndImage()V

    goto :goto_1
.end method

.method private constructPopupMenu(Landroid/view/View;)V
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 652
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    .line 653
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 654
    .local v0, "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    const v2, 0x7f120025

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 655
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$6;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 662
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 663
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 664
    return-void
.end method

.method private createRecipientListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1281
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1282
    .local v1, "bundle":Landroid/os/Bundle;
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1283
    const-string v2, "MIME_TYPE"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :cond_0
    const-string v2, "extra_condition"

    const-string v3, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    new-instance v0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    new-instance v2, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v3, 0x2

    invoke-direct {v0, p1, v2, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .line 1289
    .local v0, "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setGravity(I)V

    .line 1290
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$8;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setItemSelectListener(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;)V

    .line 1301
    return-object v0
.end method

.method private deleteEmergencyService(J)V
    .locals 4
    .param p1, "emergencyServiceID"    # J

    .prologue
    .line 775
    const-string v1, "content://com.android.contacts/emergency"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 776
    .local v0, "targetUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 778
    return-void
.end method

.method private editEmergencyService(JLjava/lang/String;)V
    .locals 1
    .param p1, "emergencyServiceID"    # J
    .param p3, "emergencyServiceName"    # Ljava/lang/String;

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p3, p1, p2}, Lcom/sec/android/app/contacts/group/EmergencyServiceCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;J)V

    .line 782
    return-void
.end method

.method private getPhoneNubmerAndCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "lookupkey"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 849
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getPhoneNumberDataArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 850
    .local v0, "phoneNumberInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/PhoneNumberInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 851
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startCallIntentAndFinishActivity(Ljava/lang/String;)V

    .line 858
    :goto_0
    return-void

    .line 852
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 853
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, p0, v0, p2}, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_1
    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "no phone number"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "lookupKey"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 991
    const/4 v8, 0x0

    .line 992
    .local v8, "phoneNumber":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "mimetype = \'vnd.android.cursor.item/phone_v2\' AND lookup = \'"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 993
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    const-string v0, "\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "data1"

    aput-object v3, v2, v10

    const-string v3, "is_super_primary"

    aput-object v3, v2, v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1002
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1003
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1004
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1006
    .local v7, "isSuperPrimary":I
    if-eqz v7, :cond_0

    .line 1007
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1016
    .end local v7    # "isSuperPrimary":I
    :cond_1
    if-nez v8, :cond_2

    .line 1017
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1018
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1021
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1023
    :cond_3
    return-object v8
.end method

.method private getPhoneNumberDataArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "lookupKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/PhoneNumberInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 1027
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v0, "mimetype = \'vnd.android.cursor.item/phone_v2\' AND lookup = \'"

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v10, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "data1"

    aput-object v3, v2, v12

    const-string v3, "data2"

    aput-object v3, v2, v13

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1037
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .local v8, "phoneNubmerInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/PhoneNumberInfo;>;"
    if-eqz v6, :cond_1

    .line 1041
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1042
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1044
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1045
    .local v11, "type":I
    new-instance v9, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;

    invoke-direct {v9, v7, v11}, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;-><init>(Ljava/lang/String;I)V

    .line 1046
    .local v9, "phoneNumberInfo":Lcom/sec/android/app/contacts/model/PhoneNumberInfo;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1048
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "phoneNumberInfo":Lcom/sec/android/app/contacts/model/PhoneNumberInfo;
    .end local v11    # "type":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1050
    :cond_1
    return-object v8
.end method

.method private getRunnableDelay()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1227
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1228
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1231
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v1, 0x1f4

    goto :goto_0
.end method

.method private removeNotAssignedHeaderView(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mHeaderView:Lcom/sec/android/app/contacts/group/GroupMemberListItemView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->removeHeaderView(Landroid/view/View;)Z

    move-result v0

    .line 519
    .local v0, "isRemoved":Z
    if-nez v0, :cond_0

    .line 520
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mHeaderView:Lcom/sec/android/app/contacts/group/GroupMemberListItemView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 522
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mHeaderView:Lcom/sec/android/app/contacts/group/GroupMemberListItemView;

    .line 523
    return-void
.end method

.method private requestSearchViewFocus(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1235
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->shouldOnlyRequestFocus(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method private setGroupMemberHelpTextAndImage()V
    .locals 3

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1078
    .local v0, "helpText":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1079
    const v1, 0x7f0e023c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1080
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1082
    :cond_0
    return-void
.end method

.method private setNoMatchesText()V
    .locals 5

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0901a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1069
    .local v1, "searchNoMatchesView":Landroid/view/View;
    const v3, 0x7f090437

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1070
    .local v2, "textView":Landroid/widget/TextView;
    const v3, 0x7f09017e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 1071
    .local v0, "progress":Landroid/widget/ProgressBar;
    const v3, 0x7f0e02de

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1072
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 1073
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1074
    return-void
.end method

.method private setVisibleAccountfilterHeaderView(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, "accountFilterHeaderContainer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 424
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    :cond_0
    return-void

    .line 424
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v4, 0x7f0904bc

    const v3, 0x7f0904b4

    const/4 v2, 0x0

    .line 668
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    if-nez v1, :cond_0

    .line 669
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 670
    const v1, 0x7f0904b1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 673
    .local v0, "isSMSAvailable":Z
    if-nez v0, :cond_1

    .line 674
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 676
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 677
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 678
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 679
    const v1, 0x7f0904b3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 681
    :cond_2
    return-void
.end method

.method private shouldOnlyRequestFocus(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1245
    instance-of v0, p1, Lcom/android/contacts/activities/GroupDetailActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/activities/GroupDetailActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/android/contacts/activities/GroupDetailActivity;->inOptionMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 3
    .param p1, "memberCount"    # I

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1183
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 1185
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 1186
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1187
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1188
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1190
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 1193
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method private showErrorToast(I)V
    .locals 5
    .param p1, "message"    # I

    .prologue
    const/4 v4, 0x0

    .line 980
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, "warningText":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mToast:Landroid/widget/Toast;

    .line 987
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 988
    return-void

    .line 985
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showNoMatchesView(Z)V
    .locals 7
    .param p1, "visible"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1054
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0901a7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1055
    .local v1, "noMatchView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0901e3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1056
    .local v0, "listContentView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0901e2

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1058
    .local v2, "unavailableView":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    if-eqz p1, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    if-eqz p1, :cond_3

    move v3, v5

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v3, v5

    .line 1062
    goto :goto_1

    :cond_3
    move v3, v4

    .line 1063
    goto :goto_2

    :cond_4
    move v5, v4

    .line 1064
    goto :goto_3
.end method

.method private updateAddBtnVisible()V
    .locals 3

    .prologue
    const v2, 0x7f090314

    .line 684
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    if-nez v1, :cond_1

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 686
    .local v0, "addBtn":Landroid/widget/ImageButton;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 691
    .end local v0    # "addBtn":Landroid/widget/ImageButton;
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 689
    .restart local v0    # "addBtn":Landroid/widget/ImageButton;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCustomSearchBarVisibility(Z)V
    .locals 3
    .param p1, "fromEmergencyDial"    # Z

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 714
    .local v0, "customSearchBarLayout":Landroid/view/View;
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 715
    return-void

    .line 714
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateMenuBtnVisible(Z)V
    .locals 4
    .param p1, "isEmpty"    # Z

    .prologue
    const/16 v3, 0x8

    .line 694
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 696
    .local v0, "menuBtn":Landroid/widget/ImageButton;
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->hasPermanentMenuKey:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 700
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 710
    :goto_0
    return-void

    .line 704
    :cond_1
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 706
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 708
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearSearchResult()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 915
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mHasFocus:Z

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 919
    :cond_0
    return-void
.end method

.method public clearSearchViewFocus()V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 922
    return-void
.end method

.method public clearSerchViewFocus()V
    .locals 3

    .prologue
    .line 1250
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 1251
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1253
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1256
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 1258
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method protected createCustomSearchbar()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 534
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 537
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090314

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 539
    .local v0, "addBtn":Landroid/widget/ImageButton;
    const v2, 0x7f0e0255

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 540
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$2;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 561
    .local v1, "menuBtn":Landroid/widget/ImageButton;
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->hasPermanentMenuKey:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 565
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 579
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090100

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 580
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v7}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 581
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 583
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 586
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 587
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 588
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 591
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 593
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mHasFocus:Z

    if-eqz v2, :cond_2

    .line 594
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getRunnableDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0e01c2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 647
    return-void

    .line 567
    :cond_3
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$3;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 2

    .prologue
    .line 298
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;-><init>(Landroid/content/Context;)V

    .line 299
    .local v0, "adapter":Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 300
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setDisplayPhotos(Z)V

    .line 302
    return-object v0
.end method

.method public dismissProgress()V
    .locals 3

    .prologue
    .line 937
    sget-object v1, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 938
    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "progress null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :goto_0
    return-void

    .line 940
    :cond_0
    sget-object v1, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 941
    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "progress.get null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 944
    :cond_1
    :try_start_0
    sget-object v1, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 945
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    .line 946
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsProgressShowing:Z

    .line 947
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mResId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected doDestroyActionMode()V
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->clearSearchResult()V

    .line 1332
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->clearSerchViewFocus()V

    .line 1334
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->doDestroyActionMode()V

    .line 1335
    return-void
.end method

.method public finishSelectionMode()V
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->finishActionMode()V

    .line 256
    :cond_0
    return-void
.end method

.method public getSelectedGroupInfo()Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    const v0, 0x7f04007f

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f04007c

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isActionModeAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1322
    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoAdd()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsAutoAdd:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    sget-object v1, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;->LOADED:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 4
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    const/4 v3, 0x0

    .line 233
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    .line 235
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getEditable(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    .line 237
    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 238
    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "loadGroup : LOAD ICE GROUP"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setQuickContactEnabled(Z)V

    .line 240
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->updateAddBtnVisible()V

    .line 245
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .line 246
    .local v0, "adapter":Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setMode(I)V

    .line 247
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 250
    return-void
.end method

.method public loadGroupWithReload(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->loadGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->reloadData()V

    .line 265
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 346
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->hasPermanentMenuKey:Z

    .line 347
    return-void
.end method

.method public onCreateChosen()V
    .locals 3

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 958
    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "@@@ onCreateChosen "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :goto_0
    return-void

    .line 962
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 963
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_ice_group"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 965
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 966
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 771
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 351
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 352
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isBlackTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsBlackTheme:Z

    .line 353
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    .line 362
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->adjustLayoutPadding()V

    .line 367
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setVisibleAccountfilterHeaderView(Z)V

    .line 369
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsProgressShowing:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    if-lez v0, :cond_4

    .line 370
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showProgress(I)V

    .line 372
    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1209
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onDestroy()V

    .line 1210
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1211
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 1212
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->destroy()V

    .line 1214
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    const/4 v9, 0x1

    .line 786
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .line 787
    .local v0, "adapter":Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isDefaultICE(I)Z

    move-result v3

    .line 788
    .local v3, "isDefaultICE":Z
    iget-boolean v7, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    if-eqz v7, :cond_7

    .line 789
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "KDDI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v9, :cond_3

    .line 790
    :cond_0
    const/4 v6, 0x0

    .line 791
    .local v6, "phoneNumber2":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 792
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v6

    .line 797
    :goto_0
    move-object v5, v6

    .line 798
    .local v5, "phoneNumber":Ljava/lang/String;
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$7;

    invoke-direct {v2, p0, v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$7;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Ljava/lang/String;)V

    .line 813
    .local v2, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 814
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f0e04dd

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {v7, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x1040000

    invoke-virtual {v7, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 846
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v5    # "phoneNumber":Ljava/lang/String;
    .end local v6    # "phoneNumber2":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 794
    .restart local v6    # "phoneNumber2":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v4

    .line 795
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 816
    .end local v4    # "lookupKey":Ljava/lang/String;
    .end local v6    # "phoneNumber2":Ljava/lang/String;
    :cond_3
    iget-boolean v7, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v7, :cond_5

    .line 817
    iget-object v7, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    if-nez v7, :cond_4

    .line 818
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v7, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    goto :goto_1

    .line 820
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->onContactSelected(IJ)V

    goto :goto_1

    .line 824
    :cond_5
    if-eqz v3, :cond_6

    .line 825
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v5

    .line 826
    .restart local v5    # "phoneNumber":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startCallIntentAndFinishActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 828
    .end local v5    # "phoneNumber":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v4

    .line 829
    .restart local v4    # "lookupKey":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 830
    .restart local v5    # "phoneNumber":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startCallIntentAndFinishActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 834
    .end local v4    # "lookupKey":Ljava/lang/String;
    .end local v5    # "phoneNumber":Ljava/lang/String;
    :cond_7
    iget-boolean v7, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v7, :cond_9

    .line 835
    iget-object v7, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    if-nez v7, :cond_8

    .line 836
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v7, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    goto :goto_1

    .line 838
    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->onContactSelected(IJ)V

    goto :goto_1

    .line 842
    :cond_9
    if-nez v3, :cond_1

    .line 843
    iget-object v8, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v7, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 474
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->configureEmptyView(Z)V

    .line 486
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 487
    sget-boolean v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "zh_HK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 491
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->updateMenuBtnVisible(Z)V

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 497
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 475
    goto :goto_0

    :cond_3
    move v1, v2

    .line 491
    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1198
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onPause()V

    .line 1199
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1200
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 1201
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->pause()V

    .line 1203
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_1

    .line 1204
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1205
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 430
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onResume()V

    .line 431
    const/16 v1, 0x30

    iput v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSoftInputMode:I

    .line 432
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSoftInputMode()V

    .line 434
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 436
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->resume()V

    .line 438
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 320
    invoke-super {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 321
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    .line 322
    .local v0, "hasFocus":Z
    const-string v2, "hasFocus"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 323
    sget-object v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 324
    sget-object v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    .line 325
    .local v1, "isShowing":Z
    const-string v2, "isShowing"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    const-string v2, "resourId"

    iget v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    .end local v1    # "isShowing":Z
    :cond_0
    return-void
.end method

.method public onUpdateChosen()V
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;->onAddMemberRequested()V

    .line 977
    :cond_0
    return-void
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mStartedLoading:Z

    .line 459
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;->LOADING:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    .line 460
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->reloadData()V

    .line 462
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 334
    invoke-super {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 335
    if-nez p1, :cond_0

    .line 341
    :goto_0
    return-void

    .line 338
    :cond_0
    const-string v0, "hasFocus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mHasFocus:Z

    .line 339
    const-string v0, "isShowing"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsProgressShowing:Z

    .line 340
    const-string v0, "resourId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    goto :goto_0
.end method

.method public setAutoAdd(Z)V
    .locals 0
    .param p1, "isAutoAdd"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsAutoAdd:Z

    .line 269
    return-void
.end method

.method public setFromEmergecyDial(ZZZZ)V
    .locals 2
    .param p1, "fromEmergencyDial"    # Z
    .param p2, "isOnlyDefaultAvailable"    # Z
    .param p3, "sIsTwoPaneMode"    # Z
    .param p4, "sIsPhone"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsMMSAvailable:Z

    .line 279
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .line 280
    .local v0, "adapter":Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setFromEmergencyDial(ZZ)V

    .line 283
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->updateCustomSearchBarVisibility(Z)V

    .line 285
    if-nez p1, :cond_3

    if-nez p4, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsMMSAvailable:Z

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->adjustLayoutPadding()V

    .line 290
    :cond_2
    return-void

    .line 285
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;)V
    .locals 0
    .param p1, "value"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    .line 224
    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 230
    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    .prologue
    .line 1217
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1218
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSoftInputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1219
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1224
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 890
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getFakeQueryStatus()I

    move-result v1

    .line 891
    .local v1, "status":I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isFakeQueryModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    if-gt v1, v3, :cond_0

    .line 900
    :goto_0
    return-void

    .line 895
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 896
    .local v0, "size":I
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mUserProfileExists:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    sub-int/2addr v0, v3

    .line 897
    if-gez v0, :cond_1

    move v0, v2

    .line 898
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;->onGroupSizeUpdated(Ljava/lang/String;)V

    .line 899
    sget-object v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;->LOADED:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    iput-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    goto :goto_0

    :cond_2
    move v3, v2

    .line 896
    goto :goto_1
.end method

.method public showProgress(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 927
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsProgressShowing:Z

    .line 930
    iput p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    .line 931
    return-void
.end method

.method public startCallIntentAndFinishActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 861
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 862
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 864
    .local v0, "callIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 865
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    if-eqz v1, :cond_0

    .line 866
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 867
    const-string v1, "SKTRADDialOption"

    const-string v2, "abroad"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 872
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    if-eqz v1, :cond_1

    .line 873
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 878
    .end local v0    # "callIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 869
    .restart local v0    # "callIntent":Landroid/content/Intent;
    :cond_2
    const-string v1, "SKTRADDialOption"

    const-string v2, "korea"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 876
    .end local v0    # "callIntent":Landroid/content/Intent;
    :cond_3
    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "no phone number"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected startLoading()V
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 448
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .line 449
    .local v0, "adapter":Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isGroupInfoLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    :cond_3
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startLoading()V

    goto :goto_0
.end method
