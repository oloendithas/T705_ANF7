.class public Lcom/android/contacts/group/GroupEditorFragment;
.super Landroid/app/Fragment;
.source "GroupEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;,
        Lcom/android/contacts/group/GroupEditorFragment$Member;,
        Lcom/android/contacts/group/GroupEditorFragment$Status;,
        Lcom/android/contacts/group/GroupEditorFragment$Listener;
    }
.end annotation


# static fields
.field private static final CURRENT_EDITOR_TAG:Ljava/lang/String; = "currentEditorForAccount"

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_CUSTOM_MESSAGE_ALERT:Ljava/lang/String; = "customMessageAlert"

.field private static final KEY_CUSTOM_RINGTONE:Ljava/lang/String; = "customRingtone"

.field private static final KEY_CUSTOM_VIBRATION:Ljava/lang/String; = "customVibration"

.field private static final KEY_DATA_SET:Ljava/lang/String; = "dataSet"

.field private static final KEY_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final KEY_ID:Ljava/lang/String; = "_id"

.field private static final KEY_IS_SYSTEM_GROUP:Ljava/lang/String; = "isSystemGroup"

.field private static final KEY_MODE:Ljava/lang/String; = "mode"

.field private static final KEY_MODIFIED_MEMBER_IDS:Ljava/lang/String; = "modifinedMemberIds"

.field private static final KEY_ORIGINAL_GROUP_INFO:Ljava/lang/String; = "originalGroupInfo"

.field private static final KEY_ORIGINAL_GROUP_NAME:Ljava/lang/String; = "originalGroupName"

.field private static final KEY_ORIGINAL_MEMBER_IDS:Ljava/lang/String; = "originalMemberIds"

.field private static final KEY_SELECTED_ACCOUNTS:Ljava/lang/String; = "selectedAccounts"

.field private static final KEY_SELECTED_GROUPS:Ljava/lang/String; = "selectedGroup"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_SYSTEM_GROUP_ID:Ljava/lang/String; = "systemGroupId"

.field private static final LEGACY_CONTACTS_AUTHORITY:Ljava/lang/String; = "contacts"

.field private static final LOADER_EXISTING_MEMBERS:I = 0x2

.field private static final LOADER_GROUP_METADATA:I = 0x1

.field private static final REQUEST_CREATE_VIBRATION:I = 0x8

.field private static final REQUEST_EDIT_MEMBER:I = 0x4

.field private static final REQUEST_PHONE_RINGTONE:I = 0x0

.field private static final REQUEST_PHONE_RINGTONE_RECOMMENDATION:I = 0x1

.field private static final REQUEST_PICK_MESSAGE_ALERT:I = 0x7

.field private static final REQUEST_PICK_VIBRATION:I = 0x6

.field private static final REQUEST_SELECT_ACCOUNTS:I = 0x5

.field private static final REQUEST_SOUNDS_RINGTONE:I = 0x2

.field private static final REQUEST_SOUND_PICKER_RINGTONE:I = 0x3

.field public static final SAVE_MODE_EXTRA_KEY:Ljava/lang/String; = "saveMode"

.field private static final TAG:Ljava/lang/String; = "GroupEditorFragment"

.field private static final VIBRATION_NAME:Ljava/lang/String; = "vibration_name"

.field private static final VIBRATION_PROVIDER:Ljava/lang/String; = "content://com.android.settings.personalvibration.PersonalVibrationProvider"

.field private static final VIBRATION_URI:Landroid/net/Uri;

.field private static mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAccountView:Landroid/widget/LinearLayout;

.field private mAction:Ljava/lang/String;

.field private mAddMemberView:Landroid/widget/LinearLayout;

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCustomMessageAlert:Ljava/lang/String;

.field private mCustomRingtone:Ljava/lang/String;

.field private mCustomVibration:Ljava/lang/String;

.field private mCustomVibrationObserver:Landroid/database/ContentObserver;

.field private mDataSet:Ljava/lang/String;

.field private mGroupId:J

.field private final mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupNameView:Landroid/widget/EditText;

.field private mGroupUri:Landroid/net/Uri;

.field private mIsAutoAdd:Z

.field private mIsSystemGroup:Z

.field private mLastGroupEditorId:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

.field private mMessageAlertView:Landroid/widget/LinearLayout;

.field private mMode:I

.field private mModifiedMemberIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mOriginalGroupName:Ljava/lang/String;

.field private mOriginalMemberIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRingToneView:Landroid/widget/LinearLayout;

.field private mSelectedAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/group/GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

.field private mSystemGroupId:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;

