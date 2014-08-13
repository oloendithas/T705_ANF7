.class public Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactMultiSelectionActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;
.implements Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;,
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarUpdateListener;,
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;,
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;
    }
.end annotation


# static fields
.field public static final ACTION_DELETE_COMPLETED:Ljava/lang/String; = "deleteCompleted"

.field private static final EXTRA_SELECTED_ITEMS:Ljava/lang/String; = "extraSelctedItem"

.field private static final KEY_ACTION_CODE:Ljava/lang/String; = "actionCode"

.field private static final KEY_IS_SEARCH_MODE:Ljava/lang/String; = "isSearchMode"

.field private static final KEY_QUERY_STRING:Ljava/lang/String; = "queryString"

.field private static final KEY_SELECTED_COUNT:Ljava/lang/String; = "selectedCount"

.field private static final TAG:Ljava/lang/String; = "ContactMultiSelectionActivity"


# instance fields
.field private fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

.field private mAction:Ljava/lang/String;

.field private mActionCode:I

.field private mContext:Landroid/content/Context;

.field private mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mGroupsToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAutoAdd:Z

.field private mIsDoneButtonEnable:Z

.field private mIsMultiWindowSupported:Z

.field private mIsSearchMode:Z

.field protected mListFragment:Landroid/app/Fragment;

.field protected mListener:Lcom/sec/android/app/contacts/list/OnActionBarClickListener;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMode:I

.field private mModifiedMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mOrientation:I

.field private mQueryString:Ljava/lang/String;

.field private mSelectDeselectListener:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;

.field private mSelectedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemCount:I

