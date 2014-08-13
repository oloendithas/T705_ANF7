.class public Lcom/android/contacts/activities/ContactDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    }
.end annotation


# static fields
.field public static final INTENT_KEY_FINISH_ACTIVITY_ON_UP_SELECTED:Ljava/lang/String; = "finishActivityOnUpSelected"

.field public static final INTENT_KEY_REDIRECT_TO_PEOPLEACTVITY:Ljava/lang/String; = "fromPeopleActivity"

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field public static final REQUEST_CODE_JOIN_CONTACT:I = 0x65

.field private static final TAG:Ljava/lang/String; = "ContactDetailActivity"


# instance fields
.field private directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

.field private isUsingTwoPanel:Z

.field private mAlert:Landroid/app/AlertDialog;

.field private mAnimationAdapter:Lcom/sec/android/app/contacts/AnimationAdapter;

.field private mBezelListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

.field private mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private final mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mFinishActivityOnUpSelected:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsMultiWindowSupported:Z

.field private mIsStarButtonClicked:Z

.field private mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

.field private mLookupUri:Landroid/net/Uri;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mRedirectToPeopleActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mIsStarButtonClicked:Z

    .line 134
    iput-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    .line 137
    iput-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    .line 138
    iput-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    .line 617
    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$6;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    .line 745
    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$7;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 804
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/activities/ContactDetailActivity;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;
    .param p1, "x1"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/contacts/activities/ContactDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mIsStarButtonClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ContactDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->setupTitle()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mAlert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mAlert:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    return-object v0
.end method

