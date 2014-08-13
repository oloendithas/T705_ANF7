.class public Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;
.super Landroid/preference/Preference;
.source "ACLanguagesSettingsPreference.java"

# interfaces
.implements Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;


# static fields
.field private static final DOWNLOAD_AVAILABLE:I = 0x0

.field private static final DOWNLOAD_COMPLETE:I = 0x1

.field private static final DOWNLOAD_ING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "KLDownloadManager"

.field private static final UPDATE_AVAILABLE:I = 0x3

.field private static final WILL_BE_DOWNLOAD:I = 0x4


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field public enableCheckBox:Landroid/widget/CheckBox;

.field private key:Ljava/lang/String;

.field private listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;"
        }
    .end annotation
.end field

.field mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

.field public mCurrentState:I

.field private mIsCheckboxDontShowDownloadForRoam:Z

.field private mIsCheckboxDontShowDownloadForWifi:Z

.field private mLanguage:Lcom/diotek/ime/framework/common/Language;

.field public mLanguageName:Ljava/lang/String;

.field private mSelectedLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field public mXt9LanguageCode:I

.field private final parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

.field public selfView:Landroid/view/View;

.field private statusTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;

.field private updateButton:Landroid/widget/Button;

.field public updateFlag:I


# direct methods
.method public constructor <init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettings;Lcom/diotek/ime/framework/common/Language;II)V
    .locals 4
    .param p1, "acLanguagesSettings"    # Lcom/diotek/ime/implement/setting/ACLanguagesSettings;
    .param p2, "lang"    # Lcom/diotek/ime/framework/common/Language;
    .param p3, "languageCode"    # I
    .param p4, "currentState"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    .line 58
    iput v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateFlag:I

    .line 73
    const v0, 0x7f030094

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 74
    const-string v0, "0x%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    .line 75
    invoke-virtual {p2}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    .line 77
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    .line 78
    iput p3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    .line 79
    iput p4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    .line 81
    invoke-static {}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->newInstance()Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->listenerList:Ljava/util/List;

    .line 83
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->listenerList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->register()V

    .line 86
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const-string v1, "selected"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreference:Landroid/content/SharedPreferences;

    .line 87
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/diotek/ime/framework/common/Language;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/diotek/ime/implement/setting/ACLanguagesSettings;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelDownload()V

    return-void
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->startDownload()V

    return-void
.end method