.field private mTotalItemCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    .line 156
    iput-object p0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mContext:Landroid/content/Context;

    .line 157
    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->updateDoneButtonState(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedItemCount:I

    return p1
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mTotalItemCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->updateActionBarTitleInTwoPaneMode()V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsSearchMode:Z

    return p1
.end method

.method static synthetic access$902(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method private adjustActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 231
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 232
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040081

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    .line 237
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0901ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0901ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 239
    .local v1, "mLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c020b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 241
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 243
    .end local v1    # "mLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method private adjustActionBarMenuText(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 485
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mOrientation:I

    .line 486
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->invalidateOptionsMenu()V

    .line 487
    return-void
.end method

.method private finishWithHidingIME()V
    .locals 3

    .prologue
    .line 638
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 639
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 640
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finish()V

    .line 641
    return-void
.end method

.method private getActivityTitleRes()I
    .locals 3

    .prologue
    .line 275
    const/4 v0, -0x1

    .line 279
    .local v0, "stringRes":I
    const-string v1, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 282
    const v0, 0x7f0e0255

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 285
    const v0, 0x7f0e0256

    goto :goto_0

    .line 288
    :cond_2
    const-string v1, "com.sec.android.app.contacts.action.GROUP_DELETE"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 289
    const v0, 0x7f0e02f4

    goto :goto_0

    .line 290
    :cond_3
    const-string v1, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 291
    const v0, 0x7f0e024f

    goto :goto_0

    .line 293
    :cond_4
    const v0, 0x7f0e009c

    goto :goto_0
.end method

.method private getIntentInfo(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    .line 301
    const-string v0, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    const-string v0, "EditMode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    .line 303
    const-string v0, "GroupInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 306
    const-string v0, "AutoAdd"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsAutoAdd:Z

    .line 309
    const-string v0, "ModifiedIds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    .line 312
    const-string v0, "ExceptedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const-string v0, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "SelectedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedAccounts:Ljava/util/List;

    goto :goto_0
.end method

.method private setWindowBackground(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 461
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 462
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c020a

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 463
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 464
    .local v0, "dimAmount":F
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x3f000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 469
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 470
    const/16 v3, 0x35

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 473
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 475
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private updateActionBarTitleInTwoPaneMode()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 608
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 611
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 612
    iget v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedItemCount:I

    if-ltz v3, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e03e3

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedItemCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, "title":Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/contacts/list/SelectionMenu;

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v7, 0x7f0901ee

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-direct {v1, v6, v3, p0}, Lcom/sec/android/app/contacts/list/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;)V

    .line 618
    .local v1, "mSelectionMenu":Lcom/sec/android/app/contacts/list/SelectionMenu;
    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/list/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 620
    iget v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedItemCount:I

    iget v6, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mTotalItemCount:I

    if-ge v3, v6, :cond_1

    move v3, v4

    :goto_0
    iget v4, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedItemCount:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/contacts/list/SelectionMenu;->updateSelectAllMode(ZI)V

    .line 621
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 623
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 625
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/list/SelectionMenu;->clearPopupList()V

    .line 630
    .end local v1    # "mSelectionMenu":Lcom/sec/android/app/contacts/list/SelectionMenu;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v1    # "mSelectionMenu":Lcom/sec/android/app/contacts/list/SelectionMenu;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 620
    goto :goto_0
.end method

.method private updateDoneButtonState(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsDoneButtonEnable:Z

    .line 634
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->invalidateOptionsMenu()V

    .line 635
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    const-string v1, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    new-instance v1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectDeselectListener:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    iget v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setMode(I)V

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsAutoAdd:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setAutoAdd(Z)V

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    if-nez v1, :cond_0

    .line 336
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setModifiedMemberIds(Ljava/util/List;)V

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setExceptedAccounts(Ljava/util/List;)V

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setDirectorySearchMode(I)V

    .line 348
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSearchMode(Z)V

    .line 349
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 350
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    .line 368
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090196

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 370
    return-void

    .line 352
    :cond_2
    const-string v1, "com.sec.android.app.contacts.action.GROUP_DELETE"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 353
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;-><init>()V

    .line 355
    .local v0, "fragment":Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 356
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    .line 358
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->setGroupsToDelete(Ljava/util/ArrayList;)V

    .line 359
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0

    .line 361
    .end local v0    # "fragment":Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
    :cond_4
    const-string v1, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    new-instance v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;-><init>()V

    .line 363
    .local v0, "fragment":Lcom/sec/android/app/contacts/group/AccountPickerFragment;
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->setSelectedAccounts(Ljava/util/List;)V

    .line 364
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    .line 365
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectDeselectListener:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 161
    instance-of v0, p1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    if-eqz v0, :cond_1

    .line 162
    check-cast p1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    .line 168
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setupActionListener()V

    .line 169
    return-void

    .line 163
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v0, :cond_2

    .line 164
    check-cast p1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0

    .line 165
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_2
    instance-of v0, p1, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 449
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 451
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 454
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->adjustActionBarMenuText(Landroid/content/res/Configuration;)V

    .line 455
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    .line 173
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsMultiWindowSupported:Z

    .line 178
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsMultiWindowSupported:Z

    if-eqz v2, :cond_0

    .line 179
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 190
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setFinishOnTouchOutside(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 194
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getIntentInfo(Landroid/content/Intent;)V

    .line 196
    if-eqz p1, :cond_2

    .line 197
    const-string v2, "actionCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    .line 198
    const-string v2, "selectedCount"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedItemCount:I

    .line 199
    const-string v2, "extraSelctedItem"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    .line 200
    const-string v2, "isSearchMode"

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsSearchMode:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsSearchMode:Z

    .line 201
    const-string v2, "queryString"

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mQueryString:Ljava/lang/String;

    .line 202
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    if-nez v2, :cond_1

    .line 203
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    .line 205
    :cond_1
    const-string v2, "KEY_MODIFIED_IDS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    .line 208
    :cond_2
    const v2, 0x7f040153

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setContentView(I)V

    .line 209
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->configureListFragment()V

    .line 210
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->adjustActionBar()V

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 220
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 224
    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->adjustActionBarMenuText(Landroid/content/res/Configuration;)V

    .line 226
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 374
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 376
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 377
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 379
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 426
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    .line 427
    .local v0, "filteredMetaState":I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    packed-switch p1, :pswitch_data_0

    .line 438
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 430
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/sec/android/app/contacts/list/OnActionBarClickListener;

    invoke-interface {v1}, Lcom/sec/android/app/contacts/list/OnActionBarClickListener;->onDoneClicked()V

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method public onModeChanged(Z)V
    .locals 2
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 653
    if-nez p1, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 655
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 657
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    if-nez v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "action":Ljava/lang/String;
    const-string v1, "deleteCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->onDeleteCompleted()V

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 396
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 421
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 398
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finishWithHidingIME()V

    move v0, v1

    .line 399
    goto :goto_0

    .line 403
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/OnActionBarClickListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnActionBarClickListener;->onDoneClicked()V

    :cond_0
    move v0, v1

    .line 406
    goto :goto_0

    .line 410
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/OnActionBarClickListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnActionBarClickListener;->onRevertAction()V

    .line 412
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finishWithHidingIME()V

    :cond_1
    move v0, v1

    .line 414
    goto :goto_0

    .line 396
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_1
        0x7f0904f6 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPopupItemClick(I)Z
    .locals 2
    .param p1, "itemId"    # I

    .prologue
    const/4 v1, 0x0

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectDeselectListener:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;

    if-nez v0, :cond_1

    .line 604
    :cond_0
    :goto_0
    return v1

    .line 599
    :cond_1
    const v0, 0x7f09001e

    if-ne p1, v0, :cond_2

    .line 600
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectDeselectListener:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;->onSelectAllClicked()V

    goto :goto_0

    .line 601
    :cond_2
    const v0, 0x7f09001f

    if-ne p1, v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectDeselectListener:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;->onDeSelectAllClicked()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 384
    const v2, 0x7f0904db

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 385
    .local v1, "doneMenuItem":Landroid/view/MenuItem;
    const v2, 0x7f0904f6

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 387
    .local v0, "cancelMenuItem":Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsDoneButtonEnable:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 389
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 266
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    const-string v0, "selectedCount"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedItemCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string v0, "extraSelctedItem"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 269
    const-string v0, "isSearchMode"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 270
    const-string v0, "queryString"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "KEY_MODIFIED_IDS"

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 272
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 664
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 2
    .param p1, "isNormalWindow"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 645
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 647
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 649
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_0
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0
    .param p1, "zoneInfo"    # I

    .prologue
    .line 660
    return-void
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarUpdateListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->setActionBarUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;)V

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->setAccountPickerActionListener(Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;)V

    goto :goto_0
.end method
