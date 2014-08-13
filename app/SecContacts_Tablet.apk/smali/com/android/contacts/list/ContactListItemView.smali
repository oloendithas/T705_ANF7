.class public Lcom/android/contacts/list/ContactListItemView;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;,
        Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;,
        Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;,
        Lcom/android/contacts/list/ContactListItemView$PhotoPosition;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHECK_BOX_POSITION:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

.field public static final DEFAULT_PHOTO_POSITION:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

.field private static final EASY_MODE_SWITCH:Ljava/lang/String; = "easy_mode_switch"

.field private static final GOOGLE_PLUS_DATA_SET:Ljava/lang/String; = "plus"

.field private static final MAX_LENGTH:I = 0x3e8

.field private static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "persist.sys.ims.reg"

.field private static final PROPERTY_IMS_VOLTE_SUPPORTED:Ljava/lang/String; = "persist.sys.ims.volte_supported"

.field private static final PhoneMimeType:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field private static final QUICK_CONTACT_BADGE_STYLE:I = 0x10102af

.field private static SPLIT_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final TAG:Ljava/lang/String; = "ContactListItemView"

.field private static final TRANSLATE_DIRECTION_LEFT:I = 0x1

.field private static final TRANSLATE_DIRECTION_RIGHT:I = 0x2

.field private static sHughFontEnabled:Z


# instance fields
.field private isGalSearchShowMoreItem:Z

.field private mAccountIconLayoutHeight:I

.field private final mAccountIconMarginLeft:I

.field private final mAccountIconSize:I

.field public mAccountIconsLayout:Landroid/widget/LinearLayout;

.field private mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedBackgroundDrawableForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

.field private mActivatedStateSupported:Z

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

.field private mCallButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mCallButtonPadding:I

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckBoxHeight:I

.field private final mCheckBoxMarginLeft:I

.field private final mCheckBoxMarginRight:I

.field private mCheckBoxPosition:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

.field private final mCheckBoxWidthForDeleteAnimation:I

.field protected mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

.field private final mContactsCountTextColor:I

.field protected final mContext:Landroid/content/Context;

.field private mCountView:Landroid/widget/TextView;

.field private final mCountViewTextSize:I

.field private final mDataBuffer:Landroid/database/CharArrayBuffer;

.field private mDataView:Landroid/widget/TextView;

.field private mDataViewHeight:I

.field private final mDataViewWidthWeight:I

.field private mDefaultActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

.field private mDefaultHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultPhotoViewSize:I

.field private mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

.field private mEabPresenceIcon:Landroid/widget/ImageView;

.field private mGalTitleAndCompanyTextView:Landroid/widget/TextView;

.field private final mGapBetweenImageAndText:I

.field private final mGapBetweenLabelAndData:I

.field private final mGapBetweenPresenceIconAndAccountIcons:I

.field private mHeaderBackgroundHeight:I

.field private final mHeaderTextColor:I

.field private final mHeaderTextIndent:I

.field private final mHeaderTextSize:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

.field private mHeaderTextViewBackgroundForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

.field private final mHeaderUnderlineColor:I

.field private final mHeaderUnderlineHeight:I

.field private mHeaderVisible:Z

