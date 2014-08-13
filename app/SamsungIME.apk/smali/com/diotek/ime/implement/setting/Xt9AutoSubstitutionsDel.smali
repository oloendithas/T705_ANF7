.class public Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;
.super Landroid/app/Activity;
.source "Xt9AutoSubstitutionsDel.java"


# instance fields
.field private DeleteDlg:Landroid/app/AlertDialog;

.field private mAllSelected:Z

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

.field private mListAdapter:Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;

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
            "Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;",
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

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mAllSelected:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mWordlist:Ljava/util/ArrayList;

    .line 49
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 50
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 52
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 53
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 54
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    .line 116
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mWordlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->setDoneMenuEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mAllSelected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mAllSelected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDisplayView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    return-object v0
.end method

.method private addToAutoSubstitutionsData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "autosubstitutionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;>;"
    .local p2, "shortcutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .local p3, "substitutionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 108
    const/4 v1, 0x0

    .line 113
    :goto_0
    return v1

    .line 110
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 111
    new-instance v3, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v3, v1, v2}, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;-><init>(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;-><init>(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$3;-><init>(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private makeDeletePopup()V
    .locals 5

    .prologue
    const v4, 0x7f0d009f

    const/4 v3, 0x1

    .line 244
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 246
    const v1, 0x7f0d00a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    new-instance v1, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$4;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$4;-><init>(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 262
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 266
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 267
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 268
    const v1, 0x7f0d00ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 276
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->DeleteDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->DeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    :goto_1
    return-void

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 270
    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 272
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->DeleteDlg:Landroid/app/AlertDialog;

    .line 280
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->DeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1
.end method

.method private setDoneMenuEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 284
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mMenu:Landroid/view/Menu;

    const v1, 0x7f08010f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 319
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 320
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 321
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0002

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 322
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->setDoneMenuEnabled(Z)V

    .line 323
    return-void

    .line 322
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 61
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v4, :cond_0

    .line 103
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DBController()Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    .line 66
    const v4, 0x7f03008b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 67
    const-string v4, ""

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 70
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mAllSelected:Z

    .line 75
    const v4, 0x7f0800b4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallview:Landroid/widget/ListView;

    .line 76
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "selectallString":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallArray:Ljava/util/ArrayList;

    .line 78
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v4, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    const v5, 0x7f030091

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallArray:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    .line 81
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallview:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallview:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallview:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v2, "shortcutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v3, "substitutionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v4, v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->getAutoSubstitutionsList(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    .line 88
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v2, v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->addToAutoSubstitutionsData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 89
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_2

    .line 90
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9AutoSubstitutions onResume size is not equal (shortcutList, substitutionList) : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2
    new-instance v4, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;

    const v5, 0x7f03008c

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mWordlist:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mListAdapter:Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;

    .line 97
    const v4, 0x7f0800b5

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDisplayView:Landroid/widget/ListView;

    .line 98
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mListAdapter:Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;

    new-instance v5, Lcom/diotek/ime/implement/setting/AutoSubstitutionsDataCompareator;

    invoke-direct {v5}, Lcom/diotek/ime/implement/setting/AutoSubstitutionsDataCompareator;-><init>()V

    invoke-virtual {v4, v5}, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 99
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDisplayView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mListAdapter:Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDisplayView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setClickable(Z)V

    .line 101
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDisplayView:Landroid/widget/ListView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 102
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDisplayView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 291
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 293
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 294
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mMenu:Landroid/view/Menu;

    .line 295
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->setDoneMenuEnabled(Z)V

    .line 296
    return v2

    .line 295
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 301
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 312
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 303
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 306
    :sswitch_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->makeDeletePopup()V

    goto :goto_0

    .line 309
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 301
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
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 217
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 223
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 229
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 235
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 241
    return-void
.end method
