.class public Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;
.super Landroid/app/ListFragment;
.source "ServiceNumbersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;,
        Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListItemCache;,
        Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final QUERY_TOKEN:I = 0x0

.field private static final SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "[ServiceNumbersFragment]"

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
.field private mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mEmptyView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field protected mQueryHandler:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    .line 60
    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method private dismissProgress()V
    .locals 3

    .prologue
    .line 235
    sget-object v1, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 236
    const-string v1, "[ServiceNumbersFragment]"

    const-string v2, "progress null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return-void

    .line 238
    :cond_0
    sget-object v1, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 239
    const-string v1, "[ServiceNumbersFragment]"

    const-string v2, "progress.get null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_1
    :try_start_0
    sget-object v1, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 243
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mProgress:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "[ServiceNumbersFragment]"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private displayProgress(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    if-eqz p1, :cond_1

    .line 224
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0489

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mProgress:Ljava/lang/ref/WeakReference;

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->dismissProgress()V

    goto :goto_0
.end method

.method private query()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 133
    const-string v0, "[ServiceNumbersFragment]"

    const-string v3, "query: starting an async query"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    const-string v11, "content://icc2/sdn"

    .line 182
    .local v11, "sdnUri":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v10

    .line 185
    .local v10, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v10, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v10, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v9, v12

    .line 188
    .local v9, "isSimAvailable":Z
    :goto_0
    const-string v0, "vnd.sec.contact.sim2"

    invoke-virtual {v10, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "vnd.sec.contact.sim2"

    invoke-virtual {v10, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v8, v12

    .line 192
    .local v8, "isSim2Available":Z
    :goto_1
    if-eqz v9, :cond_3

    if-eqz v8, :cond_3

    .line 193
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "SerivceNumbersTab"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 199
    .end local v8    # "isSim2Available":Z
    .end local v9    # "isSimAvailable":Z
    .end local v10    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mQueryHandler:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    const-string v7, "name ASC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v11    # "sdnUri":Ljava/lang/String;
    :goto_3
    invoke-direct {p0, v12}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->displayProgress(Z)V

    .line 215
    return-void

    .restart local v10    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .restart local v11    # "sdnUri":Ljava/lang/String;
    :cond_1
    move v9, v1

    .line 185
    goto :goto_0

    .restart local v9    # "isSimAvailable":Z
    :cond_2
    move v8, v1

    .line 188
    goto :goto_1

    .line 195
    .restart local v8    # "isSim2Available":Z
    :cond_3
    if-eqz v9, :cond_0

    .line 196
    const-string v11, "content://icc/sdn"

    goto :goto_2

    .line 201
    .end local v8    # "isSim2Available":Z
    .end local v9    # "isSimAvailable":Z
    .end local v10    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .end local v11    # "sdnUri":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mQueryHandler:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

    const-string v3, "content://icc2/sdn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    const-string v7, "name ASC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 211
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mQueryHandler:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

    const-string v3, "content://icc/sdn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    const-string v7, "name ASC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->setIsRootScreen(Z)V

    .line 96
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    const v0, 0x7f0401ea

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mView:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mListView:Landroid/widget/ListView;

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mView:Landroid/view/View;

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mEmptyView:Landroid/view/View;

    .line 105
    new-instance v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;-><init>(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mQueryHandler:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

    .line 106
    new-instance v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0401eb

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;-><init>(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->setIsRootScreen(Z)V

    .line 129
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 130
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 252
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    invoke-virtual {v3, p3}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 253
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 254
    const-string v3, "number"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "numberString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 258
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 261
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "numberString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 114
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->query()V

    .line 115
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 122
    :cond_0
    return-void
.end method
