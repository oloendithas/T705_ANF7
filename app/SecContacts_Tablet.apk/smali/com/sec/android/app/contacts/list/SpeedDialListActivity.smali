.class public Lcom/sec/android/app/contacts/list/SpeedDialListActivity;
.super Landroid/app/Activity;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;,
        Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;,
        Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;,
        Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;
    }
.end annotation


# static fields
.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final CONTEXT_DELETE:I = 0x4

.field private static final CONTEXT_REPLACE:I = 0x3

.field private static final DATA_PROJECTION:[Ljava/lang/String;

.field private static final DIALOG_ID_CALL:I = 0x0

.field private static final DIALOG_ID_REPLACE:I = 0x1

.field private static final EXTRA_SPEED_DIAL_LIST_DATA_MAP_NEW:Ljava/lang/String; = "SpeedDialListDataMapNew"

.field private static final EXTRA_SPEED_DIAL_LIST_DATA_MAP_ORIG:Ljava/lang/String; = "SpeedDialListDataMapOrig"

.field private static final EXTRA_SPEED_DIAL_LIST_MAP_NEW:Ljava/lang/String; = "SpeedDialListMapNew"

.field private static final EXTRA_SPEED_DIAL_LIST_MAP_ORIG:Ljava/lang/String; = "SpeedDialListMapOrig"

.field private static final EXTRA_SPEED_DIAL_RELOAD:Ljava/lang/String; = "ReloadSpeedDial"

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final MAX:I = 0x3e8

.field private static final MAX_RANGE:I = 0x384

.field private static final MODE_CHANGE_ORDER:I = 0x1

.field private static final MODE_NORMAL:I = 0x0

.field private static final MODE_REMOVE:I = 0x2

.field private static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final REQUEST_CREATE_SPEEDDIAL:I = 0x64

.field private static final SCOPE:I = 0x64

.field private static final SPDL_RANGE:Ljava/lang/String; = "SPDL_RANGE"

.field private static final SPEED_DIAL_PROJECTION:[Ljava/lang/String;

.field private static final SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

.field private static final SPEED_DIAL_URI:Ljava/lang/String; = "content://com.android.contacts/contacts/speeddial/"

.field private static final TAG:Ljava/lang/String; = "SpeedDialListActivity"


# instance fields
.field private final DISPLAY_NAME:Ljava/lang/String;

.field private final NUMBER:Ljava/lang/String;

.field private final RESTART_TUTORIAL_MODE:I

.field private final SELECTED_NAME:Ljava/lang/String;

.field private SpinListener:Landroid/view/View$OnClickListener;

.field private final TYPE:Ljava/lang/String;

.field mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

.field private mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeOrderView:Landroid/view/View;

.field private mChangedPosition:I

.field private mContactIDCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMode:I

.field private mCustomMessageBody:Landroid/widget/LinearLayout;

.field private mCustomMessagePhoneNumber:Landroid/widget/TextView;

.field private mCustomMessageType:Landroid/widget/TextView;

.field private mDataIDCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDestinationIndex:I

.field private mDetailViewUri:Landroid/net/Uri;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisplayName:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFromDetail:Z

.field private mIsSelected:Z

.field private mIsTutorialMode:Z

.field private mMenuDone:Landroid/view/MenuItem;

.field private mOldIndex:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOrigContactIDCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOrigDataIDCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPageChangeView:Landroid/view/View;

.field private mReloadData:Z

.field private mSelectedContactName:Ljava/lang/String;

.field private mSelectedPhoneNumber:Ljava/lang/String;

.field private mShowThousandFlag:Z

.field public mSpdlDataObserver:Landroid/database/ContentObserver;

.field private mSpdlRange:Landroid/widget/TextView;

.field private mSpeedDialList:Landroid/widget/AbsListView;

.field protected mSpinRange:I

.field private mStartNumber:I

.field private mTitle:Ljava/lang/String;

.field private mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

.field private mType:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key_number"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    .line 144
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "key_number"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    const-string v1, "speed_dial_data_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    .line 150
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    const-string v1, "is_super_primary"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->DATA_PROJECTION:[Ljava/lang/String;

    .line 155
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "has_phone_number"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 160
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x65

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    const-string v0, "TYPE"

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->TYPE:Ljava/lang/String;

    .line 100
    const-string v0, "DISPLAY_NAME"

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->DISPLAY_NAME:Ljava/lang/String;

    .line 101
    const-string v0, "SELECTED_NAME"

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SELECTED_NAME:Ljava/lang/String;

    .line 102
    const-string v0, "NUMBER"

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->NUMBER:Ljava/lang/String;

    .line 104
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mShowThousandFlag:Z

    .line 120
    iput v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mStartNumber:I

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    .line 200
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    .line 202
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsFromDetail:Z

    .line 207
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->RESTART_TUTORIAL_MODE:I

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    .line 342
    new-instance v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SpinListener:Landroid/view/View$OnClickListener;

    .line 374
    new-instance v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$2;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpdlDataObserver:Landroid/database/ContentObserver;

    .line 2205
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mStartNumber:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpdlRange:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->showSpeedDialTutorialPopup()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getOnePhoneNumberId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;
    .param p1, "x1"    # J

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->assignSpeedDial(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    return v0
.end method

.method private assignSpeedDial(J)V
    .locals 9
    .param p1, "dataId"    # J

    .prologue
    const/4 v3, 0x0

    .line 2118
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDetailViewUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2146
    :cond_0
    :goto_0
    return-void

    .line 2122
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mView:Landroid/view/View;

    .line 2124
    .local v8, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDetailViewUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2126
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 2127
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDetailViewUri:Landroid/net/Uri;

    iget v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    invoke-virtual {p0, v6, v0, v8, v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Landroid/view/View;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2128
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2129
    .local v7, "values":Landroid/content/ContentValues;
    const-string v0, "key_number"

    iget v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2130
    const-string v0, "speed_dial_data_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2131
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2133
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2135
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2137
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsFromDetail:Z

    if-eqz v0, :cond_4

    .line 2138
    const v0, 0x7f0e02d7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2140
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->finish()V

    .line 2142
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->populateUpdatedData()V

    .line 2143
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    if-eqz v0, :cond_5

    .line 2144
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->notifyDataSetChanged()V

    .line 2145
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0
.end method

.method private cleanupResouces()V
    .locals 1

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->nullViewDrawablesRecursive(Landroid/view/View;)V

    .line 2291
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    .line 2292
    return-void
.end method

.method private customActivityResult(ILandroid/content/Intent;)V
    .locals 27
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 1175
    const-string v2, "index"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    .line 1176
    const-string v2, "SpeedDialListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    const-wide/16 v13, -0x1

    .line 1182
    .local v13, "contactId":J
    const-wide/16 v21, -0x1

    .line 1184
    .local v21, "rawContactId":J
    const-string v2, "contact_id"

    const-wide/16 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    .line 1186
    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-eqz v2, :cond_0

    .line 1189
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contact_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 1192
    .local v23, "rawcursor":Landroid/database/Cursor;
    if-eqz v23, :cond_3

    .line 1193
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1194
    const-string v2, "_id"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 1195
    :cond_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 1198
    :cond_3
    const-wide/16 v2, -0x1

    cmp-long v2, v21, v2

    if-eqz v2, :cond_0

    .line 1204
    const-string v18, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 1205
    .local v18, "dataIdSelection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1207
    .local v6, "dataIdSelectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v5, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1208
    .local v15, "cursor":Landroid/database/Cursor;
    const-wide/16 v16, -0x1

    .line 1209
    .local v16, "dataId":J
    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1210
    const/16 v20, 0x0

    .line 1213
    .local v20, "isPrimary":Z
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 1214
    :cond_4
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1216
    :try_start_0
    const-string v2, "is_super_primary"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 1218
    const-string v2, "_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    .line 1219
    const/16 v20, 0x1

    .line 1228
    :cond_5
    if-nez v20, :cond_6

    .line 1229
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1230
    const-string v2, "_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1233
    :cond_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1238
    .end local v20    # "isPrimary":Z
    :cond_7
    :goto_2
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-eqz v2, :cond_0

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mView:Landroid/view/View;

    move-object/from16 v26, v0

    .line 1243
    .local v26, "view":Landroid/view/View;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 1244
    .local v8, "contactUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 1247
    if-nez v8, :cond_9

    .line 1248
    const-string v2, "SpeedDialListActivity"

    const-string v3, "Contact uri is null, contact does not exist."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1222
    .end local v8    # "contactUri":Landroid/net/Uri;
    .end local v26    # "view":Landroid/view/View;
    .restart local v20    # "isPrimary":Z
    :catch_0
    move-exception v19

    .line 1223
    .local v19, "e":Ljava/lang/NumberFormatException;
    const/16 v20, 0x0

    .line 1224
    goto :goto_1

    .line 1234
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    .end local v20    # "isPrimary":Z
    :cond_8
    if-eqz v15, :cond_7

    .line 1235
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1252
    .restart local v8    # "contactUri":Landroid/net/Uri;
    .restart local v26    # "view":Landroid/view/View;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1253
    if-eqz v15, :cond_b

    .line 1255
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v15, v8, v1, v2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Landroid/view/View;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 1256
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 1257
    .local v25, "values":Landroid/content/ContentValues;
    const-string v2, "key_number"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1258
    const-string v2, "speed_dial_data_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1259
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1261
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1263
    .end local v25    # "values":Landroid/content/ContentValues;
    :cond_a
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1265
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->invalidateOptionsMenu()V

    .line 1266
    const-string v2, "tutorial_mode"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1267
    new-instance v24, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$5;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1278
    .local v24, "t":Ljava/lang/Thread;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private getOnePhoneNumberId()J
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 2091
    const-wide/16 v9, -0x1

    .line 2092
    .local v9, "returnValue":J
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDetailViewUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 2094
    .local v7, "contactId":J
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "data1"

    aput-object v0, v2, v12

    const/4 v0, 0x2

    const-string v1, "data2"

    aput-object v1, v2, v0

    .line 2097
    .local v2, "projection":[Ljava/lang/String;
    const-string v11, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 2099
    .local v11, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 2103
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2106
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2107
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 2108
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2109
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2112
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2114
    :cond_1
    return-wide v9
.end method

.method private isOrderChanged()Z
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2020
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    if-nez v9, :cond_1

    :cond_0
    move v9, v11

    .line 2053
    :goto_0
    return v9

    .line 2024
    :cond_1
    const-wide/16 v5, -0x1

    .line 2025
    .local v5, "origContactId":J
    const-wide/16 v1, -0x1

    .line 2026
    .local v1, "newContactId":J
    const-wide/16 v7, -0x1

    .line 2027
    .local v7, "origDataId":J
    const-wide/16 v3, -0x1

    .line 2028
    .local v3, "newDataId":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v9, 0x64

    if-gt v0, v9, :cond_8

    .line 2029
    const-wide/16 v5, -0x1

    .line 2030
    const-wide/16 v1, -0x1

    .line 2031
    const-wide/16 v7, -0x1

    .line 2032
    const-wide/16 v3, -0x1

    .line 2034
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 2035
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2036
    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 2037
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2038
    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 2039
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2040
    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 2041
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2044
    :cond_5
    cmp-long v9, v5, v1

    if-eqz v9, :cond_6

    move v9, v10

    .line 2045
    goto/16 :goto_0

    .line 2048
    :cond_6
    const-wide/16 v12, -0x1

    cmp-long v9, v5, v12

    if-eqz v9, :cond_7

    cmp-long v9, v5, v1

    if-nez v9, :cond_7

    cmp-long v9, v7, v3

    if-eqz v9, :cond_7

    move v9, v10

    .line 2049
    goto/16 :goto_0

    .line 2028
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_8
    move v9, v11

    .line 2053
    goto/16 :goto_0
.end method

.method private isSpeedDialRemoved()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2057
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 2076
    :goto_0
    return v5

    .line 2061
    :cond_1
    const-wide/16 v3, -0x1

    .line 2062
    .local v3, "origContactId":J
    const-wide/16 v1, -0x1

    .line 2063
    .local v1, "newContactId":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v5, 0x64

    if-gt v0, v5, :cond_5

    .line 2064
    const-wide/16 v3, -0x1

    .line 2065
    const-wide/16 v1, -0x1

    .line 2066
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2067
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2068
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2069
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2072
    :cond_3
    cmp-long v5, v3, v1

    if-eqz v5, :cond_4

    .line 2073
    const/4 v5, 0x1

    goto :goto_0

    .line 2063
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v5, v6

    .line 2076
    goto :goto_0
.end method

.method private nullViewDrawable(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2274
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2279
    :goto_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 2280
    .local v1, "imageView":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2281
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2282
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2285
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :goto_1
    return-void

    .line 2275
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2283
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private nullViewDrawablesRecursive(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2256
    if-eqz p1, :cond_1

    .line 2258
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 2260
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2261
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2262
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2263
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->nullViewDrawablesRecursive(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2261
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2265
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "index":I
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :catch_0
    move-exception v5

    .line 2268
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->nullViewDrawable(Landroid/view/View;)V

    .line 2270
    :cond_1
    return-void
.end method

.method private setChangeOrderInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    .line 1917
    iput v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    .line 1918
    iput v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    .line 1919
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    .line 1920
    return-void
.end method

.method private showSpeedDialTutorialPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2295
    new-instance v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    sget-object v1, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_SPEEDDIAL:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 2297
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const v1, 0x7f0e0433

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(Ljava/lang/String;)V

    .line 2298
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravity(I)V

    .line 2299
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIsSmallWindow(Z)V

    .line 2300
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setArrowVisibility(Z)V

    .line 2301
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c017f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 2303
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorLeftPosition(I)V

    .line 2305
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->showWithoutCir(Z)V

    .line 2306
    return-void
.end method

.method private updateDoneButtonStatus()V
    .locals 2

    .prologue
    .line 2079
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2080
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 2081
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->isOrderChanged()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2088
    :cond_0
    :goto_0
    return-void

    .line 2083
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2084
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 2085
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->isSpeedDialRemoved()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public doShowPicker()V
    .locals 22

    .prologue
    .line 2148
    const-string v2, "SpeedDialListActivity"

    const-string v3, "onCreateDialog"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2150
    .local v8, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDetailViewUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 2152
    .local v11, "contactId":J
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "data1"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "data2"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "data3"

    aput-object v3, v4, v2

    .line 2155
    .local v4, "projection":[Ljava/lang/String;
    const-string v17, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 2157
    .local v17, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 2161
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2164
    .local v9, "c":Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 2166
    .local v20, "title":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2167
    const-string v2, "display_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 2168
    const/4 v2, -0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2171
    :cond_0
    new-instance v13, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v13, v0, v1, v9}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 2174
    .local v13, "dataAdapter":Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;
    new-instance v10, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v13, v9}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$13;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;Landroid/database/Cursor;)V

    .line 2185
    .local v10, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 2187
    .local v15, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04008a

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 2189
    .local v21, "view":Landroid/view/View;
    const v2, 0x7f090020

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 2190
    .local v14, "divier":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2191
    const v2, 0x7f0901f6

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 2192
    .local v19, "setPrimaryView":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2194
    const v2, 0x7f0901f7

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2195
    .local v18, "setAsDefaultCheckBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 2196
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2198
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2199
    const/4 v2, -0x1

    invoke-virtual {v8, v13, v2, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2200
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2201
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 2202
    .local v16, "result":Landroid/app/AlertDialog;
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    .line 2203
    return-void
.end method

.method public isListEmpty()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1615
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1618
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1619
    :cond_0
    if-eqz v6, :cond_1

    .line 1620
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1622
    :cond_1
    const/4 v0, 0x1

    .line 1627
    :goto_0
    return v0

    .line 1624
    :cond_2
    if-eqz v6, :cond_3

    .line 1625
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1627
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 28
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1283
    const/16 v3, 0xb

    move/from16 v0, p2

    if-ne v0, v3, :cond_0

    .line 1284
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    .line 1285
    :cond_0
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    if-eqz p3, :cond_1

    .line 1286
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1288
    const/16 v3, 0x64

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 1289
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->customActivityResult(ILandroid/content/Intent;)V

    .line 1412
    :cond_1
    :goto_0
    return-void

    .line 1293
    :cond_2
    const-string v3, "tutorial_mode"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1294
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    .line 1295
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tutorial_mode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1298
    :cond_3
    const-string v3, "index"

    const/4 v4, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    .line 1299
    const-string v3, "SpeedDialListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position return : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1307
    const-string v3, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 1309
    .local v23, "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1312
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1318
    .local v20, "output":Ljava/lang/String;
    const/16 v3, 0x3b

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    const/16 v18, 0x1

    .line 1323
    .local v18, "hasDataId":Z
    :goto_1
    if-nez v18, :cond_9

    .line 1324
    const-string v3, "phone_data_id"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v21

    .line 1325
    .local v21, "phoneDataId":J
    const-string v24, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 1328
    .local v24, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 1332
    .local v7, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v6, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1334
    .local v14, "cursor":Landroid/database/Cursor;
    const-wide/16 v15, -0x1

    .line 1335
    .local v15, "dataId":J
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1336
    const/16 v19, 0x0

    .line 1339
    .local v19, "isPrimary":Z
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 1340
    :cond_4
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1342
    :try_start_0
    const-string v3, "is_super_primary"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 1344
    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v15

    .line 1345
    const/16 v19, 0x1

    .line 1355
    :cond_5
    if-nez v19, :cond_6

    .line 1356
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1357
    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1360
    :cond_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1366
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v19    # "isPrimary":Z
    .end local v21    # "phoneDataId":J
    .end local v24    # "selection":Ljava/lang/String;
    :cond_7
    :goto_3
    const-wide/16 v3, -0x1

    cmp-long v3, v15, v3

    if-eqz v3, :cond_1

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mView:Landroid/view/View;

    move-object/from16 v27, v0

    .line 1374
    .local v27, "view":Landroid/view/View;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 1375
    .local v9, "contactUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v9}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 1378
    if-nez v9, :cond_a

    .line 1379
    const-string v3, "SpeedDialListActivity"

    const-string v4, "Contact uri is null, contact does not exist."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1318
    .end local v9    # "contactUri":Landroid/net/Uri;
    .end local v15    # "dataId":J
    .end local v18    # "hasDataId":Z
    .end local v27    # "view":Landroid/view/View;
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1348
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "dataId":J
    .restart local v18    # "hasDataId":Z
    .restart local v19    # "isPrimary":Z
    .restart local v21    # "phoneDataId":J
    .restart local v24    # "selection":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 1349
    .local v17, "e":Ljava/lang/NumberFormatException;
    const/16 v19, 0x0

    .line 1350
    goto :goto_2

    .line 1363
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v15    # "dataId":J
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    .end local v19    # "isPrimary":Z
    .end local v21    # "phoneDataId":J
    .end local v24    # "selection":Ljava/lang/String;
    :cond_9
    const-string v3, "phone_data_id"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .restart local v15    # "dataId":J
    goto :goto_3

    .line 1383
    .restart local v9    # "contactUri":Landroid/net/Uri;
    .restart local v27    # "view":Landroid/view/View;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v10, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1384
    .restart local v14    # "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_c

    .line 1385
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v9, v1, v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Landroid/view/View;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    .line 1386
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 1387
    .local v26, "values":Landroid/content/ContentValues;
    const-string v3, "key_number"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1388
    const-string v3, "speed_dial_data_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1391
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1393
    .end local v26    # "values":Landroid/content/ContentValues;
    :cond_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1395
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->invalidateOptionsMenu()V

    .line 1396
    const-string v3, "tutorial_mode"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1397
    new-instance v25, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$6;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1408
    .local v25, "t":Ljava/lang/Thread;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 340
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1760
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 1766
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1769
    :goto_0
    return-void

    .line 1763
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1760
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCancelButtonClicked()V
    .locals 1

    .prologue
    .line 2016
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    .line 2017
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 1711
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1714
    .local v2, "menuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v3, v5

    .line 1753
    :goto_0
    return v3

    .line 1717
    :pswitch_0
    iget-object v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v6, 0x7f090467

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1721
    .local v1, "itemNumTextView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 1725
    iget v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1727
    :cond_0
    iget-object v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v6, 0x7f090459

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f0e033f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1729
    iget-object v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v6, 0x7f090457

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1731
    iget-object v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v6, 0x7f090469

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1735
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1739
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->invalidateOptionsMenu()V

    move v3, v4

    .line 1740
    goto :goto_0

    .line 1744
    .end local v1    # "itemNumTextView":Landroid/widget/TextView;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1745
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "additional"

    const-string v5, "phone"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1746
    const-string v3, "from_speed_dial"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1747
    const-string v3, "has_result"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1748
    const-string v3, "index"

    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1750
    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v4

    .line 1751
    goto/16 :goto_0

    .line 1714
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "mode"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "ReloadSpeedDial"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "fromDetail"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsFromDetail:Z

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "contactUri"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDetailViewUri:Landroid/net/Uri;

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "tutorial_mode"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    .line 221
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x400

    const/16 v10, 0x400

    invoke-virtual {v8, v9, v10}, Landroid/view/Window;->setFlags(II)V

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 223
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setFinishOnTouchOutside(Z)V

    .line 225
    iget v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    packed-switch v8, :pswitch_data_0

    .line 237
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 238
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 240
    const/16 v8, 0xc

    const/16 v9, 0xc

    invoke-virtual {v0, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 244
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v6, v8, Landroid/content/res/Configuration;->orientation:I

    .line 245
    .local v6, "rot":I
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 246
    .local v7, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c020a

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v7, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 247
    invoke-virtual {v7}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 248
    .local v1, "dimAmount":F
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 252
    .local v4, "param":Landroid/view/WindowManager$LayoutParams;
    const/16 v8, 0x35

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c01d2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 255
    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const v9, 0x7f040089

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 263
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 266
    .end local v4    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 267
    const-string v8, ""

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 277
    .end local v1    # "dimAmount":F
    .end local v6    # "rot":I
    .end local v7    # "tv":Landroid/util/TypedValue;
    :goto_2
    const v8, 0x7f0401f9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setContentView(I)V

    .line 278
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setChangeOrderInit()V

    .line 280
    if-nez p1, :cond_6

    .line 281
    iget v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mStartNumber:I

    iput v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    .line 292
    :goto_3
    const v8, 0x7f090466

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    .line 293
    const v8, 0x7f090462

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mPageChangeView:Landroid/view/View;

    .line 295
    :try_start_0
    new-instance v8, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-direct {v8, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    iput-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    .line 296
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 297
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    const v9, 0x106000d

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 298
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    const/high16 v9, 0x2000000

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->setScrollBarStyle(I)V

    .line 299
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->setVerticalScrollBarPadding(Z)V

    .line 300
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->setVerticalScrollBarPaddingPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_4
    iget v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    if-nez v8, :cond_7

    .line 306
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    invoke-virtual {v8, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 307
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    invoke-virtual {v8, p0}, Landroid/widget/AbsListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 324
    :cond_1
    :goto_5
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mPageChangeView:Landroid/view/View;

    const v9, 0x7f090463

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 325
    .local v3, "leftSpin":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mPageChangeView:Landroid/view/View;

    const v9, 0x7f090465

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 326
    .local v5, "rightSpin":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mPageChangeView:Landroid/view/View;

    const v9, 0x7f090464

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpdlRange:Landroid/widget/TextView;

    .line 328
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SpinListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SpinListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    iput-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 331
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    .line 333
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpdlDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 334
    return-void

    .line 227
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v3    # "leftSpin":Landroid/widget/ImageView;
    .end local v5    # "rightSpin":Landroid/widget/ImageView;
    :pswitch_0
    const v8, 0x7f0e0230

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 230
    :pswitch_1
    const v8, 0x7f0e025c

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 233
    :pswitch_2
    const v8, 0x7f0e0074

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 260
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    .restart local v1    # "dimAmount":F
    .restart local v4    # "param":Landroid/view/WindowManager$LayoutParams;
    .restart local v6    # "rot":I
    .restart local v7    # "tv":Landroid/util/TypedValue;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c01d3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_1

    .line 269
    .end local v4    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 271
    .end local v1    # "dimAmount":F
    .end local v6    # "rot":I
    .end local v7    # "tv":Landroid/util/TypedValue;
    :cond_4
    iget v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 272
    const-string v8, ""

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 274
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 283
    :cond_6
    const-string v8, "DISPLAY_NAME"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    .line 284
    const-string v8, "TYPE"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    .line 285
    const-string v8, "NUMBER"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 286
    const-string v8, "SELECTED_NAME"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    .line 287
    const-string v8, "tutorial_mode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    .line 288
    const-string v8, "SPDL_RANGE"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    goto/16 :goto_3

    .line 301
    :catch_0
    move-exception v2

    .line 302
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 308
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    iget v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 309
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    invoke-virtual {v8, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_5

    .line 310
    :cond_8
    iget v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 311
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    invoke-virtual {v8, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_5

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 1668
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1669
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mShowThousandFlag:Z

    if-eqz v0, :cond_1

    .line 1707
    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_0
    :goto_0
    return-void

    .restart local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_1
    move-object v0, p3

    .line 1672
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    add-int v8, v0, v1

    .line 1673
    .local v8, "position":I
    if-eqz v8, :cond_0

    .line 1676
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    if-nez v0, :cond_0

    .line 1679
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1681
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    move-object v0, p3

    .line 1684
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v1, 0x7f090457

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1687
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v1, 0x7f090459

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1689
    .local v7, "nameView":Landroid/widget/TextView;
    if-eqz v7, :cond_5

    .line 1690
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1694
    :goto_1
    const/4 v0, 0x3

    const v1, 0x7f0e033c

    invoke-interface {p1, v9, v0, v9, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1695
    const/4 v0, 0x4

    const v1, 0x7f0e0074

    invoke-interface {p1, v9, v0, v9, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1699
    .end local v7    # "nameView":Landroid/widget/TextView;
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1700
    :cond_3
    invoke-interface {p1}, Landroid/view/ContextMenu;->clearHeader()V

    .line 1701
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 1704
    :cond_4
    if-eqz v6, :cond_0

    .line 1705
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1692
    .restart local v7    # "nameView":Landroid/widget/TextView;
    :cond_5
    const v0, 0x7f0e0230

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto :goto_1

    .line 1679
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1424
    const-string v2, "SpeedDialListActivity"

    const-string v3, "onCreateDialog()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const/4 v0, 0x0

    .line 1442
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040072

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    .line 1449
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    const v3, 0x7f0901ad

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageType:Landroid/widget/TextView;

    .line 1451
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    const v3, 0x7f0901ae

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    .line 1453
    if-nez p1, :cond_6

    .line 1454
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1455
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    .line 1457
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1458
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageType:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1460
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1462
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1465
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1466
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e031f

    new-instance v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$8;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$8;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e033d

    new-instance v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$7;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$7;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1491
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1493
    const v2, 0x7f0e039c

    new-instance v3, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$9;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1552
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 1553
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1554
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 1503
    :cond_5
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1504
    const v2, 0x7f0e031b

    new-instance v3, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$10;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1515
    :cond_6
    if-ne p1, v8, :cond_3

    .line 1516
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1517
    .local v1, "mlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1519
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageType:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1520
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1521
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1523
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0342

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1528
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1529
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0341

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0347

    new-instance v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$12;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$12;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e02d4

    new-instance v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$11;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$11;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v4, 0x7f12000f

    const v3, 0x7f0904db

    const/4 v2, 0x1

    .line 1559
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mShowThousandFlag:Z

    if-eqz v1, :cond_1

    .line 1598
    :cond_0
    :goto_0
    return v2

    .line 1562
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->isListEmpty()Z

    move-result v1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    if-nez v1, :cond_0

    .line 1566
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsFromDetail:Z

    if-nez v1, :cond_0

    .line 1571
    iget v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1573
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1574
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120022

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1582
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1585
    .restart local v0    # "inflater":Landroid/view/MenuInflater;
    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1586
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mMenuDone:Landroid/view/MenuItem;

    goto :goto_0

    .line 1589
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1593
    .restart local v0    # "inflater":Landroid/view/MenuInflater;
    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1594
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mMenuDone:Landroid/view/MenuItem;

    goto :goto_0

    .line 1571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 2243
    const-string v0, "SpeedDialListActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 2245
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->cleanupResouces()V

    .line 2247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    .line 2248
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpdlDataObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2249
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpdlDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2252
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2253
    return-void
.end method

.method public onDoneButtonClicked()V
    .locals 27

    .prologue
    .line 1924
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1925
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 1926
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1927
    .local v23, "values":Landroid/content/ContentValues;
    const-wide/16 v14, -0x1

    .line 1928
    .local v14, "origContactId":J
    const-wide/16 v8, -0x1

    .line 1929
    .local v8, "newContactId":J
    const-wide/16 v16, -0x1

    .line 1930
    .local v16, "origDataId":J
    const-wide/16 v10, -0x1

    .line 1932
    .local v10, "newDataId":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v24, 0x64

    move/from16 v0, v24

    if-gt v5, v0, :cond_d

    .line 1933
    const-wide/16 v14, -0x1

    .line 1934
    const-wide/16 v8, -0x1

    .line 1935
    const-wide/16 v16, -0x1

    .line 1936
    const-wide/16 v10, -0x1

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 1938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1940
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_1

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1943
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_2

    .line 1944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1946
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_3

    .line 1947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1949
    :cond_3
    cmp-long v24, v14, v8

    if-eqz v24, :cond_8

    .line 1950
    const-wide/16 v24, -0x1

    cmp-long v24, v8, v24

    if-nez v24, :cond_5

    .line 1953
    add-int/lit8 v6, v5, 0x1

    .line 1954
    .local v6, "keyNumber":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 1955
    .local v21, "uri":Landroid/net/Uri;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "key_number="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1932
    .end local v6    # "keyNumber":I
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1959
    :cond_5
    add-int/lit8 v6, v5, 0x1

    .line 1960
    .restart local v6    # "keyNumber":I
    const-wide/16 v24, -0x1

    cmp-long v24, v14, v24

    if-nez v24, :cond_7

    .line 1961
    const-string v25, "speed_dial_data_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1962
    const-string v24, "key_number"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1963
    const-string v24, "content://com.android.contacts/contacts/speeddial/"

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 1964
    .restart local v21    # "uri":Landroid/net/Uri;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 1965
    .local v22, "uriInserted":Landroid/net/Uri;
    if-nez v22, :cond_6

    .line 1966
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1967
    .local v7, "mUri":Landroid/net/Uri;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "key_number="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v4, v7, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1969
    .end local v7    # "mUri":Landroid/net/Uri;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    goto :goto_1

    .line 1971
    .end local v21    # "uri":Landroid/net/Uri;
    .end local v22    # "uriInserted":Landroid/net/Uri;
    :cond_7
    const-string v25, "speed_dial_data_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1972
    const-string v24, "key_number"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1973
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 1974
    .restart local v21    # "uri":Landroid/net/Uri;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "key_number="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 1975
    .local v20, "rowChanged":I
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_1

    .line 1978
    .end local v6    # "keyNumber":I
    .end local v20    # "rowChanged":I
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_8
    const-wide/16 v24, -0x1

    cmp-long v24, v14, v24

    if-eqz v24, :cond_4

    cmp-long v24, v14, v8

    if-nez v24, :cond_4

    cmp-long v24, v16, v10

    if-eqz v24, :cond_4

    .line 1979
    add-int/lit8 v6, v5, 0x1

    .line 1980
    .restart local v6    # "keyNumber":I
    const-string v25, "speed_dial_data_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1981
    const-string v24, "key_number"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1982
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 1983
    .restart local v21    # "uri":Landroid/net/Uri;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "key_number="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 1984
    .restart local v20    # "rowChanged":I
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_1

    .line 1987
    .end local v5    # "i":I
    .end local v6    # "keyNumber":I
    .end local v8    # "newContactId":J
    .end local v10    # "newDataId":J
    .end local v14    # "origContactId":J
    .end local v16    # "origDataId":J
    .end local v20    # "rowChanged":I
    .end local v21    # "uri":Landroid/net/Uri;
    .end local v23    # "values":Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 1988
    const-wide/16 v18, -0x1

    .line 1989
    .local v18, "origId":J
    const-wide/16 v12, -0x1

    .line 1990
    .local v12, "newId":J
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    const/16 v24, 0x64

    move/from16 v0, v24

    if-gt v5, v0, :cond_d

    .line 1991
    const-wide/16 v18, -0x1

    .line 1992
    const-wide/16 v12, -0x1

    .line 1993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_a

    .line 1994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 1996
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_b

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1999
    :cond_b
    cmp-long v24, v18, v12

    if-eqz v24, :cond_c

    .line 2000
    const-wide/16 v24, -0x1

    cmp-long v24, v12, v24

    if-nez v24, :cond_c

    .line 2003
    add-int/lit8 v6, v5, 0x1

    .line 2004
    .restart local v6    # "keyNumber":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 2005
    .restart local v21    # "uri":Landroid/net/Uri;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "key_number="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1990
    .end local v6    # "keyNumber":I
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 2011
    .end local v5    # "i":I
    .end local v12    # "newId":J
    .end local v18    # "origId":J
    :cond_d
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    .line 2012
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 21
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 597
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 599
    if-nez p3, :cond_2

    .line 600
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    if-eqz v3, :cond_1

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 604
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setChangeOrderInit()V

    .line 889
    :cond_1
    :goto_0
    return-void

    .line 606
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    if-eqz v3, :cond_8

    .line 607
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    .line 608
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    .line 609
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    if-ne v3, v4, :cond_3

    .line 611
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setChangeOrderInit()V

    .line 612
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 620
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 625
    .local v16, "tempContactID":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 629
    .local v18, "tempDataID":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .end local v16    # "tempContactID":J
    .end local v18    # "tempDataID":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 634
    .restart local v16    # "tempContactID":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 638
    .restart local v18    # "tempDataID":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .end local v16    # "tempContactID":J
    .end local v18    # "tempDataID":J
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(Landroid/view/View;I)I

    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->notifyDataSetChanged()V

    .line 661
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->updateDoneButtonStatus()V

    .line 677
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(Landroid/view/View;I)I

    goto/16 :goto_0

    .line 643
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 646
    .restart local v16    # "tempContactID":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 650
    .restart local v18    # "tempDataID":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 682
    .end local v16    # "tempContactID":J
    .end local v18    # "tempDataID":J
    :cond_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    .line 683
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    .line 684
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    .line 686
    const v3, 0x7f02095e

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 688
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    .line 689
    invoke-virtual/range {p2 .. p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 690
    .local v12, "deleteButton":Landroid/view/View;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 691
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 694
    const v3, 0x7f090467

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 697
    .local v14, "itemNumTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    if-eqz v14, :cond_a

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    :cond_a
    const v3, 0x7f090459

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0e033e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 702
    const v3, 0x7f090457

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 703
    const v3, 0x7f090468

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 704
    const v3, 0x7f090468

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 721
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->updateDoneButtonStatus()V

    goto/16 :goto_0

    .line 725
    .end local v12    # "deleteButton":Landroid/view/View;
    .end local v14    # "itemNumTextView":Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mStartNumber:I

    if-ne v3, v4, :cond_f

    .line 726
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    if-eqz v3, :cond_d

    .line 727
    const v3, 0x7f0e0438

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 731
    :cond_d
    const/16 v20, 0x0

    .line 732
    .local v20, "voiceMailNumber":Ljava/lang/String;
    const-string v3, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v20

    .line 734
    const-string v3, "SpeedDialListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "voice mail number ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    if-eqz v20, :cond_e

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e

    .line 737
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "voicemail"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v13, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 739
    .local v13, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 744
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 742
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_e
    new-instance v13, Landroid/content/Intent;

    const-string v3, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v13    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 745
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v20    # "voiceMailNumber":Ljava/lang/String;
    :cond_f
    const v3, 0x7f090457

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 746
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    if-eqz v3, :cond_10

    .line 747
    const v3, 0x7f0e0438

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 750
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsFromDetail:Z

    if-eqz v3, :cond_17

    .line 751
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    .line 752
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 754
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key_number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 758
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_11

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 759
    const-string v3, "display_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    .line 761
    :cond_11
    if-eqz v9, :cond_12

    .line 762
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 764
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDetailViewUri:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "display_name"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 767
    if-eqz v9, :cond_13

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 768
    const-string v3, "display_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 770
    :cond_13
    if-eqz v9, :cond_14

    .line 771
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 773
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_16

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    if-eqz v3, :cond_15

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0341

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 778
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_16

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0342

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    :cond_16
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 787
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mShowThousandFlag:Z

    if-nez v3, :cond_1

    .line 789
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    .line 790
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key_number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    add-int v7, v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 795
    .restart local v9    # "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1b

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 797
    const-string v3, "display_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    .line 798
    const-string v3, "display_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    .line 799
    const-string v3, "number"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 800
    const-string v3, "type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 823
    .local v15, "numberType":I
    invoke-static {v15}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    .line 825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1a

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 829
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageType:Landroid/widget/TextView;

    if-eqz v3, :cond_19

    .line 830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_1a

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->showDialog(I)V

    .line 840
    .end local v15    # "numberType":I
    :cond_1b
    if-eqz v9, :cond_1

    .line 841
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 845
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    .line 846
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsFromDetail:Z

    if-eqz v3, :cond_1e

    .line 847
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getOnePhoneNumberId()J

    move-result-wide v10

    .line 849
    .local v10, "dataId":J
    const-wide/16 v3, -0x1

    cmp-long v3, v10, v3

    if-nez v3, :cond_1d

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->doShowPicker()V

    goto/16 :goto_0

    .line 852
    :cond_1d
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->assignSpeedDial(J)V

    goto/16 :goto_0

    .line 855
    .end local v10    # "dataId":J
    :cond_1e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 857
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    if-eqz v3, :cond_1f

    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v3, :cond_20

    .line 859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 864
    :cond_1f
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->show(Landroid/app/FragmentManager;Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;IZ)V

    .line 884
    :goto_4
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 861
    :cond_20
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    goto :goto_3

    .line 866
    :cond_21
    new-instance v13, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_LIST"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 867
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v3, "additional"

    const-string v4, "phone"

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    const-string v3, "from_speed_dial"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 869
    const-string v3, "has_result"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 870
    const-string v3, "index"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 872
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    if-eqz v3, :cond_23

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v3, :cond_22

    .line 874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 875
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 877
    :cond_22
    const-string v3, "tutorial_mode"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 880
    :cond_23
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 1632
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1660
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    .line 1662
    :goto_0
    return v1

    .line 1634
    :sswitch_0
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 1640
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->finish()V

    goto :goto_0

    .line 1637
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1645
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->onCancelButtonClicked()V

    goto :goto_0

    .line 1648
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->onDoneButtonClicked()V

    goto :goto_0

    .line 1651
    :sswitch_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1654
    :sswitch_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1632
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_2
        0x7f0904f6 -> :sswitch_1
        0x7f090531 -> :sswitch_3
        0x7f090532 -> :sswitch_4
    .end sparse-switch

    .line 1634
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1603
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->isListEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1605
    const/4 v0, 0x1

    .line 1608
    :goto_0
    return v0

    .line 1607
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->updateDoneButtonStatus()V

    .line 1608
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 565
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 566
    const-string v0, "misselected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    .line 567
    const-string v0, "moldindex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    .line 568
    const-string v0, "SpeedDialListMapNew"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    .line 570
    const-string v0, "SpeedDialListMapOrig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    .line 572
    const-string v0, "SpeedDialListDataMapNew"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    .line 574
    const-string v0, "SpeedDialListDataMapOrig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    .line 576
    const-string v0, "SpeedDialListDataMapNew"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 524
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 525
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpdlRange:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%02d"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v9, [Ljava/lang/Object;

    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    add-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, -0x1

    const/16 v7, 0x3e8

    if-ne v0, v7, :cond_2

    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    add-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, -0x2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    if-eqz v0, :cond_0

    .line 530
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->isShowing(Landroid/app/FragmentManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->showSpeedDialTutorialPopup()V

    .line 549
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->populateUpdatedData()V

    .line 551
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 552
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->updateDoneButtonStatus()V

    .line 553
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->isListEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    .line 559
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->notifyDataSetChanged()V

    .line 560
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->invalidateOptionsMenu()V

    .line 561
    return-void

    .line 525
    :cond_2
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    add-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 536
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 537
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 538
    const v0, 0x7f0e0437

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 539
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 540
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->finish()V

    goto :goto_1

    .line 542
    :cond_4
    if-eqz v6, :cond_5

    .line 543
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 545
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->showSpeedDialTutorialPopup()V

    goto :goto_1

    .line 556
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    if-ne v0, v9, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->isListEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    goto :goto_2
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1415
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 1416
    .local v0, "texts":[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1417
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1418
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1420
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 920
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 922
    const-string v0, "moldindex"

    iget v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 923
    const-string v0, "misselected"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 924
    const-string v0, "tutorial_mode"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 925
    const-string v0, "SPDL_RANGE"

    iget v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 927
    const-string v0, "DISPLAY_NAME"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v0, "NUMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v0, "TYPE"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v0, "SELECTED_NAME"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v0, "SpeedDialListMapNew"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 932
    const-string v0, "SpeedDialListMapOrig"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 933
    const-string v0, "SpeedDialListDataMapNew"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 934
    const-string v0, "SpeedDialListDataMapOrig"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 935
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 586
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 592
    :cond_0
    return-void
.end method

.method public populateData()V
    .locals 18

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 387
    const-wide/16 v14, -0x1

    .line 388
    .local v14, "rawContactId":J
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 390
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 391
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 392
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 394
    const-string v1, "key_number"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 395
    .local v12, "keyValue":I
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 396
    .local v13, "position":I
    const-wide/16 v16, -0x1

    .line 397
    .local v16, "speed_dial_data_id":J
    const-string v1, "speed_dial_data_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 398
    const-string v1, "raw_contact_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 402
    .local v10, "cursor2":Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 404
    .local v7, "contactId":J
    if-eqz v10, :cond_1

    .line 405
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 407
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    add-int/lit8 v2, v13, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    add-int/lit8 v2, v13, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    add-int/lit8 v2, v13, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    add-int/lit8 v2, v13, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 392
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 415
    .end local v7    # "contactId":J
    .end local v10    # "cursor2":Landroid/database/Cursor;
    .end local v12    # "keyValue":I
    .end local v13    # "position":I
    .end local v16    # "speed_dial_data_id":J
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 417
    .end local v11    # "i":I
    :cond_3
    return-void
.end method

.method public populateUpdatedData()V
    .locals 23

    .prologue
    .line 420
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    packed-switch v2, :pswitch_data_0

    .line 447
    :cond_0
    :goto_0
    const-wide/16 v18, -0x1

    .line 448
    .local v18, "rawContactId":J
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 450
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_5

    .line 451
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 452
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v13, v2, :cond_4

    .line 454
    const-string v2, "key_number"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 455
    .local v16, "keyValue":I
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 456
    .local v17, "position":I
    const-wide/16 v20, -0x1

    .line 457
    .local v20, "speed_dial_data_id":J
    const-string v2, "speed_dial_data_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 458
    const-string v2, "raw_contact_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 462
    .local v12, "cursor2":Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 464
    .local v8, "contactId":J
    if-eqz v12, :cond_2

    .line 465
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 467
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 470
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    packed-switch v2, :pswitch_data_1

    .line 491
    :cond_3
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 452
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 422
    .end local v8    # "contactId":J
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "cursor2":Landroid/database/Cursor;
    .end local v13    # "i":I
    .end local v16    # "keyValue":I
    .end local v17    # "position":I
    .end local v18    # "rawContactId":J
    .end local v20    # "speed_dial_data_id":J
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 428
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 429
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    if-eqz v2, :cond_0

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 436
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 437
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    if-eqz v2, :cond_0

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 472
    .restart local v8    # "contactId":J
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "cursor2":Landroid/database/Cursor;
    .restart local v13    # "i":I
    .restart local v16    # "keyValue":I
    .restart local v17    # "position":I
    .restart local v18    # "rawContactId":J
    .restart local v20    # "speed_dial_data_id":J
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 475
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    if-eqz v2, :cond_3

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 483
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    if-eqz v2, :cond_3

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 493
    .end local v8    # "contactId":J
    .end local v12    # "cursor2":Landroid/database/Cursor;
    .end local v16    # "keyValue":I
    .end local v17    # "position":I
    .end local v20    # "speed_dial_data_id":J
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 497
    .end local v13    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 498
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 500
    .local v10, "contentResolver":Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    const/16 v2, 0x64

    if-ge v13, v2, :cond_8

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 504
    .local v14, "id":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    add-int/lit8 v15, v13, 0x1

    .line 509
    .local v15, "keyNumber":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 510
    .local v22, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 500
    .end local v14    # "id":Ljava/lang/Long;
    .end local v15    # "keyNumber":I
    .end local v22    # "uri":Landroid/net/Uri;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 516
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    .line 519
    .end local v10    # "contentResolver":Landroid/content/ContentResolver;
    .end local v13    # "i":I
    :cond_9
    return-void

    .line 420
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 470
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public restartActivityInMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1772
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->finish()V

    .line 1773
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1774
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1775
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1776
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1777
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1778
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1779
    const-string v1, "ReloadSpeedDial"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1780
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1781
    return-void
.end method

.method public setItemLayout(JLandroid/view/View;I)I
    .locals 9
    .param p1, "contactId"    # J
    .param p3, "parentView"    # Landroid/view/View;
    .param p4, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 992
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 995
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 996
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 997
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v6, v8, p3, p4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Landroid/view/View;I)I

    move-result v7

    .line 999
    .local v7, "resultCode":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1003
    .end local v7    # "resultCode":I
    .end local v8    # "uri":Landroid/net/Uri;
    :goto_0
    return v7

    :cond_0
    const/4 v7, -0x1

    goto :goto_0
.end method

.method public setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Landroid/view/View;I)I
    .locals 27
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactUri"    # Landroid/net/Uri;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I

    .prologue
    .line 1007
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1008
    :cond_0
    const/4 v2, 0x0

    .line 1169
    :goto_0
    return v2

    .line 1010
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1011
    .local v22, "name":Ljava/lang/String;
    const-string v2, "has_phone_number"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1013
    .local v21, "hasPhoneNumber":I
    if-nez v21, :cond_2

    .line 1016
    const/4 v2, 0x0

    goto :goto_0

    .line 1019
    :cond_2
    if-eqz p3, :cond_c

    .line 1020
    const/16 v24, 0x0

    .line 1021
    .local v24, "photo":Landroid/graphics/Bitmap;
    const-string v2, "photo_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 1023
    .local v25, "photoId":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/ref/SoftReference;

    .line 1024
    .local v26, "photoRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-nez v26, :cond_d

    .line 1026
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 1034
    :goto_1
    if-eqz v24, :cond_3

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    :cond_3
    :goto_2
    const v2, 0x7f0903fb

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1060
    .local v5, "photoContainer":Landroid/view/View;
    const v2, 0x7f090457

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1061
    .local v6, "photoView":Landroid/widget/ImageView;
    const v2, 0x7f090469

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1062
    .local v8, "NoContactView":Landroid/widget/ImageView;
    const v2, 0x7f090468

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1063
    .local v7, "photoTouchOverlay":Landroid/view/View;
    invoke-virtual/range {p3 .. p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 1065
    .local v19, "deleteButton":Landroid/view/View;
    if-nez v19, :cond_4

    .line 1066
    const v2, 0x7f090461

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 1067
    if-eqz v19, :cond_4

    .line 1069
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1072
    :cond_4
    const v2, 0x7f090459

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1073
    .local v4, "nameView":Landroid/widget/TextView;
    const v2, 0x7f090467

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1074
    .local v23, "numberView":Landroid/widget/TextView;
    const v2, 0x7f09046a

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1076
    .local v9, "contactNumView":Landroid/widget/TextView;
    if-nez v24, :cond_e

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    .line 1079
    .local v16, "contactId":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1081
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1086
    .end local v16    # "contactId":Ljava/lang/String;
    :goto_3
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1088
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1090
    if-eqz v7, :cond_5

    .line 1091
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    move-object/from16 v17, p2

    .line 1094
    .local v17, "contactUriData":Landroid/net/Uri;
    new-instance v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$3;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/net/Uri;)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    .end local v17    # "contactUriData":Landroid/net/Uri;
    :cond_5
    if-eqz p4, :cond_f

    .line 1109
    if-eqz v19, :cond_6

    .line 1110
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    :cond_6
    new-instance v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1138
    if-eqz v19, :cond_7

    .line 1139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    :cond_7
    :goto_4
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1144
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v2, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1146
    .local v18, "cursor2":Landroid/database/Cursor;
    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1147
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1148
    :cond_8
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1149
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1150
    if-eqz v21, :cond_9

    const/4 v2, -0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_9

    .line 1151
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1153
    :cond_9
    if-eqz v23, :cond_a

    .line 1154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1158
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 1159
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    move/from16 v0, p4

    if-ne v2, v0, :cond_b

    .line 1160
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    .line 1161
    const v2, 0x7f02095e

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1163
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    move/from16 v0, p4

    if-ne v2, v0, :cond_c

    .line 1164
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1169
    .end local v4    # "nameView":Landroid/widget/TextView;
    .end local v5    # "photoContainer":Landroid/view/View;
    .end local v6    # "photoView":Landroid/widget/ImageView;
    .end local v7    # "photoTouchOverlay":Landroid/view/View;
    .end local v8    # "NoContactView":Landroid/widget/ImageView;
    .end local v9    # "contactNumView":Landroid/widget/TextView;
    .end local v18    # "cursor2":Landroid/database/Cursor;
    .end local v19    # "deleteButton":Landroid/view/View;
    .end local v23    # "numberView":Landroid/widget/TextView;
    .end local v24    # "photo":Landroid/graphics/Bitmap;
    .end local v25    # "photoId":Ljava/lang/Long;
    .end local v26    # "photoRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_c
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1029
    .restart local v24    # "photo":Landroid/graphics/Bitmap;
    .restart local v25    # "photoId":Ljava/lang/Long;
    .restart local v26    # "photoRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catch_0
    move-exception v20

    .line 1031
    .local v20, "exception":Ljava/lang/OutOfMemoryError;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1032
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1038
    .end local v20    # "exception":Ljava/lang/OutOfMemoryError;
    :cond_d
    invoke-virtual/range {v26 .. v26}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "photo":Landroid/graphics/Bitmap;
    check-cast v24, Landroid/graphics/Bitmap;

    .line 1040
    .restart local v24    # "photo":Landroid/graphics/Bitmap;
    if-nez v24, :cond_3

    .line 1041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v24

    .line 1051
    :goto_5
    if-eqz v24, :cond_3

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1046
    :catch_1
    move-exception v20

    .line 1048
    .restart local v20    # "exception":Ljava/lang/OutOfMemoryError;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1049
    const/16 v24, 0x0

    goto :goto_5

    .line 1083
    .end local v20    # "exception":Ljava/lang/OutOfMemoryError;
    .restart local v4    # "nameView":Landroid/widget/TextView;
    .restart local v5    # "photoContainer":Landroid/view/View;
    .restart local v6    # "photoView":Landroid/widget/ImageView;
    .restart local v7    # "photoTouchOverlay":Landroid/view/View;
    .restart local v8    # "NoContactView":Landroid/widget/ImageView;
    .restart local v9    # "contactNumView":Landroid/widget/TextView;
    .restart local v19    # "deleteButton":Landroid/view/View;
    .restart local v23    # "numberView":Landroid/widget/TextView;
    :cond_e
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 1141
    :cond_f
    if-eqz v19, :cond_7

    .line 1142
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public setItemLayout(Landroid/view/View;I)I
    .locals 12
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 938
    const/4 v8, 0x0

    .line 939
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 940
    .local v6, "contactId":J
    const-wide/16 v10, -0x1

    .line 942
    .local v10, "rawContactId":J
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 945
    if-eqz v8, :cond_1

    .line 946
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    const-string v0, "raw_contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 948
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 951
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 954
    if-eqz v8, :cond_3

    .line 955
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 956
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 957
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 960
    :cond_3
    const-wide/16 v0, 0x1

    cmp-long v0, v6, v0

    if-gez v0, :cond_6

    .line 961
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 963
    new-instance v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;

    invoke-direct {v9}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;-><init>()V

    .line 964
    .local v9, "holder":Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;
    const v0, 0x7f090457

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    .line 965
    const v0, 0x7f090459

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mName:Landroid/widget/TextView;

    .line 966
    const v0, 0x7f090467

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    .line 967
    const v0, 0x7f09046a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    .line 971
    iget-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 972
    iget-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    :cond_4
    iget-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v1, 0x7f0e033e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 975
    iget-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 977
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 979
    .end local v9    # "holder":Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;
    :cond_5
    const/4 v0, 0x0

    .line 987
    :goto_0
    return v0

    .line 982
    :cond_6
    invoke-virtual {p0, v6, v7, p1, p2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(JLandroid/view/View;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 983
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 984
    const/4 v0, -0x1

    goto :goto_0

    .line 986
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    new-instance v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 987
    const/4 v0, 0x0

    goto :goto_0
.end method