.method static synthetic access$500(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mIsCheckboxDontShowDownloadForRoam:Z

    return v0
.end method

.method static synthetic access$502(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mIsCheckboxDontShowDownloadForRoam:Z

    return p1
.end method

.method static synthetic access$600(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mIsCheckboxDontShowDownloadForWifi:Z

    return v0
.end method

.method static synthetic access$602(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mIsCheckboxDontShowDownloadForWifi:Z

    return p1
.end method

.method private cancelDownload()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 313
    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 314
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->cancelDownload(I)V

    .line 315
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->unregister(I)V

    .line 317
    const v0, 0x7f0d01d9

    .line 318
    .local v0, "resId":I
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 323
    .end local v0    # "resId":I
    :cond_0
    return-void
.end method

.method private getDownloadGuideCheckBoxRscId()I
    .locals 1

    .prologue
    .line 515
    const v0, 0x7f080043

    return v0
.end method

.method private getDownloadGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 519
    const v0, 0x7f030035

    return v0
.end method

.method private register()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->listenerList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->register(ILjava/util/List;)V

    .line 298
    return-void
.end method

.method private startDownload()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->download(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->setUpdateState(IZ)V

    .line 309
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->listenerList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->register(ILjava/util/List;)V

    goto :goto_0
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->unregister(I)V

    .line 302
    return-void
.end method


# virtual methods
.method public IntentForDialog(I)V
    .locals 4
    .param p1, "number"    # I

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 353
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 354
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.popupNetworkError"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v2, "network_err_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v2, "mobile_data_only"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 358
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 359
    return-void
.end method

.method public MobileDataWarningForRoam()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 405
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 407
    .local v8, "sp":Landroid/content/SharedPreferences;
    const-string v10, "first_swiftkey_download_execution_for_roam"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->startDownload()V

    .line 456
    :goto_0
    return-void

    .line 412
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getDownloadGuideLayoutRscId()I

    move-result v3

    .line 414
    .local v3, "DownloadGuideLayoutRscId":I
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getDownloadGuideCheckBoxRscId()I

    move-result v2

    .line 416
    .local v2, "DownloadGuideCheckBoxRscId":I
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 418
    .local v7, "salesCode":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 419
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 421
    .local v6, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v6, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 422
    .local v5, "guideLayout":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 423
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const v11, 0x7f0d0257

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 425
    const v10, 0x7f080042

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 426
    .local v9, "titleTextView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const v11, 0x7f0d0258

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    const v10, 0x7f0d01d1

    invoke-virtual {v0, v10, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    const v10, 0x7f0d0116

    new-instance v11, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$3;

    invoke-direct {v11, p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$3;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 444
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 445
    .local v4, "chkbox":Landroid/widget/CheckBox;
    if-eqz v4, :cond_1

    .line 446
    new-instance v10, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$4;

    invoke-direct {v10, p0, v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$4;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 455
    .local v1, "DownloadDlg":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public MobileDataWarningForWiFi()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 458
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 460
    .local v8, "sp":Landroid/content/SharedPreferences;
    const-string v10, "first_swiftkey_download_execution"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->startDownload()V

    .line 512
    :goto_0
    return-void

    .line 465
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 466
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getDownloadGuideLayoutRscId()I

    move-result v3

    .line 467
    .local v3, "DownloadGuideLayoutRscId":I
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getDownloadGuideCheckBoxRscId()I

    move-result v2

    .line 469
    .local v2, "DownloadGuideCheckBoxRscId":I
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 471
    .local v7, "salesCode":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 472
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 474
    .local v6, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v6, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 475
    .local v5, "guideLayout":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 476
    const-string v10, "VZW"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 477
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const v11, 0x7f0d01f0

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 482
    :goto_1
    const v10, 0x7f080042

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 483
    .local v9, "titleTextView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const v11, 0x7f0d0256

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    const v10, 0x7f0d01d1

    invoke-virtual {v0, v10, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 485
    const v10, 0x7f0d0116

    new-instance v11, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$5;

    invoke-direct {v11, p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$5;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 500
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 501
    .local v4, "chkbox":Landroid/widget/CheckBox;
    if-eqz v4, :cond_1

    .line 502
    new-instance v10, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$6;

    invoke-direct {v10, p0, v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$6;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 511
    .local v1, "DownloadDlg":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 479
    .end local v1    # "DownloadDlg":Landroid/app/AlertDialog;
    .end local v4    # "chkbox":Landroid/widget/CheckBox;
    .end local v9    # "titleTextView":Landroid/widget/TextView;
    :cond_2
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const v11, 0x7f0d0255

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method protected checkAndSetViewState(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v9, 0x7f090412

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 214
    if-nez p1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 219
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 221
    .local v1, "enabled":Z
    const v4, 0x7f0800c3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->titleTextView:Landroid/widget/TextView;

    .line 222
    const v4, 0x7f0800c5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->statusTextView:Landroid/widget/TextView;

    .line 223
    const v4, 0x7f0800c7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    .line 224
    const v4, 0x7f0800c4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    .line 225
    const v4, 0x7f0800c8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    .line 226
    const v4, 0x7f0800c6

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    .line 227
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 229
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->titleTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-nez v4, :cond_2

    .line 232
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 234
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_2
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-ne v4, v8, :cond_3

    .line 238
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 240
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 245
    :cond_3
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 246
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 248
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 253
    .local v0, "current":I
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    .line 254
    .local v2, "maximum":I
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 255
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 256
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setHeight(I)V

    .line 257
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_0

    .line 258
    .end local v0    # "current":I
    .end local v2    # "maximum":I
    :cond_4
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 259
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 261
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 264
    :cond_5
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 265
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 267
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto/16 :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    return v0
.end method

.method public getLanguageId()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v0

    return v0
.end method

.method public getProgressBarListener()Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;
    .locals 0

    .prologue
    .line 293
    return-object p0
.end method

.method public getXt9LanguageCode()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->selfView:Landroid/view/View;

    .line 93
    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->checkAndSetViewState(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$1;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$1;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    new-instance v1, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$2;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$2;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 124
    return-void
.end method

.method protected onClick()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 128
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 129
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 132
    .local v1, "enabled":Z
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v7, 0x3

    if-eq v4, v7, :cond_1

    .line 133
    const v2, 0x7f0d01da

    .line 135
    .local v2, "resId":I
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 188
    .end local v2    # "resId":I
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-ne v4, v5, :cond_3

    .line 140
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getCheckedItemNumber()I

    move-result v4

    if-lt v4, v8, :cond_2

    if-nez v1, :cond_2

    .line 141
    const v2, 0x7f0d01de

    .line 142
    .restart local v2    # "resId":I
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v7, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 149
    .end local v2    # "resId":I
    :cond_2
    if-eqz v1, :cond_4

    .line 150
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v7}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getCheckedItemNumber()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->setCheckedItemNumber(I)V

    .line 151
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 152
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 162
    const-string v4, "KLDownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-ne v4, v5, :cond_7

    .line 164
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_5

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 165
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    if-nez v1, :cond_6

    :goto_3
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 154
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v7}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getCheckedItemNumber()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->setCheckedItemNumber(I)V

    .line 155
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 156
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_5
    move v4, v6

    .line 164
    goto :goto_2

    :cond_6
    move v5, v6

    .line 165
    goto :goto_3

    .line 168
    :cond_7
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 171
    const-string v4, "fr"

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 172
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget v5, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v7, v6}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->downloadFrenchLanguage(ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 174
    :cond_8
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateDownloadState()V

    .line 175
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->startDownload()V

    goto/16 :goto_0

    .line 180
    :cond_9
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-ne v4, v5, :cond_c

    .line 181
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_a

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 182
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    if-nez v1, :cond_b

    :goto_5
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_a
    move v4, v6

    .line 181
    goto :goto_4

    :cond_b
    move v5, v6

    .line 182
    goto :goto_5

    .line 185
    :cond_c
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->showDownloadGuideDialog()V

    goto/16 :goto_0
.end method

.method public setCurrentState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 289
    iput p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    .line 290
    return-void
.end method

.method public showDownloadGuideDialog()V
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 363
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isFlightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    .line 402
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isMobileDataOff(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    goto :goto_0

    .line 375
    :cond_1
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isRoamming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isDataRoammingOff(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->MobileDataWarningForRoam()V

    goto :goto_0

    .line 388
    :cond_3
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isReachToDataLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 390
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    goto :goto_0

    .line 394
    :cond_4
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isNoSignal(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 396
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    goto :goto_0

    .line 401
    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->MobileDataWarningForWiFi()V

    goto :goto_0
.end method

.method public updateCancelState()V
    .locals 2

    .prologue
    .line 205
    iget v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 206
    const/4 v0, 0x3

    iput v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->selfView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->checkAndSetViewState(Landroid/view/View;)V

    .line 211
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    goto :goto_0
.end method

.method public updateDownloadState()V
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 191
    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateFlag:I

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->isAlreadyDownloading(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    const/4 v0, 0x4

    iput v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    .line 198
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->selfView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->checkAndSetViewState(Landroid/view/View;)V

    .line 202
    :goto_1
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateFlag:I

    goto :goto_0

    .line 200
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    goto :goto_1
.end method

.method public updated(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    const v6, 0x66724652

    const v4, 0x66724341

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 326
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 330
    :cond_0
    const/16 v1, 0x64

    if-ne p1, v1, :cond_3

    .line 331
    iput v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    .line 332
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->updateOrder(Ljava/lang/String;Z)V

    .line 333
    const-string v1, "fr"

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 335
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const-string v2, "0x%08x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->updateOrder(Ljava/lang/String;Z)V

    .line 340
    :cond_1
    :goto_0
    const v0, 0x7f0d01d7

    .line 341
    .local v0, "resId":I
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 349
    .end local v0    # "resId":I
    :goto_1
    return-void

    .line 336
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 337
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const-string v2, "0x%08x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->updateOrder(Ljava/lang/String;Z)V

    goto :goto_0

    .line 346
    :cond_3
    const/4 v1, 0x2

    iput v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    .line 347
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->selfView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->checkAndSetViewState(Landroid/view/View;)V

    goto :goto_1
.end method
