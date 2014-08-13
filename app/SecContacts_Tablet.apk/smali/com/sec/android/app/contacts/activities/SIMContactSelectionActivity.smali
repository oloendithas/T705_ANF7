.class public Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;,
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;,
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;,
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;
    }
.end annotation


# static fields
.field public static final CONTACT_SELECTION_TITLE:Ljava/lang/String; = "CONTACT_SELECTION_TITLE"

.field private static final DEFAULT_DIRECTORY_RESULT_LIMIT:I = 0x14

.field private static final KEY_ACTION_CODE:Ljava/lang/String; = "actionCode"

.field private static final KEY_MODE:Ljava/lang/String; = "mode"

.field private static final MODE_COPY:I = 0x0

.field private static final MODE_DELETE:I = 0x2

.field public static final SELECT_ALL_CONTACT_ON_LOAD:Ljava/lang/String; = "SELECT_ALL_CONTACT_ON_LOAD"

.field public static final SHOW_CONFIRMATION_DIALOG:Ljava/lang/String; = "SHOW_CONFIRMATION_DIALOG"

.field private static final TAG:Ljava/lang/String; = "SIMContactSelectionActivity"

.field private static mCP_Start:I

.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private final SIM_COPY_CALL_FROM_AAB:Ljava/lang/String;

.field private final SIM_ONE:I

.field private final SIM_ZERO:I

.field private mAccount:Landroid/accounts/Account;

.field private mActionCode:I

.field private mCanceled:Z

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mDeleteTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

.field private mDoneButtonClickable:Z

.field private mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

.field private mHomeCheck:Z

.field private mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsMultiWindowSupported:Z

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMode:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchView:Landroid/widget/SearchView;

.field public mToastHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field revertMenuItem:Landroid/view/View;

.field saveMenuItem:Landroid/view/View;

.field private selectAllAtFirstLoad:Z

.field private showConfirmationDialog:Z

.field private simcopycallfromAAB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->sEmptyContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 118
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->selectAllAtFirstLoad:Z

    .line 119
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    .line 137
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 138
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    .line 144
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->simcopycallfromAAB:Z

    .line 145
    const-string v0, "simcopycallfromAAB"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->SIM_COPY_CALL_FROM_AAB:Ljava/lang/String;

    .line 157
    iput v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->SIM_ZERO:I

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->SIM_ONE:I

    .line 1979
    new-instance v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$6;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    .line 167
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/list/ContactsRequest;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/preference/ContactsPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .prologue
    .line 110
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .prologue
    .line 110
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->simcopycallfromAAB:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    return p1
.end method

