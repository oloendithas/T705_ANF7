.class public Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "InteractionGroupSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LIMITED_EMAIL_COUNT:I = 0xfa

.field private static final EASY_MODE_SWITCH_INTENT:Ljava/lang/String; = "com.android.launcher.action.EASY_MODE_CHANGE"

.field private static final EXTRA_VALUE_INVALID:I = 0x0

.field private static final GROUPS_PICKER_TAG:Ljava/lang/String; = "groupsPickerTag"

.field private static final KEY_ACTION_CODE:Ljava/lang/String; = "actionCode"

.field private static final KEY_CURRENT_COUNT:Ljava/lang/String; = "existingRecipientCount"

.field private static final KEY_DONE_BUTTON_CLICKABLE:Ljava/lang/String; = "doneButtonClickable"

.field private static final KEY_EMERGENCY_CONTACT_POSITION_IN_DIALER:Ljava/lang/String; = "emergencyContactPositionInDialer"

.field private static final KEY_LIMITED_COUNT:Ljava/lang/String; = "maxRecipientCount"

.field private static final KEY_SELECTED_COUNT:Ljava/lang/String; = "mSelectedCount"

.field private static final KEY_SEND_MESSAGE:Ljava/lang/String; = "FromMMS"

.field private static final MULTIPLE_VCARD_WARNING:I = 0x64

.field private static final TAG:Ljava/lang/String; = "InteractionGroupSelectionActivity"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field protected mActionCode:I

.field private mActionbartitle:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentCount:I

.field private mDoneButtonClickable:Z

.field private mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mEmergencyContactPositionInDialer:I

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

.field private mHandler:Landroid/os/Handler;

.field protected mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

.field protected mInteractionLayout:Landroid/view/View;

.field private mIsAllSelected:Z

.field private mIsFromEmergencyMessage:Z

.field private mIsGroupConference:Z

.field private mIsMultiWindowSupported:Z

.field private mIsRecreatedInstance:Z

.field private mIsRightAlignmentNeeded:Z

.field private mIsSendingMSG:Z

.field private mIsTablet:Z

.field private mLimitedCount:I

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMissingPhoneLock:Z

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

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field protected mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSelectButton:Landroid/widget/Button;

.field private mSelectedCount:I

