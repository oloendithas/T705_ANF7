.class public Lcom/diotek/ime/implement/setting/Xt9MyWords;
.super Landroid/app/Activity;
.source "Xt9MyWords.java"


# instance fields
.field private mArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyLayout:Landroid/widget/LinearLayout;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMainListView:Landroid/widget/ListView;

.field private mMenu:Landroid/view/Menu;

.field private mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

.field private minputManager:Lcom/diotek/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    .line 41
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 42
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/Xt9MyWords;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9MyWords;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private addMyWord()V
    .locals 3

    .prologue
    .line 219
    const v0, 0x7f0d009e

    .line 220
    .local v0, "CurrentMode":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 222
    const-string v2, "CURRENT_MODE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

.method private deleteMyWord()V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.method private generateWordUserModel()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v3, "userWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v1

    .line 245
    .local v1, "skSession":Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    .line 246
    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Trainer;->getTermCounts()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    .local v2, "term":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v4

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->staticModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 248
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v2    # "term":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9MyWords$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWords$2;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWords;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private setDeleteMenuItemEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMenu:Landroid/view/Menu;

    const v1, 0x7f08010f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 240
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 229
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 231
    .local v1, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f0f0000

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMenu:Landroid/view/Menu;

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 232
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 233
    .local v0, "enabled":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->setDeleteMenuItemEnabled(Z)V

    .line 234
    return-void

    .line 232
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 48
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v1, :cond_0

    .line 49
    invoke-static {p0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DBController()Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    const v1, 0x7f03008e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 58
    const v1, 0x7f0800b9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mEmptyLayout:Landroid/widget/LinearLayout;

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 61
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 178
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 180
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 181
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->writeDBdataToFile(B)V

    .line 71
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->writeDBdataToFile(B)V

    .line 74
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 75
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 199
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 202
    :sswitch_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->addMyWord()V

    goto :goto_0

    .line 205
    :sswitch_2
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->deleteMyWord()V

    goto :goto_0

    .line 197
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08010e -> :sswitch_1
        0x7f08010f -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 81
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 187
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMenu:Landroid/view/Menu;

    .line 188
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 189
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v0, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 190
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 191
    .local v0, "enabled":Z
    :cond_0
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->setDeleteMenuItemEnabled(Z)V

    .line 192
    return v1
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 87
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 91
    const v6, 0x7f0800ba

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMainListView:Landroid/widget/ListView;

    .line 92
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v8, 0x7f030092

    const v9, 0x7f0800c0

    invoke-direct {v6, p0, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 93
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->clear()V

    .line 99
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v2, "mywordsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v5, "xt9tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v6, v5, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->getMyWordsList(Ljava/util/ArrayList;Z)I

    .line 103
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 104
    .local v4, "word":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    .end local v4    # "word":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v6, v5, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->getMyWordsList(Ljava/util/ArrayList;Z)I

    .line 108
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 109
    .restart local v4    # "word":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    .end local v4    # "word":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 123
    .end local v5    # "xt9tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_4

    .line 124
    .local v0, "enabled":Z
    :goto_3
    if-nez v0, :cond_5

    .line 125
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :goto_4
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->setDeleteMenuItemEnabled(Z)V

    .line 133
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 134
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMainListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v7, Lcom/diotek/ime/implement/setting/Xt9MyWords$1;

    invoke-direct {v7, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWords$1;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWords;)V

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 141
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMainListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMainListView:Landroid/widget/ListView;

    const/high16 v7, 0x100000

    invoke-virtual {v6, v7}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    return-void

    .line 113
    .end local v0    # "enabled":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mywordsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .restart local v2    # "mywordsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v3, "swifttempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->generateWordUserModel()Ljava/util/List;

    move-result-object v3

    .end local v3    # "swifttempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 116
    .restart local v3    # "swifttempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    .restart local v4    # "word":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 119
    .end local v4    # "word":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .end local v3    # "swifttempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    move v0, v7

    .line 123
    goto :goto_3

    .line 128
    .restart local v0    # "enabled":Z
    :cond_5
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 167
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 173
    return-void
.end method