.method private callEdit()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 468
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 470
    iput-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mAlert:Landroid/app/AlertDialog;

    .line 471
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->isValidDirectoryEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->isAutoUpdateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e03ed

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e03ea

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e03ee

    new-instance v3, Lcom/android/contacts/activities/ContactDetailActivity$5;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/ContactDetailActivity$5;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mAlert:Landroid/app/AlertDialog;

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mAlert:Landroid/app/AlertDialog;

    if-nez v1, :cond_3

    .line 507
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 509
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->doBoost(Landroid/content/Context;)V

    .line 511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 513
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    :cond_1
    const-string v1, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    invoke-virtual {p0, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 553
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 528
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 533
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 535
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->doBoost(Landroid/content/Context;)V

    .line 537
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 539
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 540
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    :cond_5
    const-string v1, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 548
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 549
    invoke-virtual {p0, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 312
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 313
    .local v3, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c020a

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 314
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 315
    .local v0, "dimAmount":F
    iget-boolean v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->isUsingTwoPanel:Z

    if-eqz v4, :cond_0

    .line 316
    const v4, 0x7f090130

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 318
    .local v1, "mainView":Landroid/widget/FrameLayout;
    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 336
    .end local v1    # "mainView":Landroid/widget/FrameLayout;
    :cond_0
    :goto_0
    return-void

    .line 322
    .restart local v1    # "mainView":Landroid/widget/FrameLayout;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 323
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f040089

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 326
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 327
    .local v2, "param":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x35

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 328
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 330
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 332
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 333
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setupTitle()V
    .locals 7

    .prologue
    const/16 v6, 0x4b

    .line 710
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {p0, v5}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 711
    .local v3, "displayName":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {p0, v5}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, "company":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 714
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v4, 0x1

    .line 719
    .local v4, "m_sendaccessbility":Z
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 720
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 721
    const/4 v4, 0x0

    .line 723
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 737
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 739
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 740
    .local v2, "decorView":Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 741
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 743
    .end local v2    # "decorView":Landroid/view/View;
    :cond_1
    return-void

    .line 726
    :cond_2
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v5, v6, :cond_3

    .line 727
    const/4 v5, 0x0

    invoke-interface {v3, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 729
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 731
    const/4 v4, 0x0

    .line 733
    :cond_4
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 734
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 929
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 934
    const/4 v0, -0x1

    const v1, 0x7f050004

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 935
    return-void
.end method

.method public getSvcUtils()Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 893
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 911
    :goto_0
    return-void

    .line 897
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 899
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 900
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 901
    invoke-virtual {p0}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 902
    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    .line 903
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 904
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 907
    :cond_1
    const-string v1, "ContactDetailActivity"

    const-string v2, "Uri is not valid."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 897
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 355
    instance-of v0, p1, Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v0, :cond_0

    .line 356
    check-cast p1, Lcom/android/contacts/detail/ContactLoaderFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 357
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    .line 358
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 360
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    const/16 v12, 0xc

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    iput-boolean v6, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mIsStarButtonClicked:Z

    .line 151
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->isUsingTwoPanel:Z

    .line 153
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mIsMultiWindowSupported:Z

    .line 156
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mIsMultiWindowSupported:Z

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 164
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 166
    if-eqz p1, :cond_1

    .line 167
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 176
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    new-instance v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 179
    .local v11, "uriContacts":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    invoke-virtual {v0, v11}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->findLinkedEntriesFromLookupURI(Landroid/net/Uri;)Z

    .line 183
    .end local v11    # "uriContacts":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "finishActivityOnUpSelected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mFinishActivityOnUpSelected:Z

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromPeopleActivity"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mRedirectToPeopleActivity:Z

    .line 191
    const v0, 0x7f040044

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 193
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 202
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mRedirectToPeopleActivity:Z

    if-eqz v0, :cond_4

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 204
    .local v9, "originalIntent":Landroid/content/Intent;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v9}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const/high16 v0, 0x26800000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    const-class v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v8, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    .line 292
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "originalIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 217
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->setLayout()V

    .line 220
    :cond_5
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v1, 0x7f090132

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;Z)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 225
    .local v7, "actionBar":Landroid/app/ActionBar;
    if-eqz v7, :cond_6

    .line 226
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 228
    invoke-virtual {v7, v12}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 229
    const-string v0, ""

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tutorial_mode"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$2;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 268
    .local v10, "t":Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 272
    .end local v10    # "t":Ljava/lang/Thread;
    :cond_7
    new-instance v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    .line 273
    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$3;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    goto :goto_0

    .line 234
    :cond_8
    const/16 v0, 0xe

    invoke-virtual {v7, v12, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 237
    const-string v0, ""

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 605
    packed-switch p1, :pswitch_data_0

    .line 614
    :goto_0
    return-object v0

    .line 607
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e027c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e027e

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/android/contacts/activities/JoinContactActivity;->MAX_JOINED_CONTACT_COUNT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 605
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 364
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 365
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    :goto_0
    return v2

    .line 366
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 367
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120023

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 342
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    .line 351
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 564
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v2, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->handleKeyDown(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v1

    .line 567
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPage()Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;

    move-result-object v0

    .line 568
    .local v0, "mCurrentFragment":Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;->handleKeyDown(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 586
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 587
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "action":Ljava/lang/String;
    const-string v1, "joinCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 589
    const-string v1, "joinFail"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    .line 593
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 594
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 596
    :cond_2
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    .line 598
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 599
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v8, 0x7f0e021f

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 815
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 888
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_1
    return v5

    .line 817
    :sswitch_0
    iget-boolean v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mFinishActivityOnUpSelected:Z

    if-eqz v4, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    goto :goto_1

    .line 821
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 822
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 823
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 824
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    goto :goto_1

    .line 848
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 849
    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 850
    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v1

    .line 851
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity;

    invoke-virtual {v4}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v7, "account_type"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "accountType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "airplane_mode_on"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_1

    move v3, v5

    .line 855
    .local v3, "isAirplaneModeOn":Z
    :goto_2
    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 857
    invoke-static {p0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v3    # "isAirplaneModeOn":Z
    :cond_1
    move v3, v6

    .line 853
    goto :goto_2

    .line 859
    .restart local v3    # "isAirplaneModeOn":Z
    :cond_2
    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 861
    invoke-static {p0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 863
    :cond_3
    if-ne v3, v5, :cond_4

    .line 864
    const v4, 0x7f0e03d7

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 867
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->callEdit()V

    goto/16 :goto_0

    .line 871
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v3    # "isAirplaneModeOn":Z
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->callEdit()V

    goto/16 :goto_0

    .line 874
    :cond_6
    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 877
    invoke-static {p0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 881
    :cond_7
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->callEdit()V

    goto/16 :goto_0

    .line 815
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f090533 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->unregisterListener(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V

    .line 922
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 923
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 14
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 373
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 463
    :cond_0
    :goto_0
    return v10

    .line 374
    :cond_1
    const v11, 0x7f090534

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 375
    .local v7, "starredMenuItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f04013b

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 377
    .local v6, "starredContainer":Landroid/view/ViewGroup;
    const v11, 0x7f090147

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 378
    .local v8, "starredView":Landroid/widget/CheckBox;
    const v11, 0x7f0902e8

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 379
    .local v5, "starButtonContainer":Landroid/view/View;
    iget-boolean v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mIsStarButtonClicked:Z

    if-eqz v11, :cond_2

    .line 380
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 381
    iput-boolean v9, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mIsStarButtonClicked:Z

    .line 384
    :cond_2
    new-instance v11, Lcom/android/contacts/activities/ContactDetailActivity$4;

    invoke-direct {v11, p0, v8}, Lcom/android/contacts/activities/ContactDetailActivity$4;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v11, :cond_3

    .line 401
    iget-object v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {v11, v8}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/CheckBox;)V

    .line 403
    invoke-virtual {v8}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 404
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e003c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 410
    :cond_3
    :goto_1
    iget-object v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 412
    :cond_4
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 420
    :cond_5
    :goto_2
    const v11, 0x7f090533

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 422
    .local v2, "editedMenuItem":Landroid/view/MenuItem;
    iget-object v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 423
    :cond_6
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 427
    :cond_7
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 430
    iget-object v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v11, :cond_8

    .line 431
    const/4 v0, 0x1

    .line 432
    .local v0, "SIM_ONE":I
    iget-object v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v3

    .line 433
    .local v3, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Entity;

    invoke-virtual {v9}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v9

    const-string v11, "account_type"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "accountType":Ljava/lang/String;
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    .line 435
    .local v4, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v9, "vnd.sec.contact.sim"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 436
    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v9

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 459
    .end local v0    # "SIM_ONE":I
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v3    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v4    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_8
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v11, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v9, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 460
    iget-object v9, p0, Lcom/android/contacts/activities/ContactDetailActivity;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    invoke-virtual {v9, p1}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->setOptionsMenu(Landroid/view/Menu;)V

    goto/16 :goto_0

    .line 406
    .end local v2    # "editedMenuItem":Landroid/view/MenuItem;
    :cond_9
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e0039

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 414
    :cond_a
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 415
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.feature.hovering_ui"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 416
    invoke-virtual {v8, v10}, Landroid/view/View;->setHoverPopupType(I)V

    goto/16 :goto_2

    .line 437
    .restart local v0    # "SIM_ONE":I
    .restart local v1    # "accountType":Ljava/lang/String;
    .restart local v2    # "editedMenuItem":Landroid/view/MenuItem;
    .restart local v3    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v4    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_b
    if-eqz v1, :cond_8

    const-string v9, "vnd.sec.contact.sim2"

    invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 438
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 439
    invoke-virtual {v4, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v9

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 441
    :cond_c
    invoke-virtual {v4, v10}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v9

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 446
    .end local v0    # "SIM_ONE":I
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v3    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v4    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_d
    iget-object v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 447
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    .line 448
    .restart local v4    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    if-eqz v4, :cond_8

    .line 449
    iget-object v11, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->areWritable()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v11

    if-eqz v11, :cond_e

    move v9, v10

    :cond_e
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->registerListener(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V

    .line 916
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 917
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 576
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 577
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 581
    :cond_0
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 582
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->setLayout()V

    .line 301
    :cond_0
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->setLayout()V

    .line 308
    :cond_0
    return-void
.end method
