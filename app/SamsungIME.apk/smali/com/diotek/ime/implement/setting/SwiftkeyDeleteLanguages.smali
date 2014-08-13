.class public Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;
.super Landroid/app/Activity;
.source "SwiftkeyDeleteLanguages.java"


# static fields
.field private static mDeleteDlg:Landroid/app/AlertDialog;

.field private static mDeletePopup:Z


# instance fields
.field private mAllSelected:Z

.field private final mDeletingLPList:Ljava/util/ArrayList;
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

.field private final mLPlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

.field private mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMenu:Landroid/view/Menu;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field protected mSelectActionBarView:Landroid/view/View;

.field protected mSelectAllButton:Landroid/widget/Button;

.field private mSelectAllPopupMenu:Landroid/widget/PopupMenu;

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

.field private final mTotalDeletingLPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private misTablet:Z

.field private volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeleteDlg:Landroid/app/AlertDialog;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletePopup:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput-boolean v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mTotalDeletingLPList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    .line 67
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 68
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 70
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 74
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 75
    iput-boolean v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->misTablet:Z

    .line 76
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectActionBarView:Landroid/view/View;

    .line 77
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    .line 78
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    .line 223
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Landroid/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mTotalDeletingLPList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;
    .param p1, "x1"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->notifyUpdateSelectedLanguageList()V

    return-void
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->setDoneMenuEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 53
    sput-boolean p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletePopup:Z

    return p0
.end method

