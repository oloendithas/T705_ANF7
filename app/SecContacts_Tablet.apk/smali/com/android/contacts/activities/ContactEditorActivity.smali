.class public Lcom/android/contacts/activities/ContactEditorActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactEditorActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;
.implements Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# static fields
.field public static final ACTION_JOIN_COMPLETED:Ljava/lang/String; = "joinCompleted"

.field public static final ACTION_SAVE_COMPLETED:Ljava/lang/String; = "saveCompleted"

.field public static final INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED:Ljava/lang/String; = "finishActivityOnSaveCompleted"

.field public static final INTENT_KEY_REDIRECT_TO_PEOPLEACTVITY:Ljava/lang/String; = "fromPeopleActivity"

.field private static final TAG:Ljava/lang/String; = "ContactEditorActivity"

.field public static final TUTORIAL_MODE_ADD_A_CONTACT:I = 0x1

.field public static final TUTORIAL_MODE_FROM_DIALER:I = 0x2

.field public static final TUTORIAL_MODE_FROM_SPEEDDIAL:I = 0x3

.field public static final TUTORIAL_MODE_WRITING_BUDDY:I = 0x4

.field private static mSimInfoChanged:Z


# instance fields
.field private final RESTART_TUTORIAL_MODE:I

.field private mAction:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarTabHost:Landroid/view/View;

.field private mContactSaveRequested:Z

.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

.field private mFinishActivityOnSaveCompleted:Z

.field private mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

.field private final mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

.field private mIsMultiWindowSupported:Z

.field private mIsProfile:Z

.field public mIsRecreatedInstance:Z

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuNamecard:Landroid/view/MenuItem;

.field private mMenuSave:Landroid/view/MenuItem;

.field private mRedirectToPeopleActivity:Z

.field private mSaveButtonVisibility:Z

