.class public Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;
.super Landroid/app/Activity;
.source "Xt9MyWordsDel.java"


# instance fields
.field private mAllSelected:Z

.field private mDeleteDlg:Landroid/app/AlertDialog;

.field private final mDeletingWordsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayView:Landroid/widget/ListView;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mListAdapter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

.field private mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMenu:Landroid/view/Menu;

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

.field private mSelectallArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectallview:Landroid/widget/ListView;

.field private final mWordlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    .line 53
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 54
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 56
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 57
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 59
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    .line 134
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->setDoneMenuEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDisplayView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->removeWordFromUserModel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    return-object v0
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
    .line 361
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v3, "userWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v1

    .line 363
    .local v1, "skSession":Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    .line 364
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

    .line 365
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

    .line 366
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    .end local v2    # "term":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$4;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private makeDeletePopup()V
    .locals 6

    .prologue
    const v5, 0x7f0d009f

    const/4 v4, 0x1

    .line 269
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 271
    const v2, 0x7f0d00a0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    new-instance v2, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, "isTabletMode":Z
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 297
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    .line 300
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 301
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 302
    const v2, 0x7f0d00ac

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 309
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    :goto_1
    return-void

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 304
    const v2, 0x7f0d00aa

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 306
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    .line 313
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_1
.end method

.method private removeWordFromUserModel(Ljava/lang/String;)V
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v0

    .line 374
    .local v0, "skSession":Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    .line 375
    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    .line 376
    return-void
.end method

.method private setDoneMenuEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 317
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mMenu:Landroid/view/Menu;

    const v1, 0x7f08010f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 320
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 353
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 354
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 355
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0002

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 356
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->setDoneMenuEnabled(Z)V

    .line 357
    return-void

    .line 356
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f030091

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 65
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v8

    if-nez v8, :cond_0

    .line 66
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DBController()Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    .line 68
    :cond_0
    const v8, 0x7f030090

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    .line 69
    const-string v8, ""

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 72
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 76
    :cond_1
    iput-boolean v12, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z

    .line 78
    const v8, 0x7f0800bc

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallview:Landroid/widget/ListView;

    .line 79
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d00a2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "selectallString":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallArray:Ljava/util/ArrayList;

    .line 81
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v8, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallArray:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-direct {v8, p0, v13, v9, v10}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    .line 84
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallview:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallview:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallview:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 89
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v7, "wordsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v4, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->generateWordUserModel()Ljava/util/List;

    move-result-object v4

    .line 92
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 93
    .local v5, "word":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v5    # "word":Ljava/lang/CharSequence;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 96
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 97
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 98
    .restart local v5    # "word":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "word":Ljava/lang/CharSequence;
    .end local v7    # "wordsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v6, "wordsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v3, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v8, v3, v11}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->getMyWordsList(Ljava/util/ArrayList;Z)I

    .line 105
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 106
    .restart local v5    # "word":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 108
    .end local v5    # "word":Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v8, v3, v12}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->getMyWordsList(Ljava/util/ArrayList;Z)I

    .line 110
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 111
    .restart local v5    # "word":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 113
    .end local v5    # "word":Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 114
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 115
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 116
    .restart local v5    # "word":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 119
    .end local v3    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v5    # "word":Ljava/lang/CharSequence;
    .end local v6    # "wordsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_6
    new-instance v8, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-direct {v8, p0, v13, v9, v10}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mListAdapter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    .line 121
    const v8, 0x7f0800bd

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDisplayView:Landroid/widget/ListView;

    .line 122
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mListAdapter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    new-instance v9, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$1;

    invoke-direct {v9, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$1;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)V

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 128
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDisplayView:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mListAdapter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDisplayView:Landroid/widget/ListView;

    invoke-virtual {v8, v11}, Landroid/view/View;->setClickable(Z)V

    .line 130
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDisplayView:Landroid/widget/ListView;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 131
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDisplayView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 324
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 325
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 326
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 327
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mMenu:Landroid/view/Menu;

    .line 328
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->setDoneMenuEnabled(Z)V

    .line 329
    return v2

    .line 328
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 230
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 346
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 337
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 340
    :sswitch_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->makeDeletePopup()V

    goto :goto_0

    .line 343
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 335
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08010f -> :sswitch_1
        0x7f080110 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 236
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 242
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 248
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 254
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 260
    return-void
.end method