.field private mVibrationView:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const-string v0, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment;->VIBRATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalMemberIds:Ljava/util/ArrayList;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    .line 1333
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/group/GroupEditorFragment$8;-><init>(Lcom/android/contacts/group/GroupEditorFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibrationObserver:Landroid/database/ContentObserver;

    .line 1429
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$10;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$10;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1478
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$11;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$11;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 276
    return-void
.end method

.method private AddAllGoogleAccountsAndCreateGroup()V
    .locals 1

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    .line 420
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V

    .line 421
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startSelectAccount()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/group/GroupEditorFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateMember()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/group/GroupEditorFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    iget v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/group/GroupEditorFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->bindGroupMetaData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalMemberIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Ljava/util/List;)[J
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 101
    invoke-static {p0}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/group/GroupEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSystemGroup:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getUpdatedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasValidGroupName()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomMessageAlert:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/group/GroupEditorFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->getVibrationTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startEditMember()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupEditorFragment;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateVibrationTitle()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method private bindGroupMetaData(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 772
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 773
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 774
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 775
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    .line 776
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 778
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSystemGroup:Z

    .line 779
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSystemGroupId:Ljava/lang/String;

    .line 781
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsAutoAdd:Z

    .line 783
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 784
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;

    .line 785
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomMessageAlert:Ljava/lang/String;

    .line 787
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->fillSelectedGroupsAndAccounts(Landroid/database/Cursor;)V

    .line 788
    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V

    .line 789
    return-void

    :cond_0
    move v0, v2

    .line 778
    goto :goto_0

    :cond_1
    move v1, v2

    .line 781
    goto :goto_1
.end method

.method private static convertToArray(Ljava/util/List;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 1122
    .local p0, "listMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1123
    .local v2, "size":I
    new-array v1, v2, [J

    .line 1124
    .local v1, "membersArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1125
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 1124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1127
    :cond_0
    return-object v1
.end method

.method private createRecipientListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1401
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1402
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "extra_condition"

    const-string v3, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    new-instance v0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    new-instance v2, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v3, 0x2

    invoke-direct {v0, p1, v2, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .line 1405
    .local v0, "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setPosition(II)V

    .line 1406
    new-instance v2, Lcom/android/contacts/group/GroupEditorFragment$9;

    invoke-direct {v2, p0}, Lcom/android/contacts/group/GroupEditorFragment$9;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setItemSelectListener(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;)V

    .line 1422
    return-object v0
.end method

.method private dismissProgress()V
    .locals 3

    .prologue
    .line 985
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 986
    const-string v1, "GroupEditorFragment"

    const-string v2, "progress null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :goto_0
    return-void

    .line 988
    :cond_0
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 989
    const-string v1, "GroupEditorFragment"

    const-string v2, "progress.get null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 992
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 993
    const/4 v1, 0x0

    sput-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mProgress:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GroupEditorFragment"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private fillSelectedGroupsAndAccounts(Landroid/database/Cursor;)V
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 798
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 799
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "accountType":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 802
    .local v2, "accountName":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 803
    .local v3, "dataSet":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 804
    .local v6, "title":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 805
    .local v7, "systemGroupId":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 806
    .local v4, "groupId":J
    iget-object v8, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/contacts/model/AccountWithDataSet;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v1, v9}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 810
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v4    # "groupId":J
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "systemGroupId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getAccountType()Lcom/android/contacts/model/AccountType;
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method private getAllGoogleAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v3, "resultAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v1

    .line 393
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 395
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "vnd.sec.contact.phone"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.google"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.android.nttdocomo"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "KDDI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.kddi.ast.auoneid"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_3
    return-object v3
.end method

.method private getExceptedAccounts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v1, "exceptedAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 411
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 412
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    return-object v1
.end method

.method private getTitleSelection()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1075
    const-string v3, ""

    .line 1076
    .local v3, "selection":Ljava/lang/String;
    const-string v1, ""

    .line 1078
    .local v1, "groupTitle":Ljava/lang/String;
    const-string v4, "android.intent.action.EDIT"

    iget-object v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1079
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1080
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    const-string v6, "\'\'"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1081
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title != \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "deleted=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1095
    :cond_0
    return-object v3

    .line 1083
    :cond_1
    const-string v4, "android.intent.action.INSERT"

    iget-object v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1084
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1085
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1086
    if-eqz v2, :cond_2

    .line 1087
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1090
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(account_name = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "deleted=0)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1085
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getUpdatedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1112
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getVibrationTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 1357
    const/4 v6, 0x0

    .line 1358
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1359
    .local v0, "res":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 1361
    .local v10, "title":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1362
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 1363
    .local v7, "id":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1364
    .local v9, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "_id"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1366
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->VIBRATION_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "vibration_name"

    aput-object v3, v2, v5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1371
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v11, :cond_0

    .line 1372
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1373
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 1376
    :cond_0
    if-eqz v6, :cond_1

    .line 1377
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1381
    .end local v7    # "id":J
    .end local v9    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    return-object v10

    .line 1376
    .restart local v7    # "id":J
    .restart local v9    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 1377
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 1257
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1258
    :cond_0
    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 1265
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateRingtoneTitle()V

    .line 1267
    const/4 v0, 0x1

    return v0

    .line 1260
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1261
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getMediaContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1263
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0
.end method

.method private hasMembershipChange()Z
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x1

    return v0
.end method

.method private hasNameChange()Z
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getUpdatedName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasValidGroupName()Z
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getUpdatedName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 451
    const/4 v0, 0x0

    .line 453
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAccountType()Lcom/android/contacts/model/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->isGroupMembershipEditable()Z

    move-result v0

    goto :goto_0
.end method

.method private isTitleDuplicated()Z
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1021
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getTitleSelection()Ljava/lang/String;

    move-result-object v3

    .line 1022
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v2, v12

    const-string v5, "system_id"

    aput-object v5, v2, v11

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1027
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1028
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getUpdatedName()Ljava/lang/String;

    move-result-object v7

    .line 1030
    .local v7, "groupNameInView":Ljava/lang/String;
    :cond_0
    const-string v0, "system_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1031
    .local v8, "systemId":Ljava/lang/String;
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1032
    .local v9, "title":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1033
    .local v10, "title2":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1034
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1067
    if-eqz v6, :cond_1

    .line 1068
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v11

    .end local v7    # "groupNameInView":Ljava/lang/String;
    .end local v8    # "systemId":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "title2":Ljava/lang/String;
    :goto_0
    return v0

    .line 1037
    .restart local v7    # "groupNameInView":Ljava/lang/String;
    .restart local v8    # "systemId":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    .restart local v10    # "title2":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "PersonalGroup"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1038
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v8}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1056
    :cond_3
    :goto_1
    if-eqz v7, :cond_a

    if-eqz v9, :cond_a

    .line 1057
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_8

    .line 1067
    if-eqz v6, :cond_4

    .line 1068
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v11

    goto :goto_0

    .line 1041
    :cond_5
    :try_start_2
    const-string v0, "ICE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1042
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1043
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0262

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1047
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1048
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1051
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0261

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1059
    :cond_8
    if-eqz v10, :cond_a

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_a

    .line 1067
    if-eqz v6, :cond_9

    .line 1068
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    move v0, v11

    goto :goto_0

    .line 1063
    :cond_a
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    .end local v7    # "groupNameInView":Ljava/lang/String;
    .end local v8    # "systemId":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "title2":Ljava/lang/String;
    :cond_b
    if-eqz v6, :cond_c

    .line 1068
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    move v0, v12

    goto/16 :goto_0

    .line 1067
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_d

    .line 1068
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 361
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    .line 362
    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    .line 364
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 365
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 366
    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 367
    const-string v0, "dataSet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 369
    const-string v0, "originalGroupName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 372
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMode:I

    .line 373
    const-string v0, "originalMemberIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalMemberIds:Ljava/util/ArrayList;

    .line 374
    const-string v0, "modifinedMemberIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    .line 375
    const-string v0, "selectedAccounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    .line 376
    const-string v0, "selectedGroup"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;

    .line 377
    const-string v0, "customRingtone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 378
    const-string v0, "customMessageAlert"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomMessageAlert:Ljava/lang/String;

    .line 379
    const-string v0, "customVibration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;

    .line 380
    const-string v0, "isSystemGroup"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSystemGroup:Z

    .line 381
    const-string v0, "systemGroupId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSystemGroupId:Ljava/lang/String;

    .line 382
    const-string v0, "originalGroupInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 383
    return-void
.end method

.method private revert()Z
    .locals 1

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasNameChange()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasMembershipChange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    .line 827
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private setGroupTitle()V
    .locals 4

    .prologue
    const v3, 0x7f0e0291

    const/4 v2, 0x0

    .line 659
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 661
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 662
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSystemGroup:Z

    if-eqz v0, :cond_2

    .line 664
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 665
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 667
    const-string v0, "PersonalGroup"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSystemGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSystemGroupId:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 675
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 676
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 680
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method private setupEditorForAccount(Z)V
    .locals 17
    .param p1, "accountVisible"    # Z

    .prologue
    .line 486
    const/4 v8, 0x0

    .line 492
    .local v8, "isNewEditor":Z
    const v10, 0x7f04014b

    .line 493
    .local v10, "newGroupEditorId":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mLastGroupEditorId:I

    if-eq v10, v13, :cond_6

    .line 494
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContent:Landroid/widget/LinearLayout;

    const-string v14, "currentEditorForAccount"

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    .line 495
    .local v11, "oldEditorView":Landroid/view/View;
    if-eqz v11, :cond_0

    .line 496
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 498
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContent:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v13, v10, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 499
    .local v1, "editorView":Landroid/view/View;
    const-string v13, "currentEditorForAccount"

    invoke-virtual {v1, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 500
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/contacts/group/GroupEditorFragment;->mLastGroupEditorId:I

    .line 501
    const/4 v8, 0x1

    .line 509
    .end local v11    # "oldEditorView":Landroid/view/View;
    :cond_1
    const v13, 0x7f0902fb

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountView:Landroid/widget/LinearLayout;

    .line 510
    if-eqz p1, :cond_8

    .line 511
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_7

    .line 512
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountView:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 513
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountView:Landroid/widget/LinearLayout;

    new-instance v14, Lcom/android/contacts/group/GroupEditorFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/contacts/group/GroupEditorFragment$1;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateAccountsView()V

    .line 535
    :goto_1
    const v13, 0x7f090302

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    .line 536
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 537
    .local v12, "res":Landroid/content/res/Resources;
    const v13, 0x7f0d0008

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 538
    .local v9, "maxLength":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/text/InputFilter;

    const/4 v15, 0x0

    new-instance v16, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    new-instance v14, Lcom/android/contacts/group/GroupEditorFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/contacts/group/GroupEditorFragment$2;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 559
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->setGroupTitle()V

    .line 561
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v6

    .line 562
    .local v6, "isKnox":Z
    const v13, 0x7f090303

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mRingToneView:Landroid/widget/LinearLayout;

    .line 564
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    .line 565
    .local v3, "isAvailableCall":Z
    if-eqz v3, :cond_9

    if-nez v6, :cond_9

    .line 566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mRingToneView:Landroid/widget/LinearLayout;

    new-instance v14, Lcom/android/contacts/group/GroupEditorFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/contacts/group/GroupEditorFragment$3;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateRingtoneTitle()V

    .line 579
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;I)Z

    move-result v7

    .line 580
    .local v7, "isMMSAvailable":Z
    const v13, 0x7f090307

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mMessageAlertView:Landroid/widget/LinearLayout;

    .line 581
    if-eqz v7, :cond_a

    if-nez v6, :cond_a

    .line 582
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mMessageAlertView:Landroid/widget/LinearLayout;

    new-instance v14, Lcom/android/contacts/group/GroupEditorFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/contacts/group/GroupEditorFragment$4;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateMessageAlertTitle()V

    .line 594
    :goto_3
    const v13, 0x7f09030c

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mVibrationView:Landroid/widget/LinearLayout;

    .line 597
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVibrator(Landroid/content/Context;)Z

    move-result v4

    .line 598
    .local v4, "isAvailableCustomVibration":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEasyMode(Landroid/content/Context;)Z

    move-result v5

    .line 599
    .local v5, "isEasyMode":Z
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-nez v6, :cond_b

    .line 600
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mVibrationView:Landroid/widget/LinearLayout;

    new-instance v14, Lcom/android/contacts/group/GroupEditorFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/contacts/group/GroupEditorFragment$5;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateVibrationTitle()V

    .line 624
    :cond_2
    :goto_4
    const v13, 0x7f090311

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAddMemberView:Landroid/widget/LinearLayout;

    .line 625
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e0021

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 626
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAddMemberView:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 635
    :goto_5
    if-eqz v8, :cond_3

    .line 636
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 638
    :cond_3
    sget-object v13, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 639
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/view/View;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 640
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForGG()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 646
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 654
    :cond_5
    return-void

    .line 503
    .end local v1    # "editorView":Landroid/view/View;
    .end local v3    # "isAvailableCall":Z
    .end local v4    # "isAvailableCustomVibration":Z
    .end local v5    # "isEasyMode":Z
    .end local v6    # "isKnox":Z
    .end local v7    # "isMMSAvailable":Z
    .end local v9    # "maxLength":I
    .end local v12    # "res":Landroid/content/res/Resources;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContent:Landroid/widget/LinearLayout;

    const-string v14, "currentEditorForAccount"

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 504
    .restart local v1    # "editorView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 505
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Group editor view not found"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 520
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountView:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 521
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountView:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_0

    .line 527
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountView:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 528
    const v13, 0x7f0902ff

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 574
    .restart local v3    # "isAvailableCall":Z
    .restart local v6    # "isKnox":Z
    .restart local v9    # "maxLength":I
    .restart local v12    # "res":Landroid/content/res/Resources;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mRingToneView:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 575
    const v13, 0x7f090201

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 590
    .restart local v7    # "isMMSAvailable":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mMessageAlertView:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 591
    const v13, 0x7f09030b

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 617
    .restart local v4    # "isAvailableCustomVibration":Z
    .restart local v5    # "isEasyMode":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mVibrationView:Landroid/widget/LinearLayout;

    if-eqz v13, :cond_c

    .line 618
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mVibrationView:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 619
    :cond_c
    const v13, 0x7f090310

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 620
    .local v2, "grp_vib_divider":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 621
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 628
    .end local v2    # "grp_vib_divider":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAddMemberView:Landroid/widget/LinearLayout;

    new-instance v14, Lcom/android/contacts/group/GroupEditorFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/contacts/group/GroupEditorFragment$6;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 644
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6
.end method

.method private showErrorToast(I)V
    .locals 2
    .param p1, "message"    # I

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mToast:Landroid/widget/Toast;

    .line 1105
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1106
    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private startEditMember()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    .line 724
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    .local v8, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMode:I

    if-ne v1, v9, :cond_1

    .line 728
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSystemGroupId:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 730
    .local v0, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    const-string v1, "EditMode"

    invoke-virtual {v8, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 731
    const-string v1, "GroupInfo"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 748
    .end local v0    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    :cond_0
    :goto_0
    const-string v1, "ModifiedIds"

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 749
    const-string v1, "ExceptedAccounts"

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getExceptedAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 751
    const-string v1, "AutoAdd"

    iget-boolean v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsAutoAdd:Z

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 754
    const/4 v1, 0x4

    invoke-virtual {p0, v8, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 755
    return-void

    .line 733
    :cond_1
    const-string v1, "EditMode"

    const/16 v2, 0xe

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 738
    iget-boolean v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsAutoAdd:Z

    if-eqz v1, :cond_0

    .line 739
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSystemGroupId:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 741
    .restart local v0    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    const-string v1, "GroupInfo"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private startGroupMetaDataLoader()V
    .locals 4

    .prologue
    .line 329
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 330
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 331
    return-void
.end method

.method private startSelectAccount()V
    .locals 3

    .prologue
    .line 718
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 719
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SelectedAccounts"

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 720
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 721
    return-void
.end method

.method private updateAccountsView()V
    .locals 8

    .prologue
    .line 686
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountView:Landroid/widget/LinearLayout;

    const v7, 0x7f0902fd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 688
    .local v5, "textView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 690
    const v6, 0x7f0e0251

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    :goto_0
    return-void

    .line 693
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 698
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 699
    if-lez v2, :cond_1

    .line 700
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    .line 703
    .local v1, "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 705
    .local v0, "accountType":Lcom/android/contacts/model/AccountType;
    const-string v6, "vnd.sec.contact.phone"

    iget-object v7, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 706
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 708
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 712
    .end local v0    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v1    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateMember()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1385
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAddMemberView:Landroid/widget/LinearLayout;

    const v2, 0x7f090313

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1386
    .local v0, "count":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1391
    :goto_0
    return-void

    .line 1389
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateMessageAlertTitle()V
    .locals 5

    .prologue
    .line 1301
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMessageAlertView:Landroid/widget/LinearLayout;

    const v4, 0x7f090309

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1303
    .local v1, "messageAlertName":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomMessageAlert:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1304
    const v3, 0x7f0e0254

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1306
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomMessageAlert:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1307
    .local v0, "MessageAlertUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 1308
    .local v2, "ringtone":Landroid/media/Ringtone;
    if-nez v0, :cond_2

    .line 1309
    const-string v3, "GroupEditorFragment"

    const-string v4, "message alert\'s URI doesn\'t resolve to a Ringtone"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1312
    :cond_2
    if-eqz v2, :cond_0

    .line 1313
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRingtoneTitle()V
    .locals 6

    .prologue
    const v5, 0x7f0e0254

    .line 1271
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRingToneView:Landroid/widget/LinearLayout;

    const v4, 0x7f090305

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1272
    .local v1, "ringtoneName":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1273
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    :goto_0
    return-void

    .line 1275
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1276
    .local v2, "ringtoneUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 1277
    .local v0, "ringtone":Landroid/media/Ringtone;
    if-nez v0, :cond_1

    .line 1278
    const-string v3, "GroupEditorFragment"

    const-string v4, "ringtone\'s URI doesn\'t resolve to a Ringtone"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1282
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/Ringtone;->isUriTrue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1283
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1285
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateVibrationTitle()V
    .locals 5

    .prologue
    .line 1342
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mVibrationView:Landroid/widget/LinearLayout;

    const v4, 0x7f09030e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1343
    .local v0, "vibrationNameView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1344
    const v3, 0x7f0e02a7

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    :goto_0
    return-void

    .line 1346
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1347
    .local v2, "vibrationUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/contacts/group/GroupEditorFragment;->getVibrationTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1348
    .local v1, "vibrationTitle":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1349
    const-string v3, "GroupEditorFragment"

    const-string v4, "vibration\'s URI doesn\'t resolve to a Vibration"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1352
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public doRevertAction()V
    .locals 1

    .prologue
    .line 832
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 833
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onReverted()V

    .line 835
    :cond_0
    return-void
.end method

.method public handleMessageAlertPicked(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    .line 1291
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1292
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomMessageAlert:Ljava/lang/String;

    .line 1296
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateMessageAlertTitle()V

    .line 1297
    const/4 v0, 0x1

    return v0

    .line 1294
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomMessageAlert:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleVibrationPicked(Landroid/net/Uri;)V
    .locals 3
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    .line 1318
    if-nez p1, :cond_0

    .line 1319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;

    .line 1320
    const-string v0, "GroupEditorFragment"

    const-string v1, "default is selected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateVibrationTitle()V

    .line 1330
    return-void

    .line 1322
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;

    .line 1324
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibrationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1325
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibrationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "groupUri"    # Landroid/net/Uri;
    .param p3, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    .line 765
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    .line 766
    iput-object p2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    .line 767
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    .line 768
    return-void

    .line 767
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Lcom/sec/android/app/contacts/group/GroupInfo;I)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;
    .param p3, "mode"    # I

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    .line 760
    iput-object p2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 761
    iput p3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMode:I

    .line 762
    return-void
.end method

.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 426
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 427
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 428
    iget-object v0, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 429
    const-string v0, "android.intent.action.INSERT"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V

    .line 430
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onGroupNotFound()V

    .line 439
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 297
    if-eqz p1, :cond_2

    .line 299
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 300
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$Status;->SELECTING_ACCOUNT:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-ne v0, v1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$Status;->LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-ne v0, v1, :cond_1

    .line 303
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startGroupMetaDataLoader()V

    goto :goto_0

    .line 307
    :cond_1
    const-string v0, "android.intent.action.INSERT"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V

    .line 308
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateMember()V

    goto :goto_0

    .line 311
    :cond_2
    const-string v0, "android.intent.action.EDIT"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startGroupMetaDataLoader()V

    goto :goto_0

    .line 313
    :cond_3
    const-string v0, "android.intent.action.INSERT"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->AddAllGoogleAccountsAndCreateGroup()V

    .line 315
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateMember()V

    goto :goto_0

    .line 317
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Action String "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1132
    if-eq p2, v6, :cond_1

    if-eq p2, v7, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1138
    :pswitch_0
    if-ne p2, v7, :cond_2

    .line 1139
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSoundPickerIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1140
    .local v1, "intent":Landroid/content/Intent;
    const/4 v6, 0x3

    invoke-virtual {p0, v1, v6}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1143
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    if-ne p2, v6, :cond_0

    .line 1145
    const-string v6, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1146
    .local v3, "pickedUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1150
    new-instance v0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/android/contacts/group/GroupEditorFragment$7;

    invoke-direct {v7, p0}, Lcom/android/contacts/group/GroupEditorFragment$7;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-direct {v0, v6, v3, v7}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;-><init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;)V

    .line 1161
    .local v0, "helper":Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->doExtract()V

    goto :goto_0

    .line 1166
    .end local v0    # "helper":Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;
    .end local v3    # "pickedUri":Landroid/net/Uri;
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1167
    .restart local v3    # "pickedUri":Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/android/contacts/group/GroupEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)Z

    move-result v2

    .line 1168
    .local v2, "isValid":Z
    if-eqz v2, :cond_0

    .line 1169
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/contacts/ContactSaveService;->createSetMediaRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 1171
    .local v4, "serviceIntentMedia":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1176
    .end local v2    # "isValid":Z
    .end local v3    # "pickedUri":Landroid/net/Uri;
    .end local v4    # "serviceIntentMedia":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1177
    .restart local v3    # "pickedUri":Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/android/contacts/group/GroupEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)Z

    goto :goto_0

    .line 1181
    .end local v3    # "pickedUri":Landroid/net/Uri;
    :pswitch_3
    const-string v6, "FILE_URI"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1184
    .restart local v3    # "pickedUri":Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/android/contacts/group/GroupEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)Z

    move-result v2

    .line 1187
    .restart local v2    # "isValid":Z
    if-eqz v2, :cond_0

    .line 1188
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/contacts/ContactSaveService;->createSetMediaRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 1190
    .restart local v4    # "serviceIntentMedia":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1195
    .end local v2    # "isValid":Z
    .end local v3    # "pickedUri":Landroid/net/Uri;
    .end local v4    # "serviceIntentMedia":Landroid/content/Intent;
    :pswitch_4
    const-string v6, "ModifiedIds"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    .line 1197
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateMember()V

    goto :goto_0

    .line 1201
    :pswitch_5
    const-string v6, "SelectedAccounts"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    .line 1203
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateAccountsView()V

    goto :goto_0

    .line 1207
    :pswitch_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 1208
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v5}, Lcom/android/contacts/group/GroupEditorFragment;->handleVibrationPicked(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 1212
    .end local v5    # "uri":Landroid/net/Uri;
    :pswitch_7
    const-string v6, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1213
    .restart local v3    # "pickedUri":Landroid/net/Uri;
    invoke-virtual {p0, v3}, Lcom/android/contacts/group/GroupEditorFragment;->handleMessageAlertPicked(Landroid/net/Uri;)Z

    goto/16 :goto_0

    .line 1136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 290
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    .line 291
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 281
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 282
    const v1, 0x7f04014a

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f09017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContent:Landroid/widget/LinearLayout;

    .line 284
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibrationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 325
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 326
    return-void
.end method

.method public onDoneClicked()V
    .locals 2

    .prologue
    .line 818
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/group/GroupEditorFragment;->save(IZ)Z

    .line 819
    return-void
.end method

.method public onMessageAlertChosen()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomMessageAlert:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getAlertTonePickerIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 480
    return-void
.end method

.method public onPhoneRingtoneChosen()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 458
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 459
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 467
    .local v2, "ringtoneUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getRingtonePickerIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 468
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 469
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 471
    :cond_1
    return-void

    .line 461
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ringtoneUri":Landroid/net/Uri;
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    const-string v4, "\\?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "customRingtoneUri":[Ljava/lang/String;
    aget-object v3, v0, v5

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 463
    .restart local v2    # "ringtoneUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public onSaveCompleted(ZILandroid/net/Uri;)V
    .locals 19
    .param p1, "isEditGroup"    # Z
    .param p2, "saveMode"    # I
    .param p3, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 912
    if-eqz p3, :cond_0

    const/4 v15, 0x1

    .line 915
    .local v15, "success":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->dismissProgress()V

    .line 917
    sparse-switch p2, :sswitch_data_0

    .line 980
    new-instance v16, Ljava/lang/IllegalStateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unsupported save mode "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 912
    .end local v15    # "success":Z
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 922
    .restart local v15    # "success":Z
    :sswitch_0
    if-eqz v15, :cond_4

    if-eqz p3, :cond_4

    .line 923
    if-nez p3, :cond_2

    const/4 v12, 0x0

    .line 926
    .local v12, "requestAuthority":Ljava/lang/String;
    :goto_1
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 927
    .local v14, "resultIntent":Landroid/content/Intent;
    const-string v16, "contacts"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 929
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 930
    .local v6, "groupId":J
    const-string v16, "content://contacts/groups"

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 931
    .local v10, "legacyContentUri":Landroid/net/Uri;
    invoke-static {v10, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 932
    .local v11, "legacyUri":Landroid/net/Uri;
    invoke-virtual {v14, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 938
    .end local v6    # "groupId":J
    .end local v10    # "legacyContentUri":Landroid/net/Uri;
    .end local v11    # "legacyUri":Landroid/net/Uri;
    :goto_2
    const/4 v13, -0x1

    .line 972
    .end local v12    # "requestAuthority":Ljava/lang/String;
    .local v13, "resultCode":I
    :goto_3
    sget-object v16, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v13, v14}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onSaveFinished(ILandroid/content/Intent;)V

    .line 982
    :cond_1
    return-void

    .line 923
    .end local v13    # "resultCode":I
    .end local v14    # "resultIntent":Landroid/content/Intent;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 935
    .restart local v12    # "requestAuthority":Ljava/lang/String;
    .restart local v14    # "resultIntent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 946
    .end local v12    # "requestAuthority":Ljava/lang/String;
    .end local v14    # "resultIntent":Landroid/content/Intent;
    :cond_4
    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    .line 947
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 950
    .restart local v14    # "resultIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSystemGroup:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 955
    .local v8, "title":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    .line 956
    .local v3, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 957
    .local v4, "accountName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/contacts/group/GroupInfo;->getDataSet()Ljava/lang/String;

    move-result-object v5

    .line 958
    .local v5, "dataSet":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v6

    .line 959
    .restart local v6    # "groupId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v9

    .line 960
    .local v9, "systemId":Ljava/lang/String;
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 962
    .local v2, "newGroupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    const-string v16, "GroupInfo"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 963
    const/4 v13, -0x1

    .line 965
    .restart local v13    # "resultCode":I
    goto/16 :goto_3

    .line 953
    .end local v2    # "newGroupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v6    # "groupId":J
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "systemId":Ljava/lang/String;
    .end local v13    # "resultCode":I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->getUpdatedName()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "title":Ljava/lang/String;
    goto :goto_4

    .line 967
    .end local v8    # "title":Ljava/lang/String;
    .end local v14    # "resultIntent":Landroid/content/Intent;
    :cond_6
    const/4 v14, 0x0

    .line 968
    .restart local v14    # "resultIntent":Landroid/content/Intent;
    const/4 v13, -0x1

    .restart local v13    # "resultCode":I
    goto/16 :goto_3

    .line 917
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 335
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 336
    const-string v0, "action"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "groupId"

    iget-wide v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 339
    const-string v0, "status"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 340
    const-string v0, "accountName"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v0, "accountType"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v0, "dataSet"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v0, "originalGroupName"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v0, "mode"

    iget v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    const-string v0, "originalMemberIds"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalMemberIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 349
    const-string v0, "modifinedMemberIds"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 350
    const-string v0, "selectedAccounts"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 351
    const-string v0, "selectedGroup"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 352
    const-string v0, "customRingtone"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v0, "customMessageAlert"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomMessageAlert:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v0, "customVibration"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "isSystemGroup"

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSystemGroup:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    const-string v0, "systemGroupId"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSystemGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "originalGroupInfo"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 358
    return-void
.end method

.method public onSecretModeChanged()V
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1395
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1396
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startGroupMetaDataLoader()V

    .line 1397
    return-void
.end method

.method public save(IZ)Z
    .locals 12
    .param p1, "saveMode"    # I
    .param p2, "showToast"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 845
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasValidGroupName()Z

    move-result v2

    if-nez v2, :cond_1

    .line 846
    if-eqz p2, :cond_0

    .line 847
    const v2, 0x7f0e025d

    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupEditorFragment;->showErrorToast(I)V

    .line 908
    :cond_0
    :goto_0
    return v1

    .line 852
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->isTitleDuplicated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 853
    if-eqz p2, :cond_0

    .line 854
    const v2, 0x7f0e025e

    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupEditorFragment;->showErrorToast(I)V

    goto :goto_0

    .line 859
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasValidGroupName()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-ne v2, v3, :cond_0

    .line 865
    if-nez p1, :cond_3

    .line 866
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 869
    :cond_3
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment$Status;->SAVING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 871
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 874
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 879
    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    const v4, 0x7f0e0260

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/contacts/group/GroupEditorFragment;->mProgress:Ljava/lang/ref/WeakReference;

    .line 882
    const/4 v9, 0x0

    .line 883
    .local v9, "saveIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.INSERT"

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 886
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v6

    .line 890
    .local v6, "membersToAddArray":[J
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getUpdatedName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomMessageAlert:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "saveCompleted"

    invoke-static/range {v0 .. v8}, Lcom/android/contacts/ContactSaveService;->createNewGroupIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 895
    invoke-virtual {v0, v9}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v6    # "membersToAddArray":[J
    :goto_1
    move v1, v11

    .line 908
    goto :goto_0

    .line 897
    :cond_4
    const-string v2, "android.intent.action.EDIT"

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 901
    new-instance v10, Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;-><init>(Landroid/app/Activity;)V

    .line 902
    .local v10, "task":Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;
    new-array v2, v5, [Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalMemberIds:Ljava/util/ArrayList;

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    aput-object v1, v2, v11

    invoke-virtual {v10, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 905
    .end local v10    # "task":Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid intent action type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setListener(Lcom/android/contacts/group/GroupEditorFragment$Listener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/group/GroupEditorFragment$Listener;

    .prologue
    .line 813
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    .line 814
    return-void
.end method
