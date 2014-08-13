.class public Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
.super Landroid/app/Activity;
.source "ContactEditorAccountsChangedActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;
.implements Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$Listener;


# static fields
.field private static final DUAL:Ljava/lang/String; = "4"

.field private static final RUIMG:Ljava/lang/String; = "3"

.field private static final SUBACTIVITY_ADD_NEW_ACCOUNT:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TWOG:Ljava/lang/String; = "1"

.field private static mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;


# instance fields
.field private isUsingTwoPanel:Z

.field private mAccountListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

.field private final mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mAddAccountClickListener:Landroid/view/View$OnClickListener;

.field private mChangeAccountDialogFragment:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

.field private mHasEmail:Z

.field private mHasPhoto:Z

.field private mHasRingtone:Z

.field private mIsICEGroup:Z

.field private mIsMultiWindowSupported:Z

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasPhoto:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasRingtone:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsICEGroup:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    .line 88
    new-instance v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 98
    new-instance v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/util/AccountsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
    .param p1, "x1"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object v0
.end method

.method private finishWithAccountInfo(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 551
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 552
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 553
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 554
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 555
    return-void
.end method

.method public static getEditorUtilInstance()Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1

    .prologue
    .line 505
    sget-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object v0
.end method

.method private saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 4
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    const/4 v3, 0x0

    .line 454
    const/4 v0, 0x1

    .line 469
    .local v0, "SIM_ONE":I
    const-string v1, "vnd.sec.contact.sim"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    const v1, 0x7f0e00a3

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 481
    :goto_0
    const/4 p1, 0x0

    .line 502
    :goto_1
    return-void

    .line 478
    :cond_0
    const v1, 0x7f0e00a2

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 497
    :cond_1
    const-string v1, "com.osp.app.signin"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 498
    sget-object v1, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 501
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finishWithAccountInfo(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_1
.end method

.method private setLayout()V
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 304
    const-string v0, "PHONE_WHITE"

    const-string v1, "DEFAULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 3
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 512
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_DisableMenuSimExport"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->checkShowAttentionAgain(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, p0, p1, p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;)V

    .line 528
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finishWithAccountInfo(Lcom/android/contacts/model/AccountWithDataSet;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 525
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 436
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 439
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    sget-object v1, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p2, p3}, Lcom/android/contacts/editor/ContactEditorUtils;->getCreatedAccount(ILandroid/content/Intent;)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v0

    .line 444
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    if-nez v0, :cond_2

    .line 445
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 446
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 449
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method

.method public onAttentionDialogDetached(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finishWithAccountInfo(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 547
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->isUsingTwoPanel:Z

    .line 110
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsMultiWindowSupported:Z

    .line 111
    iget-boolean v6, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsMultiWindowSupported:Z

    if-eqz v6, :cond_0

    .line 112
    new-instance v6, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v6, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v6

    sput-object v6, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "photo_uri"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasPhoto:Z

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "ringtone_uri"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasRingtone:Z

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "is_ice_group"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsICEGroup:Z

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "emailmode"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    .line 120
    new-array v1, v10, [Z

    fill-array-data v1, :array_0

    .line 132
    .local v1, "isSimActivated":[Z
    iget-boolean v6, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasPhoto:Z

    iget-boolean v7, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsICEGroup:Z

    or-int/2addr v6, v7

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasRingtone:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    if-eqz v6, :cond_8

    .line 133
    :cond_1
    iget-boolean v6, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    if-eqz v6, :cond_7

    .line 134
    new-array v3, v10, [Z

    fill-array-data v3, :array_1

    .line 135
    .local v3, "isTwoGSim":[Z
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 136
    aput-boolean v9, v3, v8

    .line 141
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 143
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "sim1Type":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "3"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "4"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 145
    :cond_3
    aput-boolean v9, v3, v8

    .line 154
    .end local v5    # "sim1Type":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v2

    .line 179
    .local v2, "isSimEmailFull":Z
    aget-boolean v6, v3, v8

    if-nez v6, :cond_5

    if-eqz v2, :cond_6

    .line 180
    :cond_5
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 204
    .end local v2    # "isSimEmailFull":Z
    .end local v3    # "isTwoGSim":[Z
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 205
    .local v4, "numAccounts":I
    new-instance v6, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-direct {v6}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;-><init>()V

    iput-object v6, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mChangeAccountDialogFragment:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    .line 206
    invoke-virtual {p0, v9}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 208
    if-gez v4, :cond_9

    .line 209
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Cannot have a negative number of accounts"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 182
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v4    # "numAccounts":I
    .restart local v2    # "isSimEmailFull":Z
    .restart local v3    # "isTwoGSim":[Z
    :cond_6
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    goto :goto_0

    .line 186
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v2    # "isSimEmailFull":Z
    .end local v3    # "isTwoGSim":[Z
    :cond_7
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .restart local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    goto :goto_0

    .line 200
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_8
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    goto :goto_0

    .line 211
    .restart local v4    # "numAccounts":I
    :cond_9
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 212
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setLayout()V

    .line 294
    :cond_a
    return-void

    .line 120
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 134
    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 533
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 535
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->isShowing(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->DismissDialog(Landroid/app/FragmentManager;)V

    .line 538
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->isShowing(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->dismissDialog(Landroid/app/FragmentManager;)V

    .line 541
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 317
    new-array v1, v11, [Z

    fill-array-data v1, :array_0

    .line 328
    .local v1, "isSimActivated":[Z
    iget-boolean v7, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasPhoto:Z

    iget-boolean v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsICEGroup:Z

    or-int/2addr v7, v8

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasRingtone:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    if-eqz v7, :cond_7

    .line 329
    :cond_0
    iget-boolean v7, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    if-eqz v7, :cond_6

    .line 330
    new-array v3, v11, [Z

    fill-array-data v3, :array_1

    .line 331
    .local v3, "isTwoGSim":[Z
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    const-string v8, "vnd.sec.contact.sim"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 332
    aput-boolean v9, v3, v10

    .line 337
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 339
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    const-string v8, "vnd.sec.contact.sim"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, "sim1Type":Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "3"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "4"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 341
    :cond_2
    aput-boolean v9, v3, v10

    .line 350
    .end local v6    # "sim1Type":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v2

    .line 381
    .local v2, "isSimEmailFull":Z
    aget-boolean v7, v3, v10

    if-nez v7, :cond_4

    if-eqz v2, :cond_5

    .line 382
    :cond_4
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 383
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    sget-object v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 414
    .end local v2    # "isSimEmailFull":Z
    .end local v3    # "isTwoGSim":[Z
    .local v4, "listFilter":Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 416
    .local v5, "numAccounts":I
    if-gez v5, :cond_8

    .line 417
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Cannot have a negative number of accounts"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 385
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v4    # "listFilter":Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    .end local v5    # "numAccounts":I
    .restart local v2    # "isSimEmailFull":Z
    .restart local v3    # "isTwoGSim":[Z
    :cond_5
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 386
    .restart local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    sget-object v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .restart local v4    # "listFilter":Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    goto :goto_0

    .line 390
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v2    # "isSimEmailFull":Z
    .end local v3    # "isTwoGSim":[Z
    .end local v4    # "listFilter":Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    :cond_6
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 391
    .restart local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    sget-object v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .restart local v4    # "listFilter":Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    goto :goto_0

    .line 409
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v4    # "listFilter":Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    :cond_7
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 410
    .restart local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    sget-object v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .restart local v4    # "listFilter":Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    goto :goto_0

    .line 420
    .restart local v5    # "numAccounts":I
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->isShowing(Landroid/app/FragmentManager;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 421
    if-le v5, v9, :cond_a

    .line 425
    iget-object v7, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mChangeAccountDialogFragment:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0e0296

    invoke-static {v7, v8, v4, v12, p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->show(Landroid/app/FragmentManager;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$Listener;)V

    .line 433
    :cond_9
    :goto_1
    return-void

    .line 430
    :cond_a
    iget-object v7, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mChangeAccountDialogFragment:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0e0295

    invoke-static {v7, v8, v4, v12, p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->show(Landroid/app/FragmentManager;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$Listener;)V

    goto :goto_1

    .line 317
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 330
    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setLayout()V

    .line 300
    :cond_0
    return-void
.end method
