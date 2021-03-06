.class public Landroid/webkitsec/HtmlComposerView;
.super Landroid/webkitsec/WebView;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/HtmlComposerView$CursorDirection;,
        Landroid/webkitsec/HtmlComposerView$SelectionOffset;,
        Landroid/webkitsec/HtmlComposerView$ResultTransport;,
        Landroid/webkitsec/HtmlComposerView$HCWHandler;,
        Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;,
        Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;,
        Landroid/webkitsec/HtmlComposerView$StylusEventListener;,
        Landroid/webkitsec/HtmlComposerView$MenuHandler;,
        Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;,
        Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;,
        Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;,
        Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;,
        Landroid/webkitsec/HtmlComposerView$InsertionPosition;
    }
.end annotation


# static fields
.field public static final ACTION_SEC_TRANSLATE_FOR_NON_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

.field public static final ACTION_SEC_TRANSLATE_RESULT:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_RESULT"

.field public static final DELAYED_UPDATE_IMAGE_OUTLINE:I = 0x503

.field public static final EXTRA_NAME_AUTO_START_TRANSLATION:Ljava/lang/String; = "auto_start_translation"

.field public static final EXTRA_NAME_CALLER:Ljava/lang/String; = "caller"

.field public static final EXTRA_NAME_HTML_SOURCE_TEXT:Ljava/lang/String; = "html_source_text"

.field public static final EXTRA_NAME_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NAME_RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final EXTRA_NAME_SOURCE_LANGUAGE:Ljava/lang/String; = "source_language"

.field public static final EXTRA_NAME_SOURCE_TEXT:Ljava/lang/String; = "source_text"

.field public static final EXTRA_NAME_TARGET_LANGUAGE:Ljava/lang/String; = "target_language"

.field public static final EXTRA_NAME_TARGET_TEXT:Ljava/lang/String; = "target_text"

.field public static final EXTRA_NAME_USE_BROADCAST_RECEIVER:Ljava/lang/String; = "use_broadcast_receiver"

.field private static final EXTRA_REGION_FOR_RESIZING_HANDLER:I = 0x1e

.field public static final EXTRA_VALUE_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final EXTRA_VALUE_INPUT_MODE:Ljava/lang/String; = "input"

.field public static final EXTRA_VALUE_RESULT_CANCEL:I = 0x0

.field public static final EXTRA_VALUE_RESULT_OK:I = 0x1

.field public static final HIT_INSERTED_IMAGE:I = 0x502

.field public static final ID_COPY:I = 0x1020021

.field public static final ID_COPY_ALL:I = 0x1020409

.field public static final ID_CUT:I = 0x1020020

.field public static final ID_CUT_ALL:I = 0x1020408

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_PASTE_CLIPBOARD:I = 0x102040a

.field public static final ID_REDO:I = 0x65

.field public static final ID_SELECT_ALL:I = 0x102001f

.field public static final ID_START_SELECTION:I = 0x1020028

.field public static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field public static final ID_UNDO:I = 0x2711

.field public static final INVOKE_TALKBACK:I = 0x500

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerView"

.field private static final MINIMUM_SIZE_FOR_RESIZING:I = 0xa

.field public static final RICHLY_EDITING_STATE_ALIGNCENTER:I = 0x1000

.field public static final RICHLY_EDITING_STATE_ALIGNCENTER_MIXED:I = 0x2000

.field public static final RICHLY_EDITING_STATE_ALIGNLEFT:I = 0x400

.field public static final RICHLY_EDITING_STATE_ALIGNLEFT_MIXED:I = 0x800

.field public static final RICHLY_EDITING_STATE_ALIGNRIGHT:I = 0x4000

.field public static final RICHLY_EDITING_STATE_ALIGNRIGHT_MIXED:I = 0x8000

.field public static final RICHLY_EDITING_STATE_BOLD:I = 0x1

.field public static final RICHLY_EDITING_STATE_BOLD_MIXED:I = 0x2

.field public static final RICHLY_EDITING_STATE_ITALIC:I = 0x4

.field public static final RICHLY_EDITING_STATE_ITALIC_MIXED:I = 0x8

.field public static final RICHLY_EDITING_STATE_NONE:I = 0x0

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST:I = 0x40

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST_MIXED:I = 0x80

.field public static final RICHLY_EDITING_STATE_UNDERLINE:I = 0x10

.field public static final RICHLY_EDITING_STATE_UNDERLINE_MIXED:I = 0x20

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST:I = 0x100

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST_MIXED:I = 0x200

.field public static final SELECTION_CHANGE_EVENT:I = 0x504

.field public static final TOUCH_DRAG_DELTA:I = 0xa

.field public static final UPDATE_RICHTEXT_TOOLBAR:I = 0x501

.field protected static mGVR:Landroid/graphics/Rect;

.field public static operSel:I


# instance fields
.field public DEBUG:Z

.field public final EMPTY_STRING:Ljava/lang/String;

.field private bLastSoftKeyPadStateShowing:Z

.field bitmap:Landroid/graphics/Bitmap;

.field private bm_height:I

.field private bm_width:I

.field bottomMiddleCropHandler:Landroid/graphics/Rect;

.field private bottomMiddleHandleEnabled:Z

.field public clpBrdStrg:Ljava/lang/String;

.field private defaultLoadString:Ljava/lang/String;

.field private extraHeightRegionToCover:I

.field extraRegiontoCover:I

.field private firstOutlineLeft:F

.field private firstOutlineTop:F

.field handlesPath:Landroid/graphics/Path;

.field private ignoreMaxLength:Z

.field public imageCanbeMoved:Z

.field public imageCanbeResized:Z

.field private imageSelectedX:I

.field private imageSelectedY:I

.field imagetRect:Landroid/graphics/RectF;

.field imeOptions:I

.field imgHeight:F

.field imgWidth:F

.field protected isContextMenuVisible:Z

.field public isImageSelected:Z

.field private isInComposingState:Z

.field private isPhone:Z

.field private isSelectionset:Z

.field public isTouchedImage:Z

.field private isViewInFocus:Z

.field private lb_height:I

.field private lb_width:I

.field leftBottomCropHandler:Landroid/graphics/Rect;

.field private leftBottomHandleEnabled:Z

.field leftMiddleCropHandler:Landroid/graphics/Rect;

.field private leftMiddleHandleEnabled:Z

.field leftTopCropHandler:Landroid/graphics/Rect;

.field private leftTopHandleEnabled:Z

.field private lm_height:I

.field private lm_width:I

.field private lt_height:I

.field private lt_width:I

.field private mAdd:I

.field private mAltKeyIsPressed:Z

.field private mByHWKeyCommand:Z

.field private mCaller:Ljava/lang/String;

.field private mContentX:I

.field private mContentY:I

.field private mConversionFactorX:I

.field private mConversionFactorY:I

.field private mCtrlKeyIsPressed:Z

.field private mCurSelEnd:I

.field private mCurSelStart:I

.field private mDensity:F

.field private mEmojiIsActive:Z

.field public mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

.field private mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

.field public mHtmlComposerViewCursorHandlerListener:Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

.field public mImageRect:Landroid/graphics/Rect;

.field public mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

.field private mIsInRotation:Z

.field private mIsSCHMenu:Z

.field private mIsTouchedCursor:Z

.field private mKeyIsLongPressed:Z

.field mLocalEndX:I

.field mLocalEndY:I

.field mLocalStartX:I

.field mLocalStartY:I

.field private mLongPressForActionPopup:Z

.field private mLongPressForSelectionCallback:Z

.field protected mLongPressed:Z

.field public mMaxHtmlLength:I

.field mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

.field private mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

.field private mPrivateOptions:Ljava/lang/String;

.field private mRHIResource:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRectNotScrolled:Z

.field private mRemove:I

.field private mResizingHoverImage:Landroid/widget/ImageView;

.field public mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

.field private mSCHMoveFlag:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectionHandlerIsShown:Z

.field private mShiftKeyIsPressed:Z

.field mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

.field private mSymKeyIsPressed:Z

.field mTargetView:Landroid/webkitsec/HtmlComposerView;

.field private mTextInput:Landroid/text/method/TextKeyListener;

.field private mToastForClipboard:Landroid/widget/Toast;

.field private mToastForMaxLength:Landroid/widget/Toast;

.field private mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mWebViewClassic:Landroid/webkitsec/WebViewClassic;

.field private mXCenter:I

.field private mYCenter:I

.field private mZoomFactor:F

.field private misResizeControlsInitialised:Z

.field public myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

.field private originalHeight:I

.field private originalWidth:I

.field outLinePath:Landroid/graphics/Path;

.field p:Landroid/graphics/Path;

.field private prevOutlineHeight:F

.field private prevOutlineLeft:F

.field private prevOutlineTop:F

.field private prevOutlineWidth:F

.field private prevSpanComposerText:Ljava/lang/String;

.field prevX:I

.field prevY:I

.field private prevlen:I

.field rb_height:I

.field rb_width:I

.field region_rect_BM:Landroid/graphics/Region;

.field region_rect_LB:Landroid/graphics/Region;

.field region_rect_LM:Landroid/graphics/Region;

.field region_rect_LT:Landroid/graphics/Region;

.field region_rect_OutLine:Landroid/graphics/Region;

.field region_rect_RB:Landroid/graphics/Region;

.field region_rect_RM:Landroid/graphics/Region;

.field region_rect_RT:Landroid/graphics/Region;

.field region_rect_TM:Landroid/graphics/Region;

.field public resizingHandlerInActionMove:Z

.field rightBottomCropHandler:Landroid/graphics/Rect;

.field rightBottomHandleEnabled:Z

.field rightMiddleCropHandler:Landroid/graphics/Rect;

.field private rightMiddleHandleEnabled:Z

.field rightTopCropHandler:Landroid/graphics/Rect;

.field private rightTopHandleEnabled:Z

.field private rm_height:I

.field private rm_width:I

.field private rt_height:I

.field private rt_width:I

.field private spanComposerText:Landroid/text/SpannableStringBuilder;

.field public strTexttoSpeech:Ljava/lang/String;

.field public textSelected:Ljava/lang/String;

.field textWatcher:Landroid/text/TextWatcher;

.field tm_height:I

.field tm_width:I

.field topMiddleCropHandler:Landroid/graphics/Rect;

.field private topMiddleHandleEnabled:Z

.field widthOfHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 364
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    .line 605
    const/4 v0, 0x0

    sput v0, Landroid/webkitsec/HtmlComposerView;->operSel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 433
    invoke-direct {p0, p1}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;)V

    .line 150
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 151
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    .line 152
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 153
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 154
    const v0, 0x420000ff

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 155
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 157
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 158
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 159
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 160
    const v0, 0x186a0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 161
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 163
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 164
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 165
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    .line 166
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 167
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    .line 168
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 169
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 170
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 171
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 172
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 173
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 174
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 180
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 181
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 183
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 185
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 186
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 187
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 188
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 190
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 192
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 193
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 195
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 198
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 199
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 200
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 201
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    .line 204
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 205
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 206
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 208
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 211
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 212
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 269
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 271
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 272
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 275
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 280
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 285
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 290
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 292
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_height:I

    .line 293
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_width:I

    .line 295
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    .line 297
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 298
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 299
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 300
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 301
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 303
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 307
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 311
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 315
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 316
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_height:I

    .line 317
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_width:I

    .line 319
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 320
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 321
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 322
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 324
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 325
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 326
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 327
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 334
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 335
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 336
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 337
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 339
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 366
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 371
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 375
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 376
    new-instance v0, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 619
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 620
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 621
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2386
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 2387
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartX:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartY:I

    .line 2388
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndX:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndY:I

    .line 6104
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6105
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6106
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6107
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6301
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 6302
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    .line 6304
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 6305
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 6307
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6309
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 434
    iput-object p0, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 435
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 439
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 151
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    .line 152
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 153
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 154
    const v0, 0x420000ff

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 155
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 157
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 158
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 159
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 160
    const v0, 0x186a0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 161
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 163
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 164
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 165
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    .line 166
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 167
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    .line 168
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 169
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 170
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 171
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 172
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 173
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 174
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 180
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 181
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 183
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 185
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 186
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 187
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 188
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 190
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 192
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 193
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 195
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 198
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 199
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 200
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 201
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    .line 204
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 205
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 206
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 208
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 211
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 212
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 269
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 271
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 272
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 275
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 280
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 285
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 290
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 292
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_height:I

    .line 293
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_width:I

    .line 295
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    .line 297
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 298
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 299
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 300
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 301
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 303
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 307
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 311
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 315
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 316
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_height:I

    .line 317
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_width:I

    .line 319
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 320
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 321
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 322
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 324
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 325
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 326
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 327
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 334
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 335
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 336
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 337
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 339
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 366
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 371
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 375
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 376
    new-instance v0, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 619
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 620
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 621
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2386
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 2387
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartX:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartY:I

    .line 2388
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndX:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndY:I

    .line 6104
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6105
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6106
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6107
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6301
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 6302
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    .line 6304
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 6305
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 6307
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6309
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 440
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 444
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 151
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    .line 152
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 153
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 154
    const v0, 0x420000ff

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 155
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 157
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 158
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 159
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 160
    const v0, 0x186a0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 161
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 163
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 164
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 165
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    .line 166
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 167
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    .line 168
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 169
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 170
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 171
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 172
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 173
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 174
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 180
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 181
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 183
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 185
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 186
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 187
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 188
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 190
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 192
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 193
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 195
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 198
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 199
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 200
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 201
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    .line 204
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 205
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 206
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 208
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 211
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 212
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 269
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 271
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 272
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 275
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 280
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 285
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 290
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 292
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_height:I

    .line 293
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_width:I

    .line 295
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    .line 297
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 298
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 299
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 300
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 301
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 303
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 307
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 311
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 315
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 316
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_height:I

    .line 317
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_width:I

    .line 319
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 320
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 321
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 322
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 324
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 325
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 326
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 327
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 334
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 335
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 336
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 337
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 339
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 366
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 371
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 375
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 376
    new-instance v0, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 619
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 620
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 621
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2386
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 2387
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartX:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartY:I

    .line 2388
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndX:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndY:I

    .line 6104
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6105
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6106
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6107
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6301
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 6302
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    .line 6304
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 6305
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 6307
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6309
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 445
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 449
    invoke-direct {p0, p1}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;)V

    .line 150
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 151
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    .line 152
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 153
    const-string v1, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 154
    const v1, 0x420000ff

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 155
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 156
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 157
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 158
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 159
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 160
    const v1, 0x186a0

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 161
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 163
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 164
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 165
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    .line 166
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 167
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    .line 168
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 169
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 170
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 171
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 172
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 173
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 174
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 175
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 176
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 177
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 178
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 180
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 181
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 183
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 185
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 186
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 187
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 188
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 190
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 192
    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 193
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 195
    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 198
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 199
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 200
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 201
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    .line 204
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 205
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 206
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 208
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 211
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 212
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 269
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 271
    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 272
    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 275
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 280
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 285
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 290
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 292
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->rb_height:I

    .line 293
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->rb_width:I

    .line 295
    const/16 v1, 0x14

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    .line 297
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 298
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 299
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 300
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 301
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 303
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 307
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 311
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 315
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 316
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->tm_height:I

    .line 317
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->tm_width:I

    .line 319
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 320
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 321
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 322
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 324
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 325
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 326
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 327
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 334
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 335
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 336
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 337
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 339
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 366
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 371
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 375
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 376
    new-instance v1, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v1, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 619
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 620
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 621
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2386
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 2387
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartX:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartY:I

    .line 2388
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndX:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndY:I

    .line 6104
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6105
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6106
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6107
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6301
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 6302
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    .line 6304
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 6305
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 6307
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6309
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 450
    invoke-direct {p0, p2}, Landroid/webkitsec/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x140

    const/16 v9, 0x50

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 455
    invoke-virtual {p0, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 456
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebViewProvider()Landroid/webkitsec/WebViewProvider;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/WebViewClassic;

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 457
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v1, v1, Landroid/webkitsec/WebViewClassic;->maxArrayLimit:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->composerContentHeightArray:[I

    .line 458
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput v8, v0, Landroid/webkitsec/WebViewClassic;->currentIndex:I

    .line 459
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkitsec/WebSettings;->setJavaScriptEnabled(Z)V

    .line 460
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkitsec/WebSettings;->setSupportZoom(Z)V

    .line 461
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setEditableSupport(Z)V

    .line 462
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 463
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkitsec/WebSettings;->setAdvanceCommands(Z)V

    .line 464
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setDisableAnimation(Z)V

    .line 466
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-boolean v7, v0, Landroid/webkitsec/WebViewClassic;->mDisableSelectionPopup:Z

    .line 469
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 470
    .local v6, "metric":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 472
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lt v0, v10, :cond_78

    .line 473
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setHighResolutionDevice(Z)V

    .line 475
    :cond_78
    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 477
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 478
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 480
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_135

    .line 481
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->XXXFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    .line 496
    :cond_96
    :goto_96
    new-instance v0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 497
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    if-eqz v0, :cond_b3

    .line 498
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 499
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebClipboard;->setInterfaceWithClipboard(Z)V

    .line 502
    :cond_b3
    const-string v1, "htmlcomposer"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->enableEditing()V

    .line 505
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v7, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 506
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 507
    iput-object p0, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 508
    iget v0, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lt v0, v10, :cond_1b6

    .line 509
    new-instance v0, Landroid/webkitsec/HtmlComposerInputConnection;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/webkitsec/HtmlComposerInputConnection;-><init>(Landroid/webkitsec/HtmlComposerView;I)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    .line 513
    :goto_df
    new-instance v0, Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$HCWHandler;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    .line 515
    const-string/jumbo v0, "tablet"

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bf

    .line 516
    iput-boolean v8, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 523
    :goto_f8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v7, :cond_134

    .line 524
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/View;->setHoverPopupType(I)V

    .line 525
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 526
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 527
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    new-instance v1, Landroid/webkitsec/HtmlComposerView$2;

    invoke-direct {v1, p0}, Landroid/webkitsec/HtmlComposerView$2;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 561
    :cond_134
    return-void

    .line 482
    :cond_135
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_149

    .line 483
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->XXFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_96

    .line 484
    :cond_149
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_15d

    .line 485
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->XFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_96

    .line 486
    :cond_15d
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_171

    .line 487
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->FAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_96

    .line 488
    :cond_171
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    const v1, 0x3faa6666

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_183

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    const v1, 0x3faa6667

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18e

    .line 489
    :cond_183
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->SFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_96

    .line 490
    :cond_18e
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1a2

    .line 491
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_96

    .line 492
    :cond_1a2
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_96

    .line 493
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->CLOSE:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_96

    .line 511
    :cond_1b6
    new-instance v0, Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerInputConnection;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    goto/16 :goto_df

    .line 519
    :cond_1bf
    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    goto/16 :goto_f8
.end method

.method static synthetic access$000(Landroid/webkitsec/HtmlComposerView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkitsec/HtmlComposerView;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$302(Landroid/webkitsec/HtmlComposerView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkitsec/HtmlComposerView;)Landroid/webkitsec/HtmlComposerInputConnection;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkitsec/HtmlComposerView;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerView;->insertImageWithResizing(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/webkitsec/HtmlComposerView;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$602(Landroid/webkitsec/HtmlComposerView;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 148
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$700(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/webkitsec/HtmlComposerView;)V
    .registers 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage()V

    return-void
.end method

.method static synthetic access$900(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private canSelectAll()Z
    .registers 2

    .prologue
    .line 4246
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 4247
    const/4 v0, 0x1

    .line 4250
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private clearCursorOrRangeSelection()V
    .registers 3

    .prologue
    .line 4254
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4260
    :cond_12
    :goto_12
    return-void

    .line 4256
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 4257
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 4258
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x20b

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_12
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 4264
    const/4 v3, 0x0

    .line 4265
    .local v3, "source":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 4267
    .local v5, "target":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_7b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_3e
    .catchall {:try_start_3 .. :try_end_8} :catchall_52

    .line 4268
    .end local v3    # "source":Ljava/io/FileInputStream;
    .local v4, "source":Ljava/io/FileInputStream;
    :try_start_8
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_d} :catch_7d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_74
    .catchall {:try_start_8 .. :try_end_d} :catchall_6d

    .line 4270
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .local v6, "target":Ljava/io/FileOutputStream;
    const/16 v8, 0x800

    :try_start_f
    new-array v0, v8, [B

    .line 4271
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 4272
    .local v2, "i":I
    :goto_12
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_2f

    .line 4273
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_1d} :catch_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_77
    .catchall {:try_start_f .. :try_end_1d} :catchall_70

    goto :goto_12

    .line 4276
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_1e
    move-exception v1

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 4277
    .end local v4    # "source":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    :goto_21
    :try_start_21
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_52

    .line 4285
    if-eqz v3, :cond_29

    .line 4286
    :try_start_26
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_67

    .line 4288
    :cond_29
    if-eqz v5, :cond_2e

    .line 4289
    :try_start_2b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_69

    .line 4293
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_2e
    :goto_2e
    return v7

    .line 4275
    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :cond_2f
    const/4 v8, 0x1

    .line 4285
    if-eqz v4, :cond_35

    .line 4286
    :try_start_32
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 4288
    :cond_35
    if-eqz v6, :cond_3a

    .line 4289
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3a} :catch_5e

    :cond_3a
    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    move v7, v8

    .line 4275
    goto :goto_2e

    .line 4279
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_3e
    move-exception v1

    .line 4280
    .local v1, "e":Ljava/io/IOException;
    :goto_3f
    :try_start_3f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_52

    .line 4285
    if-eqz v3, :cond_47

    .line 4286
    :try_start_44
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_65

    .line 4288
    :cond_47
    if-eqz v5, :cond_2e

    .line 4289
    :try_start_49
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_2e

    .line 4291
    :catch_4d
    move-exception v1

    .line 4292
    :goto_4e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2e

    .line 4284
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_52
    move-exception v8

    .line 4285
    :goto_53
    if-eqz v3, :cond_58

    .line 4286
    :try_start_55
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 4288
    :cond_58
    if-eqz v5, :cond_5d

    .line 4289
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5d} :catch_6b

    .line 4284
    :cond_5d
    throw v8

    .line 4291
    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catch_5e
    move-exception v1

    .line 4292
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 4293
    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_2e

    .line 4291
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_65
    move-exception v1

    goto :goto_4e

    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_67
    move-exception v1

    goto :goto_4e

    :catch_69
    move-exception v1

    goto :goto_4e

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_6b
    move-exception v1

    goto :goto_4e

    .line 4284
    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catchall_6d
    move-exception v8

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_53

    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catchall_70
    move-exception v8

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_53

    .line 4279
    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catch_74
    move-exception v1

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_3f

    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catch_77
    move-exception v1

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_3f

    .line 4276
    :catch_7b
    move-exception v1

    goto :goto_21

    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catch_7d
    move-exception v1

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_21
.end method

.method private createToolTip()V
    .registers 3

    .prologue
    .line 2686
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_f

    .line 2687
    new-instance v0, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;-><init>(Landroid/webkitsec/HtmlComposerView;Landroid/content/Context;Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 2690
    :cond_f
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1b

    .line 2691
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->show()V

    .line 2692
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 2694
    :cond_1b
    return-void
.end method

.method private displaySoftKeyboardForHtmlComposer()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 4300
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4303
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v3

    if-nez v3, :cond_1a

    const/4 v1, 0x1

    .line 4305
    .local v1, "showIme":Z
    :goto_14
    if-eqz v1, :cond_19

    .line 4306
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 4308
    :cond_19
    return-void

    .end local v1    # "showIme":Z
    :cond_1a
    move v1, v2

    .line 4303
    goto :goto_14
.end method

.method private drawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "outLinePath"    # Landroid/graphics/Path;
    .param p3, "handlesPath"    # Landroid/graphics/Path;

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x40000000

    .line 6252
    iget-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    if-eqz v7, :cond_8

    .line 6298
    :goto_7
    return-void

    .line 6255
    :cond_8
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 6256
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6257
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6258
    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    mul-float/2addr v7, v10

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6260
    const/4 v7, 0x0

    const/16 v8, 0x8a

    const/16 v9, 0xff

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 6261
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6263
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 6264
    .local v3, "re":Landroid/graphics/RectF;
    invoke-virtual {p2, v3, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 6267
    iget v7, v3, Landroid/graphics/RectF;->left:F

    iget v8, v3, Landroid/graphics/RectF;->right:F

    iget v9, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    float-to-int v5, v7

    .line 6268
    .local v5, "xcenter":I
    iget v7, v3, Landroid/graphics/RectF;->top:F

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    iget v9, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    float-to-int v6, v7

    .line 6269
    .local v6, "ycenter":I
    const/16 v0, 0x14

    .line 6270
    .local v0, "delta":I
    const/4 v1, 0x0

    .line 6271
    .local v1, "handle":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10803cd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6272
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    .line 6274
    iget v7, v3, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    sub-int/2addr v7, v0

    iget v8, v3, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v3, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    add-int/2addr v9, v0

    iget v10, v3, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6275
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6276
    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    sub-int/2addr v7, v0

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v3, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    add-int/2addr v9, v0

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6277
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6278
    iget v7, v3, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    sub-int/2addr v7, v0

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v3, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    add-int/2addr v9, v0

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6279
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6280
    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    sub-int/2addr v7, v0

    iget v8, v3, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v3, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    add-int/2addr v9, v0

    iget v10, v3, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6281
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6283
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10803ce

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6284
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    .line 6286
    sub-int v7, v5, v0

    iget v8, v3, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    add-int v9, v5, v0

    iget v10, v3, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6287
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6288
    sub-int v7, v5, v0

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    add-int v9, v5, v0

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6289
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6290
    iget v7, v3, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    sub-int/2addr v7, v0

    sub-int v8, v6, v0

    iget v9, v3, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    add-int/2addr v9, v0

    add-int v10, v6, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6291
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6292
    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    sub-int/2addr v7, v0

    sub-int v8, v6, v0

    iget v9, v3, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    add-int/2addr v9, v0

    add-int v10, v6, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6293
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6295
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 6296
    .local v4, "reh":Landroid/graphics/RectF;
    invoke-virtual {p3, v4, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/16 :goto_7
.end method

.method private drawWebImageSelectionControl(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6230
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_19

    .line 6233
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v0, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    invoke-direct {p0, p1, v0, v1}, Landroid/webkitsec/HtmlComposerView;->drawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 6234
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6241
    :goto_18
    return-void

    .line 6238
    :cond_19
    const-string v0, "HtmlComposerView"

    const-string v1, "DrawImageSelectionControls  mImageCopyInfo is null and invalidate()  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6239
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_18
.end method

.method private getCurrentOutlineBottom()F
    .registers 2

    .prologue
    .line 5175
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method private getCurrentOutlineHeight()I
    .registers 3

    .prologue
    .line 5167
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getCurrentOutlineRight()F
    .registers 2

    .prologue
    .line 5179
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method private getCurrentOutlineWidth()I
    .registers 3

    .prologue
    .line 5171
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getDegreeOfRotatedImage(Landroid/net/Uri;)I
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 4370
    const/4 v8, 0x0

    .line 4372
    .local v8, "degree":I
    if-nez p1, :cond_5

    move v9, v8

    .line 4406
    .end local v8    # "degree":I
    .local v9, "degree":I
    :goto_4
    return v9

    .line 4374
    .end local v9    # "degree":I
    .restart local v8    # "degree":I
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 4376
    .local v6, "authority":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    if-eqz v6, :cond_51

    const-string/jumbo v0, "media"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 4377
    const/4 v7, 0x0

    .line 4380
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_21
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4381
    if-eqz v7, :cond_43

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 4382
    const-string/jumbo v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_42} :catch_85
    .catchall {:try_start_21 .. :try_end_42} :catchall_4a

    move-result v8

    .line 4386
    :cond_43
    if-eqz v7, :cond_48

    .line 4387
    :goto_45
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_48
    :goto_48
    move v9, v8

    .line 4406
    .end local v8    # "degree":I
    .restart local v9    # "degree":I
    goto :goto_4

    .line 4386
    .end local v9    # "degree":I
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "degree":I
    :catchall_4a
    move-exception v0

    if-eqz v7, :cond_50

    .line 4387
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4386
    :cond_50
    throw v0

    .line 4390
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_51
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 4392
    :try_start_5d
    new-instance v11, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 4393
    .local v11, "exif":Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6c} :catch_80

    move-result v12

    .line 4394
    .local v12, "exifOrientation":I
    const/4 v0, 0x6

    if-ne v12, v0, :cond_73

    .line 4395
    const/16 v8, 0x5a

    goto :goto_48

    .line 4396
    :cond_73
    const/4 v0, 0x3

    if-ne v12, v0, :cond_79

    .line 4397
    const/16 v8, 0xb4

    goto :goto_48

    .line 4398
    :cond_79
    const/16 v0, 0x8

    if-ne v12, v0, :cond_48

    .line 4399
    const/16 v8, 0x10e

    goto :goto_48

    .line 4401
    .end local v11    # "exif":Landroid/media/ExifInterface;
    .end local v12    # "exifOrientation":I
    :catch_80
    move-exception v10

    .line 4402
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_48

    .line 4384
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_85
    move-exception v0

    .line 4386
    if-eqz v7, :cond_48

    goto :goto_45
.end method

.method private getLoadableContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 4322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4323
    .local v3, "bufer":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 4324
    .local v7, "fstream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 4325
    .local v9, "in":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 4329
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_8
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_f8
    .catchall {:try_start_8 .. :try_end_f} :catchall_bc

    .line 4331
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .local v8, "fstream":Ljava/io/FileInputStream;
    :try_start_f
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_fb
    .catchall {:try_start_f .. :try_end_14} :catchall_ec

    .line 4332
    .end local v9    # "in":Ljava/io/DataInputStream;
    .local v10, "in":Ljava/io/DataInputStream;
    :try_start_14
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_ff
    .catchall {:try_start_14 .. :try_end_1e} :catchall_ef

    .line 4335
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_1e
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "strLine":Ljava/lang/String;
    if-eqz v11, :cond_5c

    .line 4337
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_28
    .catchall {:try_start_1e .. :try_end_27} :catchall_f3

    goto :goto_1e

    .line 4349
    .end local v11    # "strLine":Ljava/lang/String;
    :catch_28
    move-exception v6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .line 4350
    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .local v6, "ep":Ljava/lang/Exception;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    :goto_2c
    :try_start_2c
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " HtmlComposerView "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4351
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_4c
    .catchall {:try_start_2c .. :try_end_4c} :catchall_bc

    .line 4354
    if-eqz v7, :cond_51

    .line 4355
    :try_start_4e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 4356
    :cond_51
    if-eqz v9, :cond_56

    .line 4357
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V

    .line 4358
    :cond_56
    if-eqz v1, :cond_5b

    .line 4359
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5b} :catch_d6

    .line 4362
    .end local v6    # "ep":Ljava/lang/Exception;
    :cond_5b
    :goto_5b
    return-object v4

    .line 4339
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "strLine":Ljava/lang/String;
    :cond_5c
    :try_start_5c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4341
    .local v4, "data":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/webkitsec/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v12

    if-nez v12, :cond_a9

    .line 4343
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v15, 0x1040b45

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v15, 0x1040b46

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 4344
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_a9} :catch_28
    .catchall {:try_start_5c .. :try_end_a9} :catchall_f3

    .line 4354
    :cond_a9
    if-eqz v8, :cond_ae

    .line 4355
    :try_start_ab
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 4356
    :cond_ae
    if-eqz v10, :cond_b3

    .line 4357
    invoke-virtual {v10}, Ljava/io/FilterInputStream;->close()V

    .line 4358
    :cond_b3
    if-eqz v2, :cond_b8

    .line 4359
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b8} :catch_df

    :cond_b8
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .line 4347
    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_5b

    .line 4353
    .end local v4    # "data":Ljava/lang/String;
    .end local v11    # "strLine":Ljava/lang/String;
    :catchall_bc
    move-exception v12

    .line 4354
    :goto_bd
    if-eqz v7, :cond_c2

    .line 4355
    :try_start_bf
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 4356
    :cond_c2
    if-eqz v9, :cond_c7

    .line 4357
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V

    .line 4358
    :cond_c7
    if-eqz v1, :cond_cc

    .line 4359
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_cc} :catch_cd

    .line 4353
    :cond_cc
    throw v12

    .line 4360
    :catch_cd
    move-exception v5

    .line 4361
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4362
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    :goto_d5
    goto :goto_5b

    .line 4360
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "ep":Ljava/lang/Exception;
    :catch_d6
    move-exception v5

    .line 4361
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4362
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    goto :goto_d5

    .line 4360
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "ep":Ljava/lang/Exception;
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "strLine":Ljava/lang/String;
    :catch_df
    move-exception v5

    .line 4361
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4362
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .end local v4    # "data":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_5b

    .line 4353
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v11    # "strLine":Ljava/lang/String;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    :catchall_ec
    move-exception v12

    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_bd

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    :catchall_ef
    move-exception v12

    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_bd

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    :catchall_f3
    move-exception v12

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_bd

    .line 4349
    :catch_f8
    move-exception v6

    goto/16 :goto_2c

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    :catch_fb
    move-exception v6

    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_2c

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    :catch_ff
    move-exception v6

    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_2c
.end method

.method private getSelectedImageUri()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 4411
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_14

    .line 4428
    :cond_13
    :goto_13
    return-object v2

    .line 4413
    :cond_14
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4414
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 4415
    :try_start_1a
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 4416
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x229

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_3a

    .line 4421
    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_3d
    .catchall {:try_start_2d .. :try_end_30} :catchall_3a

    .line 4426
    :goto_30
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_3a

    .line 4428
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_13

    .line 4418
    :cond_38
    :try_start_38
    monitor-exit v1

    goto :goto_13

    .line 4426
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3a

    throw v2

    .line 4422
    :catch_3d
    move-exception v0

    .line 4423
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3e
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_3e .. :try_end_4e} :catchall_3a

    goto :goto_30
