.class public Lcom/android/contacts/list/NamecardViewerFragment;
.super Landroid/app/Fragment;
.source "NamecardViewerFragment.java"


# static fields
.field public static final NAMECARD_LIST_LOADER:I = 0x1

.field private static isVoLTEEnabled:Z


# instance fields
.field private mAdapter:Lcom/android/contacts/list/NamecardViewerAdapter;

.field public mCurrPostion:I

.field private mIntent:Landroid/content/Intent;

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

.field private mPager:Landroid/support/v4/view/ViewPager;

.field public mProjection:[Ljava/lang/String;

.field public mQueryString:Ljava/lang/String;

.field public mSelection:Ljava/lang/String;

.field public mSortOrder:I

.field public mUri:Landroid/net/Uri;

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/list/NamecardViewerFragment;->isVoLTEEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mAdapter:Lcom/android/contacts/list/NamecardViewerAdapter;

    .line 51
    iput-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 53
    iput-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mUri:Landroid/net/Uri;

    .line 54
    iput-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mProjection:[Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mSelection:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mQueryString:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mSortOrder:I

    .line 58
    iput v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mCurrPostion:I

    .line 60
    iput-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mIntent:Landroid/content/Intent;

    .line 115
    new-instance v0, Lcom/android/contacts/list/NamecardViewerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/NamecardViewerFragment$1;-><init>(Lcom/android/contacts/list/NamecardViewerFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mNamecardLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/NamecardViewerFragment;)Lcom/android/contacts/list/NamecardViewerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardViewerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mAdapter:Lcom/android/contacts/list/NamecardViewerAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/list/NamecardViewerFragment;Lcom/android/contacts/list/NamecardViewerAdapter;)Lcom/android/contacts/list/NamecardViewerAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardViewerFragment;
    .param p1, "x1"    # Lcom/android/contacts/list/NamecardViewerAdapter;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mAdapter:Lcom/android/contacts/list/NamecardViewerAdapter;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/contacts/list/NamecardViewerFragment;->isVoLTEEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/NamecardViewerFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardViewerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mIntent:Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "query_string"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mQueryString:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "sort_order"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mSortOrder:I

    .line 89
    iget-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "curr_position"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mCurrPostion:I

    .line 91
    iget-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Lcom/android/contacts/list/NamecardListAdapter;->CONTACT_URI_FOR_NAMECARD:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mUri:Landroid/net/Uri;

    .line 99
    :goto_0
    sget-object v1, Lcom/android/contacts/list/NamecardListAdapter;->PROJECTION_CONTACT_NAMECARD:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mProjection:[Ljava/lang/String;

    .line 100
    const-string v1, "is_private > 0 and namecard_photo_uri IS NOT NULL"

    iput-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mSelection:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mNamecardLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 103
    return-void

    .line 95
    :cond_0
    sget-object v1, Lcom/android/contacts/list/NamecardListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 96
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 97
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const v1, 0x7f0401a0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f090133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 79
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 109
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mAdapter:Lcom/android/contacts/list/NamecardViewerAdapter;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mAdapter:Lcom/android/contacts/list/NamecardViewerAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/NamecardViewerAdapter;->close()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment;->mAdapter:Lcom/android/contacts/list/NamecardViewerAdapter;

    .line 113
    :cond_0
    return-void
.end method
