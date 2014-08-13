.class public Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SwiftkeyLanguagesSettingsFragment.java"


# static fields
.field public static final BASE_AVAILABLE:I = 0x3e8

.field public static final BASE_DOWNLOADED:I = 0x1

.field private static final REQUEST_CODE:I

.field private static isChineseInstalled:Z

.field private static mDeletingLPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static mPopupWindow:Landroid/widget/PopupWindow;

.field public static sharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private mActionDeleteView:Landroid/widget/TextView;

.field mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field public mIsHandwritingSearch:Z

.field public mIsVOHWRenable:Z

.field public mLanguagePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private mPhotosClickListener:Landroid/view/View$OnClickListener;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field public mTotalLanguageCount:I

.field private mTouchViewUndoListener:Landroid/view/View$OnTouchListener;

.field private mViewUndo:Landroid/view/View;

.field mainScreen:Landroid/preference/PreferenceScreen;

.field private mainView:Landroid/view/View;

.field private misTablet:Z

.field private settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

.field private volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z

    .line 76
    sput-object v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 86
    sput-object v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 69
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    .line 70
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    .line 71
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 73
    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    .line 74
    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsVOHWRenable:Z

    .line 75
    iput v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    .line 79
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    .line 80
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 81
    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->misTablet:Z

    .line 90
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 258
    new-instance v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTouchViewUndoListener:Landroid/view/View$OnTouchListener;

    .line 289
    new-instance v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$3;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPhotosClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 67
    sput-object p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;
    .param p1, "x1"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->notifyUpdateSelectedLanguageList()V

    return-void
.end method

.method private deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 4
    .param p1, "lp"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 379
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    .line 380
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "languageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {v1, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->removeLanguage(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private getSystemLanguageChangedListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method private notifyUpdateSelectedLanguageList()V
    .locals 2

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "SamsungIME.UpdateAvailableLanguageAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 300
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 301
    if-nez p1, :cond_1

    .line 302
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    if-ne p2, v7, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Delete is Done"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 304
    sget-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 305
    sget-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 307
    :cond_0
    const-string v6, "mDeletingLPList"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    sput-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    .line 309
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 310
    .local v2, "resource":Landroid/content/res/Resources;
    const v6, 0x7f090006

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    .line 311
    .local v5, "undoHeight":I
    const v6, 0x7f090007

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 312
    .local v4, "undoBottomHeight":I
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030002

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 314
    .local v1, "popupView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 315
    const-string v6, "SamsungIME"

    const-string v7, "popupView is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v1    # "popupView":Landroid/view/View;
    .end local v2    # "resource":Landroid/content/res/Resources;
    .end local v4    # "undoBottomHeight":I
    .end local v5    # "undoHeight":I
    :cond_1
    :goto_0
    return-void

    .line 320
    .restart local v1    # "popupView":Landroid/view/View;
    .restart local v2    # "resource":Landroid/content/res/Resources;
    .restart local v4    # "undoBottomHeight":I
    .restart local v5    # "undoHeight":I
    :cond_2
    const v6, 0x7f080005

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mActionDeleteView:Landroid/widget/TextView;

    .line 321
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mActionDeleteView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 322
    .local v3, "tmpActionDeleteView":Ljava/lang/String;
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mActionDeleteView:Landroid/widget/TextView;

    const-string v7, "%d"

    sget-object v8, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :try_start_0
    new-instance v6, Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct {v6, v1, v7, v5, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    sput-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 331
    sget-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 332
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTouchViewUndoListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 334
    sget-object v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    check-cast v6, Landroid/os/IBinder;

    const/16 v8, 0x50

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 335
    sget-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 336
    sget-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 337
    sget-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 340
    const v6, 0x7f080006

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mViewUndo:Landroid/view/View;

    .line 341
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mViewUndo:Landroid/view/View;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPhotosClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v6, "SamsungIME"

    const-string v7, "Unable to show popup window because of BadTokenException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 353
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 355
    :try_start_0
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    .line 356
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 357
    .local v5, "parent":Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 358
    .local v3, "index":I
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 359
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 360
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 361
    .local v4, "middle":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 362
    .local v6, "sideWeight":I
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 363
    .local v1, "childmiddle":Landroid/view/View;
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f0800aa

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 364
    .local v0, "childleft":Landroid/view/View;
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f0800ab

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 365
    .local v2, "childright":Landroid/view/View;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v4

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020a4b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 367
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 370
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v0    # "childleft":Landroid/view/View;
    .end local v1    # "childmiddle":Landroid/view/View;
    .end local v2    # "childright":Landroid/view/View;
    .end local v3    # "index":I
    .end local v4    # "middle":I
    .end local v5    # "parent":Landroid/view/ViewGroup;
    .end local v6    # "sideWeight":I
    :cond_0
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x400

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 98
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    .line 99
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 102
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_8

    .line 103
    const-string v8, "handwriting"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    .line 107
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 108
    const v8, 0x7f030098

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 109
    const-string v8, "select_swiftkey_language_list"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    .line 111
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v8, :cond_0

    .line 112
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v8

    iput-boolean v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsVOHWRenable:Z

    .line 113
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 115
    :cond_0
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v8, :cond_1

    .line 116
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "TABLET_MODE"

    invoke-interface {v8, v9, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->misTablet:Z

    .line 118
    :cond_1
    iget-boolean v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->misTablet:Z

    if-eqz v8, :cond_2

    .line 119
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v12, v12}, Landroid/view/Window;->setFlags(II)V

    .line 123
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "configLanguageListValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 126
    const-string v8, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 127
    .local v2, "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_3

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_3

    .line 128
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    .end local v2    # "cp":Landroid/preference/CheckBoxPreference;
    :cond_3
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 133
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 134
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 136
    const v8, 0x7f0d002d

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 140
    :cond_4
    iget-boolean v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsVOHWRenable:Z

    if-eqz v8, :cond_5

    .line 141
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v8}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    .line 143
    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    sput-object v8, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 146
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    .line 148
    invoke-virtual {p0, v10}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->rebuildLanguageList(Z)V

    .line 150
    if-nez p1, :cond_6

    .line 151
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 152
    .local v7, "sp":Landroid/content/SharedPreferences;
    const-string v8, "first_swiftkey_download_list_execution"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 154
    .local v5, "mIsCheckDontShowDownloadListGuide":Z
    const-string v8, "swiftkey_download_list_execution"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 158
    .local v6, "mIsUpdateDownloadListGuide":Z
    if-eqz v5, :cond_9

    .line 159
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v8}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->showListUpdateGuideDialog()V

    .line 168
    .end local v5    # "mIsCheckDontShowDownloadListGuide":Z
    .end local v6    # "mIsUpdateDownloadListGuide":Z
    .end local v7    # "sp":Landroid/content/SharedPreferences;
    :cond_6
    :goto_1
    :try_start_0
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.samsung.inputmethod"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 170
    const/4 v8, 0x1

    sput-boolean v8, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_7
    :goto_2
    return-void

    .line 105
    .end local v0    # "bar":Landroid/app/ActionBar;
    .end local v1    # "configLanguageListValue":Ljava/lang/String;
    :cond_8
    iput-boolean v11, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    goto/16 :goto_0

    .line 162
    .restart local v0    # "bar":Landroid/app/ActionBar;
    .restart local v1    # "configLanguageListValue":Ljava/lang/String;
    .restart local v5    # "mIsCheckDontShowDownloadListGuide":Z
    .restart local v6    # "mIsUpdateDownloadListGuide":Z
    .restart local v7    # "sp":Landroid/content/SharedPreferences;
    :cond_9
    if-eqz v6, :cond_6

    .line 163
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v8}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->updateLPlist()V

    goto :goto_1

    .line 172
    .end local v5    # "mIsCheckDontShowDownloadListGuide":Z
    .end local v6    # "mIsUpdateDownloadListGuide":Z
    .end local v7    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    .line 173
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v11, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    const v1, 0x7f030073

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    .line 181
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 188
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 227
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    return-object v1
.end method