.end method

.method private getSelectionOffsetImage()V
    .registers 3

    .prologue
    .line 4433
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4438
    :cond_a
    :goto_a
    return-void

    .line 4435
    :cond_b
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 4436
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_a
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 4444
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_d

    .line 4454
    :cond_c
    :goto_c
    return-void

    .line 4446
    :cond_d
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    new-instance v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;-><init>(Landroid/webkitsec/WebViewCore;)V

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 4447
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    const/16 v1, 0x8

    iput v1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 4448
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 4449
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 4451
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 4452
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_c
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .registers 7
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "imageoutLinePath"    # Landroid/graphics/Path;
    .param p3, "imagehandlesPath"    # Landroid/graphics/Path;

    .prologue
    .line 4460
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_d

    .line 4473
    :cond_c
    :goto_c
    return-void

    .line 4462
    :cond_d
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    new-instance v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;-><init>(Landroid/webkitsec/WebViewCore;)V

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 4463
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    const/16 v1, 0x8

    iput v1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 4464
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 4465
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 4467
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p2, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    .line 4468
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p3, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    .line 4470
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 4471
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_c
.end method

.method private getTargetView()Landroid/webkitsec/HtmlComposerView;
    .registers 2

    .prologue
    .line 4477
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    return-object v0
.end method

.method private handleBottomMiddleHandleDrag(II)V
    .registers 9
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/high16 v5, 0x42c80000

    const/high16 v4, 0x41200000

    .line 5621
    const/4 v0, 0x0

    .line 5622
    .local v0, "deltaX":I
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 5624
    .local v1, "deltaY":I
    if-gez v1, :cond_33

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_33

    .line 5625
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    if-gtz v2, :cond_20

    .line 5637
    :goto_1f
    return-void

    .line 5626
    :cond_20
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 5627
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v2, v1

    .line 5630
    :cond_33
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5631
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5632
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5633
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5634
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5636
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_1f
.end method

.method private handleLeftBottomHandleDrag(II)V
    .registers 14
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/16 v10, 0xa

    const/high16 v9, 0x42c80000

    const/high16 v8, 0x41200000

    .line 5409
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 5410
    .local v2, "deltaX":I
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 5411
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5412
    .local v0, "deltaValueX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5413
    .local v1, "deltaValueY":I
    const/4 v4, 0x1

    .line 5414
    .local v4, "signX":I
    const/4 v5, 0x1

    .line 5416
    .local v5, "signY":I
    if-lez v2, :cond_41

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_41

    .line 5417
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 5418
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v2, v6

    .line 5419
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5421
    :cond_41
    if-gez v3, :cond_6f

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6f

    .line 5422
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    if-gtz v6, :cond_58

    .line 5454
    :cond_57
    :goto_57
    return-void

    .line 5423
    :cond_58
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 5424
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v3, v6

    .line 5425
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5428
    :cond_6f
    if-lt v0, v10, :cond_57

    if-lt v1, v10, :cond_57

    .line 5430
    if-gez v2, :cond_76

    .line 5431
    const/4 v4, -0x1

    .line 5432
    :cond_76
    if-gez v3, :cond_79

    .line 5433
    const/4 v5, -0x1

    .line 5434
    :cond_79
    if-eq v4, v5, :cond_57

    .line 5437
    if-ge v0, v1, :cond_ac

    .line 5438
    int-to-float v6, v0

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v3, v6, v5

    .line 5445
    :goto_98
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5446
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5449
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5450
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5451
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5452
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5453
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_57

    .line 5441
    :cond_ac
    int-to-float v6, v1

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v2, v6, v4

    goto :goto_98
.end method

.method private handleLeftMiddleHandleDrag(II)V
    .registers 9
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/high16 v5, 0x42c80000

    const/high16 v4, 0x41200000

    .line 5684
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 5685
    .local v0, "deltaX":I
    const/4 v1, 0x0

    .line 5687
    .local v1, "deltaY":I
    if-lez v0, :cond_2e

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2e

    .line 5688
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 5689
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v2, v0

    .line 5692
    :cond_2e
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5693
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5694
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5695
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5696
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5697
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5698
    return-void
.end method

.method private handleLeftTopHandleDrag(II)V
    .registers 14
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/16 v10, 0xa

    const/high16 v9, 0x42c80000

    const/high16 v8, 0x41200000

    .line 5457
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 5458
    .local v2, "deltaX":I
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 5459
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5460
    .local v0, "deltaValueX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5461
    .local v1, "deltaValueY":I
    const/4 v4, 0x1

    .line 5462
    .local v4, "signX":I
    const/4 v5, 0x1

    .line 5464
    .local v5, "signY":I
    if-lez v2, :cond_41

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_41

    .line 5465
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 5466
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v6, v2

    .line 5467
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5469
    :cond_41
    if-lez v3, :cond_6a

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6a

    .line 5470
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 5471
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v6, v3

    .line 5472
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5475
    :cond_6a
    if-lt v0, v10, :cond_6e

    if-ge v1, v10, :cond_6f

    .line 5501
    :cond_6e
    :goto_6e
    return-void

    .line 5477
    :cond_6f
    if-gez v2, :cond_72

    .line 5478
    const/4 v4, -0x1

    .line 5479
    :cond_72
    if-gez v3, :cond_75

    .line 5480
    const/4 v5, -0x1

    .line 5481
    :cond_75
    if-ne v4, v5, :cond_6e

    .line 5484
    if-ge v0, v1, :cond_a8

    .line 5485
    int-to-float v6, v0

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v3, v6, v5

    .line 5492
    :goto_94
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5493
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5496
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5497
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5498
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5499
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5500
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_6e

    .line 5488
    :cond_a8
    int-to-float v6, v1

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v2, v6, v4

    goto :goto_94
.end method

.method private handleNavKeys(I)V
    .registers 9
    .param p1, "keyCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 4481
    packed-switch p1, :pswitch_data_198

    .line 4613
    :cond_7
    :goto_7
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    .line 4615
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 4617
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 4618
    return-void

    .line 4483
    :pswitch_11
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_54

    .line 4484
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4485
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_46

    .line 4486
    const-string v2, "MoveWordLeftAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4490
    :goto_20
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4491
    .local v1, "selectionType":I
    if-ne v6, v1, :cond_4c

    .line 4492
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4493
    .local v0, "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 4494
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 4495
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4496
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4497
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_7

    .line 4488
    .end local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .end local v1    # "selectionType":I
    :cond_46
    const-string v2, "MoveLeftAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_20

    .line 4498
    .restart local v1    # "selectionType":I
    :cond_4c
    if-nez v1, :cond_7

    .line 4499
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_7

    .line 4503
    .end local v1    # "selectionType":I
    :cond_54
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_63

    .line 4504
    const-string v2, "MoveWordLeft"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4509
    :goto_5d
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_7

    .line 4506
    :cond_63
    const-string v2, "MoveLeft"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5d

    .line 4514
    :pswitch_69
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_ae

    .line 4515
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4516
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_9f

    .line 4517
    const-string v2, "MoveWordRightAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4521
    :goto_78
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4522
    .restart local v1    # "selectionType":I
    if-ne v6, v1, :cond_a5

    .line 4523
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4524
    .restart local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 4525
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 4526
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4527
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4528
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_7

    .line 4519
    .end local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .end local v1    # "selectionType":I
    :cond_9f
    const-string v2, "MoveRightAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_78

    .line 4529
    .restart local v1    # "selectionType":I
    :cond_a5
    if-nez v1, :cond_7

    .line 4530
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_7

    .line 4534
    .end local v1    # "selectionType":I
    :cond_ae
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_be

    .line 4535
    const-string v2, "MoveWordRight"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4539
    :goto_b7
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_7

    .line 4537
    :cond_be
    const-string v2, "MoveRight"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_b7

    .line 4544
    :pswitch_c4
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_113

    .line 4545
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4546
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_104

    .line 4547
    const-string v2, "MoveToBeginningOfParagraphAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4548
    const-string v2, "MoveBackwardAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4549
    const-string v2, "MoveToBeginningOfParagraphAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4553
    :goto_dd
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4554
    .restart local v1    # "selectionType":I
    if-ne v6, v1, :cond_10a

    .line 4555
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4556
    .restart local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 4557
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 4558
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4559
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4560
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_7

    .line 4551
    .end local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .end local v1    # "selectionType":I
    :cond_104
    const-string v2, "MoveUpAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_dd

    .line 4561
    .restart local v1    # "selectionType":I
    :cond_10a
    if-nez v1, :cond_7

    .line 4562
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_7

    .line 4566
    .end local v1    # "selectionType":I
    :cond_113
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_12d

    .line 4567
    const-string v2, "MoveToBeginningOfParagraph"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4568
    const-string v2, "MoveBackward"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4569
    const-string v2, "MoveToBeginningOfParagraph"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4574
    :goto_126
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_7

    .line 4571
    :cond_12d
    const-string v2, "MoveUp"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_126

    .line 4579
    :pswitch_133
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_17d

    .line 4580
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4581
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_16e

    .line 4582
    const-string v2, "MoveToEndOfParagraphAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4583
    const-string v2, "MoveForwardAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4587
    :goto_147
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4588
    .restart local v1    # "selectionType":I
    if-ne v6, v1, :cond_174

    .line 4589
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4590
    .restart local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 4591
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 4592
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4593
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4594
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_7

    .line 4585
    .end local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .end local v1    # "selectionType":I
    :cond_16e
    const-string v2, "MoveDownAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_147

    .line 4595
    .restart local v1    # "selectionType":I
    :cond_174
    if-nez v1, :cond_7

    .line 4596
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_7

    .line 4600
    .end local v1    # "selectionType":I
    :cond_17d
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_192

    .line 4601
    const-string v2, "MoveToEndOfParagraph"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4602
    const-string v2, "MoveForward"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4606
    :goto_18b
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_7

    .line 4604
    :cond_192
    const-string v2, "MoveDown"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_18b

    .line 4481
    :pswitch_data_198
    .packed-switch 0x13
        :pswitch_c4
        :pswitch_133
        :pswitch_11
        :pswitch_69
    .end packed-switch
.end method

.method private handleRightBottomHandleDrag(II)V
    .registers 16
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/16 v12, 0xa

    const/high16 v11, 0x42c80000

    const/high16 v10, 0x41200000

    .line 5504
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v8

    .line 5505
    .local v2, "deltaX":I
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v8

    .line 5506
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5507
    .local v0, "deltaValueX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5508
    .local v1, "deltaValueY":I
    const/4 v6, 0x1

    .line 5509
    .local v6, "signX":I
    const/4 v7, 0x1

    .line 5511
    .local v7, "signY":I
    if-gez v2, :cond_41

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_41

    .line 5512
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .line 5513
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    .line 5514
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5516
    :cond_41
    if-gez v3, :cond_6f

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6f

    .line 5517
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    if-gtz v8, :cond_58

    .line 5560
    :cond_57
    :goto_57
    return-void

    .line 5518
    :cond_58
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v9

    float-to-int v3, v8

    .line 5519
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v8, v3

    .line 5520
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5522
    :cond_6f
    if-lez v2, :cond_ad

    if-lez v3, :cond_ad

    .line 5523
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 5524
    .local v5, "localVisibleRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5526
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 5527
    .local v4, "imageHandlerWidth":I
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    int-to-float v9, v2

    add-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_ad

    .line 5528
    iget v8, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    div-int/lit8 v10, v4, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .line 5529
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    .line 5533
    .end local v4    # "imageHandlerWidth":I
    .end local v5    # "localVisibleRect":Landroid/graphics/Rect;
    :cond_ad
    if-lt v0, v12, :cond_57

    if-lt v1, v12, :cond_57

    .line 5535
    if-gez v2, :cond_b4

    .line 5536
    const/4 v6, -0x1

    .line 5537
    :cond_b4
    if-gez v3, :cond_b7

    .line 5538
    const/4 v7, -0x1

    .line 5539
    :cond_b7
    if-ne v6, v7, :cond_57

    .line 5542
    if-ge v0, v1, :cond_eb

    .line 5543
    int-to-float v8, v0

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v3, v8, v7

    .line 5550
    :goto_d6
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5551
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5555
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5556
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5557
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5558
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5559
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto/16 :goto_57

    .line 5546
    :cond_eb
    int-to-float v8, v1

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v2, v8, v6

    goto :goto_d6
.end method

.method private handleRightMiddleHandleDrag(II)V
    .registers 11
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/high16 v7, 0x42c80000

    const/high16 v6, 0x41200000

    .line 5658
    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v0, p1, v4

    .line 5659
    .local v0, "deltaX":I
    const/4 v1, 0x0

    .line 5661
    .local v1, "deltaY":I
    if-gez v0, :cond_40

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_40

    .line 5662
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 5663
    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v4, v0

    .line 5675
    :cond_2e
    :goto_2e
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5676
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5677
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5678
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5679
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5680
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5681
    return-void

    .line 5664
    :cond_40
    if-lez v0, :cond_2e

    .line 5665
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 5666
    .local v3, "localVisibleRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5668
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 5669
    .local v2, "imageHandlerWidth":I
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2e

    .line 5670
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 5671
    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v4, v0

    goto :goto_2e
.end method

