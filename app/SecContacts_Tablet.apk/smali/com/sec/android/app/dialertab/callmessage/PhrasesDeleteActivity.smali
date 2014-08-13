.class public Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;
.super Landroid/app/Activity;
.source "PhrasesDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;,
        Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$ListViewItemClickListner;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PhrasesDeleteActivity"


# instance fields
.field private mCheckSelectAll:Landroid/widget/CheckBox;

.field mMenuCancel:Landroid/view/MenuItem;

.field mMenuDelete:Landroid/view/MenuItem;

.field private mMessageAdapter:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;

.field private mMessageArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 233
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->checkSelectAll()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->updateSelectAll()V

    return-void
.end method

.method private checkSelectAll()V
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mCheckSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 224
    .local v0, "newState":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mCheckSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageAdapter:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->setCheckedAll(Z)V

    .line 227
    return-void

    .line 223
    .end local v0    # "newState":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageAdapter:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;

    .line 207
    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageListView:Landroid/widget/ListView;

    .line 208
    return-void
.end method

.method private setupViews()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 174
    new-instance v3, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;-><init>(Landroid/content/Context;)V

    .line 175
    .local v3, "pref":Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;
    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->loadPreferencePhrase()[Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "messageData":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 179
    .local v4, "rowSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageArray:Ljava/util/ArrayList;

    .line 180
    new-instance v5, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0401d6

    iget-object v8, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageArray:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;-><init>(Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageAdapter:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;

    .line 181
    const v5, 0x7f090429

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageListView:Landroid/widget/ListView;

    .line 182
    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageAdapter:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageListView:Landroid/widget/ListView;

    new-instance v6, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$ListViewItemClickListner;

    invoke-direct {v6, p0, v9}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$ListViewItemClickListner;-><init>(Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 185
    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 186
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/2addr v5, v4

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    const v5, 0x7f090427

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 190
    .local v0, "ll":Landroid/widget/LinearLayout;
    const v5, 0x7f090428

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mCheckSelectAll:Landroid/widget/CheckBox;

    .line 191
    new-instance v5, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$1;-><init>(Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v5, 0x7f09041c

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    const v6, 0x7f09041d

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 200
    return-void
.end method

.method private updateSelectAll()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mCheckSelectAll:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageAdapter:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->isCheckedAll()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 231
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->setupActionBarMenu()V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v0, "PhrasesDeleteActivity"

    const-string v1, "<<onCreate>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const v0, 0x7f0401d4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->setupViews()V

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120020

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 133
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 134
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->setupActionBarMenu()V

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "PhrasesDeleteActivity"

    const-string v1, "<<onDestroy>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->clearViews()V

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 125
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 106
    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v2, "newData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageAdapter:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 108
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageAdapter:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->isChecked(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 109
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageAdapter:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 114
    .local v0, "data":[Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    .line 115
    new-instance v3, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;-><init>(Landroid/content/Context;)V

    .line 116
    .local v3, "pref":Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;
    invoke-virtual {v3, v0}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->savePreferencePhrase([Ljava/lang/String;)Z

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x7f0904f5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "PhrasesDeleteActivity"

    const-string v1, "<<onPause>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 81
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 67
    const-string v1, "PhrasesDeleteActivity"

    const-string v2, "<<onResume>>"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 70
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 71
    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 74
    return-void
.end method

.method public setEnableActionBarMenu()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 158
    .local v0, "isLandscapeMode":Z
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMessageAdapter:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->isNonCheckedAll()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    const v3, 0x7f020889

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 166
    :goto_1
    if-nez v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 169
    :cond_0
    return-void

    .end local v0    # "isLandscapeMode":Z
    :cond_1
    move v0, v2

    .line 156
    goto :goto_0

    .line 162
    .restart local v0    # "isLandscapeMode":Z
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    const v3, 0x7f02088a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 163
    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public setupActionBarMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x2

    .line 140
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    .line 142
    .local v0, "isLandscapeMode":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v2, 0x7f020886

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 151
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->setEnableActionBarMenu()V

    .line 152
    return-void

    .line 140
    .end local v0    # "isLandscapeMode":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    .restart local v0    # "isLandscapeMode":Z
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method
