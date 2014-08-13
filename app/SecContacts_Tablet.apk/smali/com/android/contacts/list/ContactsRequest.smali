.class public Lcom/android/contacts/list/ContactsRequest;
.super Ljava/lang/Object;
.source "ContactsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_ADD_FAVORITE_LIST:I = 0x15e

.field public static final ACTION_ALL_CONTACTS:I = 0xf

.field public static final ACTION_CONTACTS_WITH_PHONES:I = 0x11

.field public static final ACTION_CREATE_SHORTCUT_CALL:I = 0x78

.field public static final ACTION_CREATE_SHORTCUT_CONTACT:I = 0x6e

.field public static final ACTION_CREATE_SHORTCUT_SECRET_CONTACT:I = 0x6f

.field public static final ACTION_CREATE_SHORTCUT_SMS:I = 0x82

.field public static final ACTION_DEFAULT:I = 0xa

.field public static final ACTION_DELETE_FAVORITE_LIST:I = 0x15f

.field public static final ACTION_DELETE_SIM2_CONTACT:I = 0x1c2

.field public static final ACTION_DELETE_SIM_CONTACT:I = 0x15e

.field public static final ACTION_EDIT_FAVORITES:I = 0xe6

.field public static final ACTION_EXPORT_SIM2_CONTACT:I = 0x190

.field public static final ACTION_EXPORT_SIM_CONTACT:I = 0x12c

.field public static final ACTION_EXPORT_T0_EXTERNEL_SDCARD:I = 0x12e

.field public static final ACTION_EXPORT_T0_INTERNEL_SDCARD:I = 0x12d

.field public static final ACTION_FREQUENT:I = 0x28

.field public static final ACTION_GROUP:I = 0x14

.field public static final ACTION_IMPORT_SIM2_CONTACT:I = 0x19a

.field public static final ACTION_IMPORT_SIM_CONTACT:I = 0x136

.field public static final ACTION_INSERT_OR_EDIT_CONTACT:I = 0x50

.field public static final ACTION_JOIN_CONTACT:I = 0xdc

.field public static final ACTION_MULTI_DELETE:I = 0xd2

.field public static final ACTION_PICK_CONTACT:I = 0x3c

.field public static final ACTION_PICK_CONTACTS:I = 0xb4

.field public static final ACTION_PICK_CONTACTS_MULTI_COMM_TOOLS:I = 0x124

.field public static final ACTION_PICK_CONTACTS_WITH_CHATON:I = 0x125

.field public static final ACTION_PICK_CONTACTS_WITH_EMAILS:I = 0xa0

.field public static final ACTION_PICK_CONTACTS_WITH_PHONES:I = 0xaa

.field public static final ACTION_PICK_CONTACTS_WITH_PHONES_EMAILS:I = 0x96

.field public static final ACTION_PICK_CONTACTS_WITH_PHONES_RCS_ONLY:I = 0x97

.field public static final ACTION_PICK_CONTACTS_WITH_PHONES_SETTINGS:I = 0xbe

.field public static final ACTION_PICK_DETAIL_INFO:I = 0x104

.field public static final ACTION_PICK_DETAIL_INFO_FOR_PRINT:I = 0x10e

.field public static final ACTION_PICK_DIRECTSHARE:I = 0x123

.field public static final ACTION_PICK_EMAIL:I = 0x69

.field public static final ACTION_PICK_EMERGENCY_MESSAGE:I = 0x126

.field public static final ACTION_PICK_ICE:I = 0x122

.field public static final ACTION_PICK_OR_CREATE_CONTACT:I = 0x46

.field public static final ACTION_PICK_PHONE:I = 0x5a

.field public static final ACTION_PICK_POSTAL:I = 0x64

.field public static final ACTION_PICK_VCARD:I = 0xf0

.field public static final ACTION_PICK_VCARD_FROM_MMS:I = 0xfa

.field public static final ACTION_PICK_VIP_EMAIL:I = 0x118

.field public static final ACTION_SET_RINGTONE:I = 0x140

.field public static final ACTION_STARRED:I = 0x1e

.field public static final ACTION_STREQUENT:I = 0x32

.field public static final ACTION_VIEW_CONTACT:I = 0x8c

.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/list/ContactsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_BLOCK_DIRECTSHARE:I = 0x1f

.field public static final EXTRA_CALL_TOOL:I = 0x21

.field public static final EXTRA_CHATON_TOOL:I = 0x25

.field public static final EXTRA_CONTACT_FROM_TAB:I = 0x11

.field public static final EXTRA_CREATE_PICK:I = 0x1a

.field public static final EXTRA_DIRECTSHARE_MULTI:I = 0x1e

.field public static final EXTRA_EMAIL:I = 0x2

.field public static final EXTRA_EMAIL_MULTI:I = 0x3

.field public static final EXTRA_EMAIL_TOOL:I = 0x24

.field public static final EXTRA_FAVORITE_EMAIL_MULTI:I = 0x13

.field public static final EXTRA_FAVORITE_PHONE_EMAIL_MULTI:I = 0x14

.field public static final EXTRA_FAVORITE_PHONE_MULTI:I = 0x12

.field public static final EXTRA_GROUP_EMAIL:I = 0xf

.field public static final EXTRA_GROUP_PHONE:I = 0xe