.method private handleRightTopHandleDrag(II)V
    .registers 16
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/16 v12, 0xa

    const/high16 v11, 0x42c80000

    const/high16 v10, 0x41200000

    .line 5563
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v8

    .line 5564
    .local v2, "deltaX":I
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v8

    .line 5565
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5566
    .local v0, "deltaValueX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5567
    .local v1, "deltaValueY":I
    const/4 v6, 0x1

    .line 5568
    .local v6, "signX":I
    const/4 v7, 0x1

    .line 5570
    .local v7, "signY":I
    if-gez v2, :cond_41

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_41

    .line 5571
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .line 5572
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    .line 5573
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5575
    :cond_41
    if-lez v3, :cond_6a

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_6a

    .line 5576
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    float-to-int v3, v8

    .line 5577
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v8, v3

    .line 5578
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5580
    :cond_6a
    if-lez v2, :cond_a8

    if-gez v3, :cond_a8

    .line 5581
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 5582
    .local v5, "localVisibleRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5584
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 5585
    .local v4, "imageHandlerWidth":I
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    int-to-float v9, v2

    add-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_a8

    .line 5586
    iget v8, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    div-int/lit8 v10, v4, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .line 5587
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    .line 5591
    .end local v4    # "imageHandlerWidth":I
    .end local v5    # "localVisibleRect":Landroid/graphics/Rect;
    :cond_a8
    if-lt v0, v12, :cond_ac

    if-ge v1, v12, :cond_ad

    .line 5617
    :cond_ac
    :goto_ac
    return-void

    .line 5593
    :cond_ad
    if-gez v2, :cond_b0

    .line 5594
    const/4 v6, -0x1

    .line 5595
    :cond_b0
    if-gez v3, :cond_b3

    .line 5596
    const/4 v7, -0x1

    .line 5597
    :cond_b3
    if-eq v6, v7, :cond_ac

    .line 5600
    if-ge v0, v1, :cond_e6

    .line 5601
    int-to-float v8, v0

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v3, v8, v7

    .line 5608
    :goto_d2
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5609
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5612
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5613
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5614
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5615
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5616
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_ac

    .line 5604
    :cond_e6
    int-to-float v8, v1

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v2, v8, v6

    goto :goto_d2
.end method

.method private handleTopMiddleHandleDrag(II)V
    .registers 9
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/high16 v5, 0x42c80000

    const/high16 v4, 0x41200000

    .line 5640
    const/4 v0, 0x0

    .line 5641
    .local v0, "deltaX":I
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 5643
    .local v1, "deltaY":I
    if-lez v1, :cond_2e

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2e

    .line 5644
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 5645
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v2, v1

    .line 5648
    :cond_2e
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5649
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5650
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5651
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5652
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5654
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5655
    return-void
.end method

.method private handle_ACTION_CANCEL()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5395
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 5396
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 5397
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 5398
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 5399
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 5400
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 5401
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 5402
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 5404
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    .line 5405
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5406
    return-void
.end method

.method private handle_ACTION_DOWN(IIII)V
    .registers 9
    .param p1, "contentX"    # I
    .param p2, "contentY"    # I
    .param p3, "positionX"    # I
    .param p4, "positionY"    # I

    .prologue
    const/high16 v3, 0x40000000

    const/4 v2, 0x1

    .line 5184
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isOutLineRect(II)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 5186
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"If outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5191
    :goto_10
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isleftTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 5192
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5193
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5194
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 5195
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5197
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5198
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5199
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5201
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5202
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5204
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 5297
    :goto_48
    return-void

    .line 5189
    :cond_49
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"else outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 5205
    :cond_51
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isleftBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 5206
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5207
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5208
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 5209
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5211
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5212
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5213
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5215
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5216
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5218
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto :goto_48

    .line 5219
    :cond_8a
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isRightTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 5220
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5221
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5222
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 5223
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5224
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5225
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5226
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5228
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5229
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5231
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto :goto_48

    .line 5232
    :cond_c3
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isRightBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 5233
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5234
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5235
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 5237
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5238
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5240
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_48

    .line 5241
    :cond_e5
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isleftMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 5242
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5243
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5244
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 5245
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5246
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5247
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5248
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5250
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5251
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5253
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_48

    .line 5254
    :cond_125
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isBottomMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 5255
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5256
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5257
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 5258
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5260
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5261
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5262
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5264
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5265
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5267
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_48

    .line 5268
    :cond_165
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isTopMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 5269
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5270
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5271
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 5272
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5273
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5274
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5275
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5277
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5278
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5280
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_48

    .line 5281
    :cond_1a5
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isRightMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_1e5

    .line 5282
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5283
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5284
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 5285
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5286
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5287
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5288
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5290
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5291
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5293
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_48

    .line 5295
    :cond_1e5
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_48
.end method

.method private handle_ACTION_MOVE(II)V
    .registers 6
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v2, 0x1

    .line 5300
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v2, :cond_2d

    .line 5302
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleRightBottomHandleDrag(II)V

    .line 5347
    :cond_8
    :goto_8
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-eqz v0, :cond_1a

    .line 5348
    :cond_18
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5350
    :cond_1a
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eqz v0, :cond_2c

    .line 5351
    :cond_2a
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5352
    :cond_2c
    return-void

    .line 5304
    :cond_2d
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v2, :cond_53

    .line 5306
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleLeftBottomHandleDrag(II)V

    .line 5307
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5308
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto :goto_8

    .line 5310
    :cond_53
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v2, :cond_79

    .line 5312
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleLeftTopHandleDrag(II)V

    .line 5313
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5314
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto :goto_8

    .line 5316
    :cond_79
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v2, :cond_a0

    .line 5318
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleRightTopHandleDrag(II)V

    .line 5319
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5320
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_8

    .line 5322
    :cond_a0
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_c7

    .line 5324
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleLeftMiddleHandleDrag(II)V

    .line 5325
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5326
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_8

    .line 5328
    :cond_c7
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_ee

    .line 5330
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleTopMiddleHandleDrag(II)V

    .line 5331
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5332
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_8

    .line 5334
    :cond_ee
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_115

    .line 5336
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleRightMiddleHandleDrag(II)V

    .line 5337
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5338
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_8

    .line 5340
    :cond_115
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_8

    .line 5342
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleBottomMiddleHandleDrag(II)V

    .line 5343
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5344
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_8
.end method

