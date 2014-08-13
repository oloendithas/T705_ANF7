.class public Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;
.super Landroid/app/Fragment;
.source "NamecardGridViewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;,
        Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$OnGridViewLoadFinishedListener;
    }
.end annotation


# static fields
.field public static final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field public static final CONTACT_URI_FOR_NAMECARD:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field private static final KEY_IS_SELECTION_MODE:Ljava/lang/String; = "isSelectionMode"

.field private static final KEY_IS_SHOW_DONE:Ljava/lang/String; = "isShowDone"

.field private static final KEY_SEARCH_MODE:Ljava/lang/String; = "searchMode"

.field public static final NAMECARD_LIST_LOADER:I = 0x1

.field public static final ORDER_BY_COMPANY:I = 0x3

.field public static final ORDER_BY_NAME:I = 0x2

.field public static final ORDER_BY_OLD:I = 0x1

.field public static final ORDER_BY_RECENT:I = 0x0

.field public static final PROJECTION_CONTACT_NAMECARD:[Ljava/lang/String;

.field private static final SELECTED_IDS:Ljava/lang/String; = "selectedIds"

.field private static final SELECTED_IDS_LONGARRAY:Ljava/lang/String; = "selectedIds_longArray"

.field public static final SELECTION_CONTACT_NAMECARD:Ljava/lang/String; = "is_private > 0 and namecard_photo_uri IS NOT NULL"

.field public static final SORT_ORDER_COMPANY:Ljava/lang/String; = "CASE WHEN data1 IS NULL THEN 1 ELSE 0 END, data1"

.field public static final SORT_ORDER_NAME:Ljava/lang/String; = "sort_key"

.field public static final SORT_ORDER_OLD:Ljava/lang/String; = "_id ASC"

.field private static final TAG:Ljava/lang/String; = "NamecardGridViewFragment"

.field private static isVoLTEEnabled:Z


# instance fields
.field private final MAX_QUERY_STRING_LENGTH:I

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

.field private mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

.field private mCustomSearchQueryString:Ljava/lang/String;

.field private mCustomSearchView:Landroid/widget/SearchView;

.field private mEmptyView:Landroid/view/View;

.field private mGridView:Landroid/widget/GridView;

.field private mIsSelectionMode:Z

.field private mIsShowDone:Z

.field mListener:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$OnGridViewLoadFinishedListener;

.field public final mNamecardLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field public mProjection:[Ljava/lang/String;

.field private mSearchMode:Z

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchProgressText:Landroid/widget/TextView;

.field private mSelectedContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mSelection:Ljava/lang/String;

.field public mSortOrder:I

.field private mTextChanged:Z

.field private mTotalCount:I

.field public mUri:Landroid/net/Uri;

.field private mView:Landroid/view/View;

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_private"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "has_email"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "namecard_photo_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->PROJECTION_CONTACT_NAMECARD:[Ljava/lang/String;

    .line 129
    const-string v0, "content://com.android.contacts/contacts/namecard"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->CONTACT_URI_FOR_NAMECARD:Landroid/net/Uri;

    .line 132
    const-string v0, "content://com.android.contacts/contacts_list/namecard/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    .line 193
    sput-boolean v3, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->isVoLTEEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 138
    iput-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mUri:Landroid/net/Uri;

    .line 140
    iput-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mProjection:[Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelection:Ljava/lang/String;

    .line 150
    iput v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSortOrder:I

    .line 162
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsSelectionMode:Z

    .line 164
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsShowDone:Z

    .line 170
    iput-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    .line 172
    iput v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTotalCount:I

    .line 174
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchMode:Z

    .line 176
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTextChanged:Z

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 188
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->MAX_QUERY_STRING_LENGTH:I

    .line 327
    new-instance v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mNamecardLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 486
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTotalCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTotalCount:I

    return p1
.end method

.method static synthetic access$1102(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsSelectionMode:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTextChanged:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTextChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchNoMatchesView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->configureEmptyView(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionModeCallback:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionModeCallback:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureEmptyView(Z)V
    .locals 5
    .param p1, "isEmpty"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    .line 403
    iget-object v4, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_0
    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchMode:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 407
    .local v0, "isSearchNoMatch":Z
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz v0, :cond_4

    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_5

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchMode:Z

    if-nez v4, :cond_5

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 410
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 411
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$2;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 431
    :cond_1
    :goto_4
    return-void

    .end local v0    # "isSearchNoMatch":Z
    :cond_2
    move v1, v3

    .line 403
    goto :goto_0

    :cond_3
    move v0, v3

    .line 406
    goto :goto_1

    .restart local v0    # "isSearchNoMatch":Z
    :cond_4
    move v1, v2

    .line 407
    goto :goto_2

    :cond_5
    move v3, v2

    .line 408
    goto :goto_3

    .line 426
    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_4
.end method


# virtual methods
.method public clearCustomSearchResult()V
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 798
    :cond_0
    return-void
.end method

.method public clearSearchViewFocus()V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 680
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 205
    :try_start_0
    check-cast p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$OnGridViewLoadFinishedListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mListener:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$OnGridViewLoadFinishedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnLoadFinishedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x0

    .line 802
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 803
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 804
    .local v0, "columnCount":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 806
    .local v1, "horizontalSpacing":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c026f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 808
    .local v2, "padding":I
    iget-object v4, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v4

    sub-int v4, v2, v4

    div-int/lit8 v3, v4, 0x2

    .line 810
    .local v3, "scrollbarPadding":I
    iget-object v4, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 811
    iget-object v4, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 812
    iget-object v4, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setVerticalScrollBarPadding(Z)V

    .line 813
    iget-object v4, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v2, v6, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 814
    iget-object v4, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVerticalScrollBarPaddingPosition(I)V

    .line 815
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 216
    sget-object v2, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->CONTACT_URI_FOR_NAMECARD:Landroid/net/Uri;

    iput-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mUri:Landroid/net/Uri;

    .line 217
    sget-object v2, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->PROJECTION_CONTACT_NAMECARD:[Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mProjection:[Ljava/lang/String;

    .line 218
    const-string v2, "is_private > 0 and namecard_photo_uri IS NOT NULL"

    iput-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelection:Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 221
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    .line 224
    :cond_0
    if-eqz p1, :cond_1

    .line 225
    const-string v2, "isSelectionMode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsSelectionMode:Z

    .line 226
    const-string v2, "isShowDone"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsShowDone:Z

    .line 227
    const-string v2, "searchMode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchMode:Z

    .line 231
    const-string v2, "selectedIds_longArray"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 232
    .local v1, "value":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    aget-wide v3, v1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "i":I
    .end local v1    # "value":[J
    :cond_1
    new-instance v2, Lcom/android/contacts/VoLTEStateTracker;

    invoke-direct {v2}, Lcom/android/contacts/VoLTEStateTracker;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    .line 238
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->isVoLTEEnabled:Z

    .line 239
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 243
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 245
    const v2, 0x7f04019b

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mView:Landroid/view/View;

    .line 246
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mView:Landroid/view/View;

    const v3, 0x7f0903a4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    .line 248
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 249
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 251
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c026f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v3

    sub-int v1, v2, v3

    .line 254
    .local v1, "padding":I
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setVerticalScrollBarPadding(Z)V

    .line 255
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVerticalScrollBarPaddingPosition(I)V

    .line 257
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mView:Landroid/view/View;

    const v3, 0x7f0901a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 258
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v3, 0x7f090437

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchProgressText:Landroid/widget/TextView;

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchProgressText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchProgressText:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 264
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v3, 0x7f0e02de

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 266
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mView:Landroid/view/View;

    const v3, 0x7f09017e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mView:Landroid/view/View;

    const v3, 0x7f0901a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mEmptyView:Landroid/view/View;

    .line 271
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mEmptyView:Landroid/view/View;

    const v3, 0x7f090037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 273
    .local v0, "empty_title":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 274
    const v2, 0x7f0e0075

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 278
    .end local v0    # "empty_title":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    if-nez v2, :cond_2

    .line 279
    new-instance v2, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    .line 280
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    sget-boolean v3, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->isVoLTEEnabled:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->setVolteEnabled(Z)V

    .line 281
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsSelectionMode:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->setMultiSelectionMode(Z)V

    .line 282
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->setSelectedContactIds(Ljava/util/ArrayList;)V

    .line 283
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsSelectionMode:Z

    if-eqz v2, :cond_3

    .line 287
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsShowDone:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->startActionMode(Z)V

    .line 290
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    if-eqz v0, :cond_1

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    .line 304
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 448
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionModeCallback:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsSelectionMode:Z

    if-eqz v2, :cond_1

    .line 449
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionModeCallback:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    invoke-virtual {v2, p3, p4, p5}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->onContactSelected(IJ)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 452
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 455
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 456
    const-string v2, "mode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 458
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 473
    :goto_0
    return v0

    .line 470
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->startActionMode(Z)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionModeCallback:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    invoke-virtual {v0, p3, p4, p5}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->onContactSelected(IJ)V

    .line 473
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 314
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 315
    .local v1, "value":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    const-string v2, "selectedIds_longArray"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 321
    const-string v2, "isSelectionMode"

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsSelectionMode:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    const-string v2, "isShowDone"

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsShowDone:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 323
    const-string v2, "searchMode"

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchMode:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 324
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 325
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mNamecardLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 309
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 310
    return-void
.end method

.method public reOrder(I)V
    .locals 0
    .param p1, "sortOrder"    # I

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->setNamecardSortOrder(I)V

    .line 439
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->reloadData()V

    .line 440
    return-void
.end method

.method public reloadData()V
    .locals 4

    .prologue
    .line 443
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mNamecardLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 444
    return-void
.end method

.method public setCustomActionBar(Z)V
    .locals 14
    .param p1, "searchBarVisible"    # Z

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 683
    const/16 v0, 0x1e

    .line 686
    .local v0, "MASK":I
    const/4 v3, 0x4

    .line 688
    .local v3, "newFlags":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 689
    .local v1, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040085

    invoke-virtual {v6, v7, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 692
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f090100

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SearchView;

    iput-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    .line 693
    iget-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-nez v6, :cond_0

    .line 694
    or-int/lit8 v3, v3, 0x8

    .line 781
    :goto_0
    const/16 v6, 0x1e

    invoke-virtual {v1, v3, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 782
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 783
    return-void

    .line 696
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v11}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 698
    if-eqz p1, :cond_4

    .line 699
    iget-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const v7, 0x7f0e01c2

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v6, v6, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v7, v11, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    const/16 v9, 0x3e8

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 705
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 708
    iget-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v11, v13}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 710
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 711
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->setFocusOnSearchView()V

    .line 713
    iget-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v6, v6, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6, v12, v10, v12, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 714
    iget-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v7, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 756
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00d5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 758
    .local v4, "searchViewWidth":I
    if-nez v4, :cond_2

    .line 759
    const/4 v4, -0x1

    .line 761
    :cond_2
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v2, v4, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 764
    .local v2, "layoutParams":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v6

    if-eqz v6, :cond_3

    .line 765
    invoke-virtual {v1, v10}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 768
    :cond_3
    invoke-virtual {v1, v5, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 769
    or-int/lit8 v3, v3, 0x10

    .line 770
    goto/16 :goto_0

    .line 771
    .end local v2    # "layoutParams":Landroid/app/ActionBar$LayoutParams;
    .end local v4    # "searchViewWidth":I
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 772
    iget-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->clearFocus()V

    .line 773
    const-string v6, ""

    iget-object v7, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 774
    const-string v6, ""

    iput-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 775
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->reloadData()V

    .line 777
    :cond_5
    or-int/lit8 v3, v3, 0x8

    goto/16 :goto_0
.end method

.method public setFocusOnSearchView()V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const v1, 0x2000003

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 792
    return-void
.end method

.method public setNamecardSortOrder(I)V
    .locals 0
    .param p1, "sortOrder"    # I

    .prologue
    .line 434
    iput p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSortOrder:I

    .line 435
    return-void
.end method

.method public startActionMode(Z)V
    .locals 2
    .param p1, "isShowDone"    # Z

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionModeCallback:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionModeCallback:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    .line 480
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsShowDone:Z

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionModeCallback:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->setIsShowDone(Z)V

    .line 482
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionModeCallback:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionMode:Landroid/view/ActionMode;

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsSelectionMode:Z

    .line 484
    return-void
.end method