.method private adjustActionBarMenuText(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->invalidateOptionsMenu()V

    .line 299
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    .line 315
    return-void
.end method

.method private configureActivityTitle(Landroid/app/ActionBar;)V
    .locals 8
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    const v7, 0x7f0e03fa

    const v6, 0x7f0e03f9

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 535
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 538
    .local v0, "actionCode":I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CONTACT_SELECTION_TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "title":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 540
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 541
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 658
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 592
    :cond_1
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 594
    :sswitch_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 595
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 596
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 602
    const v2, 0x7f0e02c9

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 603
    :cond_3
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 604
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 607
    :cond_4
    const v2, 0x7f0e02c8

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 612
    :sswitch_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 613
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 614
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 620
    const v2, 0x7f0e00d2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 621
    :cond_6
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 622
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 625
    :cond_7
    const v2, 0x7f0e00d1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 630
    :sswitch_2
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 631
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 633
    :cond_8
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 639
    :sswitch_3
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 640
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 642
    :cond_9
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 648
    :sswitch_4
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 649
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 651
    :cond_a
    const v2, 0x7f0e03b5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 592
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x136 -> :sswitch_1
        0x15e -> :sswitch_4
        0x190 -> :sswitch_2
        0x19a -> :sswitch_3
    .end sparse-switch
.end method

.method private configureComponenets()V
    .locals 12

    .prologue
    const v11, 0x7f090100

    const/16 v10, 0x8

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 321
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 322
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 326
    const/16 v5, 0x18

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 327
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->configureActivityTitle(Landroid/app/ActionBar;)V

    .line 387
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KDDI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v5

    const/16 v6, 0x136

    if-ne v5, v6, :cond_5

    .line 390
    const v5, 0x7f0901a6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 391
    .local v4, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SearchView;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    .line 393
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v10}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 408
    .end local v4    # "ll":Landroid/widget/LinearLayout;
    :cond_1
    :goto_1
    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    .line 409
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 410
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mPowerManager:Landroid/os/PowerManager;

    const/4 v6, 0x6

    const-string v7, "Sim_WakeLock"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 411
    return-void

    .line 330
    :cond_2
    const v5, 0x7f090114

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 331
    .local v2, "activityTitle":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    .line 333
    .local v1, "actionCode1":I
    const v5, 0x7f090119

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->saveMenuItem:Landroid/view/View;

    .line 334
    const v5, 0x7f090115

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->revertMenuItem:Landroid/view/View;

    .line 337
    const v5, 0x7f090113

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 338
    .local v3, "homeButton":Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->saveMenuItem:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->revertMenuItem:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    .line 364
    :sswitch_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 367
    const v5, 0x7f0e02c9

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 369
    :cond_3
    const v5, 0x7f0e02c8

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 375
    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 378
    const v5, 0x7f0e00d2

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 380
    :cond_4
    const v5, 0x7f0e00d1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 395
    .end local v1    # "actionCode1":I
    .end local v2    # "activityTitle":Landroid/widget/TextView;
    .end local v3    # "homeButton":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SearchView;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    .line 396
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v8}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 397
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 398
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->clearFocus()V

    .line 399
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const v6, 0x7f0e01c2

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 401
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v5, v5, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5, v9, v7, v9, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 402
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 405
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v6, 0x0

    invoke-virtual {v5, v8, v6}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 361
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x136 -> :sswitch_1
        0x190 -> :sswitch_0
        0x19a -> :sswitch_1
    .end sparse-switch
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 832
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 834
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v1, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 836
    return-void
.end method