.method private handle_ACTION_UP(II)V
    .registers 8
    .param p1, "rawX"    # I
    .param p2, "rawY"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 5355
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5356
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5357
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 5359
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-eq v0, v1, :cond_25

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eq v0, v1, :cond_25

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-eq v0, v1, :cond_25

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_25

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_25

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_25

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v1, :cond_78

    .line 5362
    :cond_25
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 5363
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 5364
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 5365
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 5366
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 5367
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 5368
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 5370
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_5d

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_5d

    .line 5371
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 5372
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 5373
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 5374
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 5377
    :cond_5d
    invoke-direct {p0, v3, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5378
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5381
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5382
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5385
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5386
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5387
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5388
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    .line 5389
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5392
    :cond_78
    return-void
.end method

.method private hide()V
    .registers 3

    .prologue
    .line 2696
    const-string v0, "HtmlComposerView"

    const-string v1, "hide : Called."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2699
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 2700
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 2702
    :cond_1b
    return-void
.end method

.method private hideSoftKeyboardForHtmlComposer()V
    .registers 4

    .prologue
    .line 4621
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4622
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_14

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4623
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4625
    :cond_14
    return-void
.end method

.method private imageCopy(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 4628
    if-eqz p1, :cond_15

    .line 4629
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 4630
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x204

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4632
    :cond_15
    return-void
.end method

.method private insertImageContent(Ljava/lang/String;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 4635
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 4636
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x220

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4637
    :cond_13
    return-void
.end method

.method private insertImageWithResizing(Ljava/lang/String;)Z
    .registers 31
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 4640
    const/16 v19, 0x0

    .line 4641
    .local v19, "htmlFragment":Ljava/lang/String;
    const/16 v26, 0x0

    .line 4642
    .local v26, "result":Z
    const/4 v15, 0x0

    .line 4645
    .local v15, "degree":I
    new-instance v21, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4647
    .local v21, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_2a

    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    :cond_2a
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 4651
    .local v5, "imageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkitsec/HtmlComposerView;->getDegreeOfRotatedImage(Landroid/net/Uri;)I

    move-result v15

    .line 4653
    const/4 v13, 0x0

    .line 4654
    .local v13, "absoluteFilePath":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v7, "file"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 4655
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 4681
    :cond_45
    :goto_45
    if-nez v13, :cond_10a

    const/4 v4, 0x0

    .line 4829
    :goto_48
    return v4

    .line 4656
    :cond_49
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v7, "content"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fa

    .line 4657
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "picasa"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "sns"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 4658
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 4660
    .local v14, "c":Landroid/database/Cursor;
    if-nez v14, :cond_a1

    .line 4661
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "return null."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4665
    :cond_a1
    const/4 v4, 0x1

    :try_start_a2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eq v4, v7, :cond_cd

    .line 4666
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "return 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_c8
    .catchall {:try_start_a2 .. :try_end_c8} :catchall_c8

    .line 4671
    :catchall_c8
    move-exception v4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v4

    .line 4669
    :cond_cd
    :try_start_cd
    const-string v4, "_data"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_d6
    .catchall {:try_start_cd .. :try_end_d6} :catchall_c8

    move-result-object v13

    .line 4671
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 4674
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_45

    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertImage file_scheme: conten, filePath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    .line 4677
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_fa
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_107

    const-string v4, "HtmlComposerView"

    const-string v7, "Uri is not either file or content scheme"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4678
    :cond_107
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 4683
    :cond_10a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_128

    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### absoluteFilePath :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4685
    :cond_128
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/webkitsec/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4686
    .local v16, "dstFilePath":Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4688
    .local v20, "mFile":Ljava/io/File;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4689
    .local v24, "originalFile":Ljava/io/File;
    const-wide/32 v7, 0x100000

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-gtz v4, :cond_16c

    .line 4691
    const/4 v4, 0x4

    move-object/from16 v0, v21

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4692
    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### originalFile.length() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4695
    :cond_16c
    const/4 v6, 0x0

    .line 4698
    .local v6, "src":Landroid/graphics/Bitmap;
    :try_start_16d
    move-object/from16 v0, v21

    invoke-static {v13, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_172
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16d .. :try_end_172} :catch_179
    .catchall {:try_start_16d .. :try_end_172} :catchall_390

    move-result-object v6

    .line 4710
    if-nez v6, :cond_197

    :cond_175
    :goto_175
    move/from16 v4, v26

    goto/16 :goto_48

    .line 4699
    :catch_179
    move-exception v17

    .line 4700
    .local v17, "e":Ljava/lang/OutOfMemoryError;
    :try_start_17a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    if-eqz v4, :cond_18a

    .line 4701
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v7, v8, v9}, Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_18a
    .catchall {:try_start_17a .. :try_end_18a} :catchall_390

    .line 4704
    :cond_18a
    const/16 v20, 0x0

    .line 4705
    const/16 v24, 0x0

    .line 4706
    const/16 v21, 0x0

    .line 4710
    if-eqz v6, :cond_175

    move/from16 v4, v26

    .line 4708
    goto/16 :goto_48

    .line 4710
    .end local v17    # "e":Ljava/lang/OutOfMemoryError;
    :cond_196
    throw v4

    .line 4713
    :cond_197
    if-eqz v15, :cond_1ff

    .line 4714
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 4715
    .local v11, "m":Landroid/graphics/Matrix;
    int-to-float v4, v15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    invoke-virtual {v11, v4, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 4717
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_1b4
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1c0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b4 .. :try_end_1c0} :catch_1c7
    .catchall {:try_start_1b4 .. :try_end_1c0} :catchall_395

    move-result-object v6

    .line 4729
    if-nez v6, :cond_1e5

    :cond_1c3
    :goto_1c3
    move/from16 v4, v26

    goto/16 :goto_48

    .line 4718
    :catch_1c7
    move-exception v17

    .line 4719
    .restart local v17    # "e":Ljava/lang/OutOfMemoryError;
    :try_start_1c8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    if-eqz v4, :cond_1d8

    .line 4720
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v7, v8, v9}, Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_1d8
    .catchall {:try_start_1c8 .. :try_end_1d8} :catchall_395

    .line 4723
    :cond_1d8
    const/16 v20, 0x0

    .line 4724
    const/16 v24, 0x0

    .line 4725
    const/16 v21, 0x0

    .line 4729
    if-eqz v6, :cond_1c3

    move/from16 v4, v26

    .line 4727
    goto/16 :goto_48

    .line 4729
    .end local v17    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1e4
    throw v4

    .line 4732
    :cond_1e5
    if-eqz v15, :cond_1ff

    const/16 v4, 0xb4

    if-eq v15, v4, :cond_1ff

    .line 4733
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v27, v0

    .line 4734
    .local v27, "temp_value":I
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v21

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 4735
    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 4739
    .end local v11    # "m":Landroid/graphics/Matrix;
    .end local v27    # "temp_value":I
    :cond_1ff
    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez v4, :cond_23b

    move/from16 v4, v26

    .line 4742
    goto/16 :goto_48

    .line 4745
    :cond_23b
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    .line 4746
    .local v23, "originWidth":I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    .line 4747
    .local v22, "originHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    if-gt v4, v7, :cond_2bf

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    :goto_255
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v28, v4, v7

    .line 4748
    .local v28, "width":I
    mul-int v4, v22, v28

    div-int v18, v4, v23

    .line 4750
    .local v18, "height":I
    const-wide/32 v7, 0x100000

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-lez v4, :cond_271

    if-eqz v15, :cond_311

    .line 4751
    :cond_271
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### htmlFragment : Big Data"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4753
    if-eqz v6, :cond_2b1

    .line 4756
    :try_start_27a
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 4758
    .local v25, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, ".jpg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_29b

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, ".jpeg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2c4

    .line 4760
    :cond_29b
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### htmlFragment : Bitmap.CompressFormat.JPEG"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4761
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4762
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->flush()V

    .line 4763
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b1
    .catch Ljava/io/FileNotFoundException; {:try_start_27a .. :try_end_2b1} :catch_2e8
    .catch Ljava/io/IOException; {:try_start_27a .. :try_end_2b1} :catch_309

    .line 4801
    .end local v25    # "outStream":Ljava/io/FileOutputStream;
    :cond_2b1
    :goto_2b1
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4802
    if-nez v19, :cond_327

    move/from16 v4, v26

    goto/16 :goto_48

    .line 4747
    .end local v18    # "height":I
    .end local v28    # "width":I
    :cond_2bf
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    goto :goto_255

    .line 4765
    .restart local v18    # "height":I
    .restart local v25    # "outStream":Ljava/io/FileOutputStream;
    .restart local v28    # "width":I
    :cond_2c4
    :try_start_2c4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "png"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2f0

    .line 4767
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### htmlFragment : Bitmap.CompressFormat.PNG"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4768
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4769
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->flush()V

    .line 4770
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e7
    .catch Ljava/io/FileNotFoundException; {:try_start_2c4 .. :try_end_2e7} :catch_2e8
    .catch Ljava/io/IOException; {:try_start_2c4 .. :try_end_2e7} :catch_309

    goto :goto_2b1

    .line 4782
    .end local v25    # "outStream":Ljava/io/FileOutputStream;
    :catch_2e8
    move-exception v17

    .line 4783
    .local v17, "e":Ljava/io/FileNotFoundException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    move/from16 v4, v26

    .line 4784
    goto/16 :goto_48

    .line 4774
    .end local v17    # "e":Ljava/io/FileNotFoundException;
    .restart local v25    # "outStream":Ljava/io/FileOutputStream;
    :cond_2f0
    :try_start_2f0
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    .line 4775
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Landroid/webkitsec/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eq v4, v7, :cond_2b1

    .line 4777
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### onPaste : copyFile Fail !!!"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_305
    .catch Ljava/io/FileNotFoundException; {:try_start_2f0 .. :try_end_305} :catch_2e8
    .catch Ljava/io/IOException; {:try_start_2f0 .. :try_end_305} :catch_309

    move/from16 v4, v26

    .line 4778
    goto/16 :goto_48

    .line 4786
    .end local v25    # "outStream":Ljava/io/FileOutputStream;
    :catch_309
    move-exception v17

    .line 4787
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    move/from16 v4, v26

    .line 4788
    goto/16 :goto_48

    .line 4794
    .end local v17    # "e":Ljava/io/IOException;
    :cond_311
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Landroid/webkitsec/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eq v4, v7, :cond_2b1

    .line 4796
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### onPaste : copyFile Fail !!!"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v26

    .line 4797
    goto/16 :goto_48

    .line 4804
    :cond_327
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_347

    .line 4805
    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4808
    :cond_347
    if-eqz v28, :cond_387

    .line 4810
    move/from16 v0, v28

    move/from16 v1, v23

    if-le v0, v1, :cond_353

    .line 4812
    move/from16 v28, v23

    .line 4813
    move/from16 v18, v22

    .line 4816
    :cond_353
    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    const/high16 v9, 0x42c80000

    div-float/2addr v4, v9

    float-to-double v9, v4

    cmpg-double v4, v7, v9

    if-gez v4, :cond_377

    .line 4817
    mul-int/lit8 v4, v28, 0x64

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    div-float/2addr v4, v7

    float-to-int v0, v4

    move/from16 v28, v0

    .line 4818
    mul-int/lit8 v4, v18, 0x64

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    div-float/2addr v4, v7

    float-to-int v0, v4

    move/from16 v18, v0

    .line 4821
    :cond_377
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    move-result v26

    :goto_383
    move/from16 v4, v26

    .line 4829
    goto/16 :goto_48

    .line 4825
    :cond_387
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    move-result v26

    goto :goto_383

    .line 4710
    .end local v18    # "height":I
    .end local v22    # "originHeight":I
    .end local v23    # "originWidth":I
    .end local v28    # "width":I
    :catchall_390
    move-exception v4

    if-nez v6, :cond_196

    goto/16 :goto_175

    .line 4729
    .restart local v11    # "m":Landroid/graphics/Matrix;
    :catchall_395
    move-exception v4

    if-nez v6, :cond_1e4

    goto/16 :goto_1c3
.end method

.method private isBottomMiddleImageHandle(II)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5870
    move v0, p1

    .line 5871
    .local v0, "positionX":I
    move v1, p2

    .line 5873
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 5875
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5877
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_67

    .line 5878
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Bottom Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5881
    :cond_67
    const/4 v3, 0x1

    .line 5890
    :goto_68
    return v3

    .line 5884
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_69
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5886
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_c5

    .line 5887
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Bottom Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5890
    :cond_c5
    const/4 v3, 0x0

    goto :goto_68
.end method

.method private isCursorAtBoundary(II)I
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 4833
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    const/4 v2, -0x1

    .line 4850
    :goto_14
    return v2

    .line 4835
    :cond_15
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4836
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 4837
    :try_start_20
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 4838
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x22c

    invoke-virtual {v2, v3, p1, p2, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(IIILjava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_44

    .line 4843
    :try_start_33
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_47
    .catchall {:try_start_33 .. :try_end_36} :catchall_44

    .line 4848
    :goto_36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_44

    .line 4850
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_14

    .line 4840
    :cond_42
    :try_start_42
    monitor-exit v1

    goto :goto_14

    .line 4848
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_44

    throw v2

    .line 4844
    :catch_47
    move-exception v0

    .line 4845
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_48
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4846
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_44

    goto :goto_36
.end method

.method private isHoverPointWithinIconAreaForResizing(II)Z
    .registers 15
    .param p1, "contentX"    # I
    .param p2, "contentY"    # I

    .prologue
    const v11, 0x1080660

    const/4 v4, 0x0

    const/high16 v10, 0x40000000

    const/4 v5, 0x1

    const/4 v9, -0x1

    .line 4862
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v5, v6, :cond_cd

    .line 4863
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 4864
    .local v1, "re":Landroid/graphics/RectF;
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v6, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4866
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_3c

    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHoverPointWithinIconAreaForResizing getX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", getY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    :cond_3c
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_7e

    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHoverPointWithinIconAreaForResizing outLinePath re.left re.top re.right re.bottom "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4869
    :cond_7e
    const/16 v0, 0x28

    .line 4870
    .local v0, "delta":I
    iget v6, v1, Landroid/graphics/RectF;->left:F

    iget v7, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    float-to-int v2, v6

    .line 4871
    .local v2, "xCenter":I
    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    float-to-int v3, v6

    .line 4873
    .local v3, "yCenter":I
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_ce

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_ce

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_ce

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_ce

    .line 4875
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_bd

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Top"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4876
    :cond_bd
    const v4, 0x1080662

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4877
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4878
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    :goto_cc
    move v4, v5

    .line 4931
    .end local v0    # "delta":I
    .end local v1    # "re":Landroid/graphics/RectF;
    .end local v2    # "xCenter":I
    .end local v3    # "yCenter":I
    :cond_cd
    :goto_cd
    return v4

    .line 4879
    .restart local v0    # "delta":I
    .restart local v1    # "re":Landroid/graphics/RectF;
    .restart local v2    # "xCenter":I
    .restart local v3    # "yCenter":I
    :cond_ce
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_10d

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_10d

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_10d

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_10d

    .line 4881
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_fd

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Top"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4882
    :cond_fd
    const v4, 0x1080661

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4883
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4884
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto :goto_cc

    .line 4885
    :cond_10d
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_14c

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_14c

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_14c

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_14c

    .line 4887
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_13c

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Bottom"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4888
    :cond_13c
    const v4, 0x1080661

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4889
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4890
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto :goto_cc

    .line 4891
    :cond_14c
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_18c

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_18c

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_18c

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_18c

    .line 4893
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_17b

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Bottom"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4894
    :cond_17b
    const v4, 0x1080662

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4895
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4896
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto/16 :goto_cc

    .line 4897
    :cond_18c
    sub-int v6, v2, v0

    if-gt v6, p1, :cond_1bc

    add-int v6, v2, v0

    if-lt v6, p1, :cond_1bc

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1bc

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1bc

    .line 4899
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_1b1

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Top-Horizontal Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4900
    :cond_1b1
    iput v11, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4901
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4902
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto/16 :goto_cc

    .line 4903
    :cond_1bc
    sub-int v6, v2, v0

    if-gt v6, p1, :cond_1ec

    add-int v6, v2, v0

    if-lt v6, p1, :cond_1ec

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1ec

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1ec

    .line 4905
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_1e1

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Bottom-Horizontal Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4906
    :cond_1e1
    iput v11, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4907
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4908
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto/16 :goto_cc

    .line 4909
    :cond_1ec
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_21f

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_21f

    sub-int v6, v3, v0

    if-gt v6, p2, :cond_21f

    add-int v6, v3, v0

    if-lt v6, p2, :cond_21f

    .line 4911
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_211

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Vertical Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4912
    :cond_211
    const v4, 0x1080663

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4913
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4914
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto/16 :goto_cc

    .line 4915
    :cond_21f
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_252

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_252

    sub-int v6, v3, v0

    if-gt v6, p2, :cond_252

    add-int v6, v3, v0

    if-lt v6, p2, :cond_252

    .line 4917
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_244

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Vertical Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4918
    :cond_244
    const v4, 0x1080663

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4919
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4920
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto/16 :goto_cc

    .line 4922
    :cond_252
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4923
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4924
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto/16 :goto_cd
.end method

.method private isInsertionAllowed(I)Z
    .registers 8
    .param p1, "insertionLength"    # I

    .prologue
    const/4 v3, 0x1

    .line 4936
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    if-eqz v4, :cond_6

    .line 4948
    :cond_5
    :goto_5
    return v3

    .line 4938
    :cond_6
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->htmlLength()I

    move-result v0

    .line 4941
    .local v0, "curHtmlLength":I
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v4

    if-ne v4, v3, :cond_1b

    .line 4942
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    .line 4943
    .local v1, "selectedText":Ljava/lang/String;
    if-eqz v1, :cond_1b

    .line 4944
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 4945
    .local v2, "selectedTextLength":I
    sub-int/2addr v0, v2

    .line 4948
    .end local v1    # "selectedText":Ljava/lang/String;
    .end local v2    # "selectedTextLength":I
    :cond_1b
    add-int v4, v0, p1

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    if-le v4, v5, :cond_5

    const/4 v3, 0x0

    goto :goto_5
.end method

.method private isOutLineRect(II)Z
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5894
    move v0, p1

    .line 5895
    .local v0, "positionX":I
    move v1, p2

    .line 5897
    .local v1, "positionY":I
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 5899
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_40

    .line 5900
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"If\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5903
    :cond_40
    const/4 v2, 0x1

    .line 5911
    :goto_41
    return v2

    .line 5906
    :cond_42
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_78

    .line 5907
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"else\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5911
    :cond_78
    const/4 v2, 0x0

    goto :goto_41
.end method

.method private isRightBottomImageHandle(II)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5775
    move v0, p1

    .line 5776
    .local v0, "positionX":I
    move v1, p2

    .line 5778
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 5780
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5782
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_67

    .line 5783
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5786
    :cond_67
    const/4 v3, 0x1

    .line 5795
    :goto_68
    return v3

    .line 5789
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_69
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5791
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_c5

    .line 5792
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5795
    :cond_c5
    const/4 v3, 0x0

    goto :goto_68
.end method

.method private isRightMiddleImageHandle(II)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5823
    move v0, p1

    .line 5824
    .local v0, "positionX":I
    move v1, p2

    .line 5826
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 5827
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5829
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_67

    .line 5830
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5833
    :cond_67
    const/4 v3, 0x1

    .line 5842
    :goto_68
    return v3

    .line 5836
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_69
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5838
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_c5

    .line 5839
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5842
    :cond_c5
    const/4 v3, 0x0

    goto :goto_68
.end method

.method private isRightTopImageHandle(II)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5751
    move v0, p1

    .line 5752
    .local v0, "positionX":I
    move v1, p2

    .line 5754
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 5756
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5758
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_67

    .line 5759
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5762
    :cond_67
    const/4 v3, 0x1

    .line 5771
    :goto_68
    return v3

    .line 5765
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_69
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5767
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_c5

    .line 5768
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5771
    :cond_c5
    const/4 v3, 0x0

    goto :goto_68
.end method

.method private isTopMiddleImageHandle(II)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5846
    move v0, p1

    .line 5847
    .local v0, "positionX":I
    move v1, p2

    .line 5849
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 5851
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5853
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_67

    .line 5854
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Top Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5857
    :cond_67
    const/4 v3, 0x1

    .line 5866
    :goto_68
    return v3

    .line 5860
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_69
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5862
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_c5

    .line 5863
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Top Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5866
    :cond_c5
    const/4 v3, 0x0

    goto :goto_68
.end method

.method private isleftBottomImageHandle(II)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5728
    move v0, p1

    .line 5729
    .local v0, "positionX":I
    move v1, p2

    .line 5731
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 5732
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5734
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_67

    .line 5735
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5738
    :cond_67
    const/4 v3, 0x1

    .line 5747
    :goto_68
    return v3

    .line 5741
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_69
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5743
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_c5

    .line 5744
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside  rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5747
    :cond_c5
    const/4 v3, 0x0

    goto :goto_68
.end method

.method private isleftMiddleImageHandle(II)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5799
    move v0, p1

    .line 5800
    .local v0, "positionX":I
    move v1, p2

    .line 5802
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 5804
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5806
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_67

    .line 5807
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Left Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5810
    :cond_67
    const/4 v3, 0x1

    .line 5819
    :goto_68
    return v3

    .line 5813
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_69
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5815
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_c5

    .line 5816
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Left Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5819
    :cond_c5
    const/4 v3, 0x0

    goto :goto_68
.end method

.method private isleftTopImageHandle(II)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5704
    move v0, p1

    .line 5705
    .local v0, "positionX":I
    move v1, p2

    .line 5707
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 5709
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5711
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_67

    .line 5712
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle left Top  PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5715
    :cond_67
    const/4 v3, 0x1

    .line 5724
    :goto_68
    return v3

    .line 5718
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_69
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5720
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_c5

    .line 5721
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle left Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5724
    :cond_c5
    const/4 v3, 0x0

    goto :goto_68
.end method

.method private onAlignSelectedImageOutlineRectUpdate()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 5157
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_1c

    .line 5159
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedImageRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 5160
    .local v0, "selectedImageRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eq v1, v2, :cond_1c

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_1c

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_1c

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_1c

    .line 5161
    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 5163
    .end local v0    # "selectedImageRect":Landroid/graphics/Rect;
    :cond_1c
    return-void
.end method

.method private resetAndCreateOutlinePath()V
    .registers 7

    .prologue
    .line 5917
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 5918
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5919
    return-void
.end method

.method private resetAndRecreateHandlesPath()V
    .registers 7

    .prologue
    .line 5922
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 5923
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5924
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5926
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5927
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5929
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5930
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5932
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5933
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5935
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5936
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5938
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5939
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5941
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5942
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5944
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5945
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5946
    return-void
.end method

.method private restartIMEByHtmlComposerView()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 4952
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4954
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-ne v1, v2, :cond_1f

    .line 4955
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v3, v1, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4956
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v3, v1, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4957
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 4959
    :cond_1f
    return-void
.end method

.method private selectedImageOutlineRectUpdate()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 5148
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_28

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    if-eq v1, v3, :cond_28

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    if-eq v1, v3, :cond_28

    .line 5150
    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    invoke-virtual {p0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 5151
    .local v0, "selectedImageRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eq v1, v3, :cond_28

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-eq v1, v3, :cond_28

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_28

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_28

    .line 5152
    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 5154
    .end local v0    # "selectedImageRect":Landroid/graphics/Rect;
    :cond_28
    return-void
.end method

.method private sendEventToUpdateToolbar()V
    .registers 3

    .prologue
    .line 4986
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4987
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x501

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4988
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4989
    return-void
.end method

.method private setEditable(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x207

    .line 4975
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_15

    .line 4983
    :cond_14
    :goto_14
    return-void

    .line 4977
    :cond_15
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 4979
    if-eqz p1, :cond_2a

    .line 4980
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    goto :goto_14

    .line 4982
    :cond_2a
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    goto :goto_14
.end method

.method private updateAllHandles()V
    .registers 1

    .prologue
    .line 5951
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateLeftTopHandle()V

    .line 5952
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRightTopHandle()V

    .line 5953
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateLeftBottomHandle()V

    .line 5954
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRightBottomHandle()V

    .line 5955
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateTopMiddleHandle()V

    .line 5956
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateLeftMiddleHandle()V

    .line 5957
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateBottomMiddleHandle()V

    .line 5958
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRightMiddleHandle()V

    .line 5959
    return-void
.end method

.method private updateBottomMiddleHandle()V
    .registers 8

    .prologue
    const/high16 v6, 0x40000000

    .line 6074
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    .line 6075
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6076
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 6077
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->bm_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6078
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->bm_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6083
    :goto_3b
    return-void

    .line 6081
    :cond_3c
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_3b
.end method

.method private updateInputMethodExtractText()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 5009
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 5010
    .local v1, "outText":Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 5012
    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_11

    .line 5027
    :cond_10
    :goto_10
    return-void

    .line 5015
    :cond_11
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 5016
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 5017
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 5018
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v2

    .line 5019
    .local v2, "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget v3, v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 5020
    iget v3, v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 5022
    const-string v3, "HtmlComposerView"

    const-string v4, "getExtractedText "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5024
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 5025
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_10

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 5026
    invoke-virtual {v0, p0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_10
.end method

.method private updateLeftBottomHandle()V
    .registers 7

    .prologue
    .line 6002
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 6004
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6005
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 6006
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->lb_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6007
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->lb_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6012
    :goto_30
    return-void

    .line 6010
    :cond_31
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_30
.end method

.method private updateLeftMiddleHandle()V
    .registers 9

    .prologue
    const/high16 v7, 0x40000000

    .line 6070
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 6071
    return-void
.end method

.method private updateLeftTopHandle()V
    .registers 6

    .prologue
    .line 5997
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 5998
    return-void
.end method

.method private updateOutlineRectangle(II)V
    .registers 7
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v3, 0x1

    .line 6015
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v3, :cond_19

    .line 6016
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 6017
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 6019
    :cond_19
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v3, :cond_31

    .line 6020
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6021
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 6023
    :cond_31
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v3, :cond_49

    .line 6024
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6025
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6027
    :cond_49
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v3, :cond_61

    .line 6028
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 6029
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6031
    :cond_61
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_79

    .line 6032
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 6033
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6035
    :cond_79
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_91

    .line 6036
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6037
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6039
    :cond_91
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_a9

    .line 6040
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6041
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6043
    :cond_a9
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_c1

    .line 6044
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6045
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 6047
    :cond_c1
    return-void
.end method

.method private updateRegions()V
    .registers 11

    .prologue
    const/16 v5, 0x1e

    const/4 v7, 0x0

    .line 5963
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v3, v4

    .line 5964
    .local v3, "localImagWidth":I
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v2, v4

    .line 5966
    .local v2, "localImagHeight":I
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v6

    .line 5967
    .local v1, "cropHandlerWidth":I
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v0, v4, v6

    .line 5969
    .local v0, "cropHandlerHeight":I
    add-int/lit8 v4, v1, 0x78

    if-le v3, v4, :cond_170

    move v4, v5

    :goto_38
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    .line 5970
    add-int/lit8 v4, v0, 0x78

    if-le v2, v4, :cond_176

    :goto_3e
    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    .line 5972
    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    if-gez v4, :cond_46

    iput v7, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    .line 5973
    :cond_46
    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    if-gez v4, :cond_4c

    iput v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    .line 5975
    :cond_4c
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x14

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5976
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5979
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5981
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5983
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5985
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5987
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5989
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5991
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5992
    return-void

    .line 5969
    :cond_170
    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x4

    goto/16 :goto_38

    .line 5970
    :cond_176
    sub-int v4, v2, v0

    div-int/lit8 v5, v4, 0x4

    goto/16 :goto_3e
.end method

.method private updateRightBottomHandle()V
    .registers 7

    .prologue
    .line 6050
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 6051
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6052
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 6053
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->rb_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6054
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->rb_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6059
    :goto_2d
    return-void

    .line 6057
    :cond_2e
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_2d
.end method

.method private updateRightMiddleHandle()V
    .registers 9

    .prologue
    const/high16 v7, 0x40000000

    .line 6086
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 6087
    return-void
.end method

.method private updateRightTopHandle()V
    .registers 6

    .prologue
    .line 6062
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 6063
    return-void
.end method

.method private updateTopMiddleHandle()V
    .registers 8

    .prologue
    const/high16 v6, 0x40000000

    .line 6090
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 6091
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6092
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 6093
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->tm_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6094
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->tm_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6099
    :goto_3a
    return-void

    .line 6097
    :cond_3b
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_3a
.end method

.method private updateactionbar()V
    .registers 3

    .prologue
    .line 5002
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 5006
    :cond_12
    :goto_12
    return-void

    .line 5004
    :cond_13
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 5005
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21f

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_12
.end method


# virtual methods
.method public DoClearImageSelection()V
    .registers 3

    .prologue
    .line 3072
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_e

    .line 3074
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 3077
    :cond_e
    return-void
.end method

.method public GetLongPressForActioinPopup()Z
    .registers 2

    .prologue
    .line 6180
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    return v0
.end method

.method public HtmlComposerDrawContent(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x1

    .line 6208
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    if-ne v1, v2, :cond_62

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v1, :cond_62

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    if-eqz v1, :cond_62

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    if-eqz v1, :cond_62

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v1, v2, :cond_62

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    if-nez v1, :cond_62

    .line 6210
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 6211
    .local v7, "normalCursorRect":Landroid/graphics/Rect;
    if-eqz v7, :cond_62

    .line 6212
    new-instance v6, Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0xf

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0xf

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0xf

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6213
    .local v6, "imageCursorRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 6214
    .local v0, "cursorPath":Landroid/graphics/Path;
    iget v1, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 6215
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 6216
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 6217
    .local v8, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6218
    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6223
    .end local v0    # "cursorPath":Landroid/graphics/Path;
    .end local v6    # "imageCursorRect":Landroid/graphics/Rect;
    .end local v7    # "normalCursorRect":Landroid/graphics/Rect;
    .end local v8    # "paint":Landroid/graphics/Paint;
    :cond_62
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v1, :cond_7c

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7c

    .line 6224
    const-string v1, "HtmlComposerView"

    const-string v2, "drawWebImageSelectionControl is being called "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6225
    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerView;->drawWebImageSelectionControl(Landroid/graphics/Canvas;)V

    .line 6227
    :cond_7c
    return-void
.end method

.method public IsWordMisspelledAtPosition(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3117
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebViewClassic;->IsWordMisspelledAtPosition(II)Z

    move-result v0

    return v0
.end method

.method public MoveCursorRight()V
    .registers 3

    .prologue
    .line 3757
    const-string v0, "MoveRight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3758
    return-void
.end method

.method public SendInitComposing()V
    .registers 3

    .prologue
    .line 4142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4143
    .local v0, "imeBroadCast":Landroid/content/Intent;
    const-string v1, "imeAction:initComposing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4144
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4145
    return-void
.end method

.method public SetContextMenuVisible(Z)V
    .registers 2
    .param p1, "_visible"    # Z

    .prologue
    .line 4072
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 4073
    return-void
.end method

.method public SetLongPressForActioinPopup(Z)V
    .registers 2
    .param p1, "_set"    # Z

    .prologue
    .line 6184
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6185
    return-void
.end method

.method public UpdateRichTextToolbar(Z)V
    .registers 4
    .param p1, "isClear"    # Z

    .prologue
    const/4 v1, 0x1

    .line 4230
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    if-eqz v0, :cond_11

    .line 4231
    if-eq p1, v1, :cond_b

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v0, v1, :cond_12

    .line 4232
    :cond_b
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    .line 4239
    :cond_11
    :goto_11
    return-void

    .line 4233
    :cond_12
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    if-ne v0, v1, :cond_1c

    .line 4234
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    invoke-interface {v0, v1}, Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_11

    .line 4236
    :cond_1c
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_11
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 2
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 6111
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    .line 6112
    return-void
.end method

.method public append(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 2835
    sget-object v0, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkitsec/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z

    .line 2836
    return-void
.end method

.method public canCopy()Z
    .registers 2

    .prologue
    .line 2839
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_e

    .line 2840
    const/4 v0, 0x1

    .line 2843
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public canCut()Z
    .registers 2

    .prologue
    .line 2847
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_e

    .line 2848
    const/4 v0, 0x1

    .line 2851
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public canPaste()Z
    .registers 2

    .prologue
    .line 2855
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_18

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_18

    .line 2856
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2857
    const/4 v0, 0x1

    .line 2860
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public canRedo()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 2917
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_14

    .line 2934
    :cond_13
    :goto_13
    return v3

    .line 2919
    :cond_14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2920
    .local v0, "canRedo":Ljava/lang/Boolean;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2921
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2922
    :try_start_1f
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 2923
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20f

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_43

    .line 2928
    :try_start_32
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_46
    .catchall {:try_start_32 .. :try_end_35} :catchall_43

    .line 2933
    :goto_35
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_43

    .line 2934
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_13

    .line 2925
    :cond_41
    :try_start_41
    monitor-exit v2

    goto :goto_13

    .line 2933
    :catchall_43
    move-exception v3

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_43

    throw v3

    .line 2929
    :catch_46
    move-exception v1

    .line 2930
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_47
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_43

    goto :goto_35
.end method

.method public canUndo()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 2938
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_14

    .line 2956
    :cond_13
    :goto_13
    return v3

    .line 2940
    :cond_14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2941
    .local v0, "canUndo":Ljava/lang/Boolean;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2942
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2943
    :try_start_1f
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 2944
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20d

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_43

    .line 2949
    :try_start_32
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_46
    .catchall {:try_start_32 .. :try_end_35} :catchall_43

    .line 2954
    :goto_35
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_43

    .line 2956
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_13

    .line 2946
    :cond_41
    :try_start_41
    monitor-exit v2

    goto :goto_13

    .line 2954
    :catchall_43
    move-exception v3

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_43

    throw v3

    .line 2950
    :catch_46
    move-exception v1

    .line 2951
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_47
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_43

    goto :goto_35
.end method

.method public changeFontBackColorForSelection(Ljava/lang/String;)V
    .registers 3
    .param p1, "fontColor"    # Ljava/lang/String;

    .prologue
    .line 2134
    const-string v0, "BackColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2135
    return-void
.end method

.method public changeFontColorForSelection(Ljava/lang/String;)V
    .registers 3
    .param p1, "fontColor"    # Ljava/lang/String;

    .prologue
    .line 2138
    const-string v0, "ForeColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2139
    return-void
.end method

.method public changeFontNameForSelection(Ljava/lang/String;)V
    .registers 3
    .param p1, "fontName"    # Ljava/lang/String;

    .prologue
    .line 2142
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2143
    const-string v0, "FontName"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2144
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2145
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2146
    return-void
.end method

.method public changeFontSize(Ljava/lang/String;)V
    .registers 3
    .param p1, "fontSize"    # Ljava/lang/String;

    .prologue
    .line 2156
    const-string v0, "FontValue"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(I)V

    .line 2158
    return-void
.end method

.method public changeFontSizeForSelection(Ljava/lang/String;)V
    .registers 3
    .param p1, "fontSize"    # Ljava/lang/String;

    .prologue
    .line 2149
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2150
    const-string v0, "FontSize"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2151
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2152
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2153
    return-void
.end method

.method public ckeckIfSelectionAtBoundry()I
    .registers 6

    .prologue
    const/4 v2, -0x1

    .line 2960
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2977
    :cond_13
    :goto_13
    return v2

    .line 2962
    :cond_14
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2963
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2964
    :try_start_20
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 2965
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x217

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_44

    .line 2970
    :try_start_33
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_47
    .catchall {:try_start_33 .. :try_end_36} :catchall_44

    .line 2975
    :goto_36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_44

    .line 2977
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_13

    .line 2967
    :cond_42
    :try_start_42
    monitor-exit v1

    goto :goto_13

    .line 2975
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_44

    throw v2

    .line 2971
    :catch_47
    move-exception v0

    .line 2972
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_48
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_44

    goto :goto_36
.end method

.method public cleanTempResources()V
    .registers 3

    .prologue
    .line 2981
    const-string v0, "HtmlComposerView"

    const-string v1, "cleanTempResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebClipboard;->deleteTempDirectory()V

    .line 2983
    return-void
.end method

.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2986
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableBidirection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2987
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-ne v0, v2, :cond_18

    .line 2988
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 2991
    :cond_18
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 2992
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    .line 2994
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 2995
    return-void
.end method

.method public clearComposingSelection()V
    .registers 5

    .prologue
    .line 2997
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2998
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x219

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 2999
    :cond_15
    return-void
.end method

.method public clearImageSelection()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 6312
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  clearImageSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6314
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_42

    .line 6315
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  clearImageSelection  Clearing selection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6316
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6317
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 6318
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6319
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6320
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6322
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 6323
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 6324
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 6325
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 6326
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 6327
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 6328
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 6329
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 6331
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    .line 6332
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 6334
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearSelection()V

    .line 6336
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 6338
    :cond_42
    return-void
.end method

.method public clearSelection()V
    .registers 2

    .prologue
    .line 572
    invoke-super {p0}, Landroid/webkitsec/WebView;->clearSelection()V

    .line 575
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 577
    return-void
.end method

.method public commitInputMethodText(Ljava/lang/String;I)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "numOfcharsToDeleteFromCursorPos"    # I

    .prologue
    .line 3002
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 3013
    :cond_12
    :goto_12
    return-void

    .line 3004
    :cond_13
    if-lez p2, :cond_40

    .line 3005
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitInputMethodText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 3007
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    .line 3010
    :cond_40
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3011
    const-string v0, "InsertText"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3012
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto :goto_12
.end method

.method public copy()V
    .registers 3

    .prologue
    .line 2161
    const-string v0, "Copy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2162
    return-void
.end method

.method public cut()V
    .registers 3

    .prologue
    .line 2166
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2171
    :goto_f
    return-void

    .line 2170
    :cond_10
    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_f
.end method

.method public delayedUpdateOutlineDrawRect()V
    .registers 5

    .prologue
    .line 5133
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 5134
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x503

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5136
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    if-eqz v1, :cond_14

    .line 5137
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5139
    :cond_14
    return-void
.end method

.method public delete()V
    .registers 5

    .prologue
    .line 3023
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getImageSelectRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3024
    .local v0, "cursurRect":Landroid/graphics/Rect;
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete() -- cursurRect.left  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cursurRect.top =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/WebViewClassic;->setTextSelecitonManualAtContentPoint(II)Z

    .line 3026
    const-string v1, "Delete"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3027
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 3028
    return-void
.end method

.method public deleteSurroundingText(II)V
    .registers 5
    .param p1, "leftLength"    # I
    .param p2, "rightLength"    # I

    .prologue
    .line 3031
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 3037
    :cond_12
    :goto_12
    return-void

    .line 3033
    :cond_13
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 3034
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 3036
    :cond_26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_12
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 3040
    const-string v0, "HtmlComposerView"

    const-string v1, " htmlcomposer destroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3044
    const-string v0, "HtmlComposerView"

    const-string v1, "htmlcomposer destroy() hide "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 3048
    :cond_17
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    if-eqz v0, :cond_23

    .line 3049
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->setTargetNull()V

    .line 3050
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    .line 3053
    :cond_23
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    if-eqz v0, :cond_4a

    .line 3054
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3055
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x501

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3056
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x502

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3057
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x503

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3058
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x504

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3061
    :cond_4a
    invoke-super {p0}, Landroid/webkitsec/WebView;->destroy()V

    .line 3062
    return-void
.end method

.method public disableEditing()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3065
    invoke-direct {p0, v1}, Landroid/webkitsec/HtmlComposerView;->setEditable(Z)V

    .line 3066
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setEditableSupport(Z)V

    .line 3067
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-eqz v0, :cond_12

    .line 3068
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 3069
    :cond_12
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 23
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 787
    const/16 v19, 0x0

    .line 788
    .local v19, "retVal":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_77

    const/16 v16, 0x1

    .line 789
    .local v16, "down":Z
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v17

    .line 790
    .local v17, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v15

    .line 792
    .local v15, "MetaState":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_33

    .line 793
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_33
    const/16 v4, 0x39

    move/from16 v0, v17

    if-ne v0, v4, :cond_40

    .line 797
    if-eqz v16, :cond_7a

    .line 798
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 803
    :cond_40
    :goto_40
    const/16 v4, 0x7a

    move/from16 v0, v17

    if-eq v0, v4, :cond_5f

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_53

    const/16 v4, 0x97

    move/from16 v0, v17

    if-eq v0, v4, :cond_5f

    :cond_53
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_91

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_91

    .line 805
    :cond_5f
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_74

    .line 806
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_80

    .line 807
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 808
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToBeginningOfLine()V

    .line 815
    :cond_74
    :goto_74
    const/16 v19, 0x1

    .line 1051
    .end local v19    # "retVal":Z
    :goto_76
    return v19

    .line 788
    .end local v15    # "MetaState":I
    .end local v16    # "down":Z
    .end local v17    # "keyCode":I
    .restart local v19    # "retVal":Z
    :cond_77
    const/16 v16, 0x0

    goto :goto_b

    .line 800
    .restart local v15    # "MetaState":I
    .restart local v16    # "down":Z
    .restart local v17    # "keyCode":I
    :cond_7a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    goto :goto_40

    .line 810
    :cond_80
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 811
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToBeginningOfLine()V

    .line 812
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_74

    .line 816
    :cond_91
    const/16 v4, 0x7b

    move/from16 v0, v17

    if-eq v0, v4, :cond_b0

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_a4

    const/16 v4, 0x91

    move/from16 v0, v17

    if-eq v0, v4, :cond_b0

    :cond_a4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_d9

    const/16 v4, 0x16

    move/from16 v0, v17

    if-ne v0, v4, :cond_d9

    .line 818
    :cond_b0
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_c5

    .line 819
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_c8

    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 821
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToEndOfLine()V

    .line 828
    :cond_c5
    :goto_c5
    const/16 v19, 0x1

    goto :goto_76

    .line 823
    :cond_c8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 824
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToEndOfLine()V

    .line 825
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_c5

    .line 829
    :cond_d9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_133

    const/16 v4, 0x13

    move/from16 v0, v17

    if-eq v0, v4, :cond_eb

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_133

    .line 830
    :cond_eb
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_114

    const/16 v4, 0x13

    move/from16 v0, v17

    if-ne v0, v4, :cond_114

    .line 831
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_10a

    .line 832
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorBegining()V

    .line 848
    :cond_ff
    :goto_ff
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 849
    const/16 v19, 0x1

    goto/16 :goto_76

    .line 835
    :cond_10a
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    .line 836
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_ff

    .line 838
    :cond_114
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_ff

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_ff

    .line 839
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_129

    .line 840
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorEnd()V

    goto :goto_ff

    .line 843
    :cond_129
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToEndOfDocument()V

    .line 844
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_ff

    .line 850
    :cond_133
    const/16 v4, 0x5c

    move/from16 v0, v17

    if-eq v0, v4, :cond_146

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_182

    const/16 v4, 0x99

    move/from16 v0, v17

    if-ne v0, v4, :cond_182

    .line 852
    :cond_146
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_167

    .line 853
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_16b

    .line 854
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 855
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToPageUp()V

    .line 856
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 857
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 866
    :cond_167
    :goto_167
    const/16 v19, 0x1

    goto/16 :goto_76

    .line 860
    :cond_16b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 861
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToPageUp()V

    .line 862
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 863
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_167

    .line 867
    :cond_182
    const/16 v4, 0x5d

    move/from16 v0, v17

    if-eq v0, v4, :cond_195

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_1d1

    const/16 v4, 0x93

    move/from16 v0, v17

    if-ne v0, v4, :cond_1d1

    .line 869
    :cond_195
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_1b6

    .line 870
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_1ba

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 872
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToPageDown()V

    .line 873
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 874
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 883
    :cond_1b6
    :goto_1b6
    const/16 v19, 0x1

    goto/16 :goto_76

    .line 877
    :cond_1ba
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 878
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToPageDown()V

    .line 879
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 880
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_1b6

    .line 886
    :cond_1d1
    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_27b

    .line 887
    const/16 v4, 0x92

    move/from16 v0, v17

    if-eq v0, v4, :cond_1f6

    const/16 v4, 0x94

    move/from16 v0, v17

    if-eq v0, v4, :cond_1f6

    const/16 v4, 0x96

    move/from16 v0, v17

    if-eq v0, v4, :cond_1f6

    const/16 v4, 0x98

    move/from16 v0, v17

    if-eq v0, v4, :cond_1f6

    const/16 v4, 0x9e

    move/from16 v0, v17

    if-ne v0, v4, :cond_27b

    .line 892
    :cond_1f6
    if-eqz v16, :cond_27b

    .line 893
    const/16 v4, 0x92

    move/from16 v0, v17

    if-ne v0, v4, :cond_20b

    .line 894
    const/16 v17, 0x14

    .line 895
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 896
    const/16 v19, 0x1

    goto/16 :goto_76

    .line 897
    :cond_20b
    const/16 v4, 0x94

    move/from16 v0, v17

    if-ne v0, v4, :cond_21e

    .line 898
    const/16 v17, 0x15

    .line 899
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 900
    const/16 v19, 0x1

    goto/16 :goto_76

    .line 901
    :cond_21e
    const/16 v4, 0x96

    move/from16 v0, v17

    if-ne v0, v4, :cond_231

    .line 902
    const/16 v17, 0x16

    .line 903
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 904
    const/16 v19, 0x1

    goto/16 :goto_76

    .line 905
    :cond_231
    const/16 v4, 0x98

    move/from16 v0, v17

    if-ne v0, v4, :cond_244

    .line 906
    const/16 v17, 0x13

    .line 907
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 908
    const/16 v19, 0x1

    goto/16 :goto_76

    .line 909
    :cond_244
    const/16 v4, 0x9e

    move/from16 v0, v17

    if-ne v0, v4, :cond_27b

    .line 910
    const/4 v2, 0x0

    .line 912
    .local v2, "newKeyEvent":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2    # "newKeyEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/16 v8, 0x70

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 922
    .restart local v2    # "newKeyEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/webkitsec/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_76

    .line 928
    .end local v2    # "newKeyEvent":Landroid/view/KeyEvent;
    :cond_27b
    const/16 v4, 0x13

    move/from16 v0, v17

    if-lt v0, v4, :cond_2d6

    const/16 v4, 0x16

    move/from16 v0, v17

    if-gt v0, v4, :cond_2d6

    .line 929
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v20

    .line 930
    .local v20, "selctionAtBoundry":I
    if-nez v20, :cond_29a

    .line 931
    if-eqz v16, :cond_296

    .line 932
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 933
    :cond_296
    const/16 v19, 0x1

    goto/16 :goto_76

    .line 935
    :cond_29a
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_2b8

    const/16 v4, 0x16

    move/from16 v0, v17

    if-eq v0, v4, :cond_2ab

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_2b8

    .line 936
    :cond_2ab
    if-eqz v16, :cond_2b4

    .line 937
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 938
    :cond_2b4
    const/16 v19, 0x1

    goto/16 :goto_76

    .line 940
    :cond_2b8
    const/4 v4, 0x2

    move/from16 v0, v20

    if-ne v0, v4, :cond_41a

    const/16 v4, 0x13

    move/from16 v0, v17

    if-eq v0, v4, :cond_2c9

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_41a

    .line 941
    :cond_2c9
    if-eqz v16, :cond_2d2

    .line 942
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 943
    :cond_2d2
    const/16 v19, 0x1

    goto/16 :goto_76

    .line 946
    .end local v20    # "selctionAtBoundry":I
    :cond_2d6
    const/16 v4, 0x3e

    move/from16 v0, v17

    if-ne v4, v0, :cond_315

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-nez v4, :cond_315

    .line 947
    if-eqz v16, :cond_311

    .line 948
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 949
    const-string v4, "InsertText"

    const-string v5, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 950
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 951
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 952
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 953
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 955
    :cond_311
    const/16 v19, 0x1

    goto/16 :goto_76

    .line 957
    :cond_315
    const/16 v4, 0x3d

    move/from16 v0, v17

    if-ne v4, v0, :cond_349

    .line 958
    if-eqz v16, :cond_345

    .line 959
    const-string v4, "InsertText"

    const-string v5, "    "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 960
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 961
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 963
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-ne v4, v5, :cond_33f

    .line 964
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 966
    :cond_33f
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 968
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_345
    const/16 v19, 0x1

    goto/16 :goto_76

    .line 970
    :cond_349
    const/16 v4, 0x20

    move/from16 v0, v17

    if-ne v4, v0, :cond_377

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_377

    .line 971
    if-eqz v16, :cond_373

    .line 972
    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v5

    if-ne v4, v5, :cond_373

    .line 973
    const-string v4, "Delete"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 974
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 975
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 978
    :cond_373
    const/16 v19, 0x1

    goto/16 :goto_76

    .line 980
    :cond_377
    const/16 v4, 0x42

    move/from16 v0, v17

    if-eq v0, v4, :cond_383

    const/16 v4, 0xa0

    move/from16 v0, v17

    if-ne v0, v4, :cond_3bc

    .line 981
    :cond_383
    if-eqz v16, :cond_3b8

    .line 982
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 983
    const-string v4, "InsertText"

    const-string v5, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 985
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 986
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 987
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 988
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 990
    :cond_3b8
    const/16 v19, 0x1

    goto/16 :goto_76

    .line 992
    :cond_3bc
    const/16 v4, 0x71

    move/from16 v0, v17

    if-eq v0, v4, :cond_3c8

    const/16 v4, 0x72

    move/from16 v0, v17

    if-ne v0, v4, :cond_3ce

    .line 993
    :cond_3c8
    invoke-super/range {p0 .. p1}, Landroid/webkitsec/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_76

    .line 995
    :cond_3ce
    const/16 v4, 0x1d

    move/from16 v0, v17

    if-eq v0, v4, :cond_3f2

    const/16 v4, 0x1f

    move/from16 v0, v17

    if-eq v0, v4, :cond_3f2

    const/16 v4, 0x32

    move/from16 v0, v17

    if-eq v0, v4, :cond_3f2

    const/16 v4, 0x34

    move/from16 v0, v17

    if-eq v0, v4, :cond_3f2

    const/16 v4, 0x36

    move/from16 v0, v17

    if-eq v0, v4, :cond_3f2

    const/16 v4, 0x35

    move/from16 v0, v17

    if-ne v0, v4, :cond_41a

    :cond_3f2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_41a

    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v4, v0, :cond_41a

    .line 999
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCtrlPressed and keyCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    sparse-switch v17, :sswitch_data_4b2

    .line 1044
    :cond_41a
    if-eqz v19, :cond_4ac

    .line 1045
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    .line 1046
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1048
    .restart local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    goto/16 :goto_76

    .line 1003
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_439
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canSelectAll()Z

    move-result v4

    if-eqz v4, :cond_41a

    .line 1004
    const/16 v18, 0x0

    .line 1005
    .local v18, "result":Z
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 1006
    const v4, 0x102001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v18

    .line 1007
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    move/from16 v19, v18

    .line 1008
    goto/16 :goto_76

    .line 1013
    .end local v18    # "result":Z
    :sswitch_459
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_41a

    .line 1014
    const v4, 0x1020021

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_76

    .line 1019
    :sswitch_46a
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_41a

    .line 1020
    const v4, 0x1020022

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_76

    .line 1025
    :sswitch_47b
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_41a

    .line 1026
    const v4, 0x1020020

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_76

    .line 1031
    :sswitch_48c
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canUndo()Z

    move-result v4

    if-eqz v4, :cond_41a

    .line 1032
    const/16 v4, 0x2711

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_76

    .line 1037
    :sswitch_49c
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canRedo()Z

    move-result v4

    if-eqz v4, :cond_41a

    .line 1038
    const/16 v4, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_76

    .line 1051
    :cond_4ac
    invoke-super/range {p0 .. p1}, Landroid/webkitsec/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_76

    .line 1001
    :sswitch_data_4b2
    .sparse-switch
        0x1d -> :sswitch_439
        0x1f -> :sswitch_459
        0x32 -> :sswitch_46a
        0x34 -> :sswitch_47b
        0x35 -> :sswitch_49c
        0x36 -> :sswitch_48c
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1129
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1130
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "HtmlComposerView"

    const-string v1, "dispatchPopulateAccessibilityEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public doExecute(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "in_args"    # Landroid/os/Bundle;
    .param p2, "out_args"    # Landroid/os/Bundle;

    .prologue
    .line 6397
    const/4 v0, 0x0

    return-object v0
.end method

.method public doResizeImage(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 3080
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 3084
    :cond_12
    :goto_12
    return-void

    .line 3082
    :cond_13
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3083
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_12
.end method

.method public drawSelectionControl()V
    .registers 2

    .prologue
    .line 6135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 6136
    return-void
.end method

.method public drawSelectionControl(I)V
    .registers 4
    .param p1, "keyCode"    # I

    .prologue
    .line 6152
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 6158
    :cond_12
    :goto_12
    return-void

    .line 6154
    :cond_13
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 6155
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 6157
    :cond_26
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    goto :goto_12
.end method

.method public drawSelectionControl(Z)V
    .registers 5
    .param p1, "isTextChanged"    # Z

    .prologue
    const/4 v2, 0x1

    .line 6139
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_14

    .line 6149
    :cond_13
    :goto_13
    return-void

    .line 6141
    :cond_14
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 6142
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 6144
    :cond_27
    if-ne v2, p1, :cond_13

    .line 6146
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_13
.end method

.method public dropTheDraggedText(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4312
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4318
    :cond_12
    :goto_12
    return-void

    .line 4314
    :cond_13
    const-string v0, "HtmlComposerView"

    const-string v1, "dropTheDraggedText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4316
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 4317
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22d

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_12
.end method

.method public enableEditing()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3200
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setEditableSupport(Z)V

    .line 3201
    invoke-direct {p0, v1}, Landroid/webkitsec/HtmlComposerView;->setEditable(Z)V

    .line 3202
    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const v6, 0x1040b46

    const v5, 0x1040b45

    const/4 v1, 0x0

    .line 3087
    const-string v2, "Insert"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 3089
    const/4 v0, 0x0

    .line 3090
    .local v0, "length":I
    if-eqz p2, :cond_16

    .line 3091
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 3092
    :cond_16
    invoke-direct {p0, v0}, Landroid/webkitsec/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 3094
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    if-nez v2, :cond_51

    .line 3095
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 3099
    :goto_4b
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3113
    .end local v0    # "length":I
    :goto_50
    return v1

    .line 3097
    .restart local v0    # "length":I
    :cond_51
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4b

    .line 3104
    :cond_7a
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_88

    .line 3106
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 3111
    .end local v0    # "length":I
    :cond_88
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3113
    const/4 v1, 0x1

    goto :goto_50
.end method

.method public executeAlignCenter()V
    .registers 3

    .prologue
    .line 2255
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2256
    const-string v0, "JustifyCenter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2258
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2259
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    .line 2260
    return-void
.end method

.method public executeAlignLeft()V
    .registers 3

    .prologue
    .line 2239
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2240
    const-string v0, "JustifyLeft"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2242
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2243
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    .line 2244
    return-void
.end method

.method public executeAlignRight()V
    .registers 3

    .prologue
    .line 2247
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2248
    const-string v0, "JustifyRight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2250
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2251
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    .line 2252
    return-void
.end method

.method public executeHyperlink(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2227
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2228
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2229
    const-string v0, "CreateLink"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2234
    :goto_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2235
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2236
    return-void

    .line 2232
    :cond_16
    const-string v0, "Unlink"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_e
.end method

.method public executeIndent()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2174
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2175
    const-string v0, "Indent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2176
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2177
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 2178
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2179
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 2180
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->contentInvalidateAll()V

    .line 2181
    return-void
.end method

.method public executeOutdent()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2184
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2185
    const-string v0, "Outdent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2186
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2187
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 2188
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2189
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 2190
    return-void
.end method

.method public executeUnLink()V
    .registers 3

    .prologue
    .line 2221
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2222
    const-string v0, "UnLink"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2224
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2225
    return-void
.end method

.method public getAccessibilitySelectionEnd()I
    .registers 2

    .prologue
    .line 1167
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .registers 2

    .prologue
    .line 1152
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getBodyHTML()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3205
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_14

    .line 3222
    :cond_13
    :goto_13
    return-object v2

    .line 3207
    :cond_14
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3208
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 3209
    :try_start_1a
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 3210
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_3a

    .line 3215
    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_3d
    .catchall {:try_start_2d .. :try_end_30} :catchall_3a

    .line 3220
    :goto_30
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_3a

    .line 3222
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_13

    .line 3212
    :cond_38
    :try_start_38
    monitor-exit v1

    goto :goto_13

    .line 3220
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3a

    throw v2

    .line 3216
    :catch_3d
    move-exception v0

    .line 3217
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3e
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_3e .. :try_end_4e} :catchall_3a

    goto :goto_30
.end method

.method public getCaretState()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 6188
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_14

    .line 6201
    :cond_13
    :goto_13
    return v2

    .line 6190
    :cond_14
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6191
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v1

    .line 6192
    :try_start_1f
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x20c

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_67

    .line 6194
    :try_start_2a
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_55
    .catchall {:try_start_2a .. :try_end_2d} :catchall_67

    .line 6199
    :goto_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_67

    .line 6200
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCaretState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6201
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_13

    .line 6195
    :catch_55
    move-exception v0

    .line 6196
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_56
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6197
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 6199
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_67
    move-exception v2

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_56 .. :try_end_69} :catchall_67

    throw v2
.end method

.method public declared-synchronized getComposingState()Z
    .registers 2

    .prologue
    .line 423
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConetextmenuVisibility()Z
    .registers 2

    .prologue
    .line 3226
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    return v0
.end method

.method public getContentX(I)I
    .registers 5
    .param p1, "RawX"    # I

    .prologue
    .line 6382
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 6383
    .local v0, "contentX":I
    return v0
.end method

.method public getContentY(I)I
    .registers 5
    .param p1, "RawY"    # I

    .prologue
    .line 6387
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v0

    .line 6388
    .local v0, "contentY":I
    return v0
.end method

.method public getCurrentFontSize()I
    .registers 5

    .prologue
    .line 3231
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3232
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 3233
    :try_start_c
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x222

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_31

    .line 3236
    :try_start_17
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_26
    .catchall {:try_start_17 .. :try_end_1a} :catchall_31

    .line 3240
    :goto_1a
    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_31

    .line 3242
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 3237
    :catch_26
    move-exception v0

    .line 3238
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_27
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 3240
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public getCurrentFontValue()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3247
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3248
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 3249
    :try_start_c
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 3250
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x225

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_34

    .line 3254
    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_37
    .catchall {:try_start_23 .. :try_end_26} :catchall_34

    .line 3258
    :goto_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_34

    .line 3260
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_31
    return v2

    .line 3252
    :cond_32
    :try_start_32
    monitor-exit v1

    goto :goto_31

    .line 3258
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_34

    throw v2

    .line 3255
    :catch_37
    move-exception v0

    .line 3256
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_38
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_34

    goto :goto_26
.end method

.method public getCursorPressed()Z
    .registers 2

    .prologue
    .line 3265
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mIsPressingHandle:Z

    return v0
.end method

.method public getCursorRect(Z)Landroid/graphics/Rect;
    .registers 8
    .param p1, "giveContentRect"    # Z

    .prologue
    .line 6160
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_18

    :cond_12
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6175
    :goto_17
    return-object v4

    .line 6162
    :cond_18
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v4

    .line 6163
    .local v1, "paramArray":[Ljava/lang/Object;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 6164
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v3, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v3, p0, v1, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6165
    .local v3, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    monitor-enter v3

    .line 6166
    :try_start_2d
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    const/16 v5, 0x209

    invoke-virtual {v4, v5, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_55

    .line 6169
    :try_start_38
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3b} :catch_43
    .catchall {:try_start_38 .. :try_end_3b} :catchall_55

    .line 6174
    :goto_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_55

    .line 6175
    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_17

    .line 6170
    :catch_43
    move-exception v0

    .line 6171
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_44
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6172
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 6174
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_55
    move-exception v4

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_44 .. :try_end_57} :catchall_55

    throw v4
.end method

.method public getHTML()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3269
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .line 3270
    .local v0, "text":Ljava/lang/String;
    if-nez v0, :cond_9

    const-string v1, ""

    .line 3274
    :goto_8
    return-object v1

    .line 3271
    :cond_9
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3272
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3274
    goto :goto_8
.end method

.method public getImageSize(II)Landroid/graphics/Rect;
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2864
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_18

    :cond_12
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2884
    :goto_17
    return-object v4

    .line 2866
    :cond_18
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2868
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 2869
    .local v1, "paramArray":[Ljava/lang/Object;
    new-instance v3, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v3, p0, v1, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2870
    .local v3, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    monitor-enter v3

    .line 2871
    :try_start_34
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 2872
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    const/16 v5, 0x226

    invoke-virtual {v4, v5, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_59

    .line 2877
    :try_start_47
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4a} :catch_5c
    .catchall {:try_start_47 .. :try_end_4a} :catchall_59

    .line 2882
    :goto_4a
    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_59

    .line 2884
    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_17

    .line 2874
    :cond_52
    :try_start_52
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    monitor-exit v3

    goto :goto_17

    .line 2882
    :catchall_59
    move-exception v4

    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_59

    throw v4

    .line 2878
    :catch_5c
    move-exception v0

    .line 2879
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5d
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_59

    goto :goto_4a
.end method

.method public getImeOptions()I
    .registers 2

    .prologue
    .line 3278
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    return v0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1144
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMailContent()Landroid/webkitsec/WebHTMLMarkupData;
    .registers 5

    .prologue
    .line 3282
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getMailHTML()Landroid/webkitsec/WebHTMLMarkupData;

    move-result-object v0

    .line 3283
    .local v0, "data":Landroid/webkitsec/WebHTMLMarkupData;
    if-nez v0, :cond_7

    .line 3291
    :cond_6
    :goto_6
    return-object v0

    .line 3285
    :cond_7
    invoke-virtual {v0}, Landroid/webkitsec/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    .line 3286
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 3287
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3288
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3289
    invoke-virtual {v0, v1}, Landroid/webkitsec/WebHTMLMarkupData;->setHTMLFragment(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getMailHTML()Landroid/webkitsec/WebHTMLMarkupData;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3295
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_14

    .line 3313
    :cond_13
    :goto_13
    return-object v3

    .line 3297
    :cond_14
    new-instance v1, Landroid/webkitsec/WebHTMLMarkupData;

    invoke-direct {v1}, Landroid/webkitsec/WebHTMLMarkupData;-><init>()V

    .line 3298
    .local v1, "mailMarkupData":Landroid/webkitsec/WebHTMLMarkupData;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v3, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3299
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/webkitsec/WebHTMLMarkupData;>;"
    monitor-enter v2

    .line 3300
    :try_start_1f
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 3301
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x206

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_3f

    .line 3306
    :try_start_32
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_42
    .catchall {:try_start_32 .. :try_end_35} :catchall_3f

    .line 3311
    :goto_35
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_3f

    .line 3313
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkitsec/WebHTMLMarkupData;

    goto :goto_13

    .line 3303
    :cond_3d
    :try_start_3d
    monitor-exit v2

    goto :goto_13

    .line 3311
    :catchall_3f
    move-exception v3

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw v3

    .line 3307
    :catch_42
    move-exception v0

    .line 3308
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_43
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_3f

    goto :goto_35
.end method

.method public getPlainText()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3317
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_14

    .line 3333
    :cond_13
    :goto_13
    return-object v2

    .line 3318
    :cond_14
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3319
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 3320
    :try_start_1a
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 3321
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_3a

    .line 3326
    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_3d
    .catchall {:try_start_2d .. :try_end_30} :catchall_3a

    .line 3331
    :goto_30
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_3a

    .line 3333
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_13

    .line 3323
    :cond_38
    :try_start_38
    monitor-exit v1

    goto :goto_13

    .line 3331
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3a

    throw v2

    .line 3327
    :catch_3d
    move-exception v0

    .line 3328
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3e
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_3e .. :try_end_4e} :catchall_3a

    goto :goto_30
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3337
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedHtmlText()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3129
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_14

    .line 3147
    :cond_13
    :goto_13
    return-object v2

    .line 3131
    :cond_14
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3132
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 3133
    :try_start_1a
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 3134
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x230

    invoke-virtual {v3, v4, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_3a

    .line 3139
    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_3d
    .catchall {:try_start_2d .. :try_end_30} :catchall_3a

    .line 3145
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_3a

    .line 3147
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_13

    .line 3136
    :cond_38
    :try_start_38
    monitor-exit v1

    goto :goto_13

    .line 3145
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3a

    throw v2

    .line 3140
    :catch_3d
    move-exception v0

    .line 3141
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3e
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_3e .. :try_end_4f} :catchall_3a

    goto :goto_13
.end method

.method public getSelectedImageRect()Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 2888
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_18

    :cond_12
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2913
    :goto_17
    return-object v4

    .line 2889
    :cond_18
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2890
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v3, -0x1

    .line 2891
    .local v3, "setValue":I
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 2892
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 2893
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 2894
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 2896
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2897
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->isComposerImageTouched()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 2898
    monitor-enter v2

    .line 2899
    :try_start_33
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_51

    .line 2900
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    const/16 v5, 0x227

    invoke-virtual {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_33 .. :try_end_46} :catchall_58

    .line 2905
    :try_start_46
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_49} :catch_5b
    .catchall {:try_start_46 .. :try_end_49} :catchall_58

    .line 2910
    :goto_49
    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_58

    .line 2913
    :cond_4a
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_17

    .line 2902
    :cond_51
    :try_start_51
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    monitor-exit v2

    goto :goto_17

    .line 2910
    :catchall_58
    move-exception v4

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_58

    throw v4

    .line 2906
    :catch_5b
    move-exception v0

    .line 2907
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5c
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_5c .. :try_end_6c} :catchall_58

    goto :goto_49
.end method

.method public getSelectedText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3151
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_f

    .line 3152
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 3154
    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public getSelectionEnd()I
    .registers 2

    .prologue
    .line 3394
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    return v0
.end method

.method public getSelectionHandleHeight()I
    .registers 2

    .prologue
    .line 3398
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3399
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebTextSelectionControls;->getHandleHeight()I

    move-result v0

    .line 3401
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getSelectionHandleWidth()I
    .registers 2

    .prologue
    .line 3405
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3406
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebTextSelectionControls;->getHandleWidth()I

    move-result v0

    .line 3408
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 3412
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_14
    new-instance v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    invoke-direct {v3, v4, v4}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    .line 3431
    :goto_19
    return-object v3

    .line 3414
    :cond_1a
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v5, v5}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3415
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    monitor-enter v2

    .line 3416
    :try_start_20
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 3417
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x201

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_50

    .line 3422
    :try_start_33
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_53
    .catchall {:try_start_33 .. :try_end_36} :catchall_50

    .line 3427
    :goto_36
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_50

    .line 3429
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 3431
    .local v1, "pnt":Landroid/graphics/Point;
    new-instance v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v5}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    goto :goto_19

    .line 3419
    .end local v1    # "pnt":Landroid/graphics/Point;
    :cond_47
    :try_start_47
    new-instance v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    monitor-exit v2

    goto :goto_19

    .line 3427
    :catchall_50
    move-exception v3

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_50

    throw v3

    .line 3423
    :catch_53
    move-exception v0

    .line 3424
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_54
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_54 .. :try_end_64} :catchall_50

    goto :goto_36
.end method

.method public getSelectionSec()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3162
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionStart()I
    .registers 2

    .prologue
    .line 3435
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    return v0
.end method

.method public getShiftKeyState()Z
    .registers 2

    .prologue
    .line 4118
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    return v0
.end method

.method public getStateInRichlyEditableText()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3374
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_14

    .line 3390
    :cond_13
    :goto_13
    return v2

    .line 3376
    :cond_14
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3377
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 3378
    :try_start_1f
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 3379
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21e

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_43

    .line 3384
    :try_start_32
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_46
    .catchall {:try_start_32 .. :try_end_35} :catchall_43

    .line 3388
    :goto_35
    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_43

    .line 3390
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_13

    .line 3381
    :cond_41
    :try_start_41
    monitor-exit v1

    goto :goto_13

    .line 3388
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_43

    throw v2

    .line 3385
    :catch_46
    move-exception v0

    .line 3386
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_47
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_43

    goto :goto_35
.end method

.method public getText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 3341
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 3342
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_8

    const-string v1, ""

    .line 3343
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    .line 3344
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    aget-char v0, v2, v3

    .line 3345
    .local v0, "chrVal":I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1c

    const-string v1, ""

    .line 3346
    :cond_1c
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getText() Not Null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    .end local v0    # "chrVal":I
    :cond_34
    return-object v1
.end method

.method public getTextAroundCursor(ILandroid/webkitsec/HtmlComposerView$CursorDirection;)Ljava/lang/String;
    .registers 9
    .param p1, "n"    # I
    .param p2, "cursorDirection"    # Landroid/webkitsec/HtmlComposerView$CursorDirection;

    .prologue
    const/4 v3, 0x0

    .line 3352
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_14

    .line 3370
    :cond_13
    :goto_13
    return-object v3

    .line 3354
    :cond_14
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p2, v1, v4

    .line 3355
    .local v1, "paramArray":[Ljava/lang/Object;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v1, v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3356
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v2

    .line 3357
    :try_start_27
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 3358
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x1fd

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_47

    .line 3363
    :try_start_3a
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_4a
    .catchall {:try_start_3a .. :try_end_3d} :catchall_47

    .line 3368
    :goto_3d
    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_47

    .line 3370
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_13

    .line 3360
    :cond_45
    :try_start_45
    monitor-exit v2

    goto :goto_13

    .line 3368
    :catchall_47
    move-exception v3

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw v3

    .line 3364
    :catch_4a
    move-exception v0

    .line 3365
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4b
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_47

    goto :goto_3d
.end method

.method public getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;
    .registers 2

    .prologue
    .line 3166
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    return-object v0
.end method

.method protected handle_onTouchEvent(IIIII)Z
    .registers 27
    .param p1, "action"    # I
    .param p2, "contentX"    # I
    .param p3, "contentY"    # I
    .param p4, "rawX"    # I
    .param p5, "rawY"    # I

    .prologue
    .line 1697
    packed-switch p1, :pswitch_data_7a0

    .line 1973
    :cond_3
    :goto_3
    const/16 v18, 0x0

    :goto_5
    return v18

    .line 1699
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1701
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_39

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_39

    .line 1702
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->delayedUpdateOutlineDrawRect()V

    .line 1703
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_CANCEL()V

    .line 1704
    const/16 v18, 0x1

    goto :goto_5

    .line 1707
    :cond_39
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 1708
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_3

    .line 1714
    :pswitch_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1716
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1717
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v10

    .line 1718
    .local v10, "imagerect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_cf

    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "     imagerect left ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " imagerect top  = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " imagerect right = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " imagerect bottom="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_cf
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_101

    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "     content X ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " content Y  = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_101
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_1a3

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_1a3

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_1a3

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-ge v0, v1, :cond_1a3

    .line 1722
    const-string v18, "HtmlComposerView"

    const-string v19, " image is touched and can be moved "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1730
    :goto_146
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_DOWN(IIII)V

    .line 1731
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16f

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1735
    :cond_16f
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->originalWidth:I

    .line 1736
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->originalHeight:I

    .line 1738
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_19f

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    :cond_19f
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 1726
    :cond_1a3
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    goto :goto_146

    .line 1744
    .end local v10    # "imagerect":Landroid/graphics/Rect;
    :pswitch_1ba
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1745
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2d1

    .line 1746
    const/4 v8, 0x0

    .line 1748
    .local v8, "imageHandlerHeight":I
    const/4 v5, 0x0

    .line 1750
    .local v5, "extraTouchArea":I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v11, v0, [I

    .line 1751
    .local v11, "locOnScreen":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1752
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    if-eqz v18, :cond_22c

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 1756
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_228

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_228

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_292

    .line 1757
    :cond_228
    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    .line 1762
    :cond_22c
    :goto_22c
    add-int v18, p5, v8

    sget-object v19, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    const/16 v20, 0x1

    aget v20, v11, v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_294

    .line 1763
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    sub-int v18, v18, v8

    sub-int v18, v18, p5

    add-int p3, p3, v18

    .line 1764
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    sub-int p5, v18, v8

    .line 1770
    :cond_266
    :goto_266
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    .line 1771
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v18, v0

    sub-int v18, p3, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    .line 1772
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_MOVE(II)V

    .line 1773
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1775
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 1759
    :cond_292
    const/4 v5, 0x0

    goto :goto_22c

    .line 1765
    :cond_294
    add-int v18, v8, v5

    sub-int v18, p5, v18

    sget-object v19, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    const/16 v20, 0x1

    aget v20, v11, v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_266

    .line 1766
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    add-int v18, v18, v8

    sub-int v18, v18, p5

    add-int p3, p3, v18

    .line 1767
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    add-int p5, v18, v8

    goto :goto_266

    .line 1776
    .end local v5    # "extraTouchArea":I
    .end local v8    # "imageHandlerHeight":I
    .end local v11    # "locOnScreen":[I
    :cond_2d1
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    if-eqz v18, :cond_30a

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    const/16 v19, 0x21c

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 1781
    :cond_30a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_352

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_352

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-lt v0, v1, :cond_352

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_368

    .line 1782
    :cond_352
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1786
    :cond_368
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1788
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 1795
    :pswitch_36f
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1797
    const-string v18, "HtmlComposerView"

    const-string/jumbo v19, "making selection set to true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 1800
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 1801
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3b5

    .line 1802
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    .line 1803
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 1807
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1810
    :cond_3b5
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCursorPressed()Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3c5

    .line 1812
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 1815
    :cond_3c5
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v14

    .line 1817
    .local v14, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v18, v0

    if-nez v18, :cond_461

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_461

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_461

    .line 1820
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedImageUri()Ljava/lang/String;

    move-result-object v9

    .line 1822
    .local v9, "imageUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_440

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;->onIsSAMMFile(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_440

    .line 1824
    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 1827
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1829
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 1831
    .local v12, "msg":Landroid/os/Message;
    const/16 v18, 0x502

    move/from16 v0, v18

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1832
    iput-object v9, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_43c

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1838
    :cond_43c
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 1840
    .end local v12    # "msg":Landroid/os/Message;
    :cond_440
    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is not a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/webkitsec/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 1845
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1847
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 1849
    .end local v9    # "imageUri":Ljava/lang/String;
    :cond_461
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1852
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_497

    .line 1853
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_UP(II)V

    .line 1854
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1859
    :cond_497
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v7

    .line 1860
    .local v7, "finalWidth":I
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v6

    .line 1862
    .local v6, "finalHeight":I
    const/4 v15, 0x0

    .line 1863
    .local v15, "sameImageFlag":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v13

    .line 1865
    .local v13, "oldImageRect":Landroid/graphics/Rect;
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_507

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_507

    .line 1866
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_507

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_507

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_507

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_507

    .line 1868
    const/4 v15, 0x1

    .line 1871
    :cond_507
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_60b

    .line 1872
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_534

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v6, :cond_534

    .line 1873
    const-string v18, "HtmlComposerView"

    const-string v19, "Image isn\'t going to resize "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :goto_530
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 1875
    :cond_534
    const-string v18, "HtmlComposerView"

    const-string v19, "doResizeImage called - Image is going to resize "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v17

    .line 1879
    .local v17, "selectedImgRect":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5e0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5e0

    .line 1880
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_58c

    mul-int/lit8 v18, v6, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000

    cmpl-float v18, v18, v19

    if-gez v18, :cond_5d5

    :cond_58c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v6, :cond_5ab

    mul-int/lit8 v18, v7, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000

    cmpl-float v18, v18, v19

    if-gez v18, :cond_5d5

    :cond_5ab
    mul-int/lit8 v18, v7, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_5fb

    mul-int/lit8 v18, v6, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_5fb

    .line 1883
    :cond_5d5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Landroid/webkitsec/HtmlComposerView;->doResizeImage(II)V

    .line 1884
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1886
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->delayedUpdateOutlineDrawRect()V

    .line 1892
    :cond_5e0
    :goto_5e0
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 1893
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 1895
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto/16 :goto_530

    .line 1888
    :cond_5fb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    goto :goto_5e0

    .line 1901
    .end local v17    # "selectedImgRect":Landroid/graphics/Rect;
    :cond_60b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v18, v0

    if-nez v18, :cond_663

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_663

    .line 1902
    const-string v18, "InsertHTML"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->insertImageContent(Ljava/lang/String;)V

    .line 1904
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1905
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 1906
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 1908
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 1910
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearSelection()V

    .line 1912
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1914
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 1917
    :cond_663
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_68b

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_68b

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-lt v0, v1, :cond_68b

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_6ad

    .line 1918
    :cond_68b
    const-string v18, "HtmlComposerView"

    const-string v19, "User taps outside of an image rect. We will release the selection"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->isCursorAtBoundary(II)I

    move-result v18

    if-nez v18, :cond_6a9

    .line 1921
    const-string v18, "HtmlComposerView"

    const-string v19, "Boundary is not touched"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 1924
    :cond_6a9
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 1928
    :cond_6ad
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_777

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_777

    if-nez v15, :cond_777

    .line 1930
    const-string v18, "HtmlComposerView"

    const-string v19, "A other image is selected."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v16

    .line 1934
    .local v16, "selectedImageRect":Landroid/graphics/Rect;
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedImageUri()Ljava/lang/String;

    move-result-object v9

    .line 1935
    .restart local v9    # "imageUri":Ljava/lang/String;
    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Selected Image\'s url = ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_749

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;->onIsSAMMFile(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_749

    .line 1938
    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 1941
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1943
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 1944
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v18, 0x502

    move/from16 v0, v18

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1945
    iput-object v9, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1947
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_745

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1951
    :cond_745
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 1953
    .end local v12    # "msg":Landroid/os/Message;
    :cond_749
    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is not a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_773

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_773

    .line 1958
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 1960
    :cond_773
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 1963
    .end local v9    # "imageUri":Ljava/lang/String;
    .end local v16    # "selectedImageRect":Landroid/graphics/Rect;
    :cond_777
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_3

    .line 1964
    const-string v18, "HtmlComposerView"

    const-string v19, "The current selected image is tapped."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 1697
    :pswitch_data_7a0
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_36f
        :pswitch_1ba
        :pswitch_6
    .end packed-switch
.end method

.method public hideInsertionController()V
    .registers 1

    .prologue
    .line 3443
    return-void
.end method

.method public htmlLength()I
    .registers 2

    .prologue
    .line 3446
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public initComposerState()V
    .registers 2

    .prologue
    .line 3450
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3451
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3452
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3454
    :cond_c
    return-void
.end method

.method initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imagetRect1"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, -0x1

    const/high16 v8, 0x40000000

    .line 5038
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    .line 5039
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 5041
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 5042
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 5043
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40800000

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    .line 5044
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 5045
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 5046
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 5047
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 5049
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    .line 5050
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    .line 5051
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 5052
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 5053
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 5054
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 5057
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->lt_height:I

    .line 5058
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->lt_width:I

    .line 5061
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rt_height:I

    .line 5062
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rt_width:I

    .line 5064
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->lb_height:I

    .line 5065
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->lb_width:I

    .line 5068
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_height:I

    .line 5069
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_width:I

    .line 5071
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_height:I

    .line 5072
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_width:I

    .line 5074
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rm_height:I

    .line 5075
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rm_width:I

    .line 5078
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->lm_height:I

    .line 5079
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->lm_width:I

    .line 5081
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->bm_height:I

    .line 5082
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->bm_width:I

    .line 5084
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 5086
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    .line 5088
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5089
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5090
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 5091
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 5092
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 5093
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 5094
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 5096
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 5097
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 5098
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 5099
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 5101
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5103
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 5104
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mTouchSlop:I

    .line 5106
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    .line 5107
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    .line 5108
    return-void
.end method

.method public insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z
    .registers 7
    .param p1, "contentFragment"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 3457
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    .line 3459
    .local v0, "selectionType":I
    sget-object v2, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    if-ne p2, v2, :cond_1d

    .line 3460
    const-string v2, "MoveToBeginningOfDocument"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3465
    :cond_f
    :goto_f
    const-string v2, "InsertHTML"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const/4 v1, 0x0

    .line 3475
    :goto_1c
    return v1

    .line 3462
    :cond_1d
    sget-object v2, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    if-ne p2, v2, :cond_f

    .line 3463
    const-string v2, "MoveToEndOfDocument"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_f

    .line 3468
    :cond_27
    if-ne v1, v0, :cond_32

    .line 3469
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 3473
    :goto_2c
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_1c

    .line 3471
    :cond_32
    invoke-virtual {p0, v1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_2c
.end method

.method public insertImage(Ljava/lang/String;IIZ)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "widthInPixel"    # I
    .param p3, "heightInPixel"    # I
    .param p4, "bEditing"    # Z

    .prologue
    .line 3517
    const/4 v0, 0x1

    if-ne v0, p4, :cond_19

    .line 3518
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage()V

    .line 3519
    const-string v0, "Delete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3520
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebView;->clearCache(Z)V

    .line 3521
    if-eqz p1, :cond_15

    .line 3522
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    .line 3525
    :cond_15
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->resetSelection()V

    .line 3529
    :goto_18
    return-void

    .line 3527
    :cond_19
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    goto :goto_18
.end method

.method public insertImage(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bEditing"    # Z

    .prologue
    .line 3569
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    .line 3570
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage()V

    .line 3571
    const-string v0, "Delete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3572
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebView;->clearCache(Z)V

    .line 3573
    if-eqz p1, :cond_15

    .line 3574
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    .line 3577
    :cond_15
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->resetSelection()V

    .line 3581
    :goto_18
    return-void

    .line 3579
    :cond_19
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    goto :goto_18
.end method

.method public insertImage(Ljava/lang/String;)Z
    .registers 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3533
    if-nez p1, :cond_5

    .line 3558
    :cond_4
    :goto_4
    return v2

    .line 3535
    :cond_5
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3537
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3539
    .local v1, "selectionType":I
    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<img src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3540
    .local v0, "imgMarkup":Ljava/lang/String;
    const-string v4, "InsertHTML"

    invoke-virtual {p0, v4, v0}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3547
    if-ne v3, v1, :cond_45

    .line 3548
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 3552
    :goto_37
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3555
    const-string v2, "image inserted"

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3556
    const v2, 0x102040a

    sput v2, Landroid/webkitsec/HtmlComposerView;->operSel:I

    move v2, v3

    .line 3558
    goto :goto_4

    .line 3550
    :cond_45
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_37
.end method

.method public insertImage(Ljava/lang/String;II)Z
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "widthInPixel"    # I
    .param p3, "heightInPixel"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3479
    if-nez p1, :cond_5

    .line 3504
    :cond_4
    :goto_4
    return v2

    .line 3481
    :cond_5
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3483
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3485
    .local v1, "selectionType":I
    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<img src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3486
    .local v0, "imgMarkup":Ljava/lang/String;
    const-string v4, "InsertHTML"

    invoke-virtual {p0, v4, v0}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3493
    if-ne v3, v1, :cond_59

    .line 3494
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 3498
    :goto_4b
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3501
    const-string v2, "image inserted"

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3502
    const v2, 0x102040a

    sput v2, Landroid/webkitsec/HtmlComposerView;->operSel:I

    move v2, v3

    .line 3504
    goto :goto_4

    .line 3496
    :cond_59
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_4b
.end method

.method public insertOrderedList()V
    .registers 3

    .prologue
    .line 2193
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2194
    const-string v0, "InsertOrderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2196
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2197
    return-void
.end method

.method public insertSubscript()V
    .registers 3

    .prologue
    .line 2206
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2207
    const-string v0, "Superscript"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2209
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2210
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 2211
    return-void
.end method

.method public insertSuperscript()V
    .registers 3

    .prologue
    .line 2214
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2215
    const-string v0, "Subscript"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2217
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2218
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 2219
    return-void
.end method

.method public insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .registers 10
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "newCursorPosition"    # I
    .param p3, "composing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/webkitsec/HtmlComposerView$SelectionOffset;"
        }
    .end annotation

    .prologue
    .local p4, "spanData":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;>;"
    const/4 v3, -0x1

    .line 3586
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_19

    :cond_13
    new-instance v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    invoke-direct {v2, v3, v3}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    .line 3607
    :goto_18
    return-object v2

    .line 3588
    :cond_19
    new-instance v1, Landroid/webkitsec/WebViewCore$EditableParams;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkitsec/WebViewCore$EditableParams;-><init>(Landroid/webkitsec/WebViewCore;)V

    .line 3589
    .local v1, "editableParams":Landroid/webkitsec/WebViewCore$EditableParams;
    iput-object p1, v1, Landroid/webkitsec/WebViewCore$EditableParams;->content:Ljava/lang/String;

    .line 3590
    iput p2, v1, Landroid/webkitsec/WebViewCore$EditableParams;->newCursorPosition:I

    .line 3591
    iput-boolean p3, v1, Landroid/webkitsec/WebViewCore$EditableParams;->composing:Z

    .line 3592
    iput-object p4, v1, Landroid/webkitsec/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    .line 3594
    monitor-enter v1

    .line 3595
    :try_start_30
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 3596
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x218

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_5a

    .line 3601
    :try_start_43
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_46} :catch_5d
    .catchall {:try_start_43 .. :try_end_46} :catchall_5a

    .line 3605
    :goto_46
    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_5a

    .line 3607
    new-instance v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    iget v3, v1, Landroid/webkitsec/WebViewCore$EditableParams;->startOffset:I

    iget v4, v1, Landroid/webkitsec/WebViewCore$EditableParams;->endOffset:I

    invoke-direct {v2, v3, v4}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    goto :goto_18

    .line 3598
    :cond_51
    :try_start_51
    new-instance v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    monitor-exit v1

    goto :goto_18

    .line 3605
    :catchall_5a
    move-exception v2

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_5a

    throw v2

    .line 3602
    :catch_5d
    move-exception v0

    .line 3603
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5e
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_5a

    goto :goto_46
.end method

.method public insertUnorderedList()V
    .registers 3

    .prologue
    .line 2200
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2201
    const-string v0, "InsertUnorderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2203
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2204
    return-void
.end method

.method public invokeTexttoSpeech(I)V
    .registers 8
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 3612
    const/4 v1, 0x0

    .local v1, "beforeStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3614
    .local v0, "aftStr":Ljava/lang/String;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_e

    const-string v2, "HtmlComposerView"

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    :cond_e
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1e

    .line 3618
    :cond_1a
    const-string v2, ""

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 3621
    :cond_1e
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2e

    .line 3623
    :cond_2a
    const-string v2, ""

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3626
    :cond_2e
    const v2, 0x1020022

    if-ne p1, v2, :cond_a0

    .line 3628
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_92

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_92

    .line 3630
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3640
    :goto_4b
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_68

    .line 3641
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "paste operations "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    :cond_68
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 3680
    :cond_6a
    :goto_6a
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2, v0}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 3681
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2, v1}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 3682
    if-eqz v0, :cond_da

    .line 3683
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->textToSpeech(II)V

    .line 3686
    :goto_81
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 3687
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 3688
    sput v5, Landroid/webkitsec/HtmlComposerView;->operSel:I

    .line 3689
    :cond_91
    :goto_91
    return-void

    .line 3634
    :cond_92
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 3635
    const-string v0, "Images inserted"

    goto :goto_4b

    .line 3637
    :cond_9d
    const-string v0, "Images"

    goto :goto_4b

    .line 3646
    :cond_a0
    const v2, 0x1020020

    if-ne p1, v2, :cond_aa

    .line 3648
    const-string v0, ""

    .line 3649
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    goto :goto_6a

    .line 3651
    :cond_aa
    const v2, 0x1020408

    if-ne p1, v2, :cond_bc

    .line 3653
    const-string v0, ""

    .line 3654
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 3656
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6a

    goto :goto_91

    .line 3659
    :cond_bc
    const v2, 0x102040a

    if-ne p1, v2, :cond_c6

    .line 3661
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3662
    const-string v1, ""

    goto :goto_6a

    .line 3664
    :cond_c6
    const/16 v2, 0xf

    if-ne p1, v2, :cond_91

    .line 3667
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3669
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_d7

    .line 3670
    const-string v2, "HtmlComposerView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    :cond_d7
    const-string v1, ""

    goto :goto_6a

    .line 3685
    :cond_da
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v5, v2}, Landroid/webkitsec/HtmlComposerView;->textToSpeech(II)V

    goto :goto_81
.end method

.method public isAccessibilitySelectionExtendable()Z
    .registers 2

    .prologue
    .line 1159
    const/4 v0, 0x1

    return v0
.end method

.method public isBodyEmpty()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3691
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_14

    .line 3709
    :cond_13
    :goto_13
    return v3

    .line 3693
    :cond_14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3694
    .local v0, "bodyEmpty":Ljava/lang/Boolean;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3695
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 3696
    :try_start_1f
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 3697
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x212

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_43

    .line 3702
    :try_start_32
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_46
    .catchall {:try_start_32 .. :try_end_35} :catchall_43

    .line 3707
    :goto_35
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_43

    .line 3709
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_13

    .line 3699
    :cond_41
    :try_start_41
    monitor-exit v2

    goto :goto_13

    .line 3707
    :catchall_43
    move-exception v3

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_43

    throw v3

    .line 3703
    :catch_46
    move-exception v1

    .line 3704
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_47
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_43

    goto :goto_35
.end method

.method public isComposerImageTouched()Z
    .registers 2

    .prologue
    .line 6378
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    return v0
.end method

.method public isInActionMove()Z
    .registers 2

    .prologue
    .line 3125
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    return v0
.end method

.method public isInputMethodTarget()Z
    .registers 3

    .prologue
    .line 3717
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3718
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isInsertionControllerShowing()Z
    .registers 2

    .prologue
    .line 3439
    const/4 v0, 0x0

    return v0
.end method

.method public isMagnifierVisible()Z
    .registers 2

    .prologue
    .line 3722
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_10

    .line 3723
    const/4 v0, 0x1

    .line 3725
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isSelectionHandleShown()Z
    .registers 2

    .prologue
    .line 3729
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    return v0
.end method

.method public isTouchedOutside(II)Z
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 3170
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v6

    if-nez v6, :cond_14

    .line 3192
    :cond_13
    :goto_13
    return v5

    .line 3172
    :cond_14
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3174
    .local v3, "rect":Landroid/graphics/Rect;
    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    .line 3176
    .local v2, "paramArray":[Ljava/lang/Object;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3177
    .local v1, "isOutside":Ljava/lang/Boolean;
    new-instance v4, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v4, p0, v2, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3179
    .local v4, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v4

    .line 3180
    :try_start_33
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v6

    if-eqz v6, :cond_55

    .line 3181
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v5

    const/16 v6, 0x22e

    invoke-virtual {v5, v6, v4}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_33 .. :try_end_46} :catchall_57

    .line 3186
    :try_start_46
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_49} :catch_5a
    .catchall {:try_start_46 .. :try_end_49} :catchall_57

    .line 3191
    :goto_49
    :try_start_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_57

    .line 3192
    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_13

    .line 3183
    :cond_55
    :try_start_55
    monitor-exit v4

    goto :goto_13

    .line 3191
    :catchall_57
    move-exception v5

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_57

    throw v5

    .line 3187
    :catch_5a
    move-exception v0

    .line 3188
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5b
    const-string v5, "HtmlComposerView"

    const-string v6, "Caught exception while waiting for overrideUrl"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    const-string v5, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_57

    goto :goto_49
.end method

.method public isVisibleCursorHandler(I)V
    .registers 7
    .param p1, "event"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2079
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleCursorHandler : event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    packed-switch p1, :pswitch_data_88

    .line 2128
    :cond_1d
    :goto_1d
    :pswitch_1d
    return-void

    .line 2083
    :pswitch_1e
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_1d

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1d

    .line 2084
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->show()V

    .line 2085
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_1d

    .line 2089
    :pswitch_2e
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    goto :goto_1d

    .line 2092
    :pswitch_31
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_1d

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_1d

    .line 2094
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 2095
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_1d

    .line 2099
    :pswitch_49
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_61

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_61

    .line 2100
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_1d

    .line 2101
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 2102
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_1d

    .line 2105
    :cond_61
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    if-ne v0, v3, :cond_68

    .line 2106
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    goto :goto_1d

    .line 2108
    :cond_68
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->createToolTip()V

    goto :goto_1d

    .line 2114
    :pswitch_6c
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_74

    .line 2115
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->createToolTip()V

    goto :goto_1d

    .line 2119
    :cond_74
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2120
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->show()V

    .line 2121
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_1d

    .line 2081
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_2e
        :pswitch_49
        :pswitch_31
        :pswitch_6c
    .end packed-switch
.end method

.method public isVisibleCursorhandlerListener(Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;)V
    .registers 2
    .param p1, "mCursorHandlerListener"    # Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    .prologue
    .line 3197
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    .line 3198
    return-void
.end method

.method public length()I
    .registers 2

    .prologue
    .line 3733
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public loadHtmlFile(Ljava/lang/String;)V
    .registers 4
    .param p1, "htmlFilePath"    # Ljava/lang/String;

    .prologue
    .line 3737
    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3739
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 3740
    return-void
.end method

.method public moveCursorBegining()V
    .registers 3

    .prologue
    .line 3743
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3744
    const-string v0, "MoveToBeginningOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3745
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3746
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 3747
    return-void
.end method

.method public moveCursorEnd()V
    .registers 3

    .prologue
    .line 3750
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3751
    const-string v0, "MoveToEndOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3752
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3753
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 3754
    return-void
.end method

.method public moveCursorSelectionToBeginningOfDocument()V
    .registers 3

    .prologue
    .line 3761
    const-string v0, "MoveToBeginningOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3762
    return-void
.end method

.method public moveCursorSelectionToBeginningOfLine()V
    .registers 3

    .prologue
    .line 3765
    const-string v0, "MoveToBeginningOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3766
    return-void
.end method

.method public moveCursorSelectionToEndOfDocument()V
    .registers 3

    .prologue
    .line 3769
    const-string v0, "MoveToEndOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3770
    return-void
.end method

.method public moveCursorSelectionToEndOfLine()V
    .registers 3

    .prologue
    .line 3773
    const-string v0, "MoveToRightEndOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3774
    return-void
.end method

.method public moveCursorSelectionToPageDown()V
    .registers 3

    .prologue
    .line 3801
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3802
    const-string v0, "MovePageDownAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3803
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3804
    return-void
.end method

.method public moveCursorSelectionToPageUp()V
    .registers 3

    .prologue
    .line 3807
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3808
    const-string v0, "MovePageUpAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3809
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3810
    return-void
.end method

.method public moveCursorToBeginningOfLine()V
    .registers 3

    .prologue
    .line 3777
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3778
    const-string v0, "MoveToBeginningOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3779
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3780
    return-void
.end method

.method public moveCursorToEndOfLine()V
    .registers 3

    .prologue
    .line 3783
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3784
    const-string v0, "MoveToEndOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3785
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3786
    return-void
.end method

.method public moveCursorToPageDown()V
    .registers 3

    .prologue
    .line 3789
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3790
    const-string v0, "MovePageDown"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3791
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3792
    return-void
.end method

.method public moveCursorToPageUp()V
    .registers 3

    .prologue
    .line 3795
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3796
    const-string v0, "MovePageUp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3797
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3798
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 582
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 584
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    if-nez v1, :cond_17

    .line 585
    new-instance v1, Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/HtmlComposerView$StylusEventListener;-><init>(Landroid/webkitsec/HtmlComposerView;Landroid/webkitsec/HtmlComposerView$1;)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 586
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewTreeObserver;->addOnStylusButtonEventListener(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    .line 589
    :cond_17
    invoke-super {p0}, Landroid/webkitsec/WebView;->onAttachedToWindow()V

    .line 590
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 1198
    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 1183
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1184
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, v2, Landroid/webkitsec/WebViewClassic;->maxArrayLimit:I

    new-array v2, v2, [I

    iput-object v2, v1, Landroid/webkitsec/WebViewClassic;->composerContentHeightArray:[I

    .line 1185
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    .line 1186
    .local v0, "selectionType":I
    if-ne v3, v0, :cond_27

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-nez v1, :cond_27

    .line 1188
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    if-eqz v1, :cond_23

    .line 1189
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    invoke-interface {v1, v3}, Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;->onSelectionChanged(I)V

    .line 1191
    :cond_23
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 1194
    :cond_27
    return-void
.end method

.method public onContextMenuItem(I)Z
    .registers 11
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 626
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 628
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    .line 630
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 632
    sparse-switch p1, :sswitch_data_1ca

    .line 782
    :cond_11
    :goto_11
    return v4

    .line 636
    :sswitch_12
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 638
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    if-ne v5, v3, :cond_55

    .line 639
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 640
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 644
    :goto_1d
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    .line 646
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v3, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 647
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_58

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_3a
    iput v3, v6, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 648
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 649
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 650
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 652
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 653
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 654
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    move v4, v5

    .line 655
    goto :goto_11

    .line 642
    :cond_55
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    goto :goto_1d

    :cond_58
    move v3, v4

    .line 647
    goto :goto_3a

    .line 659
    :sswitch_5a
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 660
    .local v0, "cursurRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_11

    .line 662
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/webkitsec/WebViewClassic;->setTextSelecitonManualAtContentPoint(II)Z

    .line 663
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 665
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    move v4, v5

    .line 666
    goto :goto_11

    .line 669
    .end local v0    # "cursurRect":Landroid/graphics/Rect;
    :sswitch_75
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 670
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 671
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->cut()V

    .line 672
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 673
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 674
    const v3, 0x1020020

    sput v3, Landroid/webkitsec/HtmlComposerView;->operSel:I

    .line 675
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 676
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 677
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 679
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_ba

    .line 681
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 683
    const-string v3, " image "

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 684
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkitsec/HtmlComposerView;->setEditableSelection(II)V

    .line 685
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-object v6, v3, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    :cond_ba
    move v4, v5

    .line 687
    goto/16 :goto_11

    .line 690
    :sswitch_bd
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 692
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    .line 693
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 694
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->cut()V

    .line 695
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 696
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 697
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 698
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 699
    const v3, 0x1020408

    sput v3, Landroid/webkitsec/HtmlComposerView;->operSel:I

    .line 701
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_104

    .line 703
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 705
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkitsec/HtmlComposerView;->setEditableSelection(II)V

    .line 706
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-object v6, v3, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 707
    const-string v3, " images "

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    :cond_104
    move v4, v5

    .line 710
    goto/16 :goto_11

    .line 713
    :sswitch_107
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->copy()V

    .line 714
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->isSelectionHandleShown()Z

    move-result v3

    if-ne v5, v3, :cond_113

    .line 715
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->setCursorFromRangeSelection()V

    .line 717
    :cond_113
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 718
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    move v4, v5

    .line 719
    goto/16 :goto_11

    .line 724
    :sswitch_11c
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    .line 726
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->copy()V

    .line 727
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->setCursorFromRangeSelection()V

    move v4, v5

    .line 729
    goto/16 :goto_11

    .line 732
    :sswitch_12a
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebClipboard;->getHTMLForCheckingSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkitsec/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v3

    if-nez v3, :cond_171

    .line 734
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v8, 0x1040b45

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v8, 0x1040b46

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 735
    goto/16 :goto_11

    .line 737
    :cond_171
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-nez v3, :cond_17d

    .line 739
    const-string v3, ""

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 742
    :cond_17d
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v2

    .line 744
    .local v2, "selectionType":I
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->paste()V

    .line 746
    if-ne v5, v2, :cond_191

    .line 747
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 751
    :goto_189
    const v3, 0x1020022

    sput v3, Landroid/webkitsec/HtmlComposerView;->operSel:I

    move v4, v5

    .line 752
    goto/16 :goto_11

    .line 749
    :cond_191
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_189

    .line 760
    .end local v2    # "selectionType":I
    :sswitch_195
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v3, v4}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 761
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebClipboard;->launchClipboardUI()V

    move v4, v5

    .line 762
    goto/16 :goto_11

    .line 765
    :sswitch_1a8
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 766
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->undo()V

    .line 767
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    .line 768
    goto/16 :goto_11

    .line 771
    :sswitch_1b4
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->redo()V

    .line 772
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    .line 773
    goto/16 :goto_11

    .line 776
    :sswitch_1bd
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 777
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1c6

    .line 778
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_1c6
    move v4, v5

    .line 780
    goto/16 :goto_11

    .line 632
    nop

    :sswitch_data_1ca
    .sparse-switch
        0x65 -> :sswitch_1b4
        0x2711 -> :sswitch_1a8
        0x102001f -> :sswitch_12
        0x1020020 -> :sswitch_75
        0x1020021 -> :sswitch_107
        0x1020022 -> :sswitch_12a
        0x1020024 -> :sswitch_1bd
        0x1020028 -> :sswitch_5a
        0x1020408 -> :sswitch_bd
        0x1020409 -> :sswitch_11c
        0x102040a -> :sswitch_195
    .end sparse-switch
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 7
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1203
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onCreateInputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    if-ne v4, v1, :cond_1a

    .line 1206
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1207
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "allowEmoji"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1208
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 1211
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1a
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    if-nez v1, :cond_28

    .line 1212
    const-string v1, "HtmlComposerView"

    const-string v2, "calling set Caret 0 0 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-virtual {p0, v3, v3}, Landroid/webkitsec/HtmlComposerView;->setEditableSelection(II)V

    .line 1217
    :cond_28
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x4000

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1224
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 1225
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 1227
    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1228
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1230
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->sendEventToUpdateToolbar()V

    .line 1232
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onCreateInputConnection End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 594
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 596
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    if-eqz v1, :cond_10

    .line 597
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    .line 598
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 601
    :cond_10
    invoke-super {p0}, Landroid/webkitsec/WebView;->onDetachedFromWindow()V

    .line 602
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 25
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1251
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    .line 1253
    .local v3, "action":I
    packed-switch v3, :pswitch_data_226

    .line 1350
    const/16 v18, 0x0

    :goto_9
    return v18

    .line 1255
    :pswitch_a
    const-string v18, "HtmlComposerView"

    const-string v19, "DragEvent.ACTION_DRAG_STARTED"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v18

    if-nez v18, :cond_1d

    .line 1258
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->resetSelection()V

    .line 1259
    const/16 v18, 0x1

    goto :goto_9

    .line 1262
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v14

    .line 1264
    .local v14, "selectedText":Ljava/lang/String;
    if-eqz v14, :cond_29

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->saveSelection()V

    .line 1266
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->setCursorFromRangeSelection()V

    .line 1269
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v16

    .line 1270
    .local v16, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v17

    .line 1272
    .local v17, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    if-eqz v18, :cond_70

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    if-eqz v18, :cond_70

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    const/16 v19, 0x21c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v21

    invoke-virtual/range {v18 .. v21}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 1276
    :cond_70
    const/16 v18, 0x1

    goto :goto_9

    .line 1278
    .end local v14    # "selectedText":Ljava/lang/String;
    .end local v16    # "x":F
    .end local v17    # "y":F
    :pswitch_73
    const-string v18, "HtmlComposerView"

    const-string v19, "DragEvent.ACTION_DRAG_ENTERED"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v18

    if-nez v18, :cond_8b

    .line 1280
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 1281
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 1283
    :cond_8b
    const/16 v18, 0x1

    goto/16 :goto_9

    .line 1285
    :pswitch_8f
    const-string v18, "HtmlComposerView"

    const-string v19, "DragEvent.ACTION_DRAG_LOCATION"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v16

    .line 1287
    .restart local v16    # "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v17

    .line 1289
    .restart local v17    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    if-eqz v18, :cond_e6

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    const/16 v19, 0x21c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v21

    invoke-virtual/range {v18 .. v21}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 1291
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 1294
    :cond_e6
    const/16 v18, 0x1

    goto/16 :goto_9

    .line 1296
    .end local v16    # "x":F
    .end local v17    # "y":F
    :pswitch_ea
    const-string v18, "HtmlComposerView"

    const-string v19, "DragEvent.ACTION_DRAG_EXITED"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/16 v18, 0x1

    goto/16 :goto_9

    .line 1299
    :pswitch_f5
    const-string v18, "HtmlComposerView"

    const-string v19, "DragEvent.ACTION_DROP"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v16

    .line 1301
    .restart local v16    # "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v17

    .line 1303
    .restart local v17    # "y":F
    const/4 v11, 0x0

    .local v11, "plainText":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "htmlText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1304
    .local v4, "contentUri":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1305
    .local v12, "sbForHTML":Ljava/lang/StringBuffer;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 1307
    .local v13, "sbForText":Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    .line 1308
    .local v6, "data":Landroid/content/ClipData;
    invoke-virtual {v6}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    .line 1310
    .local v7, "description":Landroid/content/ClipDescription;
    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    .line 1312
    .local v5, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_11e
    if-ge v9, v5, :cond_19f

    .line 1313
    invoke-virtual {v6, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .line 1315
    .local v10, "item":Landroid/content/ClipData$Item;
    if-nez v10, :cond_129

    .line 1312
    :cond_126
    :goto_126
    add-int/lit8 v9, v9, 0x1

    goto :goto_11e

    .line 1317
    :cond_129
    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_164

    .line 1318
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_159

    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DragEvent.ACTION_DROP HTML = ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :cond_159
    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    goto :goto_126

    .line 1321
    :cond_164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 1322
    .local v15, "str":Ljava/lang/CharSequence;
    if-eqz v15, :cond_126

    .line 1323
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19a

    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DragEvent.ACTION_DROP sbForText = ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_19a
    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v13

    goto :goto_126

    .line 1329
    .end local v10    # "item":Landroid/content/ClipData$Item;
    .end local v15    # "str":Ljava/lang/CharSequence;
    :cond_19f
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    if-lez v18, :cond_1de

    .line 1330
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->dropTheDraggedText(II)V

    .line 1332
    const-string v18, "InsertHtml"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1340
    :cond_1d7
    :goto_1d7
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->sendEventToUpdateToolbar()V

    .line 1342
    const/16 v18, 0x1

    goto/16 :goto_9

    .line 1333
    :cond_1de
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    if-lez v18, :cond_1d7

    .line 1334
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->dropTheDraggedText(II)V

    .line 1336
    invoke-static {v11}, Landroid/webkitsec/HtmlComposerViewUtils;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1337
    const-string v18, "InsertHtml"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1d7

    .line 1344
    .end local v4    # "contentUri":Ljava/lang/String;
    .end local v5    # "count":I
    .end local v6    # "data":Landroid/content/ClipData;
    .end local v7    # "description":Landroid/content/ClipDescription;
    .end local v8    # "htmlText":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "plainText":Ljava/lang/String;
    .end local v12    # "sbForHTML":Ljava/lang/StringBuffer;
    .end local v13    # "sbForText":Ljava/lang/StringBuffer;
    .end local v16    # "x":F
    .end local v17    # "y":F
    :pswitch_21b
    const-string v18, "HtmlComposerView"

    const-string v19, "DragEvent.ACTION_DRAG_ENDED"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/16 v18, 0x1

    goto/16 :goto_9

    .line 1253
    :pswitch_data_226
    .packed-switch 0x1
        :pswitch_a
        :pswitch_8f
        :pswitch_f5
        :pswitch_21b
        :pswitch_73
        :pswitch_ea
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1240
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget v0, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1f

    .line 1241
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  --- Ondraw  -clearSelection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    .line 1243
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearSelection()V

    .line 1245
    :cond_1f
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1246
    return-void
.end method

.method public onEditorAction(I)V
    .registers 5
    .param p1, "actionCode"    # I

    .prologue
    const/16 v2, 0x82

    .line 3818
    const/4 v1, 0x5

    if-ne p1, v1, :cond_19

    .line 3819
    invoke-virtual {p0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 3820
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_20

    .line 3821
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 3822
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3829
    .end local v0    # "v":Landroid/view/View;
    :cond_19
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3830
    :cond_20
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 9
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1357
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    invoke-super {p0, p1, p2, p3}, Landroid/webkitsec/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1359
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 1360
    if-nez p1, :cond_42

    .line 1361
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 1363
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    .line 1366
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 1369
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 1371
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1385
    :cond_30
    :goto_30
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1386
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1388
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v4, v0, :cond_41

    .line 1389
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 1390
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->clearActionModes()V

    .line 1392
    :cond_41
    return-void

    .line 1373
    :cond_42
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 1374
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebClipboard;->updateClipboardUI()V

    .line 1377
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1378
    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "onFocus calling invokeTexttoSpeech()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_30
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 1397
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_30

    .line 1399
    :try_start_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_35

    .line 1400
    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent ACTION_HOVER_ENTER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 1403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1404
    .local v0, "contentX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2e} :catch_54

    move-result v3

    float-to-int v3, v3

    .line 1450
    .end local v0    # "contentX":I
    :cond_30
    :goto_30
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 1406
    :cond_35
    :try_start_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_56

    .line 1407
    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent ACTION_HOVER_EXIT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 1409
    const/4 v3, -0x1

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 1410
    const/4 v3, -0x1

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 1411
    const/4 v3, -0x1

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto :goto_30

    .line 1446
    :catch_54
    move-exception v3

    goto :goto_30

    .line 1412
    :cond_56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_30

    .line 1413
    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent ACTION_HOVER_MOVE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1416
    .restart local v0    # "contentX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1418
    .local v1, "contentY":I
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->isHoverPointWithinIconAreaForResizing(II)Z

    move-result v3

    if-ne v5, v3, :cond_96

    .line 1419
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_81

    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent true == isHoverPointWithinIconAreaForResizing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_81
    const/4 v2, 0x1

    .line 1423
    .local v2, "pointerIconType":I
    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    packed-switch v3, :pswitch_data_9c

    .line 1441
    :goto_87
    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    goto :goto_30

    .line 1425
    :pswitch_8c
    const/16 v2, 0x8

    .line 1426
    goto :goto_87

    .line 1429
    :pswitch_8f
    const/16 v2, 0x9

    .line 1430
    goto :goto_87

    .line 1433
    :pswitch_92
    const/4 v2, 0x7

    .line 1434
    goto :goto_87

    .line 1437
    :pswitch_94
    const/4 v2, 0x6

    goto :goto_87

    .line 1443
    .end local v2    # "pointerIconType":I
    :cond_96
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_9b} :catch_54

    goto :goto_30

    .line 1423
    :pswitch_data_9c
    .packed-switch 0x1080660
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_94
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1057
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1059
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_f

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onInitializeAccessibilityEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_f
    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1063
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_45

    .line 1064
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_2c

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onInitializeAccessibilityEvent selection changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_2c
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 1066
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 1067
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "curText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 1070
    .end local v0    # "curText":Ljava/lang/String;
    :cond_45
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1074
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1076
    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1078
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "curText":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 1083
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2c

    .line 1084
    const/16 v1, 0x100

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1085
    const/16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1086
    const/16 v1, 0x1f

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 1093
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1094
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v1

    if-lez v1, :cond_3d

    .line 1095
    const/high16 v1, 0x20000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1097
    :cond_3d
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1098
    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1100
    :cond_48
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1101
    const v1, 0x8000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1103
    :cond_54
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1104
    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1107
    :cond_5f
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 1467
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_1e

    .line 1468
    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "htmlcompor onKeyDown "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_1e
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v5, v6, :cond_2a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ge v5, v6, :cond_2a

    .line 1478
    iput-boolean v9, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1484
    :cond_2a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1491
    const/16 v6, 0x37

    if-eq p1, v6, :cond_35

    const/16 v6, 0x3e

    if-ne p1, v6, :cond_44

    :cond_35
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    if-eq v6, v5, :cond_48

    const/4 v6, 0x2

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-static {v7}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v7

    if-eq v6, v7, :cond_48

    :cond_44
    const/16 v6, 0x3f

    if-ne p1, v6, :cond_4a

    .line 1494
    :cond_48
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 1497
    :cond_4a
    sparse-switch p1, :sswitch_data_192

    .line 1528
    :goto_4d
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 1529
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 1531
    const/4 v2, 0x0

    .line 1533
    .local v2, "prevSpanTextBeforeStartOffset":Ljava/lang/String;
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    const/16 v7, 0xf

    invoke-virtual {v6, v7, v9}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1535
    .local v4, "spannableString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1537
    .local v3, "spannableChar":[C
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1539
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v9, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1540
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 1541
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 1542
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 1544
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    if-ltz v6, :cond_8d

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-ltz v6, :cond_8d

    .line 1546
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v6, v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1549
    :cond_8d
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-lt v6, v5, :cond_a1

    .line 1551
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1554
    :cond_a1
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    if-eqz v6, :cond_18c

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, p0, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_18c

    .line 1556
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    sub-int v1, v6, v7

    .line 1558
    .local v1, "diff":I
    if-eqz v1, :cond_be

    .line 1559
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 1561
    :cond_be
    if-lez v1, :cond_164

    .line 1563
    if-eqz v2, :cond_14c

    .line 1565
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_134

    .line 1567
    const-string v6, ""

    invoke-virtual {p0, v6, v5}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1568
    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1569
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 1583
    :goto_f6
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 1584
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 1593
    :cond_100
    :goto_100
    if-eqz v1, :cond_107

    .line 1594
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    :cond_107
    move v0, v5

    .line 1600
    .end local v1    # "diff":I
    .end local v2    # "prevSpanTextBeforeStartOffset":Ljava/lang/String;
    .end local v3    # "spannableChar":[C
    .end local v4    # "spannableString":Ljava/lang/String;
    :goto_108
    return v0

    .line 1500
    :sswitch_109
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebClipboard;->launchClipboardUI()V

    move v0, v5

    .line 1501
    goto :goto_108

    .line 1505
    :sswitch_112
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto/16 :goto_4d

    .line 1510
    :sswitch_116
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    goto/16 :goto_4d

    .line 1514
    :sswitch_11a
    const-string v6, "DeleteForward"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1515
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    move v0, v5

    .line 1516
    goto :goto_108

    .line 1519
    :sswitch_125
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1520
    .local v0, "bResult":Z
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 1521
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_108

    .end local v0    # "bResult":Z
    :sswitch_132
    move v0, v5

    .line 1525
    goto :goto_108

    .line 1573
    .restart local v1    # "diff":I
    .restart local v2    # "prevSpanTextBeforeStartOffset":Ljava/lang/String;
    .restart local v3    # "spannableChar":[C
    .restart local v4    # "spannableString":Ljava/lang/String;
    :cond_134
    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1574
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto :goto_f6

    .line 1579
    :cond_14c
    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1580
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto :goto_f6

    .line 1585
    :cond_164
    if-gez v1, :cond_100

    .line 1587
    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1588
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 1589
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 1590
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    goto/16 :goto_100

    .line 1600
    .end local v1    # "diff":I
    :cond_18c
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_108

    .line 1497
    :sswitch_data_192
    .sparse-switch
        0x17 -> :sswitch_132
        0x3b -> :sswitch_112
        0x3c -> :sswitch_112
        0x43 -> :sswitch_125
        0x70 -> :sswitch_11a
        0x71 -> :sswitch_116
        0x72 -> :sswitch_116
        0xe8 -> :sswitch_109
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1457
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtmlComposerView onKeyLongPress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1461
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1605
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2a

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebClipboard;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1607
    const-string v1, "HtmlComposerView"

    const-string v2, " onKeyPreIme-dismiss Clipboard "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebClipboard;->dismissClipboardUI()V

    .line 1609
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 1612
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1617
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1618
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "htmlcompor onKeyUp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_1e
    sparse-switch p1, :sswitch_data_84

    .line 1650
    :goto_21
    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    if-ltz v1, :cond_32

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-ltz v1, :cond_32

    .line 1652
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1655
    :cond_32
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    if-eqz v1, :cond_7f

    .line 1657
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p0, v2, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1661
    :goto_40
    :sswitch_40
    return v0

    .line 1624
    :sswitch_41
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto :goto_21

    .line 1628
    :sswitch_44
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    goto :goto_21

    .line 1633
    :sswitch_47
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_7a

    .line 1634
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1636
    const-string v1, "image"

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 1637
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    const v1, 0x1020020

    invoke-virtual {p0, v1}, Landroid/webkitsec/HtmlComposerView;->invokeTexttoSpeech(I)V

    .line 1640
    :cond_71
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 1641
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    goto :goto_21

    .line 1643
    :cond_7a
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_40

    .line 1661
    :cond_7f
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_40

    .line 1621
    :sswitch_data_84
    .sparse-switch
        0x17 -> :sswitch_40
        0x3b -> :sswitch_41
        0x3c -> :sswitch_41
        0x43 -> :sswitch_47
        0x70 -> :sswitch_40
        0x71 -> :sswitch_44
        0x72 -> :sswitch_44
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1111
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1113
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_f

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onPopulateAccessibilityEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_f
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1116
    .local v0, "textForAccessibility":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_36

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPopulateAccessibilityEvent textForAccessibility = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_36
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_91

    .line 1119
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_63

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPopulateAccessibilityEvent event.getText = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_63
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_91

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPopulateAccessibilityEvent event.getText after= ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_91
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_9d

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onPopulateAccessibilityEvent End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_9d
    return-void
.end method

.method public onRecieveWebViewDoubleTapped()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3925
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onRecieveWebViewDoubleTapped()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 3931
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    .line 3932
    .local v0, "selectionType":I
    if-ne v3, v0, :cond_15

    .line 3933
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 3938
    :goto_14
    return-void

    .line 3935
    :cond_15
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_14
.end method

.method public onRecieveWebViewSelectionChanged()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 3941
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebViewSelectionChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3944
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 3946
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3947
    .local v1, "selectionType":I
    if-ne v4, v1, :cond_56

    .line 3948
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3950
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 3951
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 3952
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 3954
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3955
    const/16 v2, 0x2000

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEvent(I)V

    .line 3965
    :cond_34
    :goto_34
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getDCHandlerLastHandleType()I

    move-result v0

    .line 3967
    .local v0, "handleType":I
    if-ne v0, v4, :cond_74

    .line 3968
    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    .line 3973
    :cond_41
    :goto_41
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->sendEventToUpdateToolbar()V

    .line 3976
    if-ne v4, v1, :cond_7d

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    if-ne v4, v2, :cond_7d

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 3977
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 3978
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 3984
    :cond_55
    :goto_55
    return-void

    .line 3957
    .end local v0    # "handleType":I
    :cond_56
    if-nez v1, :cond_34

    .line 3958
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->isInBatchEditMode()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v2

    if-nez v2, :cond_34

    .line 3959
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 3960
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 3961
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_34

    .line 3969
    .restart local v0    # "handleType":I
    :cond_74
    const/4 v2, 0x2

    if-ne v0, v2, :cond_41

    .line 3970
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    goto :goto_41

    .line 3980
    :cond_7d
    if-eq v4, v1, :cond_55

    .line 3981
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_55
.end method

.method public onRecieveWebviewLongTouchUp()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3881
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewLongTouchUp() Has Long-pressed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    if-nez v2, :cond_10

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 3889
    :cond_10
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 3891
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_22

    .line 3892
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 3893
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewLongTouchUp() this view has already lost the focus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    :cond_21
    :goto_21
    return-void

    .line 3898
    :cond_22
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3900
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 3902
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imm active  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getTargetView()Landroid/webkitsec/HtmlComposerView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->SendInitComposing()V

    .line 3905
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v2

    if-ne v2, v5, :cond_55

    .line 3906
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 3908
    :cond_55
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 3911
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3912
    .local v1, "selectionType":I
    if-ne v5, v1, :cond_21

    .line 3913
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    goto :goto_21
.end method

.method public onRecieveWebviewShortTouchUp()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3833
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewShortTouchUp() Has Short-pressed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_1b

    .line 3836
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 3837
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewShortTouchUp() this view has already lost the focus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    :cond_1a
    :goto_1a
    return-void

    .line 3841
    :cond_1b
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v5, v2, :cond_30

    .line 3842
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewShortTouchUp() !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 3844
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3845
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 3848
    :cond_30
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3850
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 3852
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imm active  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getTargetView()Landroid/webkitsec/HtmlComposerView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    if-eq v5, v2, :cond_7b

    .line 3855
    invoke-virtual {v0, p0, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3864
    :goto_5e
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->SendInitComposing()V

    .line 3866
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 3867
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 3868
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 3870
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 3873
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3874
    .local v1, "selectionType":I
    if-eq v5, v1, :cond_1a

    .line 3875
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_1a

    .line 3861
    .end local v1    # "selectionType":I
    :cond_7b
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    goto :goto_5e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 1666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->getContentX(I)I

    move-result v2

    .line 1667
    .local v2, "contentX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->getContentY(I)I

    move-result v3

    .line 1668
    .local v3, "contentY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v4, v0

    .line 1669
    .local v4, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v5, v0

    .line 1670
    .local v5, "rawY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1672
    .local v1, "action":I
    const-string v0, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onTouchEvent  MotionEvent Action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->isTouchedOutside(II)Z

    move-result v0

    if-ne v9, v0, :cond_4f

    .line 1675
    const-string v0, "HtmlComposerView"

    const-string v7, "hasFocus() == false && isTouchedOutside() == true"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const/4 v6, 0x0

    .line 1693
    :cond_4e
    :goto_4e
    return v6

    :cond_4f
    move-object v0, p0

    .line 1679
    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/HtmlComposerView;->handle_onTouchEvent(IIIII)Z

    move-result v6

    .line 1681
    .local v6, "ret":Z
    if-nez v6, :cond_4e

    .line 1682
    const-string v0, "HtmlComposerView"

    const-string/jumbo v7, "onTouchEvent ret == false"

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 1685
    if-ne v9, v1, :cond_4e

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v9, v0, :cond_4e

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    if-nez v0, :cond_4e

    .line 1686
    const-string v0, "HtmlComposerView"

    const-string/jumbo v7, "onTouchEvent After MotionEvent.ACTION_UP, selection is caret!!"

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 1688
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1689
    invoke-virtual {p0, v9}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    goto :goto_4e
.end method

.method public onWindowFocusChanged(Z)V
    .registers 10
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1978
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onWindowFocusChanged(Z)V

    .line 1980
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-eqz v2, :cond_55

    if-eqz p1, :cond_55

    .line 1981
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1983
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-nez v2, :cond_35

    .line 1984
    const-string v2, "HtmlComposerView"

    const-string v3, "false == isImageSelected "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1988
    :cond_35
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_55

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1990
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 1991
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->updateClipboardUI()V

    .line 1994
    :cond_55
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_5c

    .line 1996
    invoke-virtual {p0, v7}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1998
    :cond_5c
    if-nez p1, :cond_99

    .line 2000
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    .line 2002
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_69

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_98

    .line 2004
    :cond_69
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 2005
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 2007
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_98

    .line 2008
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged WindowFocus = false, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_98
    :goto_98
    return-void

    .line 2014
    :cond_99
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_a1

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_14a

    .line 2016
    :cond_a1
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_c0

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged WindowFocus = true, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    :cond_c0
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged spanComposerText count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurSelStart= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurSelEnd= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    sub-int v0, v2, v3

    .line 2022
    .local v0, "diff":I
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2031
    if-lez v0, :cond_172

    .line 2033
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-ltz v2, :cond_12c

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-gt v2, v3, :cond_12c

    .line 2034
    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2035
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2050
    :cond_12c
    :goto_12c
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 2052
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 2053
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 2055
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    if-ne v6, v2, :cond_141

    .line 2056
    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 2057
    :cond_141
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_147

    .line 2058
    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 2060
    :cond_147
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 2063
    .end local v0    # "diff":I
    :cond_14a
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v6, v2, :cond_150

    .line 2064
    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 2067
    :cond_150
    sget v2, Landroid/webkitsec/HtmlComposerView;->operSel:I

    if-eqz v2, :cond_98

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 2068
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2069
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x500

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2072
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_98

    .line 2037
    .end local v1    # "msg":Landroid/os/Message;
    .restart local v0    # "diff":I
    :cond_172
    if-nez v0, :cond_1be

    .line 2038
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-lez v2, :cond_12c

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    if-eqz v2, :cond_12c

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12c

    .line 2041
    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 2042
    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2043
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_12c

    .line 2045
    :cond_1be
    const/4 v2, -0x1

    if-ne v0, v2, :cond_12c

    .line 2046
    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 2047
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_12c
.end method

.method public outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imagetRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    .line 5112
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 5113
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 5114
    invoke-virtual {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 5115
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 5116
    .local v0, "re":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5118
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_58

    .line 5119
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    :cond_58
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 5123
    .local v1, "reh":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5125
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_a4

    .line 5126
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5129
    :cond_a4
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-direct {p0, p2, v2, v3}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 5130
    return-void
.end method

.method public paste()V
    .registers 3

    .prologue
    .line 2263
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 2264
    const-string v0, "Paste"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2265
    return-void
.end method

.method public redo()V
    .registers 3

    .prologue
    .line 2268
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2269
    const-string v0, "Redo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2270
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2271
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2272
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 2273
    return-void
.end method

.method public registerNotificationListener(Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;)V
    .registers 2
    .param p1, "listener"    # Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .prologue
    .line 2276
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 2277
    return-void
.end method

.method public removeNotificationListener()V
    .registers 2

    .prologue
    .line 2280
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 2281
    return-void
.end method

.method public resetSelection()V
    .registers 3

    .prologue
    .line 3987
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 3992
    :cond_12
    :goto_12
    return-void

    .line 3989
    :cond_13
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3990
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22f

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_12
.end method

.method public restoreSelection()V
    .registers 3

    .prologue
    .line 3995
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4001
    :cond_12
    :goto_12
    return-void

    .line 3997
    :cond_13
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3998
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x214

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 3999
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    goto :goto_12
.end method

.method public saveSelection()V
    .registers 3

    .prologue
    .line 4004
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4008
    :cond_12
    :goto_12
    return-void

    .line 4006
    :cond_13
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 4007
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x215

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_12
.end method

.method public selectAll()V
    .registers 3

    .prologue
    .line 2284
    const-string v0, "SelectAll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2285
    return-void
.end method

.method public selectBWStartAndEnd(IIII)V
    .registers 9
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I

    .prologue
    .line 4963
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v1

    if-nez v1, :cond_13

    .line 4971
    :cond_12
    :goto_12
    return-void

    .line 4965
    :cond_13
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_54

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectBWStartAndEnd start = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], startY = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], endX = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], endY = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4967
    :cond_54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4969
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 4970
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v1

    const/16 v2, 0x22a

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_12
.end method

.method public selectedType()I
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 4011
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_14

    .line 4030
    :cond_13
    :goto_13
    return v3

    .line 4013
    :cond_14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4015
    .local v2, "selectedType":Ljava/lang/Integer;
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4016
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 4017
    :try_start_1f
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 4018
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x213

    invoke-virtual {v3, v4, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_43

    .line 4023
    :try_start_32
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_46
    .catchall {:try_start_32 .. :try_end_35} :catchall_43

    .line 4028
    :goto_35
    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_43

    .line 4030
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_13

    .line 4020
    :cond_41
    :try_start_41
    monitor-exit v1

    goto :goto_13

    .line 4028
    :catchall_43
    move-exception v3

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_43

    throw v3

    .line 4024
    :catch_46
    move-exception v0

    .line 4025
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_47
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_43

    goto :goto_35
.end method

.method public sendAccessibilityEvent(I)V
    .registers 2
    .param p1, "eventType"    # I

    .prologue
    .line 1136
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1137
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "removedCount"    # I
    .param p3, "addedCount"    # I
    .param p4, "beforeText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1171
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1173
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 1174
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 1175
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 1176
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 1177
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1178
    return-void
.end method

.method protected sendSelectionChangeEvent(I)V
    .registers 4
    .param p1, "event"    # I

    .prologue
    .line 4992
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4993
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x504

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4994
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4996
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    if-eqz v1, :cond_14

    .line 4997
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4999
    :cond_14
    return-void
.end method

.method public setAutoTextSelection(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 3158
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->setAutoTextSelection(Z)V

    .line 3159
    return-void
.end method

.method public setCaretForEdit(Z)V
    .registers 6
    .param p1, "active"    # Z

    .prologue
    const/16 v1, 0x8e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4034
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_17

    .line 4047
    :cond_16
    :goto_16
    return-void

    .line 4036
    :cond_17
    if-eqz p1, :cond_2b

    .line 4037
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 4038
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_16

    .line 4041
    :cond_2b
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 4042
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 4043
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 4044
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x20b

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_16
.end method

.method public setComposingRegion(II)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 4050
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_13

    .line 4069
    :cond_12
    :goto_12
    return-void

    .line 4051
    :cond_13
    if-ltz p1, :cond_12

    if-ltz p2, :cond_12

    .line 4053
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 4054
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 4056
    .local v1, "sendTwoIntObj":Landroid/graphics/Point;
    monitor-enter v1

    .line 4057
    :try_start_20
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 4058
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21b

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_38

    .line 4063
    :try_start_33
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_3d
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    .line 4068
    :goto_36
    :try_start_36
    monitor-exit v1

    goto :goto_12

    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    throw v2

    .line 4060
    :cond_3b
    :try_start_3b
    monitor-exit v1

    goto :goto_12

    .line 4064
    :catch_3d
    move-exception v0

    .line 4065
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4066
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_3b .. :try_end_4e} :catchall_38

    goto :goto_36
.end method

.method declared-synchronized setComposingState(Z)V
    .registers 3
    .param p1, "isInComposingState"    # Z

    .prologue
    .line 414
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-ne v0, p1, :cond_7

    .line 420
    :goto_5
    monitor-exit p0

    return-void

    .line 417
    :cond_7
    :try_start_7
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_e

    goto :goto_5

    .line 414
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCursorFromRangeSelection()V
    .registers 3

    .prologue
    .line 4076
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4082
    :cond_12
    :goto_12
    return-void

    .line 4078
    :cond_13
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 4079
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22b

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 4081
    :cond_26
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_12
.end method

.method public setDefaultFontSize(I)V
    .registers 5
    .param p1, "defaultFontSize"    # I

    .prologue
    .line 4085
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    const/high16 v1, 0x40000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    .line 4086
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    int-to-float v1, p1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultFontSize(I)V

    .line 4090
    :goto_17
    return-void

    .line 4088
    :cond_18
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebSettings;->setDefaultFontSize(I)V

    goto :goto_17
.end method

.method public setEditableSelection(II)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 4093
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_13

    .line 4112
    :cond_12
    :goto_12
    return-void

    .line 4094
    :cond_13
    if-ltz p1, :cond_12

    if-ltz p2, :cond_12

    .line 4096
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 4097
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 4099
    .local v1, "sendTwoIntObj":Landroid/graphics/Point;
    monitor-enter v1

    .line 4100
    :try_start_20
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 4101
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x1fe

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_38

    .line 4106
    :try_start_33
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_3d
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    .line 4111
    :goto_36
    :try_start_36
    monitor-exit v1

    goto :goto_12

    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    throw v2

    .line 4103
    :cond_3b
    :try_start_3b
    monitor-exit v1

    goto :goto_12

    .line 4107
    :catch_3d
    move-exception v0

    .line 4108
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4109
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_3b .. :try_end_4e} :catchall_38

    goto :goto_36
.end method

.method public setEmoji(Z)V
    .registers 5
    .param p1, "bIsActive"    # Z

    .prologue
    .line 4123
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " htmlcomposer setEmoji() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 4125
    return-void
.end method

.method public setHCVSelectionChangedCallback(Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;)V
    .registers 2
    .param p1, "listener"    # Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .prologue
    .line 4129
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 4130
    return-void
.end method

.method public setImeOptions(I)V
    .registers 2
    .param p1, "imeOption"    # I

    .prologue
    .line 4134
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 4135
    return-void
.end method

.method protected setInputConnection(Landroid/webkitsec/HtmlComposerInputConnection;)V
    .registers 2
    .param p1, "ic"    # Landroid/webkitsec/HtmlComposerInputConnection;

    .prologue
    .line 564
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    .line 565
    return-void
.end method

.method public setLastKeyPadState(Z)V
    .registers 2
    .param p1, "state"    # Z

    .prologue
    .line 6066
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 6067
    return-void
.end method

.method public setMaxHtmlLength(I)V
    .registers 3
    .param p1, "maxHtmlLength"    # I

    .prologue
    .line 4172
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 4173
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 4174
    return-void
.end method

.method public setOnInsertedImageHitListener(Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .prologue
    .line 2294
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 2295
    return-void
.end method

.method public setOnRichTextFormatChangedListener(Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .prologue
    .line 2289
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 2290
    return-void
.end method

.method public setPageZoom(F)V
    .registers 5
    .param p1, "factor"    # F

    .prologue
    .line 4148
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 4149
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPageZoom factor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    :cond_1d
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 4153
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 4154
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebClipboard;->setZoomFactorForPasting(F)V

    .line 4155
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v1

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    if-gt v0, v2, :cond_5d

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    :goto_38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/webkitsec/WebClipboard;->setWidthForCopiedImage(I)V

    .line 4158
    :cond_45
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 4159
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x228

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4160
    :cond_5c
    return-void

    .line 4155
    :cond_5d
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    goto :goto_38
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 4163
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 4164
    return-void
.end method

.method public setRotationFlag(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 6244
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 6245
    return-void
.end method

.method public setSelectionHandle(Z)V
    .registers 2
    .param p1, "isShown"    # Z

    .prologue
    .line 4138
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4139
    return-void
.end method

.method public setShiftKeyState(Z)V
    .registers 2
    .param p1, "bIsPressed"    # Z

    .prologue
    .line 4115
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 4116
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 4167
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clear()V

    .line 4168
    sget-object v0, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkitsec/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z

    .line 4169
    return-void
.end method

.method public textChangedForWatcher()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 6116
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_c

    .line 6117
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, v2, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6118
    :cond_c
    return-void
.end method

.method public textChangedForWatcher(I)V
    .registers 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 6129
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_c

    .line 6130
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, p1, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6132
    :cond_c
    return-void
.end method

.method public textChangedForWatcher(Z)V
    .registers 6
    .param p1, "isTextChanged"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6121
    if-eqz p1, :cond_10

    const/4 v0, 0x1

    .line 6122
    .local v0, "temp":I
    :goto_4
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_f

    .line 6124
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v3, ""

    invoke-interface {v2, v3, v1, v1, v0}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6126
    :cond_f
    return-void

    .end local v0    # "temp":I
    :cond_10
    move v0, v1

    .line 6121
    goto :goto_4
.end method

.method public textToSpeech(II)V
    .registers 5
    .param p1, "add"    # I
    .param p2, "remove"    # I

    .prologue
    .line 4206
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4207
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    .line 4208
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 4209
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "sendAccessbilityEvent [ 16]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4210
    :cond_1e
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEvent(I)V

    .line 4212
    :cond_23
    return-void
.end method

.method public toggleBold()V
    .registers 3

    .prologue
    .line 2299
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 2305
    :goto_5
    return-void

    .line 2302
    :cond_6
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2303
    const-string v0, "Bold"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5
.end method

.method public toggleItalic()V
    .registers 3

    .prologue
    .line 2308
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 2314
    :goto_5
    return-void

    .line 2311
    :cond_6
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2312
    const-string v0, "Italic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5
.end method

.method public toggleUnderline()V
    .registers 3

    .prologue
    .line 2317
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 2324
    :goto_5
    return-void

    .line 2320
    :cond_6
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2321
    const-string v0, "Underline"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2323
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    goto :goto_5
.end method

.method public translate()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 4178
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v3

    if-ne v6, v3, :cond_93

    .line 4179
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.translator.TRANSLATE_RESULT"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4180
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4182
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4183
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4184
    const-string/jumbo v3, "mode"

    const-string v4, "input"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4185
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedHtmlText()Ljava/lang/String;

    move-result-object v2

    .line 4186
    .local v2, "selectedHTMLText":Ljava/lang/String;
    if-eqz v2, :cond_93

    .line 4187
    const-string/jumbo v3, "source_text"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4190
    const-string v3, "html_source_text"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4191
    const-string/jumbo v3, "use_broadcast_receiver"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "html_composer_view_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 4193
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "translate() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4194
    const-string v3, "caller"

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4195
    const-string v3, "auto_start_translation"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4196
    const-string v3, "client_id"

    const-string v4, "2k8BjWu5Wc"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4197
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4199
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4201
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "selectedHTMLText":Ljava/lang/String;
    :cond_93
    return-void
.end method

.method public undo()V
    .registers 3

    .prologue
    .line 2327
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 2328
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2329
    const-string v0, "Undo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2330
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2331
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2332
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 2333
    return-void
.end method

.method public undoRedoStateReset()V
    .registers 3

    .prologue
    .line 4216
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4220
    :cond_12
    :goto_12
    return-void

    .line 4218
    :cond_13
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 4219
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x211

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_12
.end method

.method public unmarkWord(Ljava/lang/String;)V
    .registers 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 3121
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->unmarkWord(Ljava/lang/String;)V

    .line 3122
    return-void
.end method

.method public updateIMSelectionToEditor(II)V
    .registers 5
    .param p1, "curSelStart"    # I
    .param p2, "curSelEnd"    # I

    .prologue
    .line 4223
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4227
    :cond_12
    :goto_12
    return-void

    .line 4225
    :cond_13
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 4226
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21a

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_12
.end method

.method public updateOutlineDrawRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "imagetRect"    # Landroid/graphics/Rect;

    .prologue
    .line 5143
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 5144
    return-void
.end method