.field public static final EXTRA_GROUP_PHONE_EMAIL:I = 0x10

.field public static final EXTRA_MSG_TOOL:I = 0x23

.field public static final EXTRA_NAMECARD:I = 0x17

.field public static final EXTRA_NEED_CALL_CONTENT:I = 0x19

.field public static final EXTRA_PHONE:I = 0x0

.field public static final EXTRA_PHONE_EMAIL:I = 0x16

.field public static final EXTRA_PHONE_EMAIL_MULTI:I = 0x4

.field public static final EXTRA_PHONE_MULTI:I = 0x1

.field public static final EXTRA_PHOTO_CONTENT:I = 0x18

.field public static final EXTRA_STARRED_MULTI:I = 0x15

.field public static final EXTRA_UNBLOCK_DIRECTSHARE:I = 0x20

.field public static final EXTRA_VCARD_MULTI:I = 0x5

.field public static final EXTRA_VCHATON_TOOL:I = 0x26

.field public static final EXTRA_VT_TOOL:I = 0x22


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mActionCode:I

.field private mChangeDisplayMode:Z

.field private mChatVisible:Z

.field private mContactUri:Landroid/net/Uri;

.field private mDirectorySearchEnabled:Z

.field private mDisplayTab:Z

.field private mExtra:I

.field private mGroupName:Ljava/lang/String;

.field private mIncludeProfile:Z

.field private mIsSelectionMode:Z

.field private mLegacyCompatibilityMode:Z

.field private mMultipleSelectMode:Z

.field private mQueryString:Ljava/lang/String;

.field private mRedirectIntent:Landroid/content/Intent;

.field private mSearchMode:Z

.field private mShowChatFirst:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mValid:Z

.field private mhidecreatelabel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lcom/android/contacts/list/ContactsRequest$1;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactsRequest$1;-><init>()V

    sput-object v0, Lcom/android/contacts/list/ContactsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 203
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 211
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 213
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mShowChatFirst:Z

    .line 217
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mChatVisible:Z

    .line 219
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mIsSelectionMode:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    return p1
.end method

.method static synthetic access$1002(Lcom/android/contacts/list/ContactsRequest;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/contacts/list/ContactsRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/contacts/list/ContactsRequest;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return p1
.end method


# virtual methods
.method public copyFrom(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/contacts/list/ContactsRequest;

    .prologue
    .line 242
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 243
    iget v0, p1, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    iput v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 244
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    .line 245
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    .line 246
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    .line 247
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    .line 248
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    .line 249
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    .line 250
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    .line 251
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 252
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    .line 253
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    .line 254
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getActionCode()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return v0
.end method

.method public getActivityTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getChangeDisplayMode()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mChangeDisplayMode:Z

    return v0
.end method

.method public getChatFirstMode()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mShowChatFirst:Z

    return v0
.end method

.method public getChatVisible()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mChatVisible:Z

    return v0
.end method

.method public getContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getExtraValue()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mExtra:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getHideCreateLabel()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getSelectionMode()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIsSelectionMode:Z

    return v0
.end method

.method public getTabMode()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDisplayTab:Z

    return v0
.end method

.method public isDirectorySearchEnabled()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return v0
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return v0
.end method

.method public isMultiSelectMode()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mMultipleSelectMode:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mAccountName:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mAccountType:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setActionCode(I)V
    .locals 0
    .param p1, "actionCode"    # I

    .prologue
    .line 329
    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 330
    return-void
.end method

.method public setActivityTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    .line 318
    return-void
.end method

.method public setChangeDisplayMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mChangeDisplayMode:Z

    .line 445
    return-void
.end method

.method public setChatFirstMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 457
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mShowChatFirst:Z

    .line 458
    return-void
.end method

.method public setChatVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 465
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mChatVisible:Z

    .line 466
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    .line 398
    return-void
.end method

.method public setDirectorySearchEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 390
    return-void
.end method

.method public setExtraValue(I)V
    .locals 0
    .param p1, "extra"    # I

    .prologue
    .line 418
    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mExtra:I

    .line 419
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setHideCreateLabel(Z)V
    .locals 0
    .param p1, "hidecreateLabel"    # Z

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    .line 362
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0
    .param p1, "includeProfile"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    .line 354
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    .line 378
    return-void
.end method

.method public setMutiSelectMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mMultipleSelectMode:Z

    .line 407
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setRedirectIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    .line 314
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    .line 338
    return-void
.end method

.method public setSelectionMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mIsSelectionMode:Z

    .line 470
    return-void
.end method

.method public setTabMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDisplayTab:Z

    .line 415
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 306
    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ContactsRequest:mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRedirectIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSearchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mQueryString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIncludeProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGroupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLegacyCompatibilityMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDirectorySearchEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mContactUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mhidecreatelabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 282
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 285
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 286
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 293
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    return-void

    :cond_0
    move v0, v2

    .line 282
    goto :goto_0

    :cond_1
    move v0, v2

    .line 286
    goto :goto_1

    :cond_2
    move v0, v2

    .line 288
    goto :goto_2

    :cond_3
    move v0, v2

    .line 290
    goto :goto_3

    :cond_4
    move v0, v2

    .line 291
    goto :goto_4

    :cond_5
    move v1, v2

    .line 293
    goto :goto_5
.end method
