.class public Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.super Landroid/app/Activity;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;,
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;,
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;,
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;,
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;
    }
.end annotation


# static fields
.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field public static final DATA_PROJECTION:[Ljava/lang/String;

.field private static final KEY_DONE_BUTTON_CLICKABLE:Ljava/lang/String; = "doneButtonClickable"

.field private static final KEY_IS_CHANGING_CONFIGURATION:Ljava/lang/String; = "isChangingOrientation"

.field private static final MODE_CHANGE_ORDER:I = 0x1

.field private static final MODE_NORMAL:I = 0x0

.field private static final MODE_REMOVE:I = 0x2

.field private static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final REQUEST_CREATE_SPEEDDIAL:I = 0x64

.field private static final SPEED_DIAL_PROJECTION:[Ljava/lang/String;

.field private static final SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SpeedDialActivity"

.field private static mContext:Landroid/content/Context;

.field private static mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;


# instance fields
.field private final ACCOUNT_TYPE:Ljava/lang/String;

.field private final DISPLAY_NAME:Ljava/lang/String;

.field LAUNCH_ANIMATION_DURATION:I

.field private final NUMBER:Ljava/lang/String;

.field private final NUMBER_IMAGES:[I

.field private final NUMBER_TYPE:Ljava/lang/String;

.field private PANEL_HEIGHT_CLICK:I

.field private PANEL_WIDTH_CLICK:I

.field private final PHOTO_NUMBER_IMAGES:[I

.field private final RESTART_TUTORIAL_MODE:I

.field private final SPEEDDIAL_ADD_IMAGES:[I

.field private final SPEEDDIAL_DEFAULT_IMAGES:[I

.field private final TYPE:Ljava/lang/String;

.field private dragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

.field private isFirstAnimation:Z

.field private layoutHandler:Landroid/os/Handler;

.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

.field private mBoddy:Landroid/widget/LinearLayout;

.field private mButtonDialog:Landroid/app/AlertDialog;

.field private mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

.field private mChangedDataIds:[J

.field private mChangedPosition:I

.field private mCheckedItems:[Z

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mContactPosition:[Z

.field private mCurrentMode:I

.field private mCustomMessageBody:Landroid/widget/LinearLayout;

.field private mCustomMessagePhoneNumber:Landroid/widget/TextView;

.field private mCustomMessageType:Landroid/widget/TextView;

.field private mDisplayName:Ljava/lang/String;

.field private mDoneButtonClickable:Z

.field private mDonotdown:Z

.field private mEnableItems:I

.field mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

.field private mIPCallButtonDialog:Landroid/app/Dialog;

.field private mImageLoad:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsChangingConfiguration:Z

.field private mIsExecuting:Z

.field private mIsMultiWindowSupported:Z

.field private mIsSpeedDialInBg:Z

.field private mIsTutorialMode:Z

.field private mLastClickedView:Landroid/view/View;

.field private mLastLongClickedName:Ljava/lang/CharSequence;

.field private mListDialog:Landroid/app/AlertDialog;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mNumberType:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOrderOfValue:I

.field private mOriginDataIds:[J

.field private mPhotos:[Landroid/graphics/Bitmap;

.field private mPopupviewleft:I

.field private mPopupviewtop:I

.field private mSelectedPhoneNumber:Ljava/lang/String;

.field private mSpeedDialGrid:Landroid/widget/GridView;

.field private mSpeedDialUri:Landroid/net/Uri;

.field public mSpeedObserver:Landroid/database/ContentObserver;

.field private mTitle:Ljava/lang/String;

.field private mTitleBarHeight:F

.field private mTitleText:Landroid/widget/TextView;

.field private mType:Ljava/lang/String;

.field private mWm:Landroid/view/WindowManager;

.field private oldPosition:I

.field private panelLeft:I

.field private panelTop:I

.field private selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    const/16 v0, 0x8

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

    const/4 v1, 0x6

    const-string v2, "display_name_reverse"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "speed_dial_data_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    .line 154
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "key_number"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    const-string v1, "speed_dial_data_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    .line 160
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "has_phone_number"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    const-string v1, "photo_file_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 167
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 171
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    const-string v1, "is_super_primary"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/16 v3, 0x8

    const/16 v2, 0x9

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 126
    const-string v0, "TYPE"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->TYPE:Ljava/lang/String;

    .line 127
    const-string v0, "NUMBER_TYPE"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_TYPE:Ljava/lang/String;

    .line 128
    const-string v0, "ACCOUNT_TYPE"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->ACCOUNT_TYPE:Ljava/lang/String;

    .line 129
    const-string v0, "DISPLAY_NAME"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->DISPLAY_NAME:Ljava/lang/String;

    .line 130
    const-string v0, "NUMBER"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER:Ljava/lang/String;

    .line 134
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->RESTART_TUTORIAL_MODE:I

    .line 140
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    .line 177
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_IMAGES:[I

    .line 188
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    .line 201
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    .line 209
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEEDDIAL_ADD_IMAGES:[I

    .line 228
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    .line 229
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    .line 231
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    .line 247
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mImageLoad:Z

    .line 248
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDonotdown:Z

    .line 249
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsExecuting:Z

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    .line 257
    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    .line 258
    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    .line 265
    new-array v0, v2, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    .line 286
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsChangingConfiguration:Z

    .line 289
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mContactPosition:[Z

    .line 2122
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsSpeedDialInBg:Z

    .line 2123
    new-instance v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$14;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$14;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedObserver:Landroid/database/ContentObserver;

    .line 2778
    return-void

    .line 177
    :array_0
    .array-data 4
        0x7f020400
        0x7f020401
        0x7f020402
        0x7f020403
        0x7f020404
        0x7f020405
        0x7f020406
        0x7f020407
        0x7f020408
    .end array-data

    .line 188
    :array_1
    .array-data 4
        0x7f020427
        0x7f020428
        0x7f020429
        0x7f02042a
        0x7f02042b
        0x7f02042c
        0x7f02042d
        0x7f02042e
        0x7f02042f
    .end array-data

    .line 201
    :array_2
    .array-data 4
        0x7f020421
        0x7f02041d
        0x7f02041e
        0x7f02041f
        0x7f020420
    .end array-data

    .line 209
    :array_3
    .array-data 4
        0x7f020409
        0x7f02040a
        0x7f02040b
        0x7f02040c
        0x7f02040d
    .end array-data
.end method

.method private FreshView()V
    .locals 8

    .prologue
    const v5, 0x40aa8f5c

    .line 832
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02040e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 834
    .local v0, "bg":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PANEL_WIDTH_CLICK:I

    .line 835
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PANEL_HEIGHT_CLICK:I

    .line 837
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v2, v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PANEL_WIDTH_CLICK:I

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v4, v4, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    .line 839
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v2, v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    .line 841
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 843
    .local v1, "density":F
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 845
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    int-to-float v2, v2

    mul-float v3, v1, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    .line 846
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    int-to-float v2, v2

    const v3, 0x409570a4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    .line 853
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->dragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v2, v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PANEL_WIDTH_CLICK:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PANEL_HEIGHT_CLICK:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 855
    return-void

    .line 850
    :cond_0
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    int-to-float v2, v2

    mul-float v3, v1, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    .line 851
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->FreshView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->deleteSlot(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsSpeedDialInBg:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_IMAGES:[I

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkRemoveButtonEnable()V

    return-void
.end method

.method static synthetic access$2000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mContactPosition:[Z

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mImageLoad:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDonotdown:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDonotdown:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleBarHeight:F

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    return p1
.end method

.method static synthetic access$3600()Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 118
    sput-object p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->showSpeedDialTutorialPopup()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsExecuting:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsExecuting:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIPCallButtonDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    .prologue
    .line 118
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    return v0
.end method

.method private cancelChangeOrder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .prologue
    const/4 v3, 0x0

    .line 880
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 885
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 886
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 888
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    const v1, 0x7f0203ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 889
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_IMAGES:[I

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 890
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->dragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private changeData(I)V
    .locals 12
    .param p1, "destinationIndex"    # I

    .prologue
    const-wide/16 v10, 0x0

    .line 857
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    add-int/lit8 v7, p1, -0x1

    aget-wide v6, v6, v7

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    add-int/lit8 v7, p1, -0x1

    aget-wide v2, v6, v7

    .line 859
    .local v2, "newId":J
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v6, v6, v7

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v4, v6, v7

    .line 861
    .local v4, "oldId":J
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    add-int/lit8 v7, p1, -0x1

    aput-wide v4, v6, v7

    .line 862
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    add-int/lit8 v7, v7, -0x1

    aput-wide v2, v6, v7

    .line 864
    const/4 v1, 0x0

    .line 865
    .local v1, "isDataChanged":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v6, 0x8

    if-ge v0, v6, :cond_4

    .line 866
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    aget-wide v6, v6, v0

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    aget-wide v8, v8, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 867
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    aput-wide v10, v6, v0

    .line 865
    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 857
    .end local v0    # "i":I
    .end local v1    # "isDataChanged":Z
    .end local v2    # "newId":J
    .end local v4    # "oldId":J
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    add-int/lit8 v7, p1, -0x1

    aget-wide v2, v6, v7

    goto :goto_0

    .line 859
    .restart local v2    # "newId":J
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v4, v6, v7

    goto :goto_1

    .line 868
    .restart local v0    # "i":I
    .restart local v1    # "isDataChanged":Z
    .restart local v4    # "oldId":J
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    aget-wide v6, v6, v0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    .line 869
    const/4 v1, 0x1

    goto :goto_3

    .line 872
    :cond_4
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setButtonClickable(Z)V

    .line 873
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->dragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v6, v6, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 875
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    .line 876
    return-void
.end method

.method private checkRemoveButtonEnable()V
    .locals 4

    .prologue
    .line 896
    const/4 v1, 0x0

    .line 897
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 899
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v2, v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 903
    const/4 v1, 0x1

    .line 904
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 897
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 908
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    goto :goto_1

    .line 911
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setButtonClickable(Z)V

    .line 912
    return-void
.end method

.method private configureUri()V
    .locals 4

    .prologue
    .line 2129
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2130
    return-void
.end method

.method private createRecipientListWidgetFromView(Landroid/view/View;I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 3128
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3129
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "MIME_TYPE"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3131
    new-instance v0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    new-instance v4, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;

    invoke-direct {v4, p1, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v5, 0x2

    invoke-direct {v0, p1, v4, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .line 3132
    .local v0, "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    const/4 v2, -0x1

    .line 3133
    .local v2, "gravity":I
    move v3, p2

    .line 3135
    .local v3, "mPosition":I
    packed-switch p2, :pswitch_data_0

    .line 3153
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setDirection(I)V

    .line 3154
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setGravity(I)V

    .line 3156
    new-instance v4, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$15;

    invoke-direct {v4, p0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$15;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;I)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setItemSelectListener(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;)V

    .line 3167
    return-object v0

    .line 3138
    :pswitch_0
    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setPosition(II)V

    goto :goto_0

    .line 3143
    :pswitch_1
    const/4 v2, 0x3

    .line 3144
    goto :goto_0

    .line 3147
    :pswitch_2
    const/4 v2, 0x4

    .line 3148
    goto :goto_0

    .line 3135
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private customActivityResult(ILandroid/content/Intent;)V
    .locals 32
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 1262
    const/4 v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_0

    if-eqz p2, :cond_0

    .line 1264
    const-string v3, "index"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    .line 1265
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    const-wide/16 v19, -0x1

    .line 1269
    .local v19, "contactId":J
    const-wide/16 v26, -0x1

    .line 1271
    .local v26, "rawContactId":J
    const-string v3, "contact_id"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    .line 1273
    const-wide/16 v7, -0x1

    cmp-long v3, v19, v7

    if-eqz v3, :cond_0

    .line 1276
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getRawContactsUri(J)Landroid/net/Uri;

    move-result-object v4

    .line 1277
    .local v4, "rawContactsUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contact_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 1280
    .local v28, "rawcursor":Landroid/database/Cursor;
    if-eqz v28, :cond_3

    .line 1281
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1282
    const-string v3, "_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 1283
    :cond_2
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1286
    :cond_3
    const-wide/16 v7, -0x1

    cmp-long v3, v26, v7

    if-eqz v3, :cond_0

    .line 1292
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getDataUri(J)Landroid/net/Uri;

    move-result-object v6

    .line 1293
    .local v6, "dataUri":Landroid/net/Uri;
    const-string v23, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 1294
    .local v23, "dataIdSelection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v3

    .line 1296
    .local v9, "dataIdSelectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v8, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1297
    .local v13, "cursor":Landroid/database/Cursor;
    const-wide/16 v21, -0x1

    .line 1299
    .local v21, "dataId":J
    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1300
    const/16 v25, 0x0

    .line 1301
    .local v25, "isPrimary":Z
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_5

    .line 1302
    :cond_4
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1304
    :try_start_0
    const-string v3, "is_super_primary"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 1305
    const-string v3, "_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v21

    .line 1306
    const/16 v25, 0x1

    .line 1315
    :cond_5
    if-nez v25, :cond_6

    .line 1316
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1317
    const-string v3, "_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 1320
    :cond_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1325
    .end local v25    # "isPrimary":Z
    :cond_7
    :goto_2
    const-wide/16 v7, -0x1

    cmp-long v3, v21, v7

    if-eqz v3, :cond_0

    .line 1328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 1329
    .local v31, "view":Landroid/view/View;
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 1330
    .local v30, "values":Landroid/content/ContentValues;
    const-string v3, "key_number"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1331
    const-string v3, "speed_dial_data_id"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1332
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1335
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    move-object/from16 v0, v30

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1337
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 1338
    .local v11, "contactUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v11}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    .line 1341
    if-nez v11, :cond_9

    .line 1342
    const-string v3, "SpeedDialActivity"

    const-string v5, "Contact uri is null, contact does not exist."

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1309
    .end local v11    # "contactUri":Landroid/net/Uri;
    .end local v30    # "values":Landroid/content/ContentValues;
    .end local v31    # "view":Landroid/view/View;
    .restart local v25    # "isPrimary":Z
    :catch_0
    move-exception v24

    .line 1310
    .local v24, "e":Ljava/lang/NumberFormatException;
    const/16 v25, 0x0

    .line 1311
    goto/16 :goto_1

    .line 1321
    .end local v24    # "e":Ljava/lang/NumberFormatException;
    .end local v25    # "isPrimary":Z
    :cond_8
    if-eqz v13, :cond_7

    .line 1322
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 1346
    .restart local v11    # "contactUri":Landroid/net/Uri;
    .restart local v30    # "values":Landroid/content/ContentValues;
    .restart local v31    # "view":Landroid/view/View;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v12, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v13    # "cursor":Landroid/database/Cursor;
    move-result-object v13

    .line 1347
    .restart local v13    # "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_c

    .line 1349
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1351
    const/16 v17, 0x0

    .line 1352
    .local v17, "holder":Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    if-eqz v31, :cond_a

    .line 1354
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "holder":Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    check-cast v17, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .line 1356
    .restart local v17    # "holder":Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    move/from16 v18, v0

    move-object/from16 v12, p0

    move-object v14, v11

    move-wide/from16 v15, v26

    invoke-virtual/range {v12 .. v18}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I

    .line 1358
    .end local v17    # "holder":Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    :cond_b
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1359
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->invalidateOptionsMenu()V

    .line 1362
    :cond_c
    const-string v3, "tutorial_mode"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1363
    new-instance v29, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1374
    .local v29, "t":Ljava/lang/Thread;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private deleteSlot(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x4

    .line 917
    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "NubmerString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 921
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v2, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 923
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .line 924
    .local v1, "holder":Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 925
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 926
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v3, 0x7f0e00b7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 927
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSpeedDialAddImage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 928
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0250

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 931
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 933
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->invalidateOptionsMenu()V

    .line 938
    return-void
.end method

.method private getAccountType(J)Ljava/lang/String;
    .locals 10
    .param p1, "rawContactId"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 3057
    const/4 v6, 0x0

    .line 3059
    .local v6, "accountType":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3060
    .local v1, "rawContactsUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "account_type"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3064
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 3065
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3066
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3068
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3070
    :cond_1
    return-object v6
.end method

.method private getDataUri(J)Landroid/net/Uri;
    .locals 2
    .param p1, "contactId"    # J

    .prologue
    .line 3231
    invoke-static {p1, p2}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3232
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3234
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getRawContactsUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 3222
    invoke-static {p1, p2}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3223
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 3225
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private preventDoubleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 943
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastClickedView:Landroid/view/View;

    .line 944
    return-void
.end method

.method private setDimLayout(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 821
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 822
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 823
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 824
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 825
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 826
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->dragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->layoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 829
    return-void
.end method

.method private setLayout()V
    .locals 7

    .prologue
    const v6, 0x7f0c01d2

    const/16 v5, 0x35

    const/high16 v4, 0x3f000000

    .line 3080
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 3081
    .local v2, "rot":I
    const/4 v0, 0x0

    .line 3083
    .local v0, "ldisplayWidth":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3084
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 3085
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3086
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3087
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3089
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3091
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3100
    :goto_0
    return-void

    .line 3093
    .end local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 3094
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3095
    .restart local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3096
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3098
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private showSpeedDialTutorialPopup()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3108
    new-instance v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    sget-object v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_SPEEDDIAL:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 3110
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mEnableItems:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 3111
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0435

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3112
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->finish()V

    .line 3114
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const v1, 0x7f0e0433

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(Ljava/lang/String;)V

    .line 3115
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setArrowVisibility(Z)V

    .line 3116
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorLeftPosition(I)V

    .line 3118
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravity(I)V

    .line 3119
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIsSmallWindow(Z)V

    .line 3121
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c017f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 3123
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->showWithoutCir(Z)V

    .line 3124
    return-void
.end method


# virtual methods
.method protected addSpeedDial(Landroid/os/Bundle;I)V
    .locals 24
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "position"    # I

    .prologue
    .line 3171
    const-string v1, "id"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 3172
    .local v15, "contactId":I
    const-string v1, "data"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3174
    .local v18, "phoneNumber":Ljava/lang/String;
    const-wide/16 v16, -0x1

    .line 3175
    .local v16, "dataId":J
    const-wide/16 v19, -0x1

    .line 3177
    .local v19, "rawContactId":J
    const/4 v1, -0x1

    if-eq v15, v1, :cond_0

    if-nez v18, :cond_1

    .line 3217
    :cond_0
    :goto_0
    return-void

    .line 3180
    :cond_1
    int-to-long v3, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getDataUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 3181
    .local v2, "dataUri":Landroid/net/Uri;
    const-string v21, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\' AND data1=?"

    .line 3183
    .local v21, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    const/4 v1, 0x1

    aput-object v18, v5, v1

    .line 3185
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string v6, "raw_contact_id"

    aput-object v6, v3, v4

    const-string v4, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\' AND data1=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3186
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3187
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 3188
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 3190
    :cond_2
    if-eqz v9, :cond_3

    .line 3191
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3193
    :cond_3
    const-wide/16 v3, -0x1

    cmp-long v1, v16, v3

    if-eqz v1, :cond_4

    const-wide/16 v3, -0x1

    cmp-long v1, v19, v3

    if-nez v1, :cond_5

    .line 3194
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3197
    :cond_5
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 3198
    .local v22, "values":Landroid/content/ContentValues;
    const-string v1, "key_number"

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3199
    const-string v1, "speed_dial_data_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3200
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3203
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3205
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v15

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 3206
    .local v7, "contactUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v9    # "cursor":Landroid/database/Cursor;
    move-result-object v9

    .line 3207
    .restart local v9    # "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 3208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 3209
    .local v23, "view":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .local v13, "holder":Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    move-object/from16 v8, p0

    move-object v10, v7

    move-wide/from16 v11, v19

    move/from16 v14, p2

    .line 3211
    invoke-virtual/range {v8 .. v14}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    .line 3212
    iget-object v1, v13, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnAirButtonHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 3214
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->invalidateOptionsMenu()V

    .line 3215
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public animateLayoutAtEntrance()V
    .locals 2

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2805
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->animateTwoColumnLayoutAtEntrance()V

    .line 2809
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2810
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    .line 2811
    :cond_1
    return-void

    .line 2806
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2807
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->animateThreeColumnLayoutAtEntrance()V

    goto :goto_0
.end method

.method public animateThreeColumnLayoutAtEntrance()V
    .locals 23

    .prologue
    .line 2920
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v8

    .line 2922
    .local v8, "x0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v9

    .line 2923
    .local v9, "x2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v10

    .line 2925
    .local v10, "x3":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v11

    .line 2926
    .local v11, "x5":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v12

    .line 2928
    .local v12, "x6":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v13

    .line 2930
    .local v13, "x8":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v14

    .line 2931
    .local v14, "y0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v15

    .line 2932
    .local v15, "y1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v16

    .line 2934
    .local v16, "y2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v17

    .line 2935
    .local v17, "y6":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v18

    .line 2936
    .local v18, "y7":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v19

    .line 2941
    .local v19, "y8":F
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 2942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/GridView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3ecccccd

    mul-float v21, v21, v22

    sub-float v5, v20, v21

    .line 2943
    .local v5, "containerXEnd":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/GridView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3ecccccd

    mul-float v21, v21, v22

    sub-float v6, v20, v21

    .line 2945
    .local v6, "containerYEnd":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, -0x40e66666

    mul-float v2, v20, v21

    .line 2946
    .local v2, "XStart":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, -0x40e66666

    mul-float v3, v20, v21

    .line 2955
    .local v3, "YStart":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 2957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    .line 2959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    .line 2961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    .line 2963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 2965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/View;->setY(F)V

    .line 2967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    .line 2969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/View;->setY(F)V

    .line 2971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/View;->setY(F)V

    .line 2976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    .line 2979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 2982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    .line 2985
    new-instance v4, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut80;

    invoke-direct {v4}, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut80;-><init>()V

    .line 2986
    .local v4, "alphaInterpolator":Lcom/sec/android/app/contacts/util/animation/easing/SineInOut80;
    new-instance v7, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut90;

    invoke-direct {v7}, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut90;-><init>()V

    .line 2989
    .local v7, "interpolator":Lcom/sec/android/app/contacts/util/animation/easing/SineInOut90;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 3001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 3003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 3004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 3006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 3007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 3009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 3010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 3012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 3013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 3018
    .end local v2    # "XStart":F
    .end local v3    # "YStart":F
    .end local v4    # "alphaInterpolator":Lcom/sec/android/app/contacts/util/animation/easing/SineInOut80;
    .end local v5    # "containerXEnd":F
    .end local v6    # "containerYEnd":F
    .end local v7    # "interpolator":Lcom/sec/android/app/contacts/util/animation/easing/SineInOut90;
    .end local v8    # "x0":F
    .end local v9    # "x2":F
    .end local v10    # "x3":F
    .end local v11    # "x5":F
    .end local v12    # "x6":F
    .end local v13    # "x8":F
    .end local v14    # "y0":F
    .end local v15    # "y1":F
    .end local v16    # "y2":F
    .end local v17    # "y6":F
    .end local v18    # "y7":F
    .end local v19    # "y8":F
    :goto_1
    return-void

    .line 2948
    .restart local v8    # "x0":F
    .restart local v9    # "x2":F
    .restart local v10    # "x3":F
    .restart local v11    # "x5":F
    .restart local v12    # "x6":F
    .restart local v13    # "x8":F
    .restart local v14    # "y0":F
    .restart local v15    # "y1":F
    .restart local v16    # "y2":F
    .restart local v17    # "y6":F
    .restart local v18    # "y7":F
    .restart local v19    # "y8":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/GridView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v5, v0

    .line 2949
    .restart local v5    # "containerXEnd":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/GridView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v6, v0

    .line 2951
    .restart local v6    # "containerYEnd":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v20

    mul-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-float v2, v0

    .line 2952
    .restart local v2    # "XStart":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    mul-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-float v3, v0

    .restart local v3    # "YStart":F
    goto/16 :goto_0

    .line 3015
    .end local v2    # "XStart":F
    .end local v3    # "YStart":F
    .end local v5    # "containerXEnd":F
    .end local v6    # "containerYEnd":F
    .end local v8    # "x0":F
    .end local v9    # "x2":F
    .end local v10    # "x3":F
    .end local v11    # "x5":F
    .end local v12    # "x6":F
    .end local v13    # "x8":F
    .end local v14    # "y0":F
    .end local v15    # "y1":F
    .end local v16    # "y2":F
    .end local v17    # "y6":F
    .end local v18    # "y7":F
    .end local v19    # "y8":F
    :catch_0
    move-exception v20

    goto :goto_1
.end method

.method public animateTwoColumnLayoutAtEntrance()V
    .locals 23

    .prologue
    .line 2817
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v8

    .line 2818
    .local v8, "x0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v9

    .line 2819
    .local v9, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v10

    .line 2820
    .local v10, "x2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v11

    .line 2821
    .local v11, "x3":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v12

    .line 2822
    .local v12, "x4":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v13

    .line 2823
    .local v13, "x5":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v14

    .line 2824
    .local v14, "x6":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v15

    .line 2825
    .local v15, "x7":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v16

    .line 2827
    .local v16, "x8":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v17

    .line 2828
    .local v17, "y0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v18

    .line 2829
    .local v18, "y1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v19

    .line 2835
    .local v19, "y8":F
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 2836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/GridView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3ecccccd

    mul-float v21, v21, v22

    sub-float v5, v20, v21

    .line 2837
    .local v5, "containerXEnd":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/GridView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3ecccccd

    mul-float v21, v21, v22

    sub-float v6, v20, v21

    .line 2839
    .local v6, "containerYEnd":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, -0x40e66666

    mul-float v2, v20, v21

    .line 2840
    .local v2, "XStart":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, -0x40e66666

    mul-float v3, v20, v21

    .line 2849
    .local v3, "YStart":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 2851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    .line 2853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    .line 2855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    .line 2857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 2860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 2863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 2866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    .line 2869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    .line 2872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    .line 2875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 2876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 2877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/View;->setY(F)V

    .line 2879
    new-instance v4, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut80;

    invoke-direct {v4}, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut80;-><init>()V

    .line 2880
    .local v4, "alphaInterpolator":Lcom/sec/android/app/contacts/util/animation/easing/SineInOut80;
    new-instance v7, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut90;

    invoke-direct {v7}, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut90;-><init>()V

    .line 2883
    .local v7, "interpolator":Lcom/sec/android/app/contacts/util/animation/easing/SineInOut90;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2913
    .end local v2    # "XStart":F
    .end local v3    # "YStart":F
    .end local v4    # "alphaInterpolator":Lcom/sec/android/app/contacts/util/animation/easing/SineInOut80;
    .end local v5    # "containerXEnd":F
    .end local v6    # "containerYEnd":F
    .end local v7    # "interpolator":Lcom/sec/android/app/contacts/util/animation/easing/SineInOut90;
    .end local v8    # "x0":F
    .end local v9    # "x1":F
    .end local v10    # "x2":F
    .end local v11    # "x3":F
    .end local v12    # "x4":F
    .end local v13    # "x5":F
    .end local v14    # "x6":F
    .end local v15    # "x7":F
    .end local v16    # "x8":F
    .end local v17    # "y0":F
    .end local v18    # "y1":F
    .end local v19    # "y8":F
    :goto_1
    return-void

    .line 2842
    .restart local v8    # "x0":F
    .restart local v9    # "x1":F
    .restart local v10    # "x2":F
    .restart local v11    # "x3":F
    .restart local v12    # "x4":F
    .restart local v13    # "x5":F
    .restart local v14    # "x6":F
    .restart local v15    # "x7":F
    .restart local v16    # "x8":F
    .restart local v17    # "y0":F
    .restart local v18    # "y1":F
    .restart local v19    # "y8":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/GridView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v5, v0

    .line 2843
    .restart local v5    # "containerXEnd":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/GridView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v6, v0

    .line 2845
    .restart local v6    # "containerYEnd":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v20

    mul-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-float v2, v0

    .line 2846
    .restart local v2    # "XStart":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    mul-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-float v3, v0

    .restart local v3    # "YStart":F
    goto/16 :goto_0

    .line 2910
    .end local v2    # "XStart":F
    .end local v3    # "YStart":F
    .end local v5    # "containerXEnd":F
    .end local v6    # "containerYEnd":F
    .end local v8    # "x0":F
    .end local v9    # "x1":F
    .end local v10    # "x2":F
    .end local v11    # "x3":F
    .end local v12    # "x4":F
    .end local v13    # "x5":F
    .end local v14    # "x6":F
    .end local v15    # "x7":F
    .end local v16    # "x8":F
    .end local v17    # "y0":F
    .end local v18    # "y1":F
    .end local v19    # "y8":F
    :catch_0
    move-exception v20

    goto :goto_1
.end method

.method checkViewFromDB()V
    .locals 13

    .prologue
    .line 1826
    const/16 v0, 0x9

    new-array v7, v0, [Z

    .line 1827
    .local v7, "flag":[Z
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mEnableItems:I

    .line 1828
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v0, 0x9

    if-ge v8, v0, :cond_0

    .line 1829
    const/4 v0, 0x0

    aput-boolean v0, v7, v8

    .line 1828
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1831
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1834
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_7

    .line 1835
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1836
    const/4 v8, 0x0

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 1837
    const-string v0, "key_number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1838
    .local v11, "keyValue":I
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1839
    .local v12, "position":I
    add-int/lit8 v0, v12, -0x1

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    .line 1840
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1836
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1843
    .end local v11    # "keyValue":I
    .end local v12    # "position":I
    :cond_1
    const/4 v10, 0x1

    .local v10, "k":I
    :goto_2
    const/16 v0, 0x9

    if-ge v10, v0, :cond_3

    .line 1844
    aget-boolean v0, v7, v10

    if-eqz v0, :cond_2

    .line 1845
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mEnableItems:I

    if-ne v0, v10, :cond_2

    .line 1846
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mEnableItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mEnableItems:I

    .line 1843
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1851
    :cond_3
    const/4 v9, 0x1

    .local v9, "j":I
    :goto_3
    const/16 v0, 0x9

    if-ge v9, v0, :cond_6

    .line 1852
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1854
    aget-boolean v0, v7, v9

    if-eqz v0, :cond_5

    .line 1855
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    add-int/lit8 v2, v9, -0x1

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1851
    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1859
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_4

    .line 1864
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1866
    .end local v9    # "j":I
    .end local v10    # "k":I
    :cond_7
    return-void
.end method

.method public getSpeedDialAddImage(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEEDDIAL_ADD_IMAGES:[I

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method public getSpeedDialDefaultImage(J)I
    .locals 3
    .param p1, "contactId"    # J

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public hasPersonData()Z
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    return v0
.end method

.method public initFixedSpeedDial()V
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 3021
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_AddPreloadedSpeedDialAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3022
    .local v8, "fixedSpeedDialFeature":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3053
    :cond_0
    :goto_0
    return-void

    .line 3025
    :cond_1
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3026
    .local v7, "fixedSpeedDial":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 3027
    .local v3, "fixedSpeedDialPos":I
    const/4 v5, 0x0

    .line 3028
    .local v5, "sName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3030
    .local v9, "index":I
    const/4 v9, 0x0

    :goto_1
    array-length v0, v7

    if-ge v9, v0, :cond_6

    .line 3031
    aget-object v0, v7, v9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3033
    if-nez v9, :cond_2

    .line 3034
    const-string v0, "Service"

    aget-object v1, v7, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Emergency"

    aget-object v1, v7, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3037
    :cond_2
    if-ne v9, v4, :cond_3

    .line 3038
    aget-object v0, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3039
    if-ge v3, v4, :cond_3

    const/16 v0, 0x9

    if-gt v3, v0, :cond_0

    .line 3042
    :cond_3
    if-ne v9, v6, :cond_4

    .line 3043
    const-string v0, "Emergency"

    aget-object v1, v7, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0e0340

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3044
    :goto_2
    if-eqz v5, :cond_0

    .line 3030
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3043
    :cond_5
    aget-object v5, v7, v6

    goto :goto_2

    .line 3049
    :cond_6
    const/4 v0, 0x4

    if-ne v9, v0, :cond_0

    .line 3052
    new-instance v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    aget-object v2, v7, v2

    const/4 v1, 0x2

    aget-object v4, v7, v1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    goto :goto_0
.end method

.method public isListEmpty()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2108
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2111
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2112
    :cond_0
    if-eqz v6, :cond_1

    .line 2113
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2115
    :cond_1
    const/4 v0, 0x1

    .line 2120
    :goto_0
    return v0

    .line 2117
    :cond_2
    if-eqz v6, :cond_3

    .line 2118
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2120
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 38
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1115
    const/16 v3, 0xb

    move/from16 v0, p2

    if-ne v0, v3, :cond_0

    .line 1116
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    .line 1117
    :cond_0
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    if-eqz p3, :cond_1

    .line 1119
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1121
    const/16 v3, 0x64

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 1122
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->customActivityResult(ILandroid/content/Intent;)V

    .line 1257
    :cond_1
    :goto_0
    return-void

    .line 1127
    :cond_2
    const-string v3, "index"

    const/4 v5, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    .line 1129
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 1132
    const-string v3, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v33

    .line 1134
    .local v33, "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v33, :cond_1

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1137
    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1141
    .local v27, "output":Ljava/lang/String;
    const/16 v3, 0x3b

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    const/16 v25, 0x1

    .line 1146
    .local v25, "hasDataId":Z
    :goto_1
    if-nez v25, :cond_9

    .line 1147
    const-string v3, "phone_data_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v28

    .line 1149
    .local v28, "phoneDataId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getDataUri(J)Landroid/net/Uri;

    move-result-object v4

    .line 1150
    .local v4, "dataUri":Landroid/net/Uri;
    const-string v34, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 1151
    .local v34, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    .line 1153
    .local v7, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v6, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1154
    .local v21, "cursor":Landroid/database/Cursor;
    const-wide/16 v22, -0x1

    .line 1156
    .local v22, "dataId":J
    if-eqz v21, :cond_8

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1157
    const/16 v26, 0x0

    .line 1159
    .local v26, "isPrimary":Z
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_4

    .line 1160
    :cond_3
    :goto_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1162
    :try_start_0
    const-string v3, "is_super_primary"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 1163
    const-string v3, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v22

    .line 1164
    const/16 v26, 0x1

    .line 1173
    :cond_4
    if-nez v26, :cond_5

    .line 1174
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1175
    const-string v3, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 1178
    :cond_5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1186
    .end local v4    # "dataUri":Landroid/net/Uri;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v26    # "isPrimary":Z
    .end local v28    # "phoneDataId":J
    .end local v34    # "selection":Ljava/lang/String;
    :cond_6
    :goto_3
    const-wide/16 v5, -0x1

    cmp-long v3, v22, v5

    if-eqz v3, :cond_1

    .line 1189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v37

    .line 1190
    .local v37, "view":Landroid/view/View;
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .line 1191
    .local v36, "values":Landroid/content/ContentValues;
    const-string v3, "key_number"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1192
    const-string v3, "speed_dial_data_id"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    move-object/from16 v0, v36

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1198
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 1199
    .local v9, "contactUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v9}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 1202
    if-nez v9, :cond_a

    .line 1203
    const-string v3, "SpeedDialActivity"

    const-string v5, "Contact uri is null, contact does not exist."

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1141
    .end local v9    # "contactUri":Landroid/net/Uri;
    .end local v22    # "dataId":J
    .end local v25    # "hasDataId":Z
    .end local v36    # "values":Landroid/content/ContentValues;
    .end local v37    # "view":Landroid/view/View;
    :cond_7
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 1167
    .restart local v4    # "dataUri":Landroid/net/Uri;
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    .restart local v21    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "dataId":J
    .restart local v25    # "hasDataId":Z
    .restart local v26    # "isPrimary":Z
    .restart local v28    # "phoneDataId":J
    .restart local v34    # "selection":Ljava/lang/String;
    :catch_0
    move-exception v24

    .line 1168
    .local v24, "e":Ljava/lang/NumberFormatException;
    const/16 v26, 0x0

    .line 1169
    goto/16 :goto_2

    .line 1179
    .end local v24    # "e":Ljava/lang/NumberFormatException;
    .end local v26    # "isPrimary":Z
    :cond_8
    if-eqz v21, :cond_6

    .line 1180
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 1183
    .end local v4    # "dataUri":Landroid/net/Uri;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v22    # "dataId":J
    .end local v28    # "phoneDataId":J
    .end local v34    # "selection":Ljava/lang/String;
    :cond_9
    const-string v3, "phone_data_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    .restart local v22    # "dataId":J
    goto/16 :goto_3

    .line 1207
    .restart local v9    # "contactUri":Landroid/net/Uri;
    .restart local v36    # "values":Landroid/content/ContentValues;
    .restart local v37    # "view":Landroid/view/View;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v10, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1208
    .restart local v21    # "cursor":Landroid/database/Cursor;
    if-eqz v21, :cond_d

    .line 1210
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1212
    const/16 v17, 0x0

    .line 1213
    .local v17, "holder":Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    if-eqz v37, :cond_b

    .line 1215
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "holder":Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    check-cast v17, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .line 1221
    .restart local v17    # "holder":Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    :cond_b
    const-wide/16 v19, -0x1

    .line 1222
    .local v19, "contactId":J
    const-wide/16 v30, -0x1

    .line 1224
    .local v30, "rawContactId":J
    const-string v3, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 1225
    const-wide/16 v5, -0x1

    cmp-long v3, v19, v5

    if-eqz v3, :cond_f

    .line 1226
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getRawContactsUri(J)Landroid/net/Uri;

    move-result-object v11

    .line 1227
    .local v11, "rawContactsUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v12, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 1230
    .local v32, "rawcursor":Landroid/database/Cursor;
    if-eqz v32, :cond_f

    .line 1231
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1232
    const-string v3, "_id"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1233
    .end local v30    # "rawContactId":J
    .local v15, "rawContactId":J
    :goto_4
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 1237
    .end local v11    # "rawContactsUri":Landroid/net/Uri;
    .end local v32    # "rawcursor":Landroid/database/Cursor;
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    move/from16 v18, v0

    move-object/from16 v12, p0

    move-object/from16 v13, v21

    move-object v14, v9

    invoke-virtual/range {v12 .. v18}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I

    .line 1239
    .end local v15    # "rawContactId":J
    .end local v17    # "holder":Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    .end local v19    # "contactId":J
    :cond_c
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1240
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->invalidateOptionsMenu()V

    .line 1242
    :cond_d
    const-string v3, "tutorial_mode"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1243
    new-instance v35, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1254
    .local v35, "t":Ljava/lang/Thread;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .end local v35    # "t":Ljava/lang/Thread;
    .restart local v11    # "rawContactsUri":Landroid/net/Uri;
    .restart local v17    # "holder":Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    .restart local v19    # "contactId":J
    .restart local v30    # "rawContactId":J
    .restart local v32    # "rawcursor":Landroid/database/Cursor;
    :cond_e
    move-wide/from16 v15, v30

    .end local v30    # "rawContactId":J
    .restart local v15    # "rawContactId":J
    goto :goto_4

    .end local v11    # "rawContactsUri":Landroid/net/Uri;
    .end local v15    # "rawContactId":J
    .end local v32    # "rawcursor":Landroid/database/Cursor;
    .restart local v30    # "rawContactId":J
    :cond_f
    move-wide/from16 v15, v30

    .end local v30    # "rawContactId":J
    .restart local v15    # "rawContactId":J
    goto :goto_5
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1780
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 1787
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1789
    :goto_0
    return-void

    .line 1784
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCancelButtonClicked()V
    .locals 1

    .prologue
    .line 2100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    .line 2101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 300
    new-instance v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->layoutHandler:Landroid/os/Handler;

    .line 305
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tutorial_mode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    .line 310
    if-eqz p1, :cond_0

    .line 311
    const-string v1, "isChangingOrientation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsChangingConfiguration:Z

    .line 313
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsChangingConfiguration:Z

    if-eqz v1, :cond_3

    .line 314
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    .line 318
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->initFixedSpeedDial()V

    .line 319
    const v1, 0x7f0401f5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setContentView(I)V

    .line 322
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x41caa3d7

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleBarHeight:F

    .line 326
    const-string v1, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    .line 327
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v7, [[I

    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v6, [I

    aput-object v3, v2, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 335
    const v1, 0x7f090455

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    .line 336
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsMultiWindowSupported:Z

    .line 337
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsMultiWindowSupported:Z

    if-eqz v1, :cond_1

    .line 338
    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 340
    :cond_1
    new-instance v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 342
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->configureUri()V

    .line 343
    new-instance v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    .line 345
    if-eqz p1, :cond_6

    .line 346
    const-string v1, "doneButtonClickable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    .line 348
    const-string v1, "DISPLAY_NAME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    .line 350
    const-string v1, "NUMBER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 351
    const-string v1, "NUMBER_TYPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mNumberType:I

    .line 352
    const-string v1, "ACCOUNT_TYPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAccountType:Ljava/lang/String;

    .line 353
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "vnd.sec.contact.sim"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 354
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mNumberType:I

    if-ne v1, v7, :cond_4

    .line 355
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mNumberType:I

    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    .line 362
    :goto_1
    const-string v1, "tutorial_mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    .line 366
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 367
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 368
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 371
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setLayout()V

    .line 373
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 403
    :goto_3
    if-eqz v0, :cond_8

    .line 404
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 405
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 415
    :goto_4
    new-instance v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 424
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 425
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 426
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 427
    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setFinishOnTouchOutside(Z)V

    .line 431
    return-void

    .line 316
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isFirstAnimation"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    goto/16 :goto_0

    .line 357
    :cond_4
    const v1, 0x7f0e03d9

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    goto :goto_1

    .line 360
    :cond_5
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mNumberType:I

    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    goto :goto_1

    .line 364
    :cond_6
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    goto :goto_2

    .line 376
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :pswitch_0
    const v1, 0x7f0e0230

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 378
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_3

    .line 384
    :pswitch_1
    const v1, 0x7f0e025c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    .line 385
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 386
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setButtonClickable(Z)V

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_3

    .line 391
    :pswitch_2
    const v1, 0x7f0e0074

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    .line 392
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 393
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setButtonClickable(Z)V

    goto/16 :goto_3

    .line 407
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 409
    :cond_8
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 410
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 412
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 327
    nop

    :array_0
    .array-data 4
        -0x1000000
        -0x1
    .end array-data

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .param p1, "id"    # I

    .prologue
    const v12, 0x7f0901ad

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 1401
    if-ne p1, v10, :cond_c

    .line 1403
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040072

    invoke-virtual {v7, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    .line 1409
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageType:Landroid/widget/TextView;

    .line 1411
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    const v9, 0x7f0901ae

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    .line 1413
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 1414
    const-string v7, ""

    iput-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    .line 1416
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1417
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageType:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1419
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1421
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1423
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1428
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1430
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1431
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040073

    invoke-virtual {v7, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    .line 1432
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageType:Landroid/widget/TextView;

    .line 1433
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v8, 0x7f0901ae

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    .line 1434
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v8, 0x7f0901af

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleText:Landroid/widget/TextView;

    .line 1436
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
    const/4 v2, 0x0

    .line 1438
    .local v2, "divider":Landroid/view/View;
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v8, 0x7f090035

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1439
    if-eqz v2, :cond_3

    .line 1440
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1443
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 1444
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageType:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1446
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1448
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1450
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1456
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v8, 0x7f0901b0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1457
    .local v1, "callBtn":Landroid/widget/Button;
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v8, 0x7f0901b1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1458
    .local v3, "ipCallBtn":Landroid/widget/Button;
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v8, 0x7f0901b2

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1459
    .local v6, "videoCallBtn":Landroid/widget/Button;
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v8, 0x7f0901b3

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1461
    .local v5, "messageBtn":Landroid/widget/Button;
    new-instance v4, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    .line 1516
    .local v4, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1517
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1518
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1519
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1521
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIPCallButtonDialog:Landroid/app/Dialog;

    .line 1522
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIPCallButtonDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1523
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIPCallButtonDialog:Landroid/app/Dialog;

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1525
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIPCallButtonDialog:Landroid/app/Dialog;

    .line 1684
    .end local v1    # "callBtn":Landroid/widget/Button;
    .end local v2    # "divider":Landroid/view/View;
    .end local v3    # "ipCallBtn":Landroid/widget/Button;
    .end local v4    # "listener":Landroid/view/View$OnClickListener;
    .end local v5    # "messageBtn":Landroid/widget/Button;
    .end local v6    # "videoCallBtn":Landroid/widget/Button;
    :goto_2
    return-object v7

    .line 1425
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1452
    .restart local v2    # "divider":Landroid/view/View;
    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1527
    .end local v2    # "divider":Landroid/view/View;
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1528
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0e031f

    new-instance v9, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$8;

    invoke-direct {v9, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$8;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0e033d

    new-instance v9, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;

    invoke-direct {v9, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1559
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIPCall(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1561
    const v7, 0x7f0e039c

    new-instance v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$9;

    invoke-direct {v8, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$9;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1573
    :cond_9
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    .line 1582
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    goto :goto_2

    .line 1586
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1587
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0e031f

    new-instance v9, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$11;

    invoke-direct {v9, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$11;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0e033d

    new-instance v9, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$10;

    invoke-direct {v9, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$10;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1617
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1619
    const v7, 0x7f0e031b

    new-instance v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$12;

    invoke-direct {v8, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$12;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1631
    :cond_b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    .line 1632
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1634
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1636
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_c
    if-ne p1, v9, :cond_e

    .line 1638
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1639
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    if-nez v7, :cond_d

    .line 1641
    const-string v7, "title"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1648
    :goto_3
    new-array v7, v9, [Ljava/lang/String;

    const v8, 0x7f0e033c

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    const v8, 0x7f0e0074

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    new-instance v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$13;

    invoke-direct {v8, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$13;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1680
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    .line 1681
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1682
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1645
    :cond_d
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_e
    move-object v7, v8

    .line 1684
    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v3, 0x7f12000f

    const v2, 0x7f0904db

    .line 1689
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    if-eqz v1, :cond_0

    .line 1690
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->animateLayoutAtEntrance()V

    .line 1691
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    .line 1694
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isListEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1697
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 1721
    :goto_0
    return v1

    .line 1702
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1704
    .local v0, "inflater":Landroid/view/MenuInflater;
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 1721
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 1707
    :pswitch_0
    const v1, 0x7f120022

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    .line 1711
    :pswitch_1
    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1712
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mMenuDone:Landroid/view/MenuItem;

    goto :goto_1

    .line 1715
    :pswitch_2
    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1716
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mMenuDone:Landroid/view/MenuItem;

    goto :goto_1

    .line 1704
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1957
    const-string v1, "SpeedDialActivity"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 1959
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1960
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1961
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_2

    .line 1962
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1963
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1961
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1967
    .end local v0    # "i":I
    :cond_2
    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    .line 2003
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->removeAllViewsInLayout()V

    .line 2005
    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    .line 2006
    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    .line 2008
    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    .line 2010
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2011
    return-void
.end method

.method public onDoneButtonClicked()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 2054
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 2056
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_3

    .line 2058
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v5, v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2062
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2056
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2068
    .end local v3    # "i":I
    :cond_1
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 2070
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2071
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2073
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v9, :cond_3

    .line 2075
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    aget-wide v0, v5, v3

    .line 2077
    .local v0, "changedDataId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    aget-wide v5, v5, v3

    cmp-long v5, v0, v5

    if-eqz v5, :cond_2

    .line 2079
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key_number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2082
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-eqz v5, :cond_2

    .line 2084
    const-string v5, "speed_dial_data_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2085
    const-string v5, "key_number"

    add-int/lit8 v6, v3, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2086
    const-string v5, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2087
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 2073
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2094
    .end local v0    # "changedDataId":J
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "i":I
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    .line 2095
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
    .line 495
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_21

    .line 498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoPos:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)I

    move-result v3

    add-int/lit8 v4, p3, 0x1

    if-ne v3, v4, :cond_1

    .line 499
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v3, :cond_0

    .line 500
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->preventDoubleClick(Landroid/view/View;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->access$400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)Ljava/lang/String;

    move-result-object v17

    .line 502
    .local v17, "predefNumber":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v15

    .line 504
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivity(Landroid/content/Intent;)V

    .line 751
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "predefNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    if-nez p3, :cond_b

    .line 511
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    if-eqz v3, :cond_2

    .line 512
    const v3, 0x7f0e0438

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 515
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v3, :cond_0

    .line 520
    const/16 v20, 0x0

    .line 522
    .local v20, "voiceMailNumber":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v3

    if-nez v3, :cond_3

    .line 542
    :cond_3
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForGG()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "CURRENT_NETWORK"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 544
    .local v11, "currentNetwork":I
    const/4 v12, 0x0

    .line 546
    .local v12, "currentSlot":I
    if-nez v11, :cond_5

    .line 547
    const/4 v12, 0x1

    .line 550
    :goto_1
    const/4 v3, 0x1

    if-ne v12, v3, :cond_6

    .line 551
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MultiSimTelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v20

    .line 556
    :goto_2
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 557
    new-instance v15, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    const-string v4, "voicemail"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v15, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 558
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v3, "simnum"

    invoke-virtual {v15, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 584
    .end local v11    # "currentNetwork":I
    .end local v12    # "currentSlot":I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 549
    .end local v15    # "intent":Landroid/content/Intent;
    .restart local v11    # "currentNetwork":I
    .restart local v12    # "currentSlot":I
    :cond_5
    const/4 v12, 0x2

    goto :goto_1

    .line 553
    :cond_6
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MultiSimTelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    .line 560
    :cond_7
    new-instance v15, Landroid/content/Intent;

    const-string v3, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v3, "simId"

    invoke-virtual {v15, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 564
    .end local v11    # "currentNetwork":I
    .end local v12    # "currentSlot":I
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 565
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MultiSimTelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v20

    .line 570
    :goto_4
    if-eqz v20, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    .line 572
    new-instance v15, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "voicemail"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-static {v4, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v15, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 573
    .restart local v15    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 574
    const-string v3, "simnum"

    const/4 v4, 0x2

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 567
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_9
    const-string v3, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v20

    goto :goto_4

    .line 577
    :cond_a
    new-instance v15, Landroid/content/Intent;

    const-string v3, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .restart local v15    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 579
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.GsmUmtsAdditionalCallOptions"

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 587
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v20    # "voiceMailNumber":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v3, v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0e00b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 589
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    if-eqz v3, :cond_c

    .line 590
    const v3, 0x7f0e0438

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 593
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v3, :cond_18

    .line 595
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key_number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 597
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_10

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 599
    const-string v3, "display_name"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    .line 600
    const-string v3, "number"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 601
    const-string v3, "type"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 603
    .local v16, "numberType":I
    const-string v3, "raw_contact_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 604
    .local v18, "rawContactId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getAccountType(J)Ljava/lang/String;

    move-result-object v9

    .line 606
    .local v9, "accountType":Ljava/lang/String;
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mNumberType:I

    .line 607
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAccountType:Ljava/lang/String;

    .line 609
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v3

    if-lez v3, :cond_12

    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 610
    const/4 v3, 0x2

    move/from16 v0, v16

    if-ne v0, v3, :cond_11

    .line 611
    invoke-static/range {v16 .. v16}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    .line 619
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIPCallButtonDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_14

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageType:Landroid/widget/TextView;

    if-eqz v3, :cond_e

    .line 627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_f

    .line 631
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    :cond_f
    :goto_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->showDialog(I)V

    .line 661
    .end local v9    # "accountType":Ljava/lang/String;
    .end local v16    # "numberType":I
    .end local v18    # "rawContactId":J
    :cond_10
    if-eqz v13, :cond_0

    .line 662
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 613
    .restart local v9    # "accountType":Ljava/lang/String;
    .restart local v16    # "numberType":I
    .restart local v18    # "rawContactId":J
    :cond_11
    const v3, 0x7f0e03d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    goto/16 :goto_5

    .line 616
    :cond_12
    invoke-static/range {v16 .. v16}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    goto/16 :goto_5

    .line 635
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 639
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_f

    .line 641
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_15

    .line 642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 644
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageType:Landroid/widget/TextView;

    if-eqz v3, :cond_16

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_f

    .line 649
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 653
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 664
    .end local v9    # "accountType":Ljava/lang/String;
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v16    # "numberType":I
    .end local v18    # "rawContactId":J
    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v3, v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v10, v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 670
    .local v10, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 672
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 678
    :goto_7
    invoke-static/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 679
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 681
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkRemoveButtonEnable()V

    goto/16 :goto_0

    .line 676
    :cond_1a
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_7

    .line 687
    .end local v10    # "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v3, :cond_0

    .line 689
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 691
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    if-eqz v3, :cond_1c

    .line 692
    sget-object v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v3, :cond_1d

    .line 693
    sget-object v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 698
    :cond_1c
    :goto_8
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->show(Landroid/app/FragmentManager;Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;IZ)V

    goto/16 :goto_0

    .line 695
    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    goto :goto_8

    .line 703
    :cond_1e
    new-instance v15, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_TAB"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v3, "additional"

    const-string v4, "phone"

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    const-string v3, "from_speed_dial"

    const/4 v4, 0x1

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 706
    const-string v3, "has_result"

    const/4 v4, 0x1

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 707
    const-string v3, "index"

    move/from16 v0, p3

    invoke-virtual {v15, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 708
    const-string v3, "actionbar_title"

    const-string v4, "Speed dial setting"

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    if-eqz v3, :cond_20

    .line 711
    sget-object v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v3, :cond_1f

    .line 712
    sget-object v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 713
    const/4 v3, 0x0

    sput-object v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 715
    :cond_1f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tutorial_mode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 717
    const-string v3, "tutorial_mode"

    const/4 v4, 0x1

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 719
    :cond_20
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 720
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    goto/16 :goto_0

    .line 726
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_21
    const v3, 0x7f090456

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 728
    .local v14, "dragView":Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v14, v3}, Landroid/view/View;->setVisibility(I)V

    .line 730
    new-instance v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {v3, v14}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->dragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .line 731
    if-nez p2, :cond_22

    .line 733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 735
    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .line 737
    if-eqz p3, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->hasPersonData()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 739
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    .line 740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->dragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->setFloatingViewHolder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setDimLayout(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    .line 743
    :cond_23
    if-eqz p3, :cond_24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    move/from16 v0, p3

    if-eq v3, v0, :cond_24

    .line 744
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->changeData(I)V

    .line 745
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    goto/16 :goto_0

    .line 746
    :cond_24
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    move/from16 v0, p3

    if-ne v3, v0, :cond_0

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->cancelChangeOrder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    goto/16 :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 2014
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 2033
    :goto_0
    return v1

    .line 2018
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoPos:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)I

    move-result v1

    add-int/lit8 v3, p3, 0x1

    if-ne v1, v3, :cond_2

    move v1, v2

    .line 2019
    goto :goto_0

    .line 2021
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    .line 2022
    .local v0, "nameView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v3, 0x7f0e00b7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v2

    .line 2024
    goto :goto_0

    .line 2028
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    .line 2029
    iput p3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    .line 2030
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_5

    .line 2031
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2032
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->showDialog(I)V

    .line 2033
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 797
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v6, v0, -0xc2

    .line 798
    .local v6, "filteredMetaState":I
    invoke-static {v6}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    packed-switch p1, :pswitch_data_0

    .line 810
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 801
    :pswitch_0
    const-string v0, "SpeedDialActivity"

    const-string v1, "speed dial SHIFT + Enter pressed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 803
    .local v2, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v3

    .line 804
    .local v3, "position":I
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 805
    const/4 v0, 0x1

    goto :goto_0

    .line 799
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 770
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    and-int/lit16 v0, v4, -0x7001

    .line 771
    .local v0, "filteredMetaState":I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 772
    sparse-switch p1, :sswitch_data_0

    .line 792
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    :cond_1
    :goto_0
    return v3

    .line 774
    :sswitch_0
    const-string v4, "SpeedDialActivity"

    const-string v5, "speed dial Ctrl + D pressed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v4, :cond_1

    .line 776
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 777
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v1

    .line 778
    .local v1, "position":I
    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->deleteSlot(Landroid/view/View;I)V

    goto :goto_0

    .line 782
    .end local v1    # "position":I
    .end local v2    # "view":Landroid/view/View;
    :sswitch_1
    const-string v4, "SpeedDialActivity"

    const-string v5, "speed dial Ctrl + S pressed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-eq v4, v3, :cond_2

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 784
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onDoneButtonClicked()V

    goto :goto_0

    .line 772
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 436
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 438
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    .line 440
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsChangingConfiguration:Z

    if-eqz v1, :cond_0

    .line 441
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    .line 445
    :goto_0
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 477
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 478
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 479
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 480
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 490
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    .line 491
    return-void

    .line 443
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isFirstAnimation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    goto :goto_0

    .line 448
    :pswitch_0
    const v1, 0x7f0e0230

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    .line 449
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 450
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 452
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->fill([JJ)V

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->fill([JJ)V

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mContactPosition:[Z

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([ZZ)V

    goto :goto_1

    .line 458
    :pswitch_1
    const v1, 0x7f0e025c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 460
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setButtonClickable(Z)V

    .line 461
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 465
    :pswitch_2
    const v1, 0x7f0e0074

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 467
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 468
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setButtonClickable(Z)V

    .line 469
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([ZZ)V

    goto/16 :goto_1

    .line 482
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 484
    :cond_2
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 485
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 487
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 1745
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1773
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    .line 1775
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1747
    :sswitch_0
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 1753
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->finish()V

    goto :goto_0

    .line 1750
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1758
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onCancelButtonClicked()V

    goto :goto_0

    .line 1761
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onDoneButtonClicked()V

    goto :goto_0

    .line 1764
    :sswitch_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1767
    :sswitch_4
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1745
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_2
        0x7f0904f6 -> :sswitch_1
        0x7f090531 -> :sswitch_3
        0x7f090532 -> :sswitch_4
    .end sparse-switch

    .line 1747
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1935
    :cond_0
    if-eqz p0, :cond_1

    .line 1936
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsChangingConfiguration:Z

    .line 1938
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    if-eqz v0, :cond_2

    .line 1939
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v0, :cond_4

    .line 1940
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 1946
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1948
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->isShowing(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1949
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->dismissDialog(Landroid/app/FragmentManager;)V

    .line 1953
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1954
    return-void

    .line 1942
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1727
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isListEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    if-eqz v0, :cond_1

    .line 1730
    :cond_0
    const/4 v0, 0x0

    .line 1735
    :goto_0
    return v0

    .line 1732
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-eqz v0, :cond_2

    .line 1733
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setButtonClickable(Z)V

    .line 1735
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1794
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1795
    const-string v0, "lastLongClickedName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    .line 1796
    const-string v0, "originDataIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    .line 1797
    const-string v0, "changedDataIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    .line 1798
    const-string v0, "checkedItems"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    .line 1799
    const-string v0, "changedPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    .line 1800
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 1870
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1871
    sput-object p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mContext:Landroid/content/Context;

    .line 1872
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->invalidateOptionsMenu()V

    .line 1874
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkViewFromDB()V

    .line 1876
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsSpeedDialInBg:Z

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 1881
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkRemoveButtonEnable()V

    .line 1882
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isListEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1883
    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    .line 1887
    :cond_0
    :goto_1
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v0, :cond_1

    .line 1888
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1890
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastClickedView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1891
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastClickedView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 1893
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOrderOfValue:I

    .line 1895
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1896
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_number="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1897
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1898
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1900
    :cond_4
    if-eqz v8, :cond_5

    .line 1901
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1904
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    if-eqz v0, :cond_6

    .line 1905
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1907
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->isShowing(Landroid/app/FragmentManager;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1908
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->showSpeedDialTutorialPopup()V

    .line 1924
    :cond_6
    :goto_2
    return-void

    .line 1877
    :catch_0
    move-exception v9

    .line 1878
    .local v9, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-direct {v0, p0, v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    goto/16 :goto_0

    .line 1884
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsSpeedDialInBg:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isListEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1885
    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    goto/16 :goto_1

    .line 1911
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1912
    .restart local v8    # "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 1913
    const v0, 0x7f0e0437

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1914
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1915
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->finish()V

    goto :goto_2

    .line 1917
    :cond_9
    if-eqz v8, :cond_a

    .line 1918
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1920
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->showSpeedDialTutorialPopup()V

    goto :goto_2
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1381
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 1382
    .local v0, "texts":[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1383
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1384
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1386
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1804
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1805
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1807
    const-string v0, "lastLongClickedName"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    :cond_0
    const-string v0, "originDataIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1810
    const-string v0, "changedDataIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1811
    const-string v0, "checkedItems"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 1812
    const-string v0, "changedPosition"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1813
    const-string v0, "doneButtonClickable"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1814
    const-string v0, "tutorial_mode"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1816
    const-string v0, "DISPLAY_NAME"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    const-string v0, "NUMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    const-string v0, "NUMBER_TYPE"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mNumberType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1820
    const-string v0, "ACCOUNT_TYPE"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    const-string v0, "isChangingOrientation"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsChangingConfiguration:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1822
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 755
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 756
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 757
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v2, :cond_0

    .line 758
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 764
    :goto_0
    return v1

    .line 760
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 764
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 3102
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 3103
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setLayout()V

    .line 3105
    :cond_0
    return-void
.end method

.method public restartActivityInMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 2041
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2042
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2043
    const-string v1, "isFirstAnimation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2044
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2045
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivity(Landroid/content/Intent;)V

    .line 2047
    if-eqz p1, :cond_0

    .line 2048
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    .line 2049
    :cond_0
    return-void
.end method

.method protected setButtonClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    .line 3074
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    .line 3075
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 3076
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3078
    :cond_0
    return-void

    .line 3076
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setItemLayout(JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;JI)I
    .locals 10
    .param p1, "contactId"    # J
    .param p3, "holder"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    .param p4, "rawContactId"    # J
    .param p6, "position"    # I

    .prologue
    .line 1099
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1100
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1101
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_0

    .line 1103
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .local v4, "uri":Landroid/net/Uri;
    move-object v2, p0

    move-wide v5, p4

    move-object v7, p3

    move/from16 v8, p6

    .line 1104
    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I

    move-result v9

    .line 1106
    .local v9, "resultCode":I
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1110
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v9    # "resultCode":I
    :goto_0
    return v9

    :cond_0
    const/4 v9, -0x1

    goto :goto_0
.end method

.method public setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I
    .locals 22
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactUri"    # Landroid/net/Uri;
    .param p3, "rawContactId"    # J
    .param p5, "holder"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    .param p6, "position"    # I

    .prologue
    .line 948
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 949
    :cond_0
    const/4 v3, 0x0

    .line 1079
    :goto_0
    return v3

    .line 951
    :cond_1
    const/16 v16, 0x0

    .line 953
    .local v16, "nameIndex":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOrderOfValue:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 955
    const-string v3, "display_name_alt"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 961
    :goto_1
    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_2

    .line 963
    const/16 v16, 0x0

    .line 966
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 968
    .local v15, "name":Ljava/lang/String;
    if-eqz p5, :cond_3

    .line 971
    const/16 v19, 0x0

    .line 973
    .local v19, "photo":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactsUtils;->loadContactPhotoWithRawContactId(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 980
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v18, v3, p6

    .line 982
    .local v18, "oldBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    .line 983
    .local v6, "photoView":Landroid/widget/ImageView;
    const-string v3, "photo_file_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 984
    .local v10, "displayPhotoColumnIndex":I
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v14, 0x1

    .line 985
    .local v14, "hasDisplayPhoto":Z
    :goto_3
    if-eqz v14, :cond_6

    .line 986
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 987
    .local v9, "contactId":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSpeedDialDefaultImage(J)I

    move-result v8

    .line 988
    .local v8, "speedDialDefaultImageId":I
    move-object/from16 v7, v19

    .line 990
    .local v7, "photoBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 991
    .local v11, "displayPhotoId":J
    sget-object v3, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 994
    .local v5, "displayPhotoUri":Landroid/net/Uri;
    new-instance v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$3;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Landroid/net/Uri;Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    sget-object v20, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Void;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1049
    .end local v5    # "displayPhotoUri":Landroid/net/Uri;
    .end local v7    # "photoBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "speedDialDefaultImageId":I
    .end local v9    # "contactId":Ljava/lang/String;
    .end local v11    # "displayPhotoId":J
    :goto_4
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1051
    add-int/lit8 v3, p6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 1053
    .local v17, "nubmerString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 1055
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v20, ", "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1056
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1057
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1058
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    add-int/lit8 v20, p6, -0x1

    aget-boolean v4, v4, v20

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1063
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 1064
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1069
    :goto_6
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v20, 0x7f0b0137

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1071
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1072
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v4, 0x7f020426

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1074
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    aget v4, v4, p6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1075
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1076
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v20, ", "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1079
    .end local v6    # "photoView":Landroid/widget/ImageView;
    .end local v10    # "displayPhotoColumnIndex":I
    .end local v14    # "hasDisplayPhoto":Z
    .end local v17    # "nubmerString":Ljava/lang/String;
    .end local v18    # "oldBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "photo":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 959
    .end local v15    # "name":Ljava/lang/String;
    :cond_4
    const-string v3, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_1

    .line 974
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v19    # "photo":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v13

    .line 976
    .local v13, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_2

    .line 984
    .end local v13    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v6    # "photoView":Landroid/widget/ImageView;
    .restart local v10    # "displayPhotoColumnIndex":I
    .restart local v18    # "oldBitmap":Landroid/graphics/Bitmap;
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1034
    .restart local v14    # "hasDisplayPhoto":Z
    :cond_6
    if-nez v19, :cond_7

    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 1038
    .restart local v9    # "contactId":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSpeedDialDefaultImage(J)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 1039
    :catch_1
    move-exception v3

    goto/16 :goto_4

    .line 1045
    .end local v9    # "contactId":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 1061
    .restart local v17    # "nubmerString":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto/16 :goto_5

    .line 1066
    :cond_9
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6
.end method