.method private setLayout()V
    .locals 3

    .prologue
    .line 485
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 491
    .local v0, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 492
    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 493
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 495
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 497
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 498
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f040089

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method private setWindowBackground(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 273
    const v4, 0x7f090450

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 274
    .local v1, "mainView":Landroid/view/View;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 275
    .local v3, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c020a

    invoke-virtual {v4, v5, v3, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 276
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 277
    .local v0, "dimAmount":F
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 295
    :goto_0
    return-void

    .line 281
    :cond_0
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 283
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 284
    .local v2, "param":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, -0x1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 285
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 293
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f040089

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 287
    .end local v2    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 288
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 289
    .restart local v2    # "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0106

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 291
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public configureListFragment()V
    .locals 5

    .prologue
    const/4 v2, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 730
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    .line 731
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    .line 782
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 733
    :sswitch_0
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;-><init>()V

    .line 734
    .local v0, "fragment":Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 735
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 736
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 737
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 738
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 740
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->selectAllAtFirstLoad:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectAllAtFirstLoad(Z)V

    .line 741
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 785
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    .line 786
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 787
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 788
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 789
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    .line 790
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    .line 792
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090196

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 794
    return-void

    .line 747
    .end local v0    # "fragment":Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    :sswitch_1
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;-><init>()V

    .line 748
    .restart local v0    # "fragment":Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 749
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 750
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 751
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/16 v2, -0xb

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 752
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 754
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->selectAllAtFirstLoad:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectAllAtFirstLoad(Z)V

    .line 755
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 759
    .end local v0    # "fragment":Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    :sswitch_2
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;-><init>()V

    .line 760
    .restart local v0    # "fragment":Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 761
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 762
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 763
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 764
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 765
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_0

    .line 771
    .end local v0    # "fragment":Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    :sswitch_3
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;-><init>()V

    .line 772
    .restart local v0    # "fragment":Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 773
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 774
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 775
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/16 v2, -0x10

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 776
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 777
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_0

    .line 731
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x136 -> :sswitch_1
        0x15e -> :sswitch_1
        0x190 -> :sswitch_2
        0x19a -> :sswitch_3
        0x1c2 -> :sswitch_3
    .end sparse-switch
.end method

.method public getActionCode()I
    .locals 1

    .prologue
    .line 1171
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    return v0
.end method

.method public isSIM2Enabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 853
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v4

    if-nez v4, :cond_0

    .line 861
    :goto_0
    return v3

    .line 855
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 857
    .local v1, "isSIMEnabled":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 859
    .local v0, "isAirplaneMode":Z
    :goto_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    .end local v0    # "isAirplaneMode":Z
    :cond_1
    move v0, v3

    .line 857
    goto :goto_1

    .restart local v0    # "isAirplaneMode":Z
    :cond_2
    move v2, v3

    .line 859
    goto :goto_2
.end method

.method public isSIMEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 839
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v1

    .line 840
    .local v1, "isSIMEnabled":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 843
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "isAirplaneMode":Z
    :cond_0
    move v0, v3

    .line 840
    goto :goto_0

    .restart local v0    # "isAirplaneMode":Z
    :cond_1
    move v2, v3

    .line 843
    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 1162
    if-ne p2, v3, :cond_0

    .line 1163
    const-string v2, "namecard_string"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, "rtData":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1165
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "namecard_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 1166
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 1168
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "rtData":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 172
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    .line 173
    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 174
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setupActionListener()V

    .line 176
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 668
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    .line 669
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    if-eqz v1, :cond_0

    .line 670
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 671
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    if-eqz v1, :cond_1

    .line 674
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 675
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    .line 678
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    if-eqz v1, :cond_2

    .line 679
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 680
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    .line 682
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 683
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 685
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDelete()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/preference/ContactsPreferences;->setDelete(Z)V

    .line 687
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 688
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 690
    :cond_4
    return-void

    .line 685
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 464
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 465
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 468
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->adjustActionBarMenuText(Landroid/content/res/Configuration;)V

    .line 469
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 471
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setLayout()V

    .line 473
    :cond_2
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1153
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;

    move-result-object v0

    .line 1154
    .local v0, "menuAdapter":Lcom/android/contacts/widget/ContextMenuAdapter;
    if-eqz v0, :cond_0

    .line 1155
    invoke-interface {v0, p1}, Lcom/android/contacts/widget/ContextMenuAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 1157
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 180
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "SELECT_ALL_CONTACT_ON_LOAD"

    invoke-virtual {v2, v4, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->selectAllAtFirstLoad:Z

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "SHOW_CONFIRMATION_DIALOG"

    invoke-virtual {v2, v4, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "simcopycallfromAAB"

    invoke-virtual {v2, v4, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->simcopycallfromAAB:Z

    .line 187
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mIsMultiWindowSupported:Z

    .line 190
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mIsMultiWindowSupported:Z

    if-eqz v2, :cond_0

    .line 191
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 194
    :cond_0
    const v2, 0x7f110012

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setTheme(I)V

    .line 195
    if-eqz p1, :cond_1

    .line 196
    const-string v2, "actionCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    .line 197
    const-string v2, "mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    .line 201
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 202
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 203
    invoke-virtual {p0, v12}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setResult(I)V

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 270
    :goto_0
    return-void

    .line 209
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "CP_Start"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    .line 213
    sget v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    if-ne v2, v13, :cond_4

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "account_name"

    const-string v5, "primary.sim.account_name"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "account_type"

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 219
    .local v1, "checkUri":Landroid/net/Uri;
    if-eqz v0, :cond_4

    .line 220
    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 221
    .local v9, "cur":Landroid/database/Cursor;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 222
    new-instance v10, Landroid/content/Intent;

    const-string v2, "SIM_IMPORT_FINISHED"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_3

    .line 224
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_3
    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 235
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "checkUri":Landroid/net/Uri;
    .end local v9    # "cur":Landroid/database/Cursor;
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v11

    .line 236
    .local v11, "redirect":Landroid/content/Intent;
    if-eqz v11, :cond_6

    .line 238
    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 239
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    goto :goto_0

    .line 227
    .end local v11    # "redirect":Landroid/content/Intent;
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "checkUri":Landroid/net/Uri;
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_5
    if-eqz v9, :cond_4

    .line 228
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 243
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "checkUri":Landroid/net/Uri;
    .end local v9    # "cur":Landroid/database/Cursor;
    .restart local v11    # "redirect":Landroid/content/Intent;
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getAccountName()Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, "accountName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getAccountType()Ljava/lang/String;

    move-result-object v7

    .line 246
    .local v7, "accountType":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 247
    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;

    .line 250
    :cond_7
    const v2, 0x7f0401f0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setContentView(I)V

    .line 251
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->configureComponenets()V

    .line 252
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 254
    .local v8, "config":Landroid/content/res/Configuration;
    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 259
    .end local v8    # "config":Landroid/content/res/Configuration;
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 261
    invoke-virtual {p0, v13}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setFinishOnTouchOutside(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->configureListFragment()V

    .line 265
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 266
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setLayout()V

    .line 269
    :cond_9
    new-instance v2, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v2, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 415
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 417
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 418
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x15e

    if-ne v1, v2, :cond_0

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const v2, 0x7f0e02f4

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 424
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 694
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 696
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x136

    if-ne v1, v2, :cond_0

    .line 699
    sget v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 700
    new-instance v0, Landroid/content/Intent;

    const-string v1, "SIM_IMPORT_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 709
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 436
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 452
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 439
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onCancel()V

    .line 440
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    move v0, v1

    .line 441
    goto :goto_0

    .line 443
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v2, 0x15e

    if-ne v0, v2, :cond_0

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onDeleteResult()V

    :goto_1
    move v0, v1

    .line 448
    goto :goto_0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onCopyResult()V

    goto :goto_1

    .line 436
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_1
        0x7f0904f6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 506
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 507
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    if-eqz v1, :cond_0

    .line 508
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 509
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    if-eqz v1, :cond_1

    .line 512
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 513
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    .line 516
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    if-eqz v1, :cond_2

    .line 517
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 518
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    .line 521
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    if-eqz v1, :cond_3

    .line 522
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDelete()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/preference/ContactsPreferences;->setDelete(Z)V

    .line 526
    :cond_3
    return-void

    .line 524
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 429
    const-string v0, "SIMContactSelectionActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSearchMode(Z)V

    .line 818
    return v2

    :cond_0
    move v1, v2

    .line 817
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    if-eqz v0, :cond_0

    .line 825
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->hideSoftKeyboard()V

    .line 827
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 530
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 531
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->invalidateOptionsMenu()V

    .line 532
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 458
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 459
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    const-string v0, "mode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 461
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 714
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->onBackPressed()V

    .line 716
    const/4 v1, 0x0

    .line 718
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onUserLeaveHint()V
    .locals 1

    .prologue
    .line 662
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onUserLeaveHint()V

    .line 663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    .line 664
    return-void
.end method

.method public onWindowStatusChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 1
    .param p1, "windowMode"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "windowInfoChanged"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setLayout()V

    .line 479
    :cond_0
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 1176
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 1178
    :cond_0
    return-void
.end method

.method protected setButtonClickable(Z)V
    .locals 4
    .param p1, "clickable"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 797
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    .line 798
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    .line 799
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    if-eqz v3, :cond_1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 803
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 799
    goto :goto_0

    .line 800
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->saveMenuItem:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 801
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->saveMenuItem:Landroid/view/View;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    .line 806
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setOnSIMContactPickerActionListener(Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;)V

    .line 812
    return-void

    .line 810
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showAlertDialogAndFinish(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleId"    # I
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 1131
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$5;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$4;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1149
    return-void
.end method