.field private mHighlightedPrefix:[C

.field private mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerDrawableForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerVisible:Z

.field private mHorizontalDividerWithSplitDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsEasyMode:Z

.field private mIsUserProfile:Z

.field private mIsVoLTEEnabled:Z

.field private mKeepHorizontalPaddingForPhotoView:Z

.field private mKeepVerticalPaddingForPhotoView:Z

.field private mLabelAndDataViewMaxHeight:I

.field private mLabelView:Landroid/widget/TextView;

.field private mLabelViewHeight:I

.field private final mLabelViewWidthWeight:I

.field private mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

.field private mListCallButtonClickListener:Landroid/view/View$OnClickListener;

.field private mListCallButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mListCallButtonMarginView:Landroid/widget/ImageView;

.field private final mListCallButtonPadding:I

.field private mListCallButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mListCallVerticalDividerVisible:Z

.field private mListCallVerticalDividerWidth:I

.field private final mMarginRightForActivatedBackground:I

.field private final mMarginRightForFastScroll:I

.field private mMarginView:Landroid/view/View;

.field private final mMaxNumberOfAccountIcon:I

.field private mNameTextView:Landroid/widget/TextView;

.field private mNameTextViewHeight:I

.field private final mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

.field private mPhoneticNameTextView:Landroid/widget/TextView;

.field private mPhoneticNameTextViewHeight:I

.field private final mPhotoMarginLeft:I

.field private mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private mPhotoViewWidthAndHeightAreReady:Z

.field private final mPreferredHeight:I

.field private mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private final mPresenceIconMargin:I

.field private final mPresenceIconMarginTop:I

.field private final mPresenceIconSize:I

.field private mPrivateIconView:Landroid/widget/ImageView;

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mQuickContactEnabled:Z

.field public mRcsContentObserver:Landroid/database/ContentObserver;

.field public mRcsIconPosition:I

.field public mRcsIconView:Landroid/widget/ImageView;

.field public mRcsItemPosition:I

.field public mRcsServiceLookupUri:Landroid/net/Uri;

.field private mSelectionBoundsMarginLeft:I

.field private mSelectionBoundsMarginRight:I

.field private mSnippetTextViewHeight:I

.field private mSnippetView:Landroid/widget/TextView;

.field private mStarredIcon:Landroid/widget/ImageView;

.field private mStatusTextViewHeight:I

.field private mStatusView:Landroid/widget/TextView;

.field private final mTextIndent:I

.field private mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalDividerMargin:I

.field private mVerticalDividerVisible:Z

.field private mVerticalDividerWidth:I

.field private specWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sput-object v0, Lcom/android/contacts/list/ContactListItemView;->DEFAULT_PHOTO_POSITION:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 206
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    sput-object v0, Lcom/android/contacts/list/ContactListItemView;->DEFAULT_CHECK_BOX_POSITION:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    .line 323
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/list/ContactListItemView;->sHughFontEnabled:Z

    .line 1882
    const-string v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 375
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    iput-boolean v6, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 199
    sget-object v1, Lcom/android/contacts/list/ContactListItemView;->DEFAULT_PHOTO_POSITION:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 207
    sget-object v1, Lcom/android/contacts/list/ContactListItemView;->DEFAULT_CHECK_BOX_POSITION:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxPosition:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    .line 226
    iput-boolean v6, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 227
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->isGalSearchShowMoreItem:Z

    .line 291
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 317
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    .line 318
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    .line 325
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 336
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    .line 337
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mRcsContentObserver:Landroid/database/ContentObserver;

    .line 340
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mIsVoLTEEnabled:Z

    .line 546
    new-instance v1, Lcom/android/contacts/list/ContactListItemView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactListItemView$1;-><init>(Lcom/android/contacts/list/ContactListItemView;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 3072
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mIsUserProfile:Z

    .line 376
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    .line 379
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 396
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mIsEasyMode:Z

    .line 398
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mIsEasyMode:Z

    if-eqz v1, :cond_1

    .line 403
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    .line 411
    :goto_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I

    .line 413
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 415
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 417
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonPadding:I

    .line 419
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonPadding:I

    .line 421
    const/16 v1, 0x10

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    .line 423
    const/16 v1, 0x11

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    .line 425
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 427
    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    .line 429
    const/16 v1, 0x16

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextColor:I

    .line 431
    const/16 v1, 0x17

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextSize:I

    .line 433
    const/16 v1, 0x18

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 435
    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineHeight:I

    .line 437
    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineColor:I

    .line 439
    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    .line 441
    const/16 v1, 0x1d

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCountViewTextSize:I

    .line 443
    const/16 v1, 0x1b

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactsCountTextColor:I

    .line 446
    const/16 v1, 0x1f

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 448
    const/16 v1, 0x20

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 451
    const/16 v1, 0x21

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I

    .line 453
    const/16 v1, 0x22

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mMaxNumberOfAccountIcon:I

    .line 455
    const/16 v1, 0x23

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    .line 457
    const/16 v1, 0x1e

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconMarginLeft:I

    .line 459
    const/16 v1, 0x24

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I

    .line 461
    const/16 v1, 0x25

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenPresenceIconAndAccountIcons:I

    .line 465
    const/16 v1, 0x26

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxWidthForDeleteAnimation:I

    .line 469
    const/16 v1, 0x27

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I

    .line 471
    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I

    .line 473
    const/16 v1, 0x29

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForActivatedBackground:I

    .line 477
    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    .line 480
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 482
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 484
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerWithSplitDrawable:Landroid/graphics/drawable/Drawable;

    .line 487
    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/contacts/list/ContactListItemView;->setPadding(IIII)V

    .line 496
    new-instance v1, Lcom/android/contacts/format/PrefixHighlighter;

    const/16 v2, 0x14

    const v3, -0xff0100

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/contacts/format/PrefixHighlighter;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

    .line 499
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 500
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 502
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    .line 504
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackgroundForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

    .line 506
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    .line 507
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawableForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

    .line 509
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawableForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 515
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    .line 517
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 521
    :cond_0
    new-instance v1, Lcom/android/contacts/format/DisplayNameFormatter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

    invoke-direct {v1, v2}, Lcom/android/contacts/format/DisplayNameFormatter;-><init>(Lcom/android/contacts/format/PrefixHighlighter;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    .line 523
    new-instance v1, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;-><init>(Lcom/android/contacts/list/ContactListItemView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    .line 524
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->setId(I)V

    .line 526
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->setDuplicateParentStateEnabled(Z)V

    .line 527
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 529
    return-void

    .line 408
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 512
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->specWidth:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonMarginView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensurePhotoViewSize()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/contacts/list/ContactListItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/contacts/list/ContactListItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->isGalSearchShowMoreItem:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    return p1
.end method

.method static synthetic access$4102(Lcom/android/contacts/list/ContactListItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerVisible:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensureListCallVerticalDivider()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerWidth:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/contacts/list/ContactListItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenPresenceIconAndAccountIcons:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    return p1
.end method

.method static synthetic access$5102(Lcom/android/contacts/list/ContactListItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensureVerticalDivider()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I

    return v0
.end method

.method static synthetic access$5400(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method private ensureListCallVerticalDivider()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 732
    const-string v0, "DEFAULT"

    const-string v1, "PHONE_WHITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020743

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 739
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerWidth:I

    .line 741
    :cond_0
    return-void

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020527

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private ensurePhotoViewSize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 747
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    if-nez v1, :cond_0

    .line 748
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v1, :cond_1

    .line 762
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    .line 763
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    .line 772
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 774
    :cond_0
    return-void

    .line 764
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 765
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    goto :goto_0

    .line 767
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v0

    .line 768
    .local v0, "defaultPhotoViewSize":I
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v1, :cond_3

    move v1, v0

    :goto_1
    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    .line 769
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    if-eqz v1, :cond_4

    .end local v0    # "defaultPhotoViewSize":I
    :goto_2
    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    goto :goto_0

    .restart local v0    # "defaultPhotoViewSize":I
    :cond_3
    move v1, v2

    .line 768
    goto :goto_1

    :cond_4
    move v0, v2

    .line 769
    goto :goto_2
.end method

.method private ensureVerticalDivider()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020527

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 726
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I

    .line 728
    :cond_0
    return-void
.end method

.method private getAccountIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "link"    # Ljava/lang/String;
    .param p2, "dataSets"    # Ljava/lang/String;

    .prologue
    .line 2209
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 2224
    .local v0, "type":Lcom/android/contacts/model/AccountType;
    instance-of v1, v0, Lcom/android/contacts/model/ExchangeAccountType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2225
    check-cast v0, Lcom/android/contacts/model/ExchangeAccountType;

    .end local v0    # "type":Lcom/android/contacts/model/AccountType;
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ExchangeAccountType;->getDisplaySmallIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2227
    :goto_0
    return-object v1

    .restart local v0    # "type":Lcom/android/contacts/model/AccountType;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 1559
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method private setMarqueeText(Landroid/widget/TextView;[CI)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # [C
    .param p3, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 1377
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 1378
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, v2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1382
    :goto_0
    return-void

    .line 1380
    :cond_0
    invoke-virtual {p1, p2, v2, p3}, Landroid/widget/TextView;->setText([CII)V

    goto :goto_0
.end method

.method private setTranslateAnimationForDeleteMode(Landroid/view/View;IJ)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "startTimeMillis"    # J

    .prologue
    .line 2016
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2017
    const/4 v0, 0x0

    .local v0, "fromX":I
    const/4 v2, 0x0

    .local v2, "toX":I
    const/4 v1, 0x0

    .local v1, "fromY":I
    const/4 v3, 0x0

    .line 2018
    .local v3, "toY":I
    const/4 v5, 0x2

    if-ne p2, v5, :cond_3

    .line 2019
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCheckBoxPosition()Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    move-result-object v5

    sget-object v6, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    if-ne v5, v6, :cond_2

    .line 2020
    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxWidthForDeleteAnimation:I

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I

    add-int/2addr v5, v6

    neg-int v0, v5

    .line 2024
    :goto_0
    const/4 v2, 0x0

    .line 2025
    const/4 v1, 0x0

    .line 2026
    const/4 v3, 0x0

    .line 2038
    :cond_0
    :goto_1
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v0

    int-to-float v6, v2

    int-to-float v7, v1

    int-to-float v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2039
    .local v4, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v5, 0x14d

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2041
    invoke-virtual {v4, p3, p4}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 2042
    new-instance v5, Lcom/sec/android/app/contacts/widget/SineInout70Interpolator;

    invoke-direct {v5}, Lcom/sec/android/app/contacts/widget/SineInout70Interpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2043
    invoke-virtual {p1, v4}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2045
    .end local v0    # "fromX":I
    .end local v1    # "fromY":I
    .end local v2    # "toX":I
    .end local v3    # "toY":I
    .end local v4    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_1
    return-void

    .line 2022
    .restart local v0    # "fromX":I
    .restart local v1    # "fromY":I
    .restart local v2    # "toX":I
    .restart local v3    # "toY":I
    :cond_2
    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxWidthForDeleteAnimation:I

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I

    add-int v0, v5, v6

    goto :goto_0

    .line 2027
    :cond_3
    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    .line 2028
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCheckBoxPosition()Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    move-result-object v5

    sget-object v6, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    if-ne v5, v6, :cond_4

    .line 2029
    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxWidthForDeleteAnimation:I

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I

    add-int v0, v5, v6

    .line 2033
    :goto_2
    const/4 v2, 0x0

    .line 2034
    const/4 v1, 0x0

    .line 2035
    const/4 v3, 0x0

    goto :goto_1

    .line 2031
    :cond_4
    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxWidthForDeleteAnimation:I

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I

    add-int/2addr v5, v6

    neg-int v0, v5

    goto :goto_2
.end method

.method private shouldShowAccountIcon(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 2192
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sec_container_1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2204
    :cond_0
    :goto_0
    return v1

    .line 2199
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2200
    const-string v2, "vnd.sec.contact.phone/preload"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2204
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static snippetize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;I)Ljava/lang/String;
    .locals 29
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "snippetStartMatch"    # C
    .param p4, "snippetEndMatch"    # C
    .param p5, "snippetEllipsis"    # Ljava/lang/String;
    .param p6, "snippetMaxTokens"    # I

    .prologue
    .line 1790
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1791
    .local v13, "lowerQuery":Ljava/lang/String;
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 1793
    :cond_0
    const/16 v24, 0x0

    .line 1873
    :goto_1
    return-object v24

    .line 1790
    .end local v13    # "lowerQuery":Ljava/lang/String;
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 1798
    .restart local v13    # "lowerQuery":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 1799
    .local v12, "lowerDisplayName":Ljava/lang/String;
    :goto_2
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1800
    .local v19, "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1801
    .local v18, "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->split(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1802
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1803
    .local v17, "nameToken":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1804
    const/16 v24, 0x0

    goto :goto_1

    .line 1798
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "lowerDisplayName":Ljava/lang/String;
    .end local v17    # "nameToken":Ljava/lang/String;
    .end local v18    # "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19    # "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const-string v12, ""

    goto :goto_2

    .line 1808
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v12    # "lowerDisplayName":Ljava/lang/String;
    .restart local v18    # "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19    # "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const-string v24, "\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1811
    .local v5, "contentLines":[Ljava/lang/String;
    move-object v3, v5

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v10, :cond_e

    aget-object v4, v3, v8

    .line 1812
    .local v4, "contentLine":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1815
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1816
    .local v11, "lineTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1817
    .local v23, "tokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, v23

    invoke-static {v4, v11, v0}, Lcom/android/contacts/list/ContactListItemView;->split(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1821
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1823
    .local v16, "markedTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 1824
    .local v6, "firstToken":I
    const/4 v9, -0x1

    .line 1825
    .local v9, "lastToken":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_8

    .line 1826
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1827
    .local v22, "token":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 1828
    .local v14, "lowerToken":Ljava/lang/String;
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1831
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1835
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v6, v0, :cond_6

    .line 1836
    const/16 v24, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000000000000000L

    div-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->floor(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    sub-int v25, v7, v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1840
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v24

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v25

    add-int v25, v25, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1825
    :cond_6
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1845
    :cond_7
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1850
    .end local v14    # "lowerToken":Ljava/lang/String;
    .end local v22    # "token":Ljava/lang/String;
    :cond_8
    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v6, v0, :cond_d

    .line 1851
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1852
    .local v21, "sb":Ljava/lang/StringBuilder;
    if-lez v6, :cond_9

    .line 1853
    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    :cond_9
    move v7, v6

    :goto_6
    if-ge v7, v9, :cond_b

    .line 1856
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1857
    .local v15, "markedToken":Ljava/lang/String;
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1858
    .local v20, "originalToken":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    add-int/lit8 v24, v9, -0x1

    move/from16 v0, v24

    if-ge v7, v0, :cond_a

    .line 1861
    move-object/from16 v0, v23

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v25

    add-int v25, v25, v24

    add-int/lit8 v24, v7, 0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1866
    .end local v15    # "markedToken":Ljava/lang/String;
    .end local v20    # "originalToken":Ljava/lang/String;
    :cond_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_c

    .line 1867
    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1869
    :cond_c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_1

    .line 1811
    .end local v6    # "firstToken":I
    .end local v7    # "i":I
    .end local v9    # "lastToken":I
    .end local v11    # "lineTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "markedTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .end local v23    # "tokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 1873
    .end local v4    # "contentLine":Ljava/lang/String;
    :cond_e
    const/16 v24, 0x0

    goto/16 :goto_1
.end method

.method private static split(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1896
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/contacts/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1897
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1898
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1899
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1901
    :cond_0
    return-void
.end method


# virtual methods
.method public DelListCallButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1195
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setVisibility(I)V

    .line 1197
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonMarginView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1199
    :cond_0
    return-void
.end method

.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 697
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 698
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 699
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSelectionBoundsMarginLeft:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 700
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSelectionBoundsMarginRight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 701
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 810
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 813
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 816
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerVisible:Z

    if-eqz v0, :cond_3

    .line 817
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 819
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 820
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 786
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 787
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 790
    :cond_0
    return-void
.end method

.method public getCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1335
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v0, :cond_0

    .line 1336
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1337
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setFocusable(Z)V

    .line 1338
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1339
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setClickable(Z)V

    .line 1341
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 1342
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1343
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->setCheckBoxAnimationEnable(Z)V

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->clearAnimation()V

    .line 1348
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public getCheckBoxPosition()Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;
    .locals 2

    .prologue
    .line 1955
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxPosition:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    .line 1960
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxPosition:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->RIGHT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    goto :goto_0
.end method

.method public getCountView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1478
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    .line 1479
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1480
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1481
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1482
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1484
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1486
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDataView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1409
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    .line 1410
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1411
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1413
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110060

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1414
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1416
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDefaultPhotoViewSize()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    return v0
.end method

.method public final getDisplayNameForHovering()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2268
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 2270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEabPresence(J)I
    .locals 11
    .param p1, "contactid"    # J

    .prologue
    .line 2295
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2298
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mIsUserProfile:Z

    if-eqz v2, :cond_0

    .line 2299
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "data"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2301
    .local v1, "profileDBUri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data6"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mimetype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2311
    .end local v1    # "profileDBUri":Landroid/net/Uri;
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_0
    if-nez v10, :cond_1

    .line 2312
    const-string v2, "ContactListItemView"

    const-string v3, "cursor is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    const-string v2, "1"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2340
    :goto_1
    return v2

    .line 2306
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_0
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "data6"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "mimetype"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " = \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .restart local v10    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 2316
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    .line 2317
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2318
    const-string v2, "1"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 2321
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2323
    const-string v8, "1"

    .line 2326
    .local v8, "capValue":Ljava/lang/String;
    :cond_3
    const-string v2, "data6"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2327
    .local v9, "capValue1":Ljava/lang/String;
    const-string v2, "ContactListItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data6 value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "0"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2331
    move-object v8, v9

    .line 2336
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2338
    const-string v2, "ContactListItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value of capability :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_1

    .line 2334
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2
.end method

.method public getEabPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # I

    .prologue
    .line 2350
    const/4 v0, 0x0

    .line 2351
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_0

    .line 2352
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2353
    const-string v1, "ContactListItemView"

    const-string v2, "getEabPresenceIcon - CONTACT_AVAILABILITY_ON "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_0
    return-object v0
.end method

.method public getGalTitleAndCompanyNameTextView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1273
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    .line 1274
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1275
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1278
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110060

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1279
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1281
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1285
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    return-object v0

    .line 1281
    :cond_1
    const/16 v0, 0x13

    goto :goto_0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1310
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    .line 1311
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1312
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1314
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110060

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1315
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPhotoPosition()Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne v0, v1, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1324
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1326
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v1, 0x7f110052

    const v2, 0x7f110051

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1062
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-nez v3, :cond_4

    .line 1063
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1064
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1065
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1068
    sget-boolean v3, Lcom/android/contacts/list/ContactListItemView;->sHughFontEnabled:Z

    if-eqz v3, :cond_2

    .line 1069
    .local v1, "lStyle":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1070
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1074
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1076
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x15

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1080
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 1081
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1085
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1097
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1098
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1099
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0109

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1100
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1112
    :goto_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1113
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c019f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v6, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1115
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v2

    .end local v1    # "lStyle":I
    :cond_2
    move v1, v2

    .line 1068
    goto/16 :goto_0

    .line 1076
    .restart local v1    # "lStyle":I
    :cond_3
    const/16 v2, 0x10

    goto :goto_1

    .line 1089
    .end local v1    # "lStyle":I
    :cond_4
    sget-boolean v3, Lcom/android/contacts/list/ContactListItemView;->sHughFontEnabled:Z

    if-eqz v3, :cond_5

    .line 1090
    .restart local v1    # "lStyle":I
    :goto_4
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1091
    .local v0, "lAppliedStyle":I
    if-eq v0, v1, :cond_0

    .line 1092
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .end local v0    # "lAppliedStyle":I
    .end local v1    # "lStyle":I
    :cond_5
    move v1, v2

    .line 1089
    goto :goto_4

    .line 1102
    .restart local v1    # "lStyle":I
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3

    .line 1106
    :cond_7
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1107
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0174

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1110
    :cond_8
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3
.end method

.method public getPhoneticNameTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1254
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 1255
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1256
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1258
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110060

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1260
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1262
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1266
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    return-object v0

    .line 1262
    :cond_1
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public final getPhoneticNameViewForHovering()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2276
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 2278
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhotoPosition()Lcom/android/contacts/list/ContactListItemView$PhotoPosition;
    .locals 2

    .prologue
    .line 1937
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1938
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 1942
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->RIGHT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    goto :goto_0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 960
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 961
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v0, :cond_1

    .line 962
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x10102af

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 967
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 970
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 974
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 977
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 978
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0

    .line 964
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 932
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_0

    .line 933
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QuickContact is disabled for this view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_2

    .line 936
    new-instance v0, Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x10102af

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 937
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0203

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 947
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setBackgroundColor(I)V

    .line 950
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 951
    iput-boolean v5, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 953
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getSnippetView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1440
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    .line 1441
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1442
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1444
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110060

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1446
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1448
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStarredIcon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1354
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    .line 1355
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    const v1, 0x7f0203c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1356
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1457
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1458
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    .line 1459
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1460
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1462
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110060

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1464
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1466
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 1468
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1470
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideCallButton()V
    .locals 2

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setVisibility(I)V

    .line 1205
    :cond_0
    return-void
.end method

.method public hideCheckBox()V
    .locals 2

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1657
    :cond_0
    return-void
.end method

.method public hideCheckBoxWithAnimation(J)V
    .locals 6
    .param p1, "startTimeMillis"    # J

    .prologue
    const/4 v5, 0x1

    .line 1661
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1662
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1663
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1665
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/16 v3, 0x14d

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1667
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCheckBoxPosition()Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    if-ne v1, v2, :cond_1

    .line 1668
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f050018

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1672
    .local v0, "frameAnimation":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1673
    new-instance v1, Lcom/sec/android/app/contacts/widget/SineInout70Interpolator;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/widget/SineInout70Interpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1674
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1676
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-direct {p0, v1, v5, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setTranslateAnimationForDeleteMode(Landroid/view/View;IJ)V

    .line 1678
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v5, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setTranslateAnimationForDeleteMode(Landroid/view/View;IJ)V

    .line 1680
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v5, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setTranslateAnimationForDeleteMode(Landroid/view/View;IJ)V

    .line 1684
    .end local v0    # "frameAnimation":Landroid/view/animation/Animation;
    :cond_0
    return-void

    .line 1670
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f050019

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "frameAnimation":Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method public hideDisplayName()V
    .locals 2

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1615
    :cond_0
    return-void
.end method

.method public hideGalTitleAndCompany()V
    .locals 2

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    .line 1650
    :cond_0
    return-void
.end method

.method public hideListCallButton()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1188
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setVisibility(I)V

    .line 1190
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonMarginView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1192
    :cond_0
    return-void
.end method

.method public hidePhoneticName()V
    .locals 2

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 1633
    :cond_0
    return-void
.end method

.method public isCheckBoxVisible()Z
    .locals 1

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected isGonevisible(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 712
    if-nez p1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInvisible(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 708
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 704
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 799
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 800
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 803
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 620
    sub-int v1, p5, p3

    .line 621
    .local v1, "height":I
    sub-int v6, p4, p2

    .line 624
    .local v6, "width":I
    const/4 v5, 0x0

    .line 625
    .local v5, "topBound":I
    move v0, v1

    .line 626
    .local v0, "bottomBound":I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingLeft()I

    move-result v2

    .line 627
    .local v2, "leftBound":I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 631
    .local v4, "rightBound":I
    iget-boolean v7, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v7, :cond_1

    .line 632
    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00d9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 634
    .local v3, "margineViewHeight":I
    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8, v4, v3}, Landroid/view/View;->layout(IIII)V

    .line 635
    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v8, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    add-int/2addr v8, v3

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 639
    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 640
    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v4, v8

    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    add-int/2addr v9, v3

    invoke-virtual {v7, v8, v3, v4, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 653
    :cond_0
    iget v7, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c00d9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 658
    .end local v3    # "margineViewHeight":I
    :cond_1
    iget-boolean v7, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v7, :cond_2

    .line 659
    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    sub-int v8, v1, v8

    invoke-virtual {v7, v2, v8, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 664
    iget v7, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    sub-int/2addr v0, v7

    .line 667
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 669
    iget-boolean v7, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 670
    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 675
    :cond_3
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 676
    iget-boolean v7, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v7, :cond_6

    .line 677
    iget v7, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForActivatedBackground:I

    add-int/2addr v2, v7

    .line 688
    :cond_4
    :goto_0
    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-boolean v8, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v8

    if-nez v8, :cond_5

    iget v8, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForActivatedBackground:I

    sub-int/2addr v4, v8

    .end local v4    # "rightBound":I
    :cond_5
    invoke-virtual {v7, v2, v5, v4, v0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->layout(IIII)V

    .line 693
    return-void

    .line 679
    .restart local v4    # "rightBound":I
    :cond_6
    iget v7, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    add-int/2addr v2, v7

    goto :goto_0

    .line 682
    :cond_7
    iget-boolean v7, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactListItemView;->isGonevisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 685
    iget v7, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    sub-int/2addr v4, v7

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v6, 0x40000000

    .line 572
    invoke-static {v5, p1}, Lcom/android/contacts/list/ContactListItemView;->resolveSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/list/ContactListItemView;->specWidth:I

    .line 575
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v3, :cond_3

    .line 576
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int v2, v3, v4

    .line 582
    .local v2, "preferredHeight":I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {v3, v5, v5}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->measure(II)V

    .line 583
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->getMeasuredHeight()I

    move-result v0

    .line 586
    .local v0, "height":I
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v3, :cond_0

    .line 587
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int/2addr v0, v3

    .line 591
    :cond_0
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 594
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v3, :cond_2

    .line 595
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->specWidth:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 598
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 599
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->specWidth:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 603
    :cond_1
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 605
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineHeight:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 607
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 609
    .local v1, "margineViewHeight":I
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginView:Landroid/view/View;

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->specWidth:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 612
    add-int/2addr v0, v1

    .line 615
    .end local v1    # "margineViewHeight":I
    :cond_2
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->specWidth:I

    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/list/ContactListItemView;->setMeasuredDimension(II)V

    .line 616
    return-void

    .line 578
    .end local v0    # "height":I
    .end local v2    # "preferredHeight":I
    :cond_3
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    .restart local v2    # "preferredHeight":I
    goto :goto_0
.end method

.method public removePhotoView()V
    .locals 2

    .prologue
    .line 987
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView(ZZ)V

    .line 988
    return-void
.end method

.method public removePhotoView(ZZ)V
    .locals 3
    .param p1, "keepHorizontalPadding"    # Z
    .param p2, "keepVerticalPadding"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1004
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 1005
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    .line 1006
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    .line 1007
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1010
    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1015
    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 1017
    :cond_1
    return-void
.end method

.method public removePhotoViewForDeleteMode()V
    .locals 2

    .prologue
    .line 992
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoViewForDeleteMode(ZZ)V

    .line 993
    return-void
.end method

.method public removePhotoViewForDeleteMode(ZZ)V
    .locals 3
    .param p1, "keepHorizontalPadding"    # Z
    .param p2, "keepVerticalPadding"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 1022
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    .line 1023
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    .line 1024
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1027
    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 1030
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1032
    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    .line 1035
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1038
    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 1041
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1043
    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    .line 1046
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1926
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1927
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1929
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->forceLayout()V

    .line 1930
    return-void
.end method

.method public setActivatedStateDrawables(Z)V
    .locals 4
    .param p1, "isChaingSplitRatioMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2234
    if-eqz p1, :cond_1

    .line 2235
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawableForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2236
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawableForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 2237
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackgroundForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    .line 2251
    :goto_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v0, :cond_0

    .line 2252
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2254
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2255
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2261
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->drawableStateChanged()V

    .line 2262
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->jumpDrawablesToCurrentState()V

    .line 2263
    return-void

    .line 2239
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2240
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_2

    .line 2242
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerWithSplitDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 2248
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2246
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 2257
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public setActivatedStateSupported(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1913
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    .line 1914
    return-void
.end method

.method public setCheckBoxAnimationEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setCheckBoxAnimationEnabled(Z)V

    .line 1331
    return-void
.end method

.method public setCheckBoxPosition(Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;)V
    .locals 0
    .param p1, "checkBoxPosition"    # Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    .prologue
    .line 1950
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxPosition:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    .line 1951
    return-void
.end method

.method public setCountView(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 1493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1494
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1498
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCountView()Landroid/widget/TextView;

    .line 1499
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1500
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCountViewTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1501
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1502
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactsCountTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1503
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setData([CI)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "size"    # I

    .prologue
    .line 1365
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1374
    :cond_1
    :goto_0
    return-void

    .line 1370
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    .line 1371
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 1372
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setDefaultPhotoViewSize(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 777
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 778
    return-void
.end method

.method public setDividerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 827
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 828
    return-void
.end method

.method public setGalSearchShowMoreItem(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 565
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->isGalSearchShowMoreItem:Z

    .line 566
    return-void
.end method

.method public setGalTitleAndCompanyName(Ljava/lang/String;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    .line 1238
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 1239
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1240
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1247
    :cond_2
    :goto_0
    return-void

    .line 1243
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListItemView;->getGalTitleAndCompanyNameTextView(Ljava/lang/String;)Landroid/widget/TextView;

    .line 1245
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHighlightedPrefix([C)V
    .locals 0
    .param p1, "upperCasePrefix"    # [C

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    .line 1056
    return-void
.end method

.method public setHorizontalDivider(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 923
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 924
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 925
    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 926
    return-void
.end method

.method public setHugeFontEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2283
    sput-boolean p1, Lcom/android/contacts/list/ContactListItemView;->sHughFontEnabled:Z

    .line 2284
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1303
    :cond_0
    :goto_0
    return-void

    .line 1299
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    .line 1300
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1301
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 1385
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_1

    .line 1388
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1389
    .local v0, "spannable":Landroid/text/SpannableString;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1390
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1398
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1402
    .end local v0    # "spannable":Landroid/text/SpannableString;
    :goto_1
    return-void

    .line 1393
    .restart local v0    # "spannable":Landroid/text/SpannableString;
    :cond_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 1400
    .end local v0    # "spannable":Landroid/text/SpannableString;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setOnCallButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "callButtonClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonClickListener:Landroid/view/View$OnClickListener;

    .line 536
    return-void
.end method

.method public setOnListCallButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listcallButtonClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonClickListener:Landroid/view/View$OnClickListener;

    .line 540
    return-void
.end method

.method public setOnListCallButtonLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listCallButtonLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 544
    return-void
.end method

.method public setPhoneticName([CI)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "size"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1211
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 1220
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1225
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPhoneticNameTextView()Landroid/widget/TextView;

    .line 1226
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 1227
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V
    .locals 0
    .param p1, "photoPosition"    # Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .prologue
    .line 1933
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 1934
    return-void
.end method

.method public setPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1526
    if-eqz p1, :cond_2

    .line 1527
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1528
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    .line 1530
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1532
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1533
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1534
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1540
    :cond_1
    :goto_0
    return-void

    .line 1536
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1537
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPresenceForEAB(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1542
    if-eqz p1, :cond_2

    .line 1543
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1544
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    .line 1546
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1548
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1549
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1550
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1556
    :cond_1
    :goto_0
    return-void

    .line 1552
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1553
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 561
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 562
    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 834
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    .line 835
    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "allCap"    # Z

    .prologue
    const/4 v6, 0x0

    .line 841
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 842
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 843
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginView:Landroid/view/View;

    .line 844
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 849
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    .line 850
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 851
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 852
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 853
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x3dcccccd

    const/4 v2, 0x0

    const/high16 v3, 0x40000000

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 858
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x15

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 862
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 864
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 865
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    invoke-virtual {v0, v1, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 869
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 879
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 880
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 881
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    .line 898
    :goto_2
    return-void

    .line 858
    :cond_3
    const/16 v0, 0x10

    goto :goto_0

    .line 867
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    invoke-virtual {v0, v1, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 887
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 888
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 896
    :cond_6
    iput-boolean v6, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    goto :goto_2
.end method

.method public setSectionHeaderBackGround(I)V
    .locals 5
    .param p1, "resId"    # I

    .prologue
    const/4 v4, 0x0

    .line 904
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 905
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    .line 906
    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    .line 907
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 908
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 909
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 911
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setSelectionBoundsHorizontalMargin(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1971
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mSelectionBoundsMarginLeft:I

    .line 1972
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mSelectionBoundsMarginRight:I

    .line 1973
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1425
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1430
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getSnippetView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/contacts/format/PrefixHighlighter;->setText(Landroid/widget/TextView;Ljava/lang/String;[C)V

    .line 1431
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1512
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1520
    :cond_0
    :goto_0
    return-void

    .line 1516
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getStatusView()Landroid/widget/TextView;

    .line 1517
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1518
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "unknownNameText"    # Ljava/lang/CharSequence;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/format/DisplayNameFormatter;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 558
    return-void
.end method

.method public setUserProfile(Z)V
    .locals 0
    .param p1, "userProfile"    # Z

    .prologue
    .line 3074
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mIsUserProfile:Z

    .line 3075
    return-void
.end method

.method public setVoLTEEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1917
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mIsVoLTEEnabled:Z

    .line 1918
    return-void
.end method

.method public showAccountIcons(Landroid/database/Cursor;I)V
    .locals 21
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "linkColumnIndex"    # I

    .prologue
    .line 2091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 2094
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    .line 2102
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2103
    .local v5, "accountTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2105
    .local v7, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2106
    .local v15, "linkColumnString":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2186
    :goto_0
    return-void

    .line 2110
    :cond_1
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    .line 2111
    const/4 v14, 0x0

    .line 2113
    .local v14, "isVisible":Z
    invoke-static {v15, v5, v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseLinkColumnString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2115
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2116
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/list/ContactListItemView;->mRcsIconPosition:I

    .line 2117
    new-instance v17, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const v18, 0x7f0203da

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    move/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 2126
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/contacts/list/ContactListItemView;->shouldShowAccountIcon(Ljava/util/ArrayList;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2127
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2129
    .local v6, "addedAccount":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "isGoogleAccount":Z
    const/4 v12, 0x0

    .local v12, "isGoogleOriginalAccount":Z
    const/4 v13, 0x0

    .line 2130
    .local v13, "isGooglePlusAccount":Z
    const/4 v9, 0x1

    .local v9, "isFirstGoogleOriginalAccount":Z
    const/4 v10, 0x1

    .line 2132
    .local v10, "isFirstGooglePlusAccount":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_7

    .line 2134
    const-string v17, "com.google"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 2135
    if-eqz v11, :cond_3

    .line 2136
    const-string v17, "plus"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2137
    const/4 v13, 0x1

    .line 2144
    :cond_3
    :goto_2
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    if-eqz v11, :cond_6

    :cond_4
    if-eqz v13, :cond_5

    if-nez v10, :cond_6

    :cond_5
    if-eqz v12, :cond_e

    if-eqz v9, :cond_e

    .line 2147
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mMaxNumberOfAccountIcon:I

    move/from16 v17, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 2148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mMaxNumberOfAccountIcon:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-nez v17, :cond_a

    .line 2181
    .end local v6    # "addedAccount":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v9    # "isFirstGoogleOriginalAccount":Z
    .end local v10    # "isFirstGooglePlusAccount":Z
    .end local v11    # "isGoogleAccount":Z
    .end local v12    # "isGoogleOriginalAccount":Z
    .end local v13    # "isGooglePlusAccount":Z
    :cond_7
    :goto_3
    if-nez v14, :cond_8

    .line 2182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2185
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2139
    .restart local v6    # "addedAccount":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "i":I
    .restart local v9    # "isFirstGoogleOriginalAccount":Z
    .restart local v10    # "isFirstGooglePlusAccount":Z
    .restart local v11    # "isGoogleAccount":Z
    .restart local v12    # "isGoogleOriginalAccount":Z
    .restart local v13    # "isGooglePlusAccount":Z
    :cond_9
    const/4 v12, 0x1

    goto :goto_2

    .line 2151
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mMaxNumberOfAccountIcon:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2153
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2154
    .local v16, "moreAccontIconImageView":Landroid/widget/ImageView;
    const v17, 0x7f020703

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2155
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconMarginLeft:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_3

    .line 2160
    .end local v16    # "moreAccontIconImageView":Landroid/widget/ImageView;
    :cond_b
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2161
    .local v4, "accontIconImageView":Landroid/widget/ImageView;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->getAccountIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconMarginLeft:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v4, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 2166
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2167
    const/4 v14, 0x1

    .line 2169
    if-eqz v11, :cond_e

    .line 2170
    if-eqz v13, :cond_c

    .line 2171
    const/4 v10, 0x0

    .line 2172
    :cond_c
    if-eqz v12, :cond_d

    .line 2173
    const/4 v9, 0x0

    .line 2175
    :cond_d
    const/4 v13, 0x0

    .line 2176
    const/4 v12, 0x0

    .line 2132
    .end local v4    # "accontIconImageView":Landroid/widget/ImageView;
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method

.method public showCallButton(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "tag"    # I

    .prologue
    const/4 v3, 0x0

    .line 1122
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    if-nez v0, :cond_0

    .line 1123
    new-instance v0, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    .line 1124
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setId(I)V

    .line 1125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1126
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setBackgroundResource(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const v1, 0x108008d

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setImageResource(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonPadding:I

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonPadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setPadding(IIII)V

    .line 1129
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1131
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setTag(Ljava/lang/Object;)V

    .line 1135
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setVisibility(I)V

    .line 1136
    return-void
.end method

.method public showCheckBox(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 1977
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1978
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1980
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1981
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->setCheckBoxAnimationEnable(Z)V

    .line 1983
    :cond_0
    return-void
.end method

.method public showCheckBoxWithAnimation(ZJ)V
    .locals 6
    .param p1, "checked"    # Z
    .param p2, "startTimeMillis"    # J

    .prologue
    const/4 v5, 0x2

    .line 1987
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1988
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    .line 1989
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1990
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1992
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    const-wide/16 v3, 0x14d

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1994
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCheckBoxPosition()Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    if-ne v1, v2, :cond_1

    .line 1995
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f050016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1999
    .local v0, "frameAnimation":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2000
    new-instance v1, Lcom/sec/android/app/contacts/widget/SineInout70Interpolator;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/widget/SineInout70Interpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2001
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2003
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v5, p2, p3}, Lcom/android/contacts/list/ContactListItemView;->setTranslateAnimationForDeleteMode(Landroid/view/View;IJ)V

    .line 2005
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v5, p2, p3}, Lcom/android/contacts/list/ContactListItemView;->setTranslateAnimationForDeleteMode(Landroid/view/View;IJ)V

    .line 2007
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v5, p2, p3}, Lcom/android/contacts/list/ContactListItemView;->setTranslateAnimationForDeleteMode(Landroid/view/View;IJ)V

    .line 2011
    .end local v0    # "frameAnimation":Landroid/view/animation/Animation;
    :cond_0
    return-void

    .line 1997
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f050017

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "frameAnimation":Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method public showData(Landroid/database/Cursor;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "dataColumnIndex"    # I

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1909
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setData([CI)V

    .line 1910
    return-void
.end method

.method public showDisplayName(Landroid/database/Cursor;IIZI)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "nameColumnIndex"    # I
    .param p3, "alternativeNameColumnIndex"    # I
    .param p4, "highlightingEnabled"    # Z
    .param p5, "displayOrder"    # I

    .prologue
    .line 1565
    if-eqz p1, :cond_0

    .line 1567
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    invoke-virtual {v1}, Lcom/android/contacts/format/DisplayNameFormatter;->getNameBuffer()Landroid/database/CharArrayBuffer;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1568
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    invoke-virtual {v1}, Lcom/android/contacts/format/DisplayNameFormatter;->getAlternateNameBuffer()Landroid/database/CharArrayBuffer;

    move-result-object v1

    invoke-interface {p1, p3, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1576
    :cond_0
    const/4 v0, 0x0

    .line 1577
    .local v0, "prefixForIndian":[C
    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1578
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v0

    .line 1584
    :goto_0
    if-eqz v0, :cond_3

    .line 1585
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    invoke-virtual {v2, p5, p4, v0}, Lcom/android/contacts/format/DisplayNameFormatter;->getDisplayName(IZ[C)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1597
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v1, :cond_1

    .line 1598
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0203

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1601
    :cond_1
    return-void

    .line 1581
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v0

    goto :goto_0

    .line 1589
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-virtual {v2, p5, p4, v3}, Lcom/android/contacts/format/DisplayNameFormatter;->getDisplayName(IZ[C)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public showDisplayNameAsGalSearchShowMore()V
    .locals 3

    .prologue
    .line 1606
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0240

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1607
    return-void
.end method

.method public showEabPresence(IJ)Ljava/lang/Integer;
    .locals 3
    .param p1, "position"    # I
    .param p2, "contactid"    # J

    .prologue
    .line 2287
    const-string v0, "ContactListItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEabPresence-  position - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contactId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/ContactListItemView;->getEabPresence(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public showGalTitleAndCompany(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1636
    const/4 v0, 0x0

    .line 1637
    .local v0, "size":I
    if-eqz p1, :cond_0

    .line 1638
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1639
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setGalTitleAndCompanyName(Ljava/lang/String;I)V

    .line 1643
    :goto_0
    return-void

    .line 1641
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setGalTitleAndCompanyName(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showListCallButton(Landroid/net/Uri;)V
    .locals 5
    .param p1, "baseUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 1139
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    if-nez v0, :cond_1

    .line 1140
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonMarginView:Landroid/widget/ImageView;

    .line 1141
    new-instance v0, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    .line 1142
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setHoverPopupType(I)V

    .line 1144
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0e031f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonMarginView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1148
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const v1, 0x7f020744

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setBackgroundResource(I)V

    .line 1149
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const v1, 0x7f02075a

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setImageResource(I)V

    .line 1150
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonPadding:I

    div-int/lit8 v1, v1, 0x5

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonPadding:I

    div-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, v4}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setPadding(IIII)V

    .line 1151
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1153
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1154
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonMarginView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setTag(Ljava/lang/Object;)V

    .line 1183
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setVisibility(I)V

    .line 1184
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonMarginView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1185
    return-void
.end method

.method public showPhoneticName(Landroid/database/Cursor;I)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "phoneticNameColumnIndex"    # I

    .prologue
    .line 1618
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1619
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 1620
    .local v0, "phoneticNameSize":I
    if-eqz v0, :cond_0

    .line 1621
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setPhoneticName([CI)V

    .line 1625
    :goto_0
    return-void

    .line 1623
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setPhoneticName([CI)V

    goto :goto_0
.end method

.method public showPresenceAndStatusMessage(Landroid/database/Cursor;II)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "presenceColumnIndex"    # I
    .param p3, "contactStatusColumnIndex"    # I

    .prologue
    .line 1691
    const/4 v0, 0x0

    .line 1692
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 1693
    .local v1, "presence":I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1694
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1695
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1697
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    .line 1699
    const/4 v2, 0x0

    .line 1700
    .local v2, "statusMessage":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1701
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1705
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 1706
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1708
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->setStatus(Ljava/lang/CharSequence;)V

    .line 1709
    return-void
.end method

.method public showPrivateIcon(Landroid/database/Cursor;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "privateColumnIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 2069
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2070
    .local v0, "is_private":Z
    :goto_0
    if-nez v0, :cond_2

    .line 2071
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPrivateIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 2072
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPrivateIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2087
    :cond_0
    :goto_1
    return-void

    .end local v0    # "is_private":Z
    :cond_1
    move v0, v1

    .line 2069
    goto :goto_0

    .line 2077
    .restart local v0    # "is_private":Z
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPrivateIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_3

    .line 2079
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPrivateIconView:Landroid/widget/ImageView;

    .line 2080
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPrivateIconView:Landroid/widget/ImageView;

    const v3, 0x7f0203ee

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2081
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPrivateIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 2084
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPrivateIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 2085
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPrivateIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showSnippet(Landroid/database/Cursor;I)V
    .locals 21
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "summarySnippetColumnIndex"    # I

    .prologue
    .line 1715
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    move/from16 v0, p2

    if-gt v3, v0, :cond_0

    .line 1716
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 1769
    :goto_0
    return-void

    .line 1720
    :cond_0
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1723
    .local v2, "columnContent":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 1724
    .local v12, "extras":Landroid/os/Bundle;
    if-eqz v12, :cond_3

    const-string v3, "deferred_snippeting"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1725
    const-string v3, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1727
    .local v10, "displayNameIndex":I
    if-gez v10, :cond_2

    const/4 v3, 0x0

    :goto_1
    const-string v4, "deferred_snippeting_query"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v7, "\u2026"

    const/4 v8, 0x5

    invoke-static/range {v2 .. v8}, Lcom/android/contacts/list/ContactListItemView;->snippetize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 1738
    .end local v10    # "displayNameIndex":I
    .local v18, "snippet":Ljava/lang/String;
    :goto_2
    if-eqz v18, :cond_1

    .line 1739
    const/4 v14, 0x0

    .line 1740
    .local v14, "from":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    .line 1741
    .local v20, "to":I
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 1742
    .local v19, "start":I
    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_4

    .line 1743
    const/16 v18, 0x0

    .line 1768
    .end local v14    # "from":I
    .end local v19    # "start":I
    .end local v20    # "to":I
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_0

    .line 1727
    .end local v18    # "snippet":Ljava/lang/String;
    .restart local v10    # "displayNameIndex":I
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1735
    .end local v10    # "displayNameIndex":I
    :cond_3
    move-object/from16 v18, v2

    .restart local v18    # "snippet":Ljava/lang/String;
    goto :goto_2

    .line 1745
    .restart local v14    # "from":I
    .restart local v19    # "start":I
    .restart local v20    # "to":I
    :cond_4
    const/16 v3, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v13

    .line 1746
    .local v13, "firstNl":I
    const/4 v3, -0x1

    if-eq v13, v3, :cond_5

    .line 1747
    add-int/lit8 v14, v13, 0x1

    .line 1749
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 1750
    .local v11, "end":I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_6

    .line 1751
    const/16 v3, 0xa

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 1752
    .local v16, "lastNl":I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_6

    .line 1753
    move/from16 v20, v16

    .line 1757
    .end local v16    # "lastNl":I
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1758
    .local v17, "sb":Ljava/lang/StringBuilder;
    move v15, v14

    .local v15, "i":I
    :goto_4
    move/from16 v0, v20

    if-ge v15, v0, :cond_8

    .line 1759
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1760
    .local v9, "c":C
    const/4 v3, 0x1

    if-eq v9, v3, :cond_7

    const/4 v3, 0x1

    if-eq v9, v3, :cond_7

    .line 1762
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1758
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1765
    .end local v9    # "c":C
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_3
.end method

.method public showStarredIcon(Landroid/database/Cursor;I)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "starredColumnIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 2050
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mIsEasyMode:Z

    if-eqz v2, :cond_1

    .line 2065
    :cond_0
    :goto_0
    return-void

    .line 2054
    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 2055
    .local v0, "starred":Z
    :goto_1
    if-nez v0, :cond_3

    .line 2056
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 2057
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "starred":Z
    :cond_2
    move v0, v1

    .line 2054
    goto :goto_1

    .line 2061
    .restart local v0    # "starred":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getStarredIcon()Landroid/widget/ImageView;

    .line 2062
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 2063
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public toogleCheckBoxAndSendAccessibilityEvent()V
    .locals 2

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2371
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    .line 2372
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 2374
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