.field private mSaveLandLocation:[I

.field private mSavePotraitLocation:[I

.field private mSetStarred:Z

.field private mTabHost:Landroid/widget/TabHost;

.field private mTutorialMode:I

.field private mUsingTwoPane:Z

.field private mWBListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

.field private mhasNameCaredInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/activities/ContactEditorActivity;->mSimInfoChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 150
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 158
    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsRecreatedInstance:Z

    .line 165
    iput v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    .line 167
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->RESTART_TUTORIAL_MODE:I

    .line 172
    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mhasNameCaredInfo:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsProfile:Z

    .line 840
    new-instance v0, Lcom/android/contacts/activities/ContactEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorActivity$3;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/activities/ContactEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mhasNameCaredInfo:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveButtonVisibility:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/ContactEditorActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/activities/ContactEditorActivity;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;
    .param p1, "x1"    # [I

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/ContactEditorActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/contacts/activities/ContactEditorActivity;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;
    .param p1, "x1"    # [I

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ContactEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->hideInputMethod()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/ContactEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mRedirectToPeopleActivity:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/ContactEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/ContactEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSetStarred:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/contacts/activities/ContactEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mContactSaveRequested:Z

    return p1
.end method

.method private buildActionBar()V
    .locals 2

    .prologue
    .line 544
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    .line 546
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveButtonVisibility:Z

    goto :goto_0
.end method

.method private buildTabHost()V
    .locals 1

    .prologue
    .line 555
    const v0, 0x7f090177

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    .line 557
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 559
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 561
    :cond_0
    return-void
.end method

.method private calcuteSavePosition()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1170
    const v6, 0x7f0904db

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1171
    .local v3, "menuButton":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0024

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 1173
    .local v4, "popupRadius":I
    if-eqz v3, :cond_0

    .line 1174
    const v6, 0x7f090175

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1175
    .local v2, "mainView":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1176
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const-string v6, "window"

    invoke-virtual {p0, v6}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 1177
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1178
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1179
    .local v0, "actionBarWidth":I
    iget-object v6, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I

    if-nez v6, :cond_1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v8, :cond_1

    .line 1181
    new-array v6, v9, [I

    iput-object v6, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I

    .line 1182
    iget-object v6, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v0, v7

    sub-int/2addr v7, v4

    aput v7, v6, v10

    .line 1184
    iget-object v6, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, v4

    aput v7, v6, v8

    .line 1193
    .end local v0    # "actionBarWidth":I
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "mainView":Landroid/widget/LinearLayout;
    .end local v5    # "wm":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return-void

    .line 1185
    .restart local v0    # "actionBarWidth":I
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "mainView":Landroid/widget/LinearLayout;
    .restart local v5    # "wm":Landroid/view/WindowManager;
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I

    if-nez v6, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v9, :cond_0

    .line 1187
    new-array v6, v9, [I

    iput-object v6, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I

    .line 1188
    iget-object v6, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v0, v7

    sub-int/2addr v7, v4

    aput v7, v6, v10

    .line 1190
    iget-object v6, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, v4

    aput v7, v6, v8

    goto :goto_0
.end method

.method public static getSimInfoChanged()Z
    .locals 1

    .prologue
    .line 1350
    sget-boolean v0, Lcom/android/contacts/activities/ContactEditorActivity;->mSimInfoChanged:Z

    return v0
.end method

.method private hideInputMethod()V
    .locals 3

    .prologue
    .line 693
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 694
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 696
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 698
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 701
    :cond_0
    return-void
.end method

.method public static setSimInfoChanged(Z)V
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 1354
    const-string v0, "ContactEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimIconChanged flag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    sput-boolean p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSimInfoChanged:Z

    .line 1356
    return-void
.end method

.method private startAddaContactTutorial()V
    .locals 2

    .prologue
    .line 1077
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1078
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/contacts/activities/ContactEditorActivity$4;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/ContactEditorActivity$4;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1167
    return-void
.end method

.method private updateActionBar()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 585
    :goto_0
    return-void

    .line 569
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 584
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 572
    :cond_1
    const-string v0, "android.intent.action.INSERT"

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsProfile:Z

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0e01dd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 577
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0e002f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 580
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0e002e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateWindowLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 642
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 643
    .local v3, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c020a

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 644
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 645
    .local v0, "dimAmount":F
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 646
    const v4, 0x7f09011d

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 648
    .local v1, "mainView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 649
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x3f000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 687
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 689
    .end local v1    # "mainView":Landroid/view/View;
    :cond_0
    return-void

    .line 676
    .restart local v1    # "mainView":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 677
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 678
    .local v2, "param":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x35

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 679
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 681
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 683
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 684
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 685
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f040089

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 985
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->getAggregationSuggestionPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->getAggregationSuggestionPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 522
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 1397
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1398
    const/4 v0, 0x0

    const v1, 0x7f050004

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1399
    return-void
.end method

.method public getCoordinatesTutorialView()[I
    .locals 2

    .prologue
    .line 1069
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I

    .line 1072
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I

    goto :goto_0
.end method

.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public getTabHostChildCount()I
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getTextWritingListener()Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mWBListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-nez v0, :cond_0

    .line 1369
    new-instance v0, Lcom/android/contacts/activities/ContactEditorActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorActivity$7;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mWBListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mWBListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    return-object v0
.end method

.method public isContactSaveRequested()Z
    .locals 1

    .prologue
    .line 1360
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mContactSaveRequested:Z

    return v0
.end method

.method public isTutorialMode()I
    .locals 1

    .prologue
    .line 1364
    iget v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    return v0
.end method

.method public onAccountAdded(Ljava/lang/String;)V
    .locals 9
    .param p1, "displayLabel"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0c0051

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1016
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    if-nez v4, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1021
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1022
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 1023
    .local v1, "tabCount":I
    if-lez v1, :cond_0

    .line 1024
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1026
    .local v2, "text":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 1027
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1030
    .local v0, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1031
    const v4, 0x7f11008d

    invoke-virtual {v2, p0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1033
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1034
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 1037
    .end local v0    # "param":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1038
    .local v3, "widgetlinear":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c021c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .line 1039
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020942

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1040
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v3, v4, v7, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1042
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02036a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1321
    const/4 v6, -0x1

    if-eq p2, v6, :cond_1

    .line 1322
    const-string v6, "ContactEditorActivity"

    const-string v7, "onActivityResult : resultCode fail!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1327
    :pswitch_0
    const-string v6, "rawContactId"

    const-wide/16 v7, -0x1

    invoke-virtual {p3, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1328
    .local v2, "rawContactId":J
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1330
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "selectedGroupId"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1332
    .local v4, "selectedGroupIdArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v6, "selectedGroupTitle"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1333
    .local v5, "selectedGroupTitleArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "ContactEditorActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActivityResult : edit rawContactId ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v6, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1338
    :try_start_0
    iget-object v6, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v6, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/editor/RawContactEditorView;

    invoke-virtual {v6, v4, v5}, Lcom/android/contacts/editor/RawContactEditorView;->updateSelectedGroup(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1340
    :catch_0
    move-exception v1

    .line 1341
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1325
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 589
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 590
    instance-of v0, p1, Lcom/android/contacts/editor/ContactEditorFragment;

    if-eqz v0, :cond_0

    .line 591
    check-cast p1, Lcom/android/contacts/editor/ContactEditorFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    .line 593
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 477
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 479
    iget v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    if-eqz v0, :cond_0

    .line 482
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/contacts/activities/ContactEditorActivity$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/ContactEditorActivity$2;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 508
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 814
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnablePromptToExitAndSaveInEditing"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveButtonVisibility:Z

    if-nez v0, :cond_1

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertActionMenu()Z

    .line 823
    :goto_0
    return-void

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->doSaveAction()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 596
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 597
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I

    if-nez v0, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->calcuteSavePosition()V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->refreshAddaContactTutorialPopup()V

    .line 604
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    if-eqz v0, :cond_3

    .line 605
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I

    if-nez v0, :cond_2

    .line 606
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->calcuteSavePosition()V

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I

    if-eqz v0, :cond_3

    .line 608
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->refreshAddaContactTutorialPopup()V

    .line 611
    :cond_3
    iget v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 612
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->refreshWritingBuddyTutorialPopup()V

    .line 615
    :cond_4
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v3, :cond_5

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_9

    .line 618
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    if-eqz v0, :cond_6

    .line 619
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->clearAccountSwitcherInstance()V

    .line 621
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->getAggregationSuggestionPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 622
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->getAggregationSuggestionPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 625
    :cond_7
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->updateWindowLayout()V

    .line 626
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->updateActionBar()V

    .line 628
    iget v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/contacts/editor/LabeledEditorView;->getDialog()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/contacts/editor/LabeledEditorView;->getDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 629
    invoke-static {}, Lcom/android/contacts/editor/LabeledEditorView;->getSpinnerObj()Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 630
    invoke-static {}, Lcom/android/contacts/editor/LabeledEditorView;->getSpinnerObj()Landroid/widget/Spinner;

    move-result-object v0

    invoke-static {}, Lcom/android/contacts/editor/LabeledEditorView;->getSpinnerPos()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 632
    :cond_8
    invoke-static {}, Lcom/android/contacts/editor/LabeledEditorView;->getDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 639
    :cond_9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super/range {p0 .. p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 179
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, "action":Ljava/lang/String;
    const-string v18, "ContactEditorActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "action = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mAction:Ljava/lang/String;

    .line 183
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mUsingTwoPane:Z

    .line 184
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mIsMultiWindowSupported:Z

    .line 187
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsMultiWindowSupported:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 188
    new-instance v18, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 194
    :cond_0
    const-string v18, "finishActivityOnSaveCompleted"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    .line 197
    const-string v18, "setStarred"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mSetStarred:Z

    .line 198
    const-string v18, "is_namecard_contact"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mhasNameCaredInfo:Z

    .line 202
    const-string v18, "fromPeopleActivity"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mRedirectToPeopleActivity:Z

    .line 204
    const-string v18, "newLocalProfile"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mIsProfile:Z

    .line 209
    const-string v18, "joinCompleted"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 457
    :goto_0
    return-void

    .line 214
    :cond_1
    const-string v18, "saveCompleted"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x400

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->addFlags(I)V

    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/high16 v19, 0x800000

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x1000

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x2000

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 224
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 226
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v15

    .line 230
    .local v15, "mEditorUtils":Lcom/android/contacts/editor/ContactEditorUtils;
    invoke-virtual {v15}, Lcom/android/contacts/editor/ContactEditorUtils;->getDefaultAccount()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v9

    .line 231
    .local v9, "defaultAccount":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v18, "android.intent.action.INSERT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    if-eqz v9, :cond_9

    const-string v18, "vnd.sec.contact.sim"

    iget-object v0, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "vnd.sec.contact.sim2"

    iget-object v0, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "primary.sim.account_name"

    iget-object v0, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "primary.sim2.account_name"

    iget-object v0, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 239
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 241
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 242
    .local v10, "extras":Landroid/os/Bundle;
    if-eqz v10, :cond_5

    .line 243
    const-string v18, "email"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 244
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v6

    .line 247
    .local v6, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    .line 248
    .local v4, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v18, "vnd.sec.contact.phone"

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 250
    invoke-virtual {v15, v4}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 252
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 253
    .local v5, "account_intent":Landroid/content/Intent;
    const-string v18, "com.android.contacts.extra.ACCOUNT"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 254
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 262
    .end local v4    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v5    # "account_intent":Landroid/content/Intent;
    .end local v6    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v16

    .line 264
    .local v16, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v18

    if-nez v18, :cond_b

    .line 315
    const/4 v3, 0x1

    .line 364
    .local v3, "SIM_ONE":I
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 365
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 366
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v18

    if-nez v18, :cond_15

    .line 368
    :cond_6
    const-string v18, "ContactEditorActivity"

    const-string v19, "ACTION_INSERT : isSimDBReady or isSimEnabled is false!!!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_14

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 372
    const v18, 0x7f0e0220

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 394
    :cond_7
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v6

    .line 397
    .restart local v6    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    .line 398
    .restart local v4    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v18, "vnd.sec.contact.phone"

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 401
    invoke-virtual {v15, v4}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 403
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 404
    .restart local v5    # "account_intent":Landroid/content/Intent;
    const-string v18, "com.android.contacts.extra.ACCOUNT"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 405
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 415
    .end local v3    # "SIM_ONE":I
    .end local v4    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v5    # "account_intent":Landroid/content/Intent;
    .end local v6    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "tutorial_mode"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 416
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 418
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "is_speed_dial"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 419
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    .line 435
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 437
    .local v13, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v18, v0

    const/high16 v19, 0x100000

    or-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 438
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 440
    .end local v13    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    const v18, 0x7f04005e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v18

    const v19, 0x7f090178

    invoke-virtual/range {v18 .. v19}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/editor/ContactEditorFragment;->setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/editor/ContactEditorFragment;->setTutorialMode(I)V

    .line 446
    const-string v18, "android.intent.action.EDIT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 447
    .local v17, "uri":Landroid/net/Uri;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 449
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->buildActionBar()V

    .line 450
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->buildTabHost()V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/contacts/activities/ContactEditorActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/activities/ContactEditorActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/editor/ContactEditorFragment;->setNameCardListener(Lcom/android/contacts/editor/ContactEditorFragment$NamecardListener;)V

    goto/16 :goto_0

    .line 265
    .end local v17    # "uri":Landroid/net/Uri;
    .restart local v16    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_b
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 266
    .restart local v10    # "extras":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 267
    .local v8, "autoAddToICEGroup":Z
    const/4 v14, 0x0

    .line 269
    .local v14, "mCheckLocalProfile":Z
    if-eqz v10, :cond_c

    .line 270
    const-string v18, "is_ice_group"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    .line 271
    const-string v18, "newLocalProfile"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 274
    :cond_c
    if-nez v8, :cond_d

    if-eqz v14, :cond_f

    .line 275
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v6

    .line 276
    .restart local v6    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    .line 277
    .restart local v4    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v18, "vnd.sec.contact.phone"

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 278
    invoke-virtual {v15, v4}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 279
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 280
    .restart local v5    # "account_intent":Landroid/content/Intent;
    const-string v18, "com.android.contacts.extra.ACCOUNT"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_2

    .line 286
    .end local v4    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v5    # "account_intent":Landroid/content/Intent;
    .end local v6    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_f
    iget-object v0, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 287
    iget-object v0, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    iget-object v0, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_13

    .line 289
    :cond_10
    const-string v18, "ContactEditorActivity"

    const-string v19, "ACTION_INSERT : isSimDBReady or isSimEnabled is false!!!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const v18, 0x7f0e03fd

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 301
    :cond_11
    :goto_5
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v6

    .line 302
    .restart local v6    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    .line 303
    .restart local v4    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v18, "vnd.sec.contact.phone"

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 304
    invoke-virtual {v15, v4}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 305
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 306
    .restart local v5    # "account_intent":Landroid/content/Intent;
    const-string v18, "com.android.contacts.extra.ACCOUNT"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 307
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_2

    .line 294
    .end local v4    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v5    # "account_intent":Landroid/content/Intent;
    .end local v6    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_13
    const-string v18, "ContactEditorActivity"

    const-string v19, "ACTION_INSERT : isSimFull!!!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsProfile:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    .line 296
    const v18, 0x7f0e03fc

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 375
    .end local v8    # "autoAddToICEGroup":Z
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v14    # "mCheckLocalProfile":Z
    .restart local v3    # "SIM_ONE":I
    :cond_14
    const v18, 0x7f0e021f

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 379
    :cond_15
    const-string v18, "ContactEditorActivity"

    const-string v19, "ACTION_INSERT : isSimFull!!!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 383
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsProfile:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 384
    const v18, 0x7f0e00a3

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 387
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsProfile:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 388
    const v18, 0x7f0e00a2

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 421
    .end local v3    # "SIM_ONE":I
    .end local v16    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_17
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    goto/16 :goto_3

    .line 424
    :cond_18
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    goto/16 :goto_3

    .line 426
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "tutorial_mode_from_dialer"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 427
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    goto/16 :goto_3

    .line 428
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "writing_buddy_tutorial_mode"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 429
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    goto/16 :goto_3

    .line 431
    :cond_1b
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    goto/16 :goto_3

    .line 446
    :cond_1c
    const/16 v17, 0x0

    goto/16 :goto_4
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 805
    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 809
    :goto_0
    return-object v0

    .line 808
    :cond_0
    const-string v0, "ContactEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dialog requested, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0e025f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1197
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 1198
    .local v3, "inflater":Landroid/view/MenuInflater;
    const v9, 0x7f120010

    invoke-virtual {v3, v9, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1199
    const v9, 0x7f0904db

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuSave:Landroid/view/MenuItem;

    .line 1200
    const v9, 0x7f0904f6

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 1201
    const v9, 0x7f090509

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuNamecard:Landroid/view/MenuItem;

    .line 1203
    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v9, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1204
    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v10, 0x7f0e0062

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1205
    iget v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I

    if-nez v9, :cond_1

    .line 1206
    :cond_0
    iget v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_7

    .line 1207
    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v9}, Lcom/android/contacts/editor/ContactEditorFragment;->startWritingBuddyTutorial()V

    .line 1212
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getShowIconWithTextOnActionBar()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1214
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f040005

    invoke-virtual {v9, v10, v12, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1216
    .local v5, "saveContainer":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f040004

    invoke-virtual {v9, v10, v12, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1219
    .local v0, "cancelContainer":Landroid/view/ViewGroup;
    const v9, 0x7f090026

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1220
    .local v2, "iconText":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 1221
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(I)V

    .line 1224
    :cond_2
    new-instance v9, Lcom/android/contacts/activities/ContactEditorActivity$5;

    invoke-direct {v9, p0}, Lcom/android/contacts/activities/ContactEditorActivity$5;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    new-instance v9, Lcom/android/contacts/activities/ContactEditorActivity$6;

    invoke-direct {v9, p0}, Lcom/android/contacts/activities/ContactEditorActivity$6;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1237
    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1238
    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1241
    .end local v0    # "cancelContainer":Landroid/view/ViewGroup;
    .end local v2    # "iconText":Landroid/widget/TextView;
    .end local v5    # "saveContainer":Landroid/view/ViewGroup;
    :cond_3
    const-string v9, "android.intent.action.INSERT"

    iget-object v10, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isAvailableOCR(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 1242
    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v9}, Lcom/android/contacts/editor/ContactEditorFragment;->getSelectedAccount()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v6

    .line 1243
    .local v6, "selectedAccount":Lcom/android/contacts/model/AccountWithDataSet;
    const/4 v4, 0x0

    .line 1245
    .local v4, "isSimContact":Z
    if-nez v6, :cond_9

    .line 1246
    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/editor/ContactEditorUtils;->getDefaultAccount()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v1

    .line 1247
    .local v1, "defaultAccount":Lcom/android/contacts/model/AccountWithDataSet;
    if-eqz v1, :cond_5

    .line 1248
    const-string v9, "vnd.sec.contact.sim"

    iget-object v10, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "vnd.sec.contact.sim2"

    iget-object v10, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_4
    move v4, v8

    .line 1256
    .end local v1    # "defaultAccount":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_5
    :goto_1
    if-nez v4, :cond_6

    iget-boolean v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsProfile:Z

    if-eqz v9, :cond_c

    .line 1257
    :cond_6
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuNamecard:Landroid/view/MenuItem;

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1267
    .end local v4    # "isSimContact":Z
    .end local v6    # "selectedAccount":Lcom/android/contacts/model/AccountWithDataSet;
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v7

    return v7

    .line 1209
    :cond_7
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->startAddaContactTutorial()V

    goto/16 :goto_0

    .restart local v1    # "defaultAccount":Lcom/android/contacts/model/AccountWithDataSet;
    .restart local v4    # "isSimContact":Z
    .restart local v6    # "selectedAccount":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_8
    move v4, v7

    .line 1248
    goto :goto_1

    .line 1252
    .end local v1    # "defaultAccount":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_9
    const-string v9, "vnd.sec.contact.sim"

    iget-object v10, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "vnd.sec.contact.sim2"

    iget-object v10, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_a
    move v4, v8

    :goto_3
    goto :goto_1

    :cond_b
    move v4, v7

    goto :goto_3

    .line 1262
    :cond_c
    iget-object v7, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuNamecard:Landroid/view/MenuItem;

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1264
    .end local v4    # "isSimContact":Z
    .end local v6    # "selectedAccount":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_d
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuNamecard:Landroid/view/MenuItem;

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 527
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 528
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V

    .line 531
    :cond_0
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 827
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    .line 828
    .local v0, "filteredMetaState":I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    packed-switch p1, :pswitch_data_0

    .line 837
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 831
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->doSaveAction()V

    goto :goto_0

    .line 829
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 778
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 780
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    if-nez v1, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 786
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    goto :goto_0

    .line 787
    :cond_2
    const-string v1, "saveCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 789
    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mContactSaveRequested:Z

    .line 791
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v2, 0x1

    const-string v3, "saveMode"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "saveSucceeded"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;)V

    goto :goto_0

    .line 795
    :cond_3
    const-string v1, "joinCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mContactSaveRequested:Z

    .line 799
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->onJoinCompleted(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1286
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1316
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1288
    :sswitch_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnablePromptToExitAndSaveInEditing"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveButtonVisibility:Z

    if-nez v1, :cond_1

    .line 1292
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertActionMenu()Z

    goto :goto_0

    .line 1295
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->doSaveAction()V

    goto :goto_0

    .line 1300
    :sswitch_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertActionMenu()Z

    goto :goto_0

    .line 1303
    :sswitch_2
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->doSaveAction()V

    goto :goto_0

    .line 1306
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sidesync_source_connect"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1307
    const v1, 0x7f0e04e9

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1310
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->startPickFromNamecardActivity()V

    goto :goto_0

    .line 1286
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_2
        0x7f0904f6 -> :sswitch_1
        0x7f090509 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuSave:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuSave:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveButtonVisibility:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuNamecard:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isAvailableOCR(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuNamecard:Landroid/view/MenuItem;

    const v1, 0x7f0208b6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1278
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuNamecard:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1280
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    .line 705
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 706
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v7

    if-nez v7, :cond_1

    .line 772
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->updateWindowLayout()V

    .line 773
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->updateActionBar()V

    .line 774
    return-void

    .line 710
    :cond_1
    invoke-static {}, Lcom/android/contacts/activities/ContactEditorActivity;->getSimInfoChanged()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 712
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 713
    .local v3, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    .line 750
    .local v6, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v4

    .line 751
    .local v4, "iconRes":I
    invoke-virtual {v3}, Lcom/android/contacts/model/AccountTypeManager;->getSim1AccountWithDataSet()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v0

    .line 752
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    if-eqz v0, :cond_2

    .line 753
    invoke-virtual {v3, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 754
    .local v2, "accountType":Lcom/android/contacts/model/AccountType;
    invoke-virtual {v2, v4}, Lcom/android/contacts/model/AccountType;->setIconRes(I)V

    .line 755
    iget-object v7, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const-string v8, "vnd.sec.contact.sim"

    invoke-virtual {v7, v2, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->setAccountInfo(Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 758
    .end local v2    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_2
    const-string v7, "vnd.sec.contact.sim2"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v5

    .line 759
    .local v5, "iconRes2":I
    invoke-virtual {v3}, Lcom/android/contacts/model/AccountTypeManager;->getSim2AccountWithDataSet()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v1

    .line 760
    .local v1, "account2":Lcom/android/contacts/model/AccountWithDataSet;
    if-eqz v1, :cond_3

    .line 761
    invoke-virtual {v3, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 762
    .restart local v2    # "accountType":Lcom/android/contacts/model/AccountType;
    invoke-virtual {v2, v5}, Lcom/android/contacts/model/AccountType;->setIconRes(I)V

    .line 763
    iget-object v7, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const-string v8, "vnd.sec.contact.sim2"

    invoke-virtual {v7, v2, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->setAccountInfo(Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 767
    .end local v2    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    if-eqz v7, :cond_4

    .line 768
    iget-object v7, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->clearAccountSwitcherInstance()V

    .line 769
    :cond_4
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/contacts/activities/ContactEditorActivity;->setSimInfoChanged(Z)V

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 991
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 992
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    const-string v2, "android.intent.action.INSERT"

    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 993
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 994
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 996
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 1000
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1001
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->changeView(I)V

    .line 1002
    const-string v2, "ContactEditorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTabHost.getCurrentTab() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    :goto_0
    return-void

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 535
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 536
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->doSaveAction()V

    .line 538
    const/4 v1, 0x0

    .line 540
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->updateWindowLayout()V

    .line 464
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->updateActionBar()V

    .line 466
    :cond_0
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->updateWindowLayout()V

    .line 471
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->updateActionBar()V

    .line 473
    :cond_0
    return-void
.end method

.method public removeAllTab()V
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 1052
    :cond_0
    return-void
.end method

.method public setAddaContactTutorialSaveMode(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 1389
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->getAddaContactTutorialManager()Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    move-result-object v0

    .line 1390
    .local v0, "manager":Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;
    if-eqz v0, :cond_0

    .line 1391
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->setPhase(I)V

    .line 1393
    :cond_0
    return-void
.end method

.method public setSaveButtonVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1065
    iput-boolean p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveButtonVisibility:Z

    .line 1066
    return-void
.end method

.method public tabVisibity(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1056
    const v3, 0x7f090176

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1057
    .local v0, "tab_layout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_2

    .line 1058
    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 1058
    goto :goto_0

    .line 1059
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v3, :cond_0

    .line 1060
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