.field private mSelectedCountInSearchMode:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    .line 149
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsAllSelected:Z

    .line 173
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsGroupConference:Z

    .line 180
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    .line 195
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mHandler:Landroid/os/Handler;

    .line 1330
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    .prologue
    .line 110
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->onQueryCompleted(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    .prologue
    .line 110
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCountInSearchMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCountInSearchMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsAllSelected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsAllSelected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    .prologue
    .line 110
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mLimitedCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->actionbarTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private actionbarTitle(I)Ljava/lang/String;
    .locals 9
    .param p1, "selectedCount"    # I

    .prologue
    .line 444
    const/4 v2, 0x0

    .line 447
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v4

    const/16 v5, 0x122

    if-ne v4, v5, :cond_0

    .line 448
    const v4, 0x7f0e0028

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 488
    .end local v2    # "title":Ljava/lang/String;
    .local v3, "title":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 452
    .end local v3    # "title":Ljava/lang/String;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsTablet:Z

    if-eqz v4, :cond_1

    .line 453
    if-lez p1, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e03e3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 456
    .end local v2    # "title":Ljava/lang/String;
    .restart local v3    # "title":Ljava/lang/String;
    goto :goto_0

    .line 460
    .end local v3    # "title":Ljava/lang/String;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v4, :cond_7

    .line 461
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "groupTitle":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "systemId":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "PersonalGroup"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 465
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 481
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 482
    const-string v2, ""

    .end local v0    # "groupTitle":Ljava/lang/String;
    .end local v1    # "systemId":Ljava/lang/String;
    :cond_2
    :goto_2
    move-object v3, v2

    .line 488
    .end local v2    # "title":Ljava/lang/String;
    .restart local v3    # "title":Ljava/lang/String;
    goto :goto_0

    .line 466
    .end local v3    # "title":Ljava/lang/String;
    .restart local v0    # "groupTitle":Ljava/lang/String;
    .restart local v1    # "systemId":Ljava/lang/String;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_3
    const-string v4, "ICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 467
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 468
    const v4, 0x7f0e0262

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 471
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 472
    const v4, 0x7f0e0015

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 474
    :cond_5
    const v4, 0x7f0e0261

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 478
    :cond_6
    move-object v2, v0

    goto :goto_1

    .line 485
    .end local v0    # "groupTitle":Ljava/lang/String;
    .end local v1    # "systemId":Ljava/lang/String;
    :cond_7
    const-string v2, ""

    goto :goto_2
.end method

.method private getIntentInfo(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 788
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mAction:Ljava/lang/String;

    .line 789
    const-string v0, "InteractionGroupSelectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mACtion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getRecipientLimit()I

    move-result v8

    .line 794
    .local v8, "limitedMmsCount":I
    const-string v0, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 795
    const-string v0, "SelectMode"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMode:I

    .line 796
    const-string v0, "GroupInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 797
    const-string v0, "ModifiedIds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    .line 798
    const-string v0, "ExceptedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    .line 799
    const-string v0, "actionCode"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    .line 800
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1

    .line 801
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mLimitedCount:I

    .line 804
    :goto_0
    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mCurrentCount:I

    .line 805
    const-string v0, "isGroupConference"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsGroupConference:Z

    .line 817
    :cond_0
    :goto_1
    return-void

    .line 803
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mLimitedCount:I

    goto :goto_0

    .line 807
    :cond_2
    const-string v0, "intent.action.INTERACTION_ICE"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMode:I

    .line 809
    const/16 v0, 0x122

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    .line 810
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    const-string v1, "vnd.sec.contact.agg.account_type"

    const-string v2, "vnd.sec.contact.agg.account_name"

    const-wide/16 v4, 0x0

    const-string v6, "ICE"

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 812
    const-string v0, "isFromEmergencyMessage"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    .line 813
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "emergency_contact_postion"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mEmergencyContactPositionInDialer:I

    .line 814
    const-string v0, "maxRecipientCount"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mLimitedCount:I

    .line 815
    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mCurrentCount:I

    goto :goto_1
.end method

.method private handleHomeKeyForVideoCall(Z)V
    .locals 3
    .param p1, "disable"    # Z

    .prologue
    const/4 v2, 0x3

    .line 718
    const/4 v0, 0x0

    .line 720
    .local v0, "state":I
    if-eqz p1, :cond_1

    .line 721
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->isVideoCallActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->requestSystemKeyEvent(IZ)Z

    .line 723
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 724
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->requestSystemKeyEvent(IZ)Z

    .line 728
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private insertDefaultEmergencyContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "phoneDataId"    # Ljava/lang/String;

    .prologue
    .line 1213
    const-string v6, "P"

    const-string v7, ","

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    const-string v8, ";"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1215
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1216
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "name"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v6, "number"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string v6, "phone_data_id"

    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-eqz v6, :cond_1

    .line 1222
    const-string v6, "content://com.android.contacts/emergency/message"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1227
    .local v2, "insertUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 1229
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1232
    .local v0, "id":J
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-nez v6, :cond_0

    .line 1233
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mEmergencyContactPositionInDialer:I

    packed-switch v6, :pswitch_data_0

    .line 1251
    :cond_0
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1252
    .local v3, "resultIntent":Landroid/content/Intent;
    const-string v6, "result_id"

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1253
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 1254
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->finish()V

    .line 1255
    return-void

    .line 1224
    .end local v0    # "id":J
    .end local v2    # "insertUri":Landroid/net/Uri;
    .end local v3    # "resultIntent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v6, "content://com.android.contacts/emergency/personal"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "insertUri":Landroid/net/Uri;
    goto :goto_0

    .line 1235
    .restart local v0    # "id":J
    .restart local v4    # "uri":Landroid/net/Uri;
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "emergency_contact_position_zero"

    invoke-static {v6, v7, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_1

    .line 1238
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "emergency_contact_position_one"

    invoke-static {v6, v7, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_1

    .line 1241
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "emergency_contact_position_two"

    invoke-static {v6, v7, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_1

    .line 1244
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "emergency_contact_position_three"

    invoke-static {v6, v7, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_1

    .line 1233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isVideoCallActive()Z
    .locals 6

    .prologue
    .line 733
    const/4 v1, 0x0

    .line 735
    .local v1, "mIsVideoCallActive":Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 736
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 737
    const-string v3, "InteractionGroupSelectionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isVideoCallActive() :  phone.isIdle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "phone.getActivePhoneType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 745
    .end local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string v3, "InteractionGroupSelectionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVideoCallActive..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return v1

    .line 738
    .restart local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 741
    .end local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "InteractionGroupSelectionActivity"

    const-string v4, "Connection Failed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1259
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1260
    .local v1, "keyStrings":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1261
    .local v0, "dataStrings":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1265
    .local v2, "resultString":Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_0

    .line 1266
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    aget-object v5, v0, v7

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1267
    .local v3, "shareUri":Landroid/net/Uri;
    aget-object v4, v1, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1302
    .end local v3    # "shareUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1272
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v4

    const/16 v5, 0x21

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_2

    .line 1274
    :cond_1
    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1276
    :cond_2
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    const/16 v5, 0x125

    if-ne v4, v5, :cond_3

    .line 1277
    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1281
    :cond_3
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    const/16 v5, 0x123

    if-ne v4, v5, :cond_4

    .line 1282
    aget-object v4, v1, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1285
    :cond_4
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1286
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1296
    :cond_5
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private onQueryCompleted(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 1369
    const/4 v1, 0x0

    .line 1371
    .local v1, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1372
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1374
    :cond_0
    if-eqz p1, :cond_2

    .line 1375
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1376
    if-nez v1, :cond_3

    .line 1377
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1383
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1387
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1388
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 1390
    return-void

    .line 1380
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "request"    # Z

    .prologue
    .line 750
    const/4 v2, 0x0

    .line 752
    .local v2, "result":Z
    :try_start_0
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 753
    .local v1, "mWindowManager":Landroid/view/IWindowManager;
    if-eqz v1, :cond_0

    .line 754
    if-eqz p2, :cond_1

    .line 755
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, p1, v3, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v2

    .line 767
    .end local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return v2

    .line 757
    .restart local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, p1, v3, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 764
    .end local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private returnSoureIdPickerResult(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1313
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1314
    .local v4, "selectedContactId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1315
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1316
    .local v1, "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, ";"

    invoke-direct {p0, v1, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1317
    if-nez v4, :cond_1

    .line 1318
    move-object v4, v3

    goto :goto_0

    .line 1320
    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1325
    .end local v1    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;

    const/4 v5, 0x0

    invoke-direct {v2, p0, p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;)V

    .line 1326
    .local v2, "queryTask":Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1327
    return-void
.end method

.method private updateFragment()V
    .locals 4

    .prologue
    .line 771
    const-string v2, "InteractionGroupSelectionActivity"

    const-string v3, "updateFragment"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 774
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 776
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 777
    :cond_0
    const-string v2, "InteractionGroupSelectionActivity"

    const-string v3, "mInteractionGroupMemberPickerFragment null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_0
    return-void

    .line 780
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->configureListFragment()V

    .line 781
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSearchQuery()V

    .line 783
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public actionbarsetup()Landroid/app/ActionBar;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 362
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 363
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 364
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 367
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    .local v1, "mItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040003

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 370
    .local v2, "mSelectActionBarView":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 371
    const v4, 0x7f090024

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectButton:Landroid/widget/Button;

    .line 372
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectButton:Landroid/widget/Button;

    const v5, 0x7f0e03e3

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 374
    new-instance v3, Landroid/widget/ListPopupWindow;

    invoke-direct {v3, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 375
    .local v3, "mSelectAllPopupMenu":Landroid/widget/ListPopupWindow;
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f0401b1

    invoke-direct {v4, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 376
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 377
    invoke-virtual {v3, v9}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 378
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setDoneButtonClickable(Z)V

    .line 380
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectButton:Landroid/widget/Button;

    new-instance v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Landroid/view/View;Landroid/widget/ListPopupWindow;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    new-instance v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;

    invoke-direct {v4, p0, v3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Landroid/widget/ListPopupWindow;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 440
    return-object v0
.end method

.method public configureListFragment()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 495
    const-string v1, "InteractionGroupSelectionActivity"

    const-string v2, "configureListFragment"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMode:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setMode(I)V

    .line 497
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 498
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setModifiedMemberIds(Ljava/util/List;)V

    .line 499
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setExceptedAccounts(Ljava/util/List;)V

    .line 500
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDirectorySearchMode(I)V

    .line 501
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mLimitedCount:I

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mCurrentCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setMMSinformation(III)V

    .line 503
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSendingMSG(Z)V

    .line 505
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setFromEmergencyMessage(Z)V

    .line 506
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "toolitem"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 507
    .local v0, "toolItem":I
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x122

    if-ne v1, v2, :cond_1

    .line 508
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setMultiSelectEnabled(Z)V

    .line 521
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setMultiSelectEnabled(Z)V

    goto :goto_0

    .line 514
    :cond_1
    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    .line 516
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setMultiSelectEnabled(Z)V

    goto :goto_0

    .line 519
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setMultiSelectEnabled(Z)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 707
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 714
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 709
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 710
    .local v0, "action":I
    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_0

    .line 215
    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    if-eqz v0, :cond_0

    .line 216
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setupActionListener()V

    .line 219
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/16 v13, 0x122

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 238
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsMultiWindowSupported:Z

    .line 243
    iget-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsMultiWindowSupported:Z

    if-eqz v8, :cond_0

    .line 244
    new-instance v8, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v8, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 262
    :cond_0
    const-string v8, "statusbar"

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 264
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v11, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v8, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 265
    const-string v8, "lock"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "missing_phone_lock"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMissingPhoneLock:Z

    .line 268
    :cond_1
    if-eqz p1, :cond_9

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsRecreatedInstance:Z

    .line 269
    iget-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsRecreatedInstance:Z

    if-eqz v8, :cond_a

    .line 270
    const-string v8, "actionCode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    .line 271
    const-string v8, "doneButtonClickable"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    .line 272
    const-string v8, "mSelectedCount"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I

    .line 274
    const-string v8, "FromMMS"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    .line 280
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "mIsRightAlignmentNeeded"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsRightAlignmentNeeded:Z

    .line 281
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsTablet:Z

    .line 282
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 283
    .local v4, "intent":Landroid/content/Intent;
    new-instance v8, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v8, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 284
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {v8, v4}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 285
    iget-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsTablet:Z

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v9, :cond_3

    iget-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsRightAlignmentNeeded:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v8

    if-nez v8, :cond_3

    .line 286
    :cond_2
    const v8, 0x7f110036

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setTheme(I)V

    .line 288
    :cond_3
    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntentInfo(Landroid/content/Intent;)V

    .line 291
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v8

    if-ne v8, v13, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-nez v8, :cond_5

    .line 292
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v11, 0x80000

    invoke-virtual {v8, v11}, Landroid/view/Window;->addFlags(I)V

    .line 295
    :try_start_0
    const-class v8, Landroid/view/WindowManager$LayoutParams;

    const-string v11, "PRIVATE_FLAG_FORCE_SHOW_WHEN_LOCKED"

    invoke-virtual {v8, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 296
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_4

    .line 297
    invoke-virtual {v1, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 298
    .local v6, "param":I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 299
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    xor-int/lit8 v11, v6, -0x1

    and-int/2addr v8, v11

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 310
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "param":I
    :cond_4
    :goto_2
    new-instance v8, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$3;

    invoke-direct {v8, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$3;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 320
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v8

    if-ne v8, v13, :cond_6

    .line 326
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 329
    :cond_6
    const v8, 0x7f04006f

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setContentView(I)V

    .line 331
    iget-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsTablet:Z

    if-eqz v8, :cond_7

    .line 332
    const v8, 0x7f0901a2

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionLayout:Landroid/view/View;

    .line 333
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setLayoutAttribute(IZ)V

    .line 337
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v10, 0x400

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    .line 338
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v10, 0x800000

    invoke-virtual {v8, v10}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v10, 0x3000

    invoke-virtual {v8, v10}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 340
    invoke-virtual {p0, v9}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setFinishOnTouchOutside(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->actionbarsetup()Landroid/app/ActionBar;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    .line 344
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 345
    .local v3, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 347
    .local v7, "transaction":Landroid/app/FragmentTransaction;
    const-string v8, "groupsPickerTag"

    invoke-virtual {v3, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .line 349
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    if-nez v8, :cond_8

    .line 350
    new-instance v8, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-direct {v8}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .line 351
    const v8, 0x7f090196

    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    const-string v10, "groupsPickerTag"

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 354
    :cond_8
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->configureListFragment()V

    .line 357
    return-void

    .end local v3    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "transaction":Landroid/app/FragmentTransaction;
    :cond_9
    move v8, v10

    .line 268
    goto/16 :goto_0

    .line 278
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "FromMMS"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    goto/16 :goto_1

    .line 302
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_2

    .line 304
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_2

    .line 306
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 526
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 527
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 528
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 529
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 530
    const v1, 0x7f0904f6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 532
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 679
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 681
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x122

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-nez v1, :cond_0

    .line 683
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 686
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 575
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    .line 576
    .local v0, "filteredMetaState":I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    packed-switch p1, :pswitch_data_0

    .line 585
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 579
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onPickerResult()V

    goto :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 554
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 570
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 557
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->finish()V

    goto :goto_0

    .line 560
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onPickerResult()V

    .line 561
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 562
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 563
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 554
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_1
        0x7f0904f6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 670
    const-string v0, "InteractionGroupSelectionActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 672
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsGroupConference:Z

    if-eqz v0, :cond_0

    .line 673
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->handleHomeKeyForVideoCall(Z)V

    .line 675
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 537
    const-string v0, "InteractionGroupSelectionActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v1, 0x122

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-nez v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 545
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectButton:Landroid/widget/Button;

    const v1, 0x7f0e03e3

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 549
    :cond_0
    return v5

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 660
    const-string v0, "InteractionGroupSelectionActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 662
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsGroupConference:Z

    if-eqz v0, :cond_0

    .line 663
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->handleHomeKeyForVideoCall(Z)V

    .line 665
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->updateFragment()V

    .line 666
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 224
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    const-string v1, "actionCode"

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    const-string v1, "doneButtonClickable"

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    const-string v1, "mSelectedCount"

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    const-string v1, "FromMMS"

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "InteractionGroupSelectionActivity"

    const-string v2, "onSaveInstanceState : IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 629
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 632
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x122

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-nez v1, :cond_0

    .line 633
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMissingPhoneLock:Z

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x1770000

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 640
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 641
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 644
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 648
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStop()V

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v1, 0x122

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-nez v0, :cond_0

    .line 652
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMissingPhoneLock:Z

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 656
    :cond_0
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 2
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 590
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setLayoutAttribute(IZ)V

    .line 593
    :cond_0
    return-void
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;)V
    .locals 16
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 993
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 994
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 996
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 997
    .local v9, "ididx":I
    const-string v2, "display_name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 999
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .local v15, "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1001
    .local v14, "result":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 1003
    .local v8, "id":Ljava/lang/String;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1004
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1005
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    const/16 v2, 0x3b

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1008
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "contact_id =?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1010
    .local v13, "phonecursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1011
    const-string v2, "data1"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1012
    .local v12, "numidx":I
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1013
    .local v11, "num":Ljava/lang/String;
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    if-eqz v11, :cond_0

    .line 1017
    .end local v11    # "num":Ljava/lang/String;
    .end local v12    # "numidx":I
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1020
    .end local v13    # "phonecursor":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1022
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1024
    .local v10, "intent":Landroid/content/Intent;
    const-string v2, "result"

    invoke-virtual {v10, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1025
    const-string v2, "datatype"

    const-string v3, "contact"

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_result"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1029
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1030
    const-string v2, "index"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "index"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1031
    const-string v2, "phone_data_id"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v10, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1033
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 1034
    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1306
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1307
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 1308
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->finish()V

    .line 1309
    return-void
.end method

.method public returnPickerResult(Ljava/util/HashMap;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1039
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v18

    const/16 v19, 0x122

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1040
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1041
    .local v7, "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1043
    .local v4, "dataStrings":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v10, v4, v18

    .line 1044
    .local v10, "phoneDataId":Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v9, v4, v18

    .line 1045
    .local v9, "number":Ljava/lang/String;
    const/16 v18, 0x2

    aget-object v8, v4, v18

    .line 1046
    .local v8, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->insertDefaultEmergencyContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1049
    .end local v4    # "dataStrings":[Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    .end local v10    # "phoneDataId":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    move/from16 v18, v0

    const/16 v19, 0x123

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1050
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnSoureIdPickerResult(Ljava/util/HashMap;)V

    .line 1129
    :cond_1
    :goto_1
    return-void

    .line 1052
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    move/from16 v18, v0

    const/16 v19, 0xf0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 1055
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x64

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1062
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v13

    .line 1063
    .local v13, "sendType":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_5

    .line 1066
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .local v17, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1069
    .restart local v7    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v19, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1070
    .local v14, "shareUri":Landroid/net/Uri;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1073
    .end local v7    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "shareUri":Landroid/net/Uri;
    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-string v18, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v6, "intent":Landroid/content/Intent;
    const-string v18, "text/x-vcard"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    const-string v18, "vcard"

    const-string v19, "vcard"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    const-string v18, "android.intent.extra.STREAM"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1079
    const v18, 0x7f0e0229

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v6, v1}, Lcom/android/contacts/ContactsUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v3

    .line 1080
    .local v3, "chooseIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 1081
    const/16 v18, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 1082
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->finish()V

    goto/16 :goto_1

    .line 1085
    .end local v3    # "chooseIntent":Landroid/content/Intent;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v17    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1087
    .local v16, "uriListBuilder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1088
    .restart local v7    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    const/16 v18, 0x3a

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1092
    .end local v7    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    sget-object v18, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 1095
    .local v15, "uri":Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v18, "android.intent.action.SEND"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1096
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v18, "text/x-vcard"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    new-instance v18, Landroid/content/ClipData;

    const-string v19, "dummy"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "text/x-vcard"

    aput-object v22, v20, v21

    new-instance v21, Landroid/content/ClipData$Item;

    const-string v22, "dummy"

    invoke-direct/range {v21 .. v22}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct/range {v18 .. v21}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 1103
    const-string v18, "vcard"

    const-string v19, "vcard"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1104
    const-string v18, "android.intent.extra.STREAM"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1106
    const v18, 0x7f0e0229

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v6, v1}, Lcom/android/contacts/ContactsUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v3

    .line 1107
    .restart local v3    # "chooseIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 1108
    const/16 v18, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->finish()V

    goto/16 :goto_1

    .line 1113
    .end local v3    # "chooseIntent":Landroid/content/Intent;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v13    # "sendType":I
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "uriListBuilder":Ljava/lang/StringBuilder;
    :cond_7
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1115
    .local v12, "resultData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1119
    .restart local v7    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, ";"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1121
    .local v11, "result":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1124
    .end local v7    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "result":Ljava/lang/String;
    :cond_8
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1125
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v18, "result"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1126
    const-string v18, "datatype"

    const-string v19, "contact"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1127
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public sendActionIntent(Ljava/util/HashMap;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1133
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1134
    .local v10, "resultData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 1136
    .local v9, "result":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1137
    .local v6, "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, ";"

    invoke-direct {p0, v6, v11}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1138
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1140
    .end local v6    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v11}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v11

    const/16 v12, 0x21

    if-ne v11, v12, :cond_2

    .line 1142
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.CALL_PRIVILEGED"

    const-string v12, "tel"

    const/4 v13, 0x0

    invoke-static {v12, v9, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1143
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 1144
    :catch_0
    move-exception v2

    .line 1145
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v11, "InteractionGroupSelectionActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "result : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1147
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->finish()V

    goto :goto_1

    .line 1150
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v11}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v11

    const/16 v12, 0x22

    if-ne v11, v12, :cond_3

    .line 1152
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.CALL_PRIVILEGED"

    const-string v12, "tel"

    const/4 v13, 0x0

    invoke-static {v12, v9, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1153
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v11, "videocall"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1154
    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1155
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 1156
    .restart local v2    # "e":Ljava/lang/NullPointerException;
    const-string v11, "InteractionGroupSelectionActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "result : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1158
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->finish()V

    goto :goto_1

    .line 1161
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_3
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v11}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v11

    const/16 v12, 0x23

    if-ne v11, v12, :cond_7

    .line 1162
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.SENDTO"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1163
    .restart local v5    # "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1164
    .local v1, "dat":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 1167
    .local v8, "phoneUri":Landroid/net/Uri;
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1169
    const-string v11, "com.android.mms"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 1173
    const-string v11, "sms:"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_6

    .line 1175
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-eq v3, v11, :cond_5

    .line 1178
    const-string v11, ";"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1182
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1183
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1184
    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1186
    .end local v1    # "dat":Ljava/lang/StringBuilder;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "phoneUri":Landroid/net/Uri;
    :cond_7
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v11}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v11

    const/16 v12, 0x24

    if-ne v11, v12, :cond_a

    .line 1187
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v7, v11, [Ljava/lang/String;

    .line 1188
    .local v7, "output":[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_8

    .line 1189
    const-string v11, ""

    aput-object v11, v7, v3

    .line 1190
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v7, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v14, ";"

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v3

    .line 1188
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1193
    :cond_8
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.SENDTO"

    const-string v12, "mailto:"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1194
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v11, "android.intent.extra.EMAIL"

    invoke-virtual {v5, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1196
    const-string v11, "PHONE_WHITE"

    const-string v12, "DEFAULT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1198
    const-string v11, "theme"

    const/4 v12, 0x2

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1200
    :cond_9
    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1202
    .end local v3    # "i":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "output":[Ljava/lang/String;
    :cond_a
    iget v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    const/16 v12, 0x125

    if-ne v11, v12, :cond_1

    .line 1203
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1204
    .restart local v5    # "intent":Landroid/content/Intent;
    sget-object v11, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1205
    .local v0, "chatonUri":Landroid/net/Uri;
    const-string v11, "vnd.chaton.item/vnd.com.chaton.profile"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1206
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1207
    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method protected setDoneButtonClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    .line 987
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 988
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 990
    :cond_0
    return-void

    .line 988
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setLayoutAttribute(IZ)V
    .locals 9
    .param p1, "orientation"    # I
    .param p2, "isCreated"    # Z

    .prologue
    const/4 v8, 0x1

    .line 596
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 597
    .local v4, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c020a

    invoke-virtual {v6, v7, v4, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 598
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 599
    .local v0, "dimAmount":F
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 602
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 604
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 624
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 625
    return-void

    .line 605
    :cond_0
    if-ne p1, v8, :cond_1

    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsRightAlignmentNeeded:Z

    if-nez v6, :cond_1

    .line 606
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 607
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 608
    .local v2, "param":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 609
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const-string v6, "window"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 610
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 611
    const/16 v6, 0x51

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 612
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 614
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "param":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "wm":Landroid/view/WindowManager;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 615
    .restart local v2    # "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 616
    const/16 v6, 0x35

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 617
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c01d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 619
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c01d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 621
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    .line 820
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 824
    :cond_0
    return-void
.end method
