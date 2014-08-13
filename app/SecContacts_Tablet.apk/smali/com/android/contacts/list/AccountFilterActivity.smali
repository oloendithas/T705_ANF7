.class public Lcom/android/contacts/list/AccountFilterActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "AccountFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/AccountFilterActivity$1;,
        Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;,
        Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;,
        Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;
    }
.end annotation


# static fields
.field public static final DEFAULT_REQUEST_CODE:I = 0x2711

.field private static final FILTER_LOADER_ID:I = 0x0

.field public static final KEY_EXTRA_CONTACT_LIST_FILTER:Ljava/lang/String; = "contactListFilter"

.field public static final KEY_EXTRA_CURRENT_FILTER:Ljava/lang/String; = "currentFilter"

.field private static final SIM_ONE:I = 0x1

.field private static final SUBACTIVITY_CUSTOMIZE_FILTER:I

.field private static final TAG:Ljava/lang/String;

.field private static sIsTwoPaneMode:Z


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 252
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/android/contacts/list/AccountFilterActivity;->loadAccountFilters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/contacts/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/AccountFilterActivity;)Lcom/android/contacts/list/ContactListFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/AccountFilterActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/AccountFilterActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/AccountFilterActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private static loadAccountFilters(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 163
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 164
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/list/ContactListFilter;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 165
    .local v1, "accountFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/list/ContactListFilter;>;"
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 167
    .local v3, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/contacts/model/AccountTypeManager;->getEnabledAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 169
    .local v4, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 170
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 171
    .local v2, "accountType":Lcom/android/contacts/model/AccountType;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 172
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v9, v10, v11, v7, v12}, Lcom/android/contacts/list/ContactListFilter;->createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 177
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_1
    const/4 v9, -0x2

    invoke-static {v9}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 181
    .local v5, "count":I
    if-lt v5, v13, :cond_3

    .line 183
    if-le v5, v13, :cond_2

    .line 184
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_2
    const/4 v9, -0x3

    invoke-static {v9}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_3
    return-object v8
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 235
    if-eq p2, v3, :cond_0

    .line 250
    :goto_0
    return-void

    .line 239
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 241
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, -0x3

    invoke-static {v2}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 244
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    const-string v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 361
    :goto_0
    return-void

    .line 358
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x7f090194
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x400

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 104
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v1, 0x7f040069

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 106
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/AccountFilterActivity;->setFinishOnTouchOutside(Z)V

    .line 108
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/contacts/list/AccountFilterActivity;->sIsTwoPaneMode:Z

    .line 110
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    .line 112
    sget-boolean v1, Lcom/android/contacts/list/AccountFilterActivity;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_0

    .line 113
    const v1, 0x7f090194

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mCancelButton:Landroid/widget/Button;

    .line 114
    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mCancelButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 121
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 124
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "currentFilter"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilter;

    iput-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;

    invoke-direct {v2, p0, v5}, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;-><init>(Lcom/android/contacts/list/AccountFilterActivity;Lcom/android/contacts/list/AccountFilterActivity$1;)V

    invoke-virtual {v1, v3, v5, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 131
    return-void

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    move v1, v3

    .line 108
    goto :goto_0
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
    .line 219
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 220
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 221
    :cond_0
    iget v2, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_1

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 226
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 227
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 331
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 346
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 337
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 331
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 0
    .param p1, "finish"    # Z

    .prologue
    .line 351
    invoke-super {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 352
    return-void
.end method