.method public onPause()V
    .locals 8

    .prologue
    .line 234
    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 236
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    .line 237
    .local v3, "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    .line 239
    .local v0, "availablelanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/util/LanguagePack;

    .line 240
    .local v2, "lp":Lcom/touchtype_fluency/util/LanguagePack;
    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    :cond_1
    invoke-virtual {v3, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    .line 244
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    goto :goto_0

    .line 249
    .end local v2    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_2
    const/4 v4, 0x0

    sput-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    .line 250
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->notifyUpdateSelectedLanguageList()V

    .line 251
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->rebuildLanguageList(Z)V

    .line 254
    .end local v0    # "availablelanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    :cond_3
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 255
    return-void
.end method

.method public rebuildLanguageList(Z)V
    .locals 24
    .param p1, "isFragmentOn"    # Z

    .prologue
    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 424
    :cond_0
    if-eqz p1, :cond_1

    .line 425
    const v2, 0x7f030098

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 427
    :cond_1
    const-string v2, "select_swiftkey_language_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    .line 428
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 430
    .local v9, "configLanguageListValue":Ljava/lang/String;
    const/4 v5, 0x0

    .line 431
    .local v5, "isUseSystemLanguageCheck":Z
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v16, 0x1

    .line 432
    .local v16, "includeUseSystemLanguage":Z
    :goto_0
    const-string v2, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 433
    .local v11, "cpUseSystemLanguage":Landroid/preference/CheckBoxPreference;
    if-eqz v11, :cond_2

    .line 434
    if-nez v16, :cond_13

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 446
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_3

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getTotalSupportLanguageList()V

    .line 450
    :cond_3
    const/4 v8, 0x0

    .line 451
    .local v8, "checkDefaultLangauge":Z
    const/16 v20, 0x0

    .line 452
    .local v20, "sp":Landroid/content/SharedPreferences;
    const/4 v12, 0x0

    .line 457
    .local v12, "defaultLanguageID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_4

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v20

    .line 459
    if-eqz v20, :cond_4

    .line 460
    const-string v2, "default_keyboard_language"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 464
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v18

    .line 465
    .local v18, "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v7

    .line 466
    .local v7, "availablelanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v13

    .line 467
    .local v13, "enabledLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v2}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v22

    .line 468
    .local v22, "volpm":Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    const/4 v14, 0x0

    .line 470
    .local v14, "englishLp":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_6

    .line 471
    const/4 v8, 0x1

    .line 472
    const/4 v10, 0x0

    .line 473
    .local v10, "countryCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    .line 474
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    .line 475
    .local v3, "lp":Lcom/touchtype_fluency/util/LanguagePack;
    const-string v2, "en"

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 476
    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 477
    .local v17, "languageID":Ljava/lang/String;
    move-object v14, v3

    .line 478
    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v12, :cond_5

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 486
    .end local v3    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    .end local v10    # "countryCode":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "languageID":Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    .line 487
    .local v19, "order":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    .line 488
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    .line 489
    .restart local v3    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    if-eqz v8, :cond_9

    .line 490
    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 492
    .restart local v17    # "languageID":Ljava/lang/String;
    if-eqz v12, :cond_9

    .line 493
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 494
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    .line 496
    :cond_8
    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 497
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    .line 502
    .end local v17    # "languageID":Ljava/lang/String;
    :cond_9
    sget-boolean v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z

    if-eqz v2, :cond_a

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "zh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 507
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    if-eqz v2, :cond_c

    if-eqz v22, :cond_c

    .line 508
    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v21

    .line 510
    .local v21, "volp":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 514
    .end local v21    # "volp":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    :cond_c
    add-int/lit8 v19, v19, 0x1

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    if-eqz v2, :cond_11

    .line 516
    const/4 v1, 0x0

    .line 517
    .local v1, "pref":Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    if-eqz v16, :cond_d

    if-eqz v16, :cond_15

    if-eqz v5, :cond_15

    .line 519
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pref":Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    check-cast v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .line 529
    .restart local v1    # "pref":Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    :goto_3
    if-eqz v1, :cond_e

    .line 530
    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 531
    add-int/lit8 v2, v19, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 536
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_10

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 540
    sget-object v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v4, v6, v0}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 543
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 547
    :cond_10
    if-eqz v16, :cond_11

    if-eqz v1, :cond_11

    .line 548
    const-string v2, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 551
    .end local v1    # "pref":Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    goto/16 :goto_2

    .line 431
    .end local v3    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    .end local v7    # "availablelanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .end local v8    # "checkDefaultLangauge":Z
    .end local v11    # "cpUseSystemLanguage":Landroid/preference/CheckBoxPreference;
    .end local v12    # "defaultLanguageID":Ljava/lang/String;
    .end local v13    # "enabledLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .end local v14    # "englishLp":Lcom/touchtype_fluency/util/LanguagePack;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "includeUseSystemLanguage":Z
    .end local v18    # "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    .end local v19    # "order":I
    .end local v20    # "sp":Landroid/content/SharedPreferences;
    .end local v22    # "volpm":Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 439
    .restart local v11    # "cpUseSystemLanguage":Landroid/preference/CheckBoxPreference;
    .restart local v16    # "includeUseSystemLanguage":Z
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->getSystemLanguageChangedListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 441
    invoke-virtual {v11}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    goto/16 :goto_1

    .line 522
    .restart local v1    # "pref":Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .restart local v3    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    .restart local v7    # "availablelanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .restart local v8    # "checkDefaultLangauge":Z
    .restart local v12    # "defaultLanguageID":Ljava/lang/String;
    .restart local v13    # "enabledLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .restart local v14    # "englishLp":Lcom/touchtype_fluency/util/LanguagePack;
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v18    # "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    .restart local v19    # "order":I
    .restart local v20    # "sp":Landroid/content/SharedPreferences;
    .restart local v22    # "volpm":Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    :cond_14
    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .end local v1    # "pref":Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;ZZ)V

    .restart local v1    # "pref":Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    goto/16 :goto_3

    .line 526
    :cond_15
    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .end local v1    # "pref":Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;ZZ)V

    .restart local v1    # "pref":Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    goto/16 :goto_3

    .line 533
    :cond_16
    move/from16 v0, v19

    add-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    goto/16 :goto_4

    .line 554
    .end local v1    # "pref":Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .end local v3    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_18

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->updateSupportLanguageListforSwiftkey()V

    .line 557
    :cond_18
    return-void
.end method