.method static synthetic access$900()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeleteDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 4
    .param p1, "lp"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    .line 419
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "languageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {v1, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->removeLanguage(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method private getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$5;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$5;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private makeDeletePopup()V
    .locals 7

    .prologue
    const v4, 0x7f0d009f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 442
    sget-boolean v2, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletePopup:Z

    if-eqz v2, :cond_0

    .line 502
    :goto_0
    return-void

    .line 446
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 448
    const v2, 0x7f0d00a0

    new-instance v3, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$6;

    invoke-direct {v3, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$6;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 457
    new-instance v2, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$7;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$7;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 477
    new-instance v2, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$8;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$8;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 490
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, "redId":I
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 494
    const v1, 0x7f0d01e4

    .line 495
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 500
    :goto_1
    sput-boolean v5, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletePopup:Z

    .line 501
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeleteDlg:Landroid/app/AlertDialog;

    goto :goto_0

    .line 497
    :cond_1
    const v1, 0x7f0d01e5

    .line 498
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private notifyUpdateSelectedLanguageList()V
    .locals 2

    .prologue
    .line 424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "SamsungIME.UpdateAvailableLanguageAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 426
    return-void
.end method

.method private setDoneMenuEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 332
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mMenu:Landroid/view/Menu;

    const v1, 0x7f08010f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 335
    :cond_0
    return-void
.end method


# virtual methods
.method protected deselectAllItem()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f080112

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 438
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f080113

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 440
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 12
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v8, 0x0

    .line 387
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mMenu:Landroid/view/Menu;

    invoke-interface {v9}, Landroid/view/Menu;->clear()V

    .line 389
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 391
    .local v3, "inflater":Landroid/view/MenuInflater;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 392
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "languageLongPressed"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 393
    .local v5, "languageLongPressed":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 394
    const v9, 0x7f0f0003

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mMenu:Landroid/view/Menu;

    invoke-virtual {v3, v9, v10}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 399
    :goto_0
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    const/4 v8, 0x1

    :cond_0
    invoke-direct {p0, v8}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->setDoneMenuEnabled(Z)V

    .line 401
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a001c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 402
    .local v6, "middle":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a001d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 403
    .local v7, "sideWeight":I
    const v8, 0x7f0800c9

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 404
    .local v1, "childmiddle":Landroid/view/View;
    const v8, 0x7f0800aa

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 405
    .local v0, "childleft":Landroid/view/View;
    const v8, 0x7f0800ab

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 407
    .local v2, "childright":Landroid/view/View;
    :try_start_0
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    int-to-float v11, v6

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020a4b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 409
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    int-to-float v11, v7

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    int-to-float v11, v7

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_1
    return-void

    .line 396
    .end local v0    # "childleft":Landroid/view/View;
    .end local v1    # "childmiddle":Landroid/view/View;
    .end local v2    # "childright":Landroid/view/View;
    .end local v6    # "middle":I
    .end local v7    # "sideWeight":I
    :cond_1
    const v9, 0x7f0f0002

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mMenu:Landroid/view/Menu;

    invoke-virtual {v3, v9, v10}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 411
    .restart local v0    # "childleft":Landroid/view/View;
    .restart local v1    # "childmiddle":Landroid/view/View;
    .restart local v2    # "childright":Landroid/view/View;
    .restart local v6    # "middle":I
    .restart local v7    # "sideWeight":I
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 84
    const v17, 0x7f030095

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 85
    const-string v17, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 88
    .local v6, "bar":Landroid/app/ActionBar;
    if-eqz v6, :cond_0

    .line 89
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "TABLET_MODE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->misTablet:Z

    .line 95
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->misTablet:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x400

    const/16 v19, 0x400

    invoke-virtual/range {v17 .. v19}, Landroid/view/Window;->setFlags(II)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    const/high16 v18, 0x7f030000

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectActionBarView:Landroid/view/View;

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectActionBarView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f080003

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    .line 103
    new-instance v17, Landroid/widget/PopupMenu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    move-object/from16 v17, v0

    const v18, 0x7f0f0005

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    new-instance v18, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    move-object/from16 v17, v0

    new-instance v18, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->deselectAllItem()V

    .line 148
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectActionBarView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 153
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z

    .line 154
    const/16 v17, 0x0

    sput-boolean v17, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletePopup:Z

    .line 155
    const v17, 0x7f0800bc

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d00a2

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 157
    .local v16, "selectallString":Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallArray:Ljava/util/ArrayList;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallArray:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v17, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    const v18, 0x7f030097

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallArray:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->misTablet:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mTotalDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 171
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v15

    .line 172
    .local v15, "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-virtual {v15}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v5

    .line 175
    .local v5, "availablelanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 176
    .local v10, "intent":Landroid/content/Intent;
    const-string v17, "languageLongPressed"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 177
    .local v11, "languageLongPressed":Ljava/lang/String;
    const/4 v12, 0x0

    .line 179
    .local v12, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/touchtype_fluency/util/LanguagePack;

    .line 180
    .local v14, "lp":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v14}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v14}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-static {v14}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-interface {v14}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mTotalDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface {v14}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v14}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-interface {v14}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 186
    :cond_4
    move-object v12, v14

    goto :goto_0

    .line 192
    .end local v14    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_5
    new-instance v17, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    const v18, 0x7f030096

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mListAdapter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    .line 193
    const v17, 0x7f0800bd

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mListAdapter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setClickable(Z)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 206
    const-string v17, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 207
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v17, 0x7f030096

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 209
    .local v13, "linearLayout":Landroid/widget/LinearLayout;
    if-eqz v12, :cond_6

    .line 210
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    const v18, 0x7f0800be

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 211
    .local v7, "cb":Landroid/widget/CheckBox;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-interface {v12}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v7    # "cb":Landroid/widget/CheckBox;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d02df

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_7
    :goto_1
    return-void

    .line 218
    :cond_8
    if-eqz v6, :cond_7

    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d02df

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    .line 339
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 340
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 342
    .local v0, "inflater":Landroid/view/MenuInflater;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 343
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "languageLongPressed"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "languageLongPressed":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 345
    const v3, 0x7f0f0003

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 350
    :goto_0
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mMenu:Landroid/view/Menu;

    .line 351
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->setDoneMenuEnabled(Z)V

    .line 352
    return v4

    .line 347
    :cond_0
    const v3, 0x7f0f0002

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 351
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 357
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 381
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 359
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 371
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "Delete is Done"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "mDeletingLPList"

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 373
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 374
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 378
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 357
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08010f -> :sswitch_1
        0x7f080110 -> :sswitch_2
    .end sparse-switch
.end method

.method protected selectAllItem()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f080112

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 431
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f080113

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 433
    :cond_0
    return-void
.end method
