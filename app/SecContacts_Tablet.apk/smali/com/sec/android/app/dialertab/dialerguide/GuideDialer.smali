.class public Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
.super Ljava/lang/Object;
.source "GuideDialer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$ImageGetter;,
        Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    }
.end annotation


# static fields
.field static final ACTIVITY_CALL:I = 0x1

.field static final ACTIVITY_DIALER:I = 0x0

.field static final BOTTOM_CENTER:I = 0x0

.field static final HOVER_DELAY_VIBRATE:I = 0x12c

.field static final REQCODE_CALLING:I = 0x34

.field static final REQCODE_CONTACT:I = 0x33

.field private static final TAG:Ljava/lang/String; = "GuideDialer"

.field static final TOP_CENTER:I = 0x3

.field static final TYPE_CALLING:I = 0x0

.field static final TYPE_CONTACT:I = 0x1

.field static final TYPE_SPEEDDIAL:I = 0x2

.field static final TYPE_WRITINGBUDDY:I = 0x3

.field static final WATCH_LAYOUT_CHANGE:I = 0xc8

.field static final step_10_end_of_call_tutorial:I = 0xa

.field static final step_1_input_num_you_want:I = 0x1

.field static final step_1_ready_to_hover:I = 0x1

.field static final step_1_ready_to_hover_for_writingbuddy:I = 0x1

.field static final step_2_finish_hover:I = 0x2

.field static final step_2_press_num_animation:I = 0x2

.field static final step_2_tab_the_area_indicated:I = 0x2

.field static final step_3_do_hover:I = 0x3

.field static final step_3_touch_addtocontact_button:I = 0x3

.field static final step_3_touch_voicecall_button:I = 0x3

.field static final step_4_tap_button_to_apply:I = 0x4

.field static final step_5_make_a_call_with_number:I = 0x5

.field static final step_6_finish_addtocontact:I = 0x6

.field static final step_6_know_how_to_use_wb:I = 0x6

.field static final step_7_finish_writing_buddy:I = 0x7

.field static final step_7_touch_videocall_button:I = 0x7

.field public static tempNumber:Ljava/lang/String;

.field private static ttfTypeface:Landroid/graphics/Typeface;


# instance fields
.field private GuideBack:Landroid/widget/ImageView;

.field private GuideLayoutMsg:Landroid/widget/LinearLayout;

.field private GuideMsg:Landroid/widget/TextView;

.field private GuideMsgClose:Landroid/widget/LinearLayout;

.field private GuidePicker:Landroid/widget/ImageView;

.field private GuidePointer:Landroid/widget/ImageView;

.field private activityNum:I

.field private aniTime:I

.field private backStep:I

.field private callTimerCount:I

.field private contactName:Ljava/lang/String;

.field private edgeSize:I

.field private edgeSizeTop:I

.field private emptyString:Ljava/lang/String;

.field private ibBaseButton:Landroid/widget/ImageButton;

.field private ibtnAddContact:Landroid/view/View;

.field private ibtnEight:Landroid/widget/ImageButton;

.field private ibtnFive:Landroid/widget/ImageButton;

.field private ibtnOne:Landroid/widget/ImageButton;

.field private ibtnThree:Landroid/widget/ImageButton;

.field private ibtnTwo:Landroid/widget/ImageButton;

.field private ibtnVideoCall:Landroid/widget/ImageButton;

.field private ibtnVoiceCall:Landroid/widget/ImageButton;

.field private ibtnZero:Landroid/widget/ImageButton;

.field private ibtnmessage:Landroid/widget/ImageButton;

.field private isEasyMode:Z

.field private isLoaded:Z

.field private isMsgVisiable:Z

.field private isSound:Z

.field private isUsingTwoPanel:Z

.field private itbnAddContactLand:Landroid/view/View;

.field private llFavoriteNoitem:Landroid/widget/LinearLayout;

.field private llSearchResult:Landroid/widget/LinearLayout;

.field private llSearchView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mCallLogCustomTabView:Landroid/view/View;

.field private mCallLogCustomTabView_Text:Landroid/widget/TextView;

.field private mCalllogLandContainer:Landroid/view/View;

.field private mCalllogPortContainer:Landroid/view/View;

.field private mContactCustomTabView:Landroid/view/View;

.field private mContactCustomTabView_Text:Landroid/widget/TextView;

.field private mDialCustomTabView:Landroid/view/View;

.field private mDialCustomTabView_Text:Landroid/widget/TextView;

.field mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFavoCustomTabView:Landroid/view/View;

.field private mFavoCustomTabView_Text:Landroid/widget/TextView;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mGuideData:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

.field private mGuideMsgCloseActionListener:Landroid/view/View$OnClickListener;

.field mHandler:Landroid/os/Handler;

.field private mSearchViewCalllogLandContainer:Landroid/view/View;

.field private mSearchViewCalllogPortContainer:Landroid/view/View;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationPicker:Landroid/view/animation/Animation;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundTone:I

.field private mSoundToneBtn:I

.field private mVolumeFloat:F

.field private mWbReceivedText:Ljava/lang/String;

.field private onGLL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private previousStep:I

.field private runSetLocation:Ljava/lang/Runnable;

.field private sFavorites:Ljava/lang/String;

.field private sResult:Ljava/lang/String;

.field private screenRect:Landroid/graphics/Rect;

.field private step:I

.field private timerForAni:Landroid/os/CountDownTimer;

.field private txtFavoriteNoitem:Landroid/widget/TextView;

.field private txtTotalCount_text:Landroid/widget/TextView;

.field private type:I

.field private vListItem:Landroid/view/View;

.field private vListItemLand:Landroid/view/View;

.field private vListItemPort:Landroid/view/View;

.field private vPost:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "0123456789"

    sput-object v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->tempNumber:Ljava/lang/String;

    .line 275
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ttfTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZIIZ)V
    .locals 6
    .param p1, "_mActivity"    # Landroid/app/Activity;
    .param p2, "_isUsingTwoPanel"    # Z
    .param p3, "_type"    # I
    .param p4, "_activityNum"    # I
    .param p5, "_isEasyMode"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->activityNum:I

    .line 227
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->screenRect:Landroid/graphics/Rect;

    .line 228
    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    .line 235
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isLoaded:Z

    .line 236
    iput v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->backStep:I

    iput v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->previousStep:I

    .line 237
    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    .line 238
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sResult:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sFavorites:Ljava/lang/String;

    .line 239
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->emptyString:Ljava/lang/String;

    .line 240
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isSound:Z

    .line 241
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isMsgVisiable:Z

    .line 242
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    .line 243
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isEasyMode:Z

    .line 245
    iput v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->edgeSize:I

    iput v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->edgeSizeTop:I

    .line 247
    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vPost:Landroid/view/View;

    .line 248
    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runSetLocation:Ljava/lang/Runnable;

    .line 249
    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideData:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    .line 250
    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->onGLL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 252
    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItemPort:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItemLand:Landroid/view/View;

    .line 259
    iput v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->aniTime:I

    .line 282
    new-instance v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$1;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mHandler:Landroid/os/Handler;

    .line 307
    new-instance v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$2;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideMsgCloseActionListener:Landroid/view/View$OnClickListener;

    .line 2285
    new-instance v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$11;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2301
    new-instance v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$12;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 319
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    .line 320
    iput-boolean p2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    .line 321
    iput p3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    .line 322
    iput p4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->activityNum:I

    .line 323
    iput v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    .line 324
    iput-boolean p5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isEasyMode:Z

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 328
    .local v0, "audioManager":Landroid/media/AudioManager;
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v4, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundPool:Landroid/media/SoundPool;

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundTone:I

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v3, 0x7f070002

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundToneBtn:I

    .line 331
    const-string v1, "situation=0;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mVolumeFloat:F

    .line 333
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->resetGuide()V

    .line 334
    return-void
.end method

.method private SetLayoutVisiable(I)V
    .locals 2
    .param p1, "visiablity"    # I

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideLayoutMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1621
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePicker:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1622
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1623
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsgClose:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsgClose:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1626
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isEnableSoundAndHaptic(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runSetLocation:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runSetLocation:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vPost:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vPost:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setActionBarMargin()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->onGLL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    .param p1, "x1"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->onGLL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->showToast(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isSound:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundToneBtn:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnZero:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runTimerForDisable(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    return p1
.end method

.method static synthetic access$208(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtFavoriteNoitem:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnOne:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnTwo:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llFavoriteNoitem:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnThree:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->aniTime:I

    return v0
.end method

.method static synthetic access$3408(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->aniTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->aniTime:I

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Z)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getGuideAndSetting(Z)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideData:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    .param p1, "x1"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideData:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundTone:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mVolumeFloat:F

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isAvailableAirView(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x7f050015

    .line 2276
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mShowAnimation:Landroid/view/animation/Animation;

    .line 2277
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mShowAnimationPicker:Landroid/view/animation/Animation;

    .line 2278
    const v0, 0x7f050013

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mFadingAnimation:Landroid/view/animation/Animation;

    .line 2279
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2280
    const v0, 0x7f050014

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mFlashingAnimation:Landroid/view/animation/Animation;

    .line 2281
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2282
    return-void
.end method

.method private checkCallScreenShow()Z
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v5, 0x0

    const/4 v8, 0x4

    const/4 v4, 0x1

    .line 1294
    iget v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    if-nez v6, :cond_3

    .line 1295
    iget v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->activityNum:I

    if-nez v6, :cond_4

    iget v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    if-eq v6, v8, :cond_0

    iget v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    if-eq v6, v9, :cond_0

    iget v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_4

    .line 1300
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.VoiceAndVideoCallTutorial"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    iget v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    if-ne v5, v8, :cond_1

    .line 1303
    const-string v5, "step"

    iget v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1304
    :cond_1
    iget v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    if-ne v5, v9, :cond_2

    .line 1305
    const-string v5, "step"

    iget v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1306
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const/16 v6, 0x34

    invoke-virtual {v5, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1332
    .end local v2    # "mIntent":Landroid/content/Intent;
    :goto_0
    return v4

    .line 1317
    :cond_3
    iget v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    if-ne v6, v4, :cond_4

    iget v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    if-ne v6, v8, :cond_4

    .line 1318
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isMsgVisiable:Z

    .line 1319
    const-string v5, "tel"

    const-string v6, "0123"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1320
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1321
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "tutorial_mode_from_dialer"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1323
    const-wide/16 v5, 0x1f4

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const/16 v6, 0x33

    invoke-virtual {v5, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1328
    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    goto :goto_0

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "GuideDialer"

    const-string v6, "InterruptedException in checkCallScreenShow()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_4
    move v4, v5

    .line 1332
    goto :goto_0
.end method

.method private disableHovering(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "dialpad"    # Landroid/widget/LinearLayout;

    .prologue
    const/16 v4, 0xc

    .line 338
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 343
    .local v1, "keypadID":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 344
    aget v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 345
    aget v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 343
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_1
    return-void

    .line 338
    :array_0
    .array-data 4
        0x7f090234
        0x7f090235
        0x7f090236
        0x7f090238
        0x7f090239
        0x7f09023a
        0x7f09023c
        0x7f09023d
        0x7f09023e
        0x7f090147
        0x7f090240
        0x7f090241
    .end array-data
.end method

.method private dispCallDuration()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 2120
    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->callTimerCount:I

    div-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_0

    .line 2121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2124
    .local v0, "sTime":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->callTimerCount:I

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_1

    .line 2125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2129
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090359

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2130
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09034f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2131
    return-void

    .line 2123
    .end local v0    # "sTime":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "sTime":Ljava/lang/String;
    goto :goto_0

    .line 2127
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getGuideAndSetting(Z)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    .locals 14
    .param p1, "isSetting"    # Z

    .prologue
    .line 1348
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    if-nez v0, :cond_7

    .line 1349
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    packed-switch v0, :pswitch_data_0

    .line 1563
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1351
    :pswitch_1
    if-eqz p1, :cond_1

    .line 1352
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumber(ZZ)V

    .line 1353
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runTimer(I)V

    .line 1355
    :cond_1
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnTwo:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const v5, 0x7f0e043b

    const/4 v6, -0x1

    const/4 v7, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    goto :goto_1

    .line 1358
    :pswitch_2
    if-eqz p1, :cond_2

    .line 1359
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumber(ZZ)V

    .line 1360
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runAnimation(ZI)V

    .line 1362
    :cond_2
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    goto :goto_1

    .line 1365
    :pswitch_3
    if-eqz p1, :cond_3

    .line 1366
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumber(ZZ)V

    .line 1368
    :cond_3
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnVoiceCall:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0e043d

    const/4 v6, -0x1

    const/4 v7, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    goto :goto_1

    .line 1372
    :pswitch_4
    if-eqz p1, :cond_6

    .line 1373
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "feature_spr"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "feature_remove_vt_dialpad"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1380
    :cond_4
    const v0, 0x7f0e045b

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->showToast(II)V

    .line 1381
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1383
    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumber(ZZ)V

    .line 1385
    :cond_6
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnVideoCall:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0e043f

    const/4 v6, 0x5

    const/16 v7, 0x8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    goto/16 :goto_1

    .line 1390
    :pswitch_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1392
    :cond_7
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1393
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    packed-switch v0, :pswitch_data_1

    :pswitch_6
    goto/16 :goto_0

    .line 1395
    :pswitch_7
    if-eqz p1, :cond_8

    .line 1396
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumber(ZZ)V

    .line 1397
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runTimer(I)V

    .line 1399
    :cond_8
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnTwo:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const v5, 0x7f0e043c

    const/4 v6, -0x1

    const/4 v7, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    goto/16 :goto_1

    .line 1402
    :pswitch_8
    if-eqz p1, :cond_9

    .line 1403
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumber(ZZ)V

    .line 1404
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runAnimation(ZI)V

    .line 1406
    :cond_9
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    goto/16 :goto_1

    .line 1409
    :pswitch_9
    if-eqz p1, :cond_a

    .line 1410
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumber(ZZ)V

    .line 1412
    :cond_a
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0e0440

    const/4 v6, -0x1

    const/4 v7, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    goto/16 :goto_1

    .line 1415
    :pswitch_a
    if-eqz p1, :cond_b

    .line 1416
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumber(ZZ)V

    .line 1417
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runTimer(I)V

    .line 1420
    :cond_b
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    goto/16 :goto_1

    .line 1423
    :cond_c
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 1424
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 1426
    :pswitch_b
    if-eqz p1, :cond_d

    .line 1427
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumber(ZZ)V

    .line 1441
    :cond_d
    const v5, 0x7f0e0444

    .line 1445
    .local v5, "_msgRes":I
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnTwo:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    goto/16 :goto_1

    .line 1448
    .end local v5    # "_msgRes":I
    :pswitch_c
    if-eqz p1, :cond_e

    .line 1449
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumber(ZZ)V

    .line 1450
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runTimer(I)V

    .line 1451
    const v0, 0x7f0e04d2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->showToast(II)V

    .line 1453
    :cond_e
    new-instance v6, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x3

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    move-object v0, v6

    goto/16 :goto_1

    .line 1456
    :cond_f
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1458
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 1460
    :pswitch_d
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-eqz v0, :cond_10

    .line 1461
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mWbReceivedText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumberForWritingBuddy(Ljava/lang/String;)V

    .line 1464
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    const v1, 0x7f02065b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1465
    new-instance v6, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x2

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    move-object v0, v6

    goto/16 :goto_1

    .line 1469
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mWbReceivedText:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 1470
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mWbReceivedText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumberForWritingBuddy(Ljava/lang/String;)V

    .line 1473
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 1474
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnEight:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibBaseButton:Landroid/widget/ImageButton;

    .line 1479
    :goto_2
    new-instance v6, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibBaseButton:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const v11, 0x7f0e04d0

    const/4 v12, 0x1

    const/4 v13, 0x3

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    move-object v0, v6

    goto/16 :goto_1

    .line 1476
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnZero:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibBaseButton:Landroid/widget/ImageButton;

    goto :goto_2

    .line 1483
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mWbReceivedText:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 1484
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mWbReceivedText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumberForWritingBuddy(Ljava/lang/String;)V

    .line 1487
    :cond_13
    sget-object v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->tempNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mWbReceivedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1488
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setStep(I)V

    .line 1489
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    .line 1490
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1493
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 1494
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnEight:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibBaseButton:Landroid/widget/ImageButton;

    .line 1499
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideData:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->msgRes:I

    if-eqz v0, :cond_15

    .line 1500
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideData:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    const v1, 0x7f0e0441

    iput v1, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->msgRes:I

    .line 1501
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideData:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget v1, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->msgRes:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setTextWithImage(Landroid/widget/TextView;I)V

    .line 1504
    :cond_15
    new-instance v6, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibBaseButton:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const v11, 0x7f0e0441

    const/4 v12, 0x1

    const/4 v13, 0x4

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    move-object v0, v6

    goto/16 :goto_1

    .line 1496
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnZero:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibBaseButton:Landroid/widget/ImageButton;

    goto :goto_3

    .line 1507
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mWbReceivedText:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 1508
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mWbReceivedText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumberForWritingBuddy(Ljava/lang/String;)V

    .line 1511
    :cond_17
    sget-object v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->tempNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getDigitsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getStep()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    .line 1512
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setStep(I)V

    .line 1513
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    .line 1516
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    const v1, 0x7f020661

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1518
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v0, :cond_19

    .line 1519
    new-instance v6, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0e0442

    const/4 v12, 0x2

    const/4 v13, 0x5

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    move-object v0, v6

    goto/16 :goto_1

    .line 1522
    :cond_19
    new-instance v6, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0e0442

    const/4 v12, 0x2

    const/4 v13, 0x5

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    move-object v0, v6

    goto/16 :goto_1

    .line 1527
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mWbReceivedText:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 1528
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mWbReceivedText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumberForWritingBuddy(Ljava/lang/String;)V

    .line 1531
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 1532
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnEight:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibBaseButton:Landroid/widget/ImageButton;

    .line 1536
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsgClose:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1b

    .line 1537
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsgClose:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1539
    :cond_1b
    new-instance v6, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibBaseButton:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const v11, 0x7f0e0443

    const/4 v12, 0x1

    const/4 v13, 0x6

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    move-object v0, v6

    goto/16 :goto_1

    .line 1534
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnZero:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibBaseButton:Landroid/widget/ImageButton;

    goto :goto_4

    .line 1543
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mWbReceivedText:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 1544
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mWbReceivedText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumberForWritingBuddy(Ljava/lang/String;)V

    .line 1547
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 1548
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnEight:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibBaseButton:Landroid/widget/ImageButton;

    .line 1553
    :goto_5
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runTimer(I)V

    .line 1554
    new-instance v6, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibBaseButton:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x7

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    move-object v0, v6

    goto/16 :goto_1

    .line 1550
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnZero:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibBaseButton:Landroid/widget/ImageButton;

    goto :goto_5

    .line 1558
    :pswitch_13
    new-instance v6, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x7

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V

    move-object v0, v6

    goto/16 :goto_1

    .line 1349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1393
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_a
    .end packed-switch

    .line 1424
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 1458
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private getTouchWizFont()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 2352
    sget-object v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ttfTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 2353
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-eqz v0, :cond_1

    .line 2354
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Num47_TW9_20120620.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ttfTypeface:Landroid/graphics/Typeface;

    .line 2363
    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ttfTypeface:Landroid/graphics/Typeface;

    return-object v0

    .line 2356
    :cond_1
    const-string v0, "feature_is_note_h"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2357
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Num47_20130802.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ttfTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 2359
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Num47_TW.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ttfTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private isAvailableAirView(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2372
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_speed_dial_tip"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 2374
    .local v0, "isFingerSpeedDial":Z
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_speed_dial_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 2377
    .local v1, "isPenSpeedDial":Z
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    if-eqz v1, :cond_2

    :cond_1
    move v3, v2

    .line 2381
    :cond_2
    return v3

    .end local v0    # "isFingerSpeedDial":Z
    .end local v1    # "isPenSpeedDial":Z
    :cond_3
    move v0, v3

    .line 2372
    goto :goto_0

    .restart local v0    # "isFingerSpeedDial":Z
    :cond_4
    move v1, v3

    .line 2374
    goto :goto_1
.end method

.method private isEnableSoundAndHaptic(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2387
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 2388
    .local v0, "isFingerSoundAndHaptic":Z
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_sound"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 2390
    .local v1, "isPenSoundAndHaptic":Z
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    if-eqz v1, :cond_2

    :cond_1
    move v3, v2

    .line 2394
    :cond_2
    return v3

    .end local v0    # "isFingerSoundAndHaptic":Z
    .end local v1    # "isPenSoundAndHaptic":Z
    :cond_3
    move v0, v3

    .line 2387
    goto :goto_0

    .restart local v0    # "isFingerSoundAndHaptic":Z
    :cond_4
    move v1, v3

    .line 2388
    goto :goto_1
.end method

.method private runAnimation(ZI)V
    .locals 8
    .param p1, "isShowContact"    # Z
    .param p2, "nextStep"    # I

    .prologue
    const/16 v2, 0x8

    .line 1657
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1659
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0902a3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1660
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090296

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1661
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090259

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1664
    :cond_0
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;

    const-wide/16 v2, 0xdac

    const-wide/16 v4, 0x2bc

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;JJZI)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    .line 1762
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1763
    return-void
.end method

.method private runTimer(I)V
    .locals 6
    .param p1, "milisec"    # I

    .prologue
    .line 1633
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$7;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$7;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;JJ)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    .line 1651
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1652
    return-void
.end method

.method private runTimerForDisable(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1767
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$9;

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x64

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$9;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;JJLandroid/view/View;)V

    .line 1781
    .local v0, "timer":Landroid/os/CountDownTimer;
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1782
    return-void
.end method

.method private runVoiceCallAnimation(I)V
    .locals 7
    .param p1, "nextStep"    # I

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09035b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020610

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2046
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09035a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02060d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2048
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090358

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "0123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2050
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;

    const-wide/16 v2, 0xe10

    const-wide/16 v4, 0x190

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;JJI)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    .line 2113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2114
    return-void
.end method

.method private setActionBarMargin()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1194
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09024f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1195
    .local v0, "llFragment":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1196
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getHeight()I

    move-result v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1197
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1199
    return-void
.end method

.method private setDialNumber(ZZ)V
    .locals 7
    .param p1, "isShowNumber"    # Z
    .param p2, "isShowContact"    # Z

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f090296

    const v2, 0x7f090259

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1787
    if-eqz p1, :cond_5

    .line 1788
    const-string v0, "feature_talkback"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const-string v1, "0123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1792
    :cond_0
    if-eqz p2, :cond_3

    .line 1793
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v0, :cond_2

    .line 1794
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1795
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v1, 0x7f090298

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0203a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1796
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v1, 0x7f09029b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1797
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1798
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v1, 0x7f0902a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "0123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1799
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v1, 0x7f0902a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1840
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v0, :cond_1

    .line 1841
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0902a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1843
    :cond_1
    return-void

    .line 1801
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const v1, 0x7f09021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1802
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const v1, 0x7f090222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "0123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1803
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1804
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1805
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llFavoriteNoitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1806
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1809
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v0, :cond_4

    .line 1810
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1811
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1813
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v1, 0x7f0902a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1817
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1818
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1819
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llFavoriteNoitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1820
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtFavoriteNoitem:Landroid/widget/TextView;

    const v1, 0x7f0e02de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1821
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1827
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v0, :cond_6

    .line 1828
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1829
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1830
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1832
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtFavoriteNoitem:Landroid/widget/TextView;

    const v1, 0x7f0e0085

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1833
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sFavorites:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1834
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1835
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llFavoriteNoitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1836
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private setLayout()V
    .locals 20

    .prologue
    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090252

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090254

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 446
    .local v12, "llSearchQwerty":Landroid/view/View;
    if-eqz v12, :cond_0

    .line 447
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 449
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f09024e

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 450
    .local v13, "lladditionalQwerty":Landroid/view/View;
    if-eqz v13, :cond_1

    .line 451
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 459
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090261

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mCalllogPortContainer:Landroid/view/View;

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f09025a

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mCalllogLandContainer:Landroid/view/View;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090261

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSearchViewCalllogPortContainer:Landroid/view/View;

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f09025a

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSearchViewCalllogLandContainer:Landroid/view/View;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 470
    .local v5, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090243

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    if-nez v18, :cond_2

    .line 472
    const-string v18, "ip_call"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 473
    const v18, 0x7f04010d

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 479
    .local v3, "dialpadPort":Landroid/widget/LinearLayout;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090232

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 481
    .end local v3    # "dialpadPort":Landroid/widget/LinearLayout;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090248

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    if-nez v18, :cond_3

    .line 483
    const-string v18, "ip_call"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 484
    const v18, 0x7f040104

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 490
    .local v2, "dialpadLand":Landroid/widget/LinearLayout;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090258

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 494
    .end local v2    # "dialpadLand":Landroid/widget/LinearLayout;
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090232

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 496
    .local v11, "llDialpad":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090243

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 497
    .local v10, "llAdditionalButton":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090295

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    .line 499
    const-string v18, "feature_kor"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090267

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 501
    .local v8, "landDialpad":Landroid/view/View;
    if-eqz v8, :cond_4

    .line 502
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 504
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f09026b

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 505
    .local v7, "landAdditionalBtn":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 506
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 508
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090269

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 509
    .local v9, "landSearchView":Landroid/view/View;
    if-eqz v9, :cond_6

    .line 510
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 548
    .end local v7    # "landAdditionalBtn":Landroid/view/View;
    .end local v8    # "landDialpad":Landroid/view/View;
    .end local v9    # "landSearchView":Landroid/view/View;
    :cond_6
    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 549
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 554
    :goto_3
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 556
    const v18, 0x7f090234

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnOne:Landroid/widget/ImageButton;

    .line 557
    const v18, 0x7f090235

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnTwo:Landroid/widget/ImageButton;

    .line 558
    const v18, 0x7f090236

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnThree:Landroid/widget/ImageButton;

    .line 559
    const v18, 0x7f090239

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnFive:Landroid/widget/ImageButton;

    .line 560
    const v18, 0x7f09023d

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnEight:Landroid/widget/ImageButton;

    .line 561
    const v18, 0x7f090240

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnZero:Landroid/widget/ImageButton;

    .line 562
    const v18, 0x7f09020f

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnVoiceCall:Landroid/widget/ImageButton;

    .line 563
    const v18, 0x7f090209

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnVideoCall:Landroid/widget/ImageButton;

    .line 564
    const v18, 0x7f09020e

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnmessage:Landroid/widget/ImageButton;

    .line 565
    const-string v18, "feature_remove_vt_dialpad"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnVideoCall:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnVideoCall:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnmessage:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 571
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f0902a8

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;

    .line 575
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090255

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ListView;

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const-string v19, "accessibility"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityManager;

    .line 580
    .local v14, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/contacts/activities/DialtactsActivity;->isSupportHoveringUI(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_b

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v18

    if-nez v18, :cond_b

    .line 582
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->disableHovering(Landroid/widget/LinearLayout;)V

    .line 585
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnTwo:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnTwo:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    new-instance v19, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$3;

    invoke-direct/range {v19 .. v20}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$3;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 642
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    .line 643
    :cond_d
    const v18, 0x7f090234

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_17

    .line 644
    const/16 v18, 0xc

    move/from16 v0, v18

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    .line 649
    .local v6, "keypadID":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    const/16 v18, 0xc

    move/from16 v0, v18

    if-ge v4, v0, :cond_17

    .line 650
    aget v18, v6, v4

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    new-instance v19, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$4;

    invoke-direct/range {v19 .. v20}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$4;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 649
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 476
    .end local v4    # "i":I
    .end local v6    # "keypadID":[I
    .end local v10    # "llAdditionalButton":Landroid/widget/LinearLayout;
    .end local v11    # "llDialpad":Landroid/widget/LinearLayout;
    .end local v14    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v5    # "inflater":Landroid/view/LayoutInflater;
    :cond_e
    const v18, 0x7f04010c

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .restart local v3    # "dialpadPort":Landroid/widget/LinearLayout;
    goto/16 :goto_0

    .line 487
    .end local v3    # "dialpadPort":Landroid/widget/LinearLayout;
    :cond_f
    const v18, 0x7f040103

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .restart local v2    # "dialpadLand":Landroid/widget/LinearLayout;
    goto/16 :goto_1

    .line 513
    .end local v2    # "dialpadLand":Landroid/widget/LinearLayout;
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .restart local v10    # "llAdditionalButton":Landroid/widget/LinearLayout;
    .restart local v11    # "llDialpad":Landroid/widget/LinearLayout;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090258

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f0902ac

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090248

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 519
    .end local v10    # "llAdditionalButton":Landroid/widget/LinearLayout;
    .end local v11    # "llDialpad":Landroid/widget/LinearLayout;
    :cond_11
    const-string v18, "feature_kor"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090266

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewStub;

    .line 521
    .local v16, "stubDialpad":Landroid/view/ViewStub;
    if-eqz v16, :cond_12

    .line 522
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 524
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090267

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 525
    .restart local v11    # "llDialpad":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f09026a

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewStub;

    .line 526
    .local v15, "stubAdditionalBtn":Landroid/view/ViewStub;
    if-eqz v16, :cond_13

    .line 527
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 529
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f09026b

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 530
    .restart local v10    # "llAdditionalButton":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090268

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    .line 531
    .local v17, "stubSearchView":Landroid/view/ViewStub;
    if-eqz v16, :cond_14

    .line 532
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 534
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090269

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    .line 541
    .end local v15    # "stubAdditionalBtn":Landroid/view/ViewStub;
    .end local v16    # "stubDialpad":Landroid/view/ViewStub;
    .end local v17    # "stubSearchView":Landroid/view/ViewStub;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090232

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090295

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090243

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 536
    .end local v10    # "llAdditionalButton":Landroid/widget/LinearLayout;
    .end local v11    # "llDialpad":Landroid/widget/LinearLayout;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090258

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 537
    .restart local v11    # "llDialpad":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f090248

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 538
    .restart local v10    # "llAdditionalButton":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f0902ac

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    goto :goto_5

    .line 552
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 675
    .restart local v14    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_17
    return-void

    .line 644
    nop

    :array_0
    .array-data 4
        0x7f090234
        0x7f090235
        0x7f090236
        0x7f090238
        0x7f090239
        0x7f09023a
        0x7f09023c
        0x7f09023d
        0x7f09023e
        0x7f090147
        0x7f090240
        0x7f090241
    .end array-data
.end method

.method private setLayoutForDigits()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 678
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v8, 0x7f090251

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 679
    .local v5, "lyDgitsContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 680
    .local v4, "lpc":Landroid/view/ViewGroup$LayoutParams;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 681
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 682
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v7

    .line 684
    .local v2, "lcdWidth":F
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 685
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 686
    .local v6, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 687
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_2

    .line 688
    const v7, 0x44054000

    div-float v1, v2, v7

    .line 689
    .local v1, "lcdRatio":F
    const-string v7, "feature_kor"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 690
    const/high16 v7, 0x42d20000

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 695
    :cond_0
    :goto_0
    const-string v7, "ip_call"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_1

    .line 696
    const/16 v7, 0x49

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 698
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_3

    .line 699
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v7, v11, v9, v11, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 700
    const/high16 v7, 0x41700000

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 701
    const/high16 v7, 0x436d0000

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 705
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setScaledWidth(F)V

    .line 708
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v7, v8}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setScaledDensity(F)V

    .line 709
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getTouchWizFont()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 710
    return-void

    .line 692
    .end local v1    # "lcdRatio":F
    :cond_2
    const/high16 v7, 0x43a00000

    div-float v1, v2, v7

    .line 693
    .restart local v1    # "lcdRatio":F
    const/high16 v7, 0x42840000

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 703
    :cond_3
    const/high16 v7, 0x439e0000

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method private setPhoneLayout()V
    .locals 17

    .prologue
    .line 714
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v13, 0x7f090251

    invoke-virtual {v12, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 716
    .local v8, "lyDgitsContainer":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-eqz v12, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isEasyMode:Z

    if-eqz v12, :cond_3

    .line 718
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v13, 0x7f090210

    invoke-virtual {v12, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 719
    .local v2, "ibtnDelete":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 720
    .local v7, "lpDelete":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/high16 v14, 0x3f800000

    invoke-direct {v6, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 722
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v12, 0x10

    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 723
    const/4 v12, 0x0

    iput v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 724
    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    .end local v2    # "ibtnDelete":Landroid/view/View;
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "lpDelete":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v13, 0x7f090259

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    .line 819
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v13, 0x7f090253

    invoke-virtual {v12, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 822
    const-string v12, "feature_kor"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 823
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    .line 824
    const-string v12, "feature_skt"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 825
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnVideoCall:Landroid/widget/ImageButton;

    const v13, 0x7f02033d

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 728
    :cond_3
    const-string v12, "feature_wvga"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 729
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setLayoutForDigits()V

    goto :goto_1

    .line 732
    :cond_4
    const-string v12, "feature_is_note_h"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, "feature_enable_writingbuddy"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 733
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 734
    .local v1, "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 737
    .restart local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 739
    .local v9, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/high16 v14, 0x3f800000

    invoke-direct {v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 740
    .local v11, "param":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v13, 0x7f090251

    invoke-virtual {v12, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 743
    const/16 v12, 0x2a

    iput v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 744
    const/4 v12, 0x6

    iput v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 745
    const/16 v12, 0x189

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 746
    const/16 v12, 0x3e4

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 754
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x5

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 755
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setScaledWidth(F)V

    .line 758
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget v13, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v12, v13}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setScaledDensity(F)V

    .line 759
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getTouchWizFont()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 748
    :cond_5
    const/16 v12, 0x12

    iput v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 749
    const/16 v12, 0xc

    iput v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 750
    const/16 v12, 0x3b7

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 751
    const/16 v12, 0x171

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 761
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "param":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 762
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 763
    const-string v12, "ip_call"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget v12, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v13, 0x140

    if-ne v12, v13, :cond_8

    const-string v12, "feature_chn_duos"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "feature_common_dsds_support "

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "feature_common_use_multisim"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 765
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 766
    .restart local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 767
    .restart local v9    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v12

    .line 769
    .local v4, "lcdWidth":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    .line 770
    const/high16 v12, 0x44a00000

    div-float v3, v4, v12

    .line 771
    .local v3, "lcdRatio":F
    const/high16 v12, 0x42d20000

    mul-float/2addr v12, v3

    float-to-int v12, v12

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 772
    const/high16 v12, 0x44070000

    mul-float/2addr v12, v3

    float-to-int v12, v12

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 773
    const/high16 v12, 0x425c0000

    mul-float/2addr v12, v3

    float-to-int v12, v12

    iput v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 774
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x5

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 775
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 778
    .end local v3    # "lcdRatio":F
    :cond_7
    const/high16 v12, 0x44340000

    div-float v3, v4, v12

    .line 779
    .restart local v3    # "lcdRatio":F
    const/high16 v12, 0x43460000

    mul-float/2addr v12, v3

    float-to-int v12, v12

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 780
    const v12, 0x441d8000

    mul-float/2addr v12, v3

    float-to-int v12, v12

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 781
    const/high16 v12, 0x42340000

    mul-float/2addr v12, v3

    float-to-int v12, v12

    iput v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 782
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x5

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 783
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 786
    .end local v3    # "lcdRatio":F
    .end local v4    # "lcdWidth":F
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    const-string v12, "feature_gui_h_backbone_hd"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 787
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 788
    .restart local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 790
    .restart local v9    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v12, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v13, 0x140

    if-ne v12, v13, :cond_2

    .line 791
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 792
    const/16 v12, 0x1c

    iput v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 793
    const/4 v12, 0x4

    iput v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 794
    const/16 v12, 0x118

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 795
    const/16 v12, 0x298

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 803
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x5

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 804
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setScaledWidth(F)V

    .line 807
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget v13, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v12, v13}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setScaledDensity(F)V

    .line 808
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getTouchWizFont()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 797
    :cond_9
    const/16 v12, 0xc

    iput v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 798
    const/16 v12, 0x8

    iput v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 799
    const/16 v12, 0x27a

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 800
    const/16 v12, 0xf4

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 811
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_a
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/high16 v14, 0x3f800000

    invoke-direct {v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 812
    .restart local v11    # "param":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v12, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v13, 0x7f090251

    invoke-virtual {v12, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 826
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v11    # "param":Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    const-string v12, "feature_lgt"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 827
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnVideoCall:Landroid/widget/ImageButton;

    const v13, 0x7f02033b

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 830
    :cond_c
    const-string v12, "feature_skt"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnVideoCall:Landroid/widget/ImageButton;

    const v13, 0x7f02033e

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 832
    :cond_d
    const-string v12, "feature_lgt"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 833
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnVideoCall:Landroid/widget/ImageButton;

    const v13, 0x7f02033c

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 840
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    .line 841
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v13, 0x7f090232

    invoke-virtual {v12, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 846
    .local v5, "llDialpad":Landroid/widget/LinearLayout;
    :goto_4
    const v12, 0x7f090234

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 847
    .local v10, "oneButton":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isEasyMode:Z

    if-eqz v12, :cond_10

    .line 848
    const v12, 0x7f020557

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 843
    .end local v5    # "llDialpad":Landroid/widget/LinearLayout;
    .end local v10    # "oneButton":Landroid/widget/ImageButton;
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v13, 0x7f090258

    invoke-virtual {v12, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .restart local v5    # "llDialpad":Landroid/widget/LinearLayout;
    goto :goto_4

    .line 849
    .restart local v10    # "oneButton":Landroid/widget/ImageButton;
    :cond_10
    const-string v12, "feature_without_vm_icon"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 850
    const v12, 0x7f0200e3

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 851
    :cond_11
    const-string v12, "feature_ctc"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    const-string v12, "feature_chn_duos"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 853
    const v12, 0x7f0200e3

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 854
    :cond_12
    const-string v12, "feature_hvga"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_13

    const-string v12, "feature_qvga"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 855
    :cond_13
    const v12, 0x7f020183

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 857
    :cond_14
    const v12, 0x7f0200de

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private setTabletLayout()V
    .locals 17

    .prologue
    .line 862
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v14

    .line 864
    .local v3, "lcdWidth":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v13, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 865
    .local v13, "smallestWidthdp":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v15, 0x7f090251

    invoke-virtual {v14, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 867
    .local v6, "lyDgitsContainer":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v14, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v15, 0x7f090259

    invoke-virtual {v14, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    .line 872
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 875
    .local v1, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchResult:Landroid/widget/LinearLayout;

    if-eqz v14, :cond_2

    .line 876
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchResult:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 879
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 880
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v15, 0x7f090295

    invoke-virtual {v14, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    .line 881
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v15, 0x7f0902a7

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchResult:Landroid/widget/LinearLayout;

    .line 883
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItemPort:Landroid/view/View;

    if-nez v14, :cond_3

    .line 884
    const v14, 0x7f0400a7

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItemPort:Landroid/view/View;

    .line 887
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItemPort:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    .line 904
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-eqz v14, :cond_4

    .line 905
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v15, 0x7f09025d

    invoke-virtual {v14, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 906
    .local v9, "mDivideLinePort":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v15, 0x7f09025c

    invoke-virtual {v14, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 908
    .local v8, "mDivideLineLand":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    .line 909
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 910
    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    .line 912
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v15, 0x7f090259

    invoke-virtual {v14, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    .line 913
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v15, 0x7f09025e

    invoke-virtual {v14, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 914
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 916
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSearchViewCalllogPortContainer:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 917
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSearchViewCalllogLandContainer:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 932
    .end local v8    # "mDivideLineLand":Landroid/view/View;
    .end local v9    # "mDivideLinePort":Landroid/view/View;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v14, :cond_b

    .line 933
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchResult:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 943
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v15, 0x7f0902aa

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llFavoriteNoitem:Landroid/widget/LinearLayout;

    .line 944
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v15, 0x7f0902ab

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtFavoriteNoitem:Landroid/widget/TextView;

    .line 945
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v15, 0x7f0902a8

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;

    .line 948
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 952
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const v15, 0x7f09021b

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 953
    .local v7, "mContactPhoto":Landroid/widget/ImageView;
    const v14, 0x7f0203a6

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 956
    const/high16 v14, 0x44a00000

    cmpl-float v14, v3, v14

    if-eqz v14, :cond_6

    const/high16 v14, 0x44480000

    cmpl-float v14, v3, v14

    if-nez v14, :cond_f

    .line 957
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v15, 0x7f090250

    invoke-virtual {v14, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 958
    .local v12, "rlTop":Landroid/widget/RelativeLayout;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 959
    .local v5, "lpTop":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 960
    .local v4, "lpDigits":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 961
    .local v11, "mlpDigits":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    if-eqz v14, :cond_0

    .line 962
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 964
    .local v10, "mlpAddBtnTablet":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    .line 965
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0035

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 966
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b0035

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 968
    const/4 v14, -0x1

    iput v14, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 969
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0148

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 970
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c014a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 971
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0232

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 972
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0236

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 973
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0237

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 974
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0236

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 975
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c023a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 991
    :goto_4
    invoke-virtual {v12, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v14, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v14, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    invoke-virtual {v14, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 890
    .end local v4    # "lpDigits":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "lpTop":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "mContactPhoto":Landroid/widget/ImageView;
    .end local v10    # "mlpAddBtnTablet":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "mlpDigits":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "rlTop":Landroid/widget/RelativeLayout;
    :cond_7
    const-string v14, "feature_kor"

    invoke-static {v14}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 891
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v15, 0x7f090269

    invoke-virtual {v14, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    .line 895
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v15, 0x7f0902a7

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchResult:Landroid/widget/LinearLayout;

    .line 897
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItemLand:Landroid/view/View;

    if-nez v14, :cond_8

    .line 898
    const v14, 0x7f0400a7

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItemLand:Landroid/view/View;

    .line 901
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItemLand:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    goto/16 :goto_1

    .line 893
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v15, 0x7f0902ac

    invoke-virtual {v14, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    goto :goto_5

    .line 920
    .restart local v8    # "mDivideLineLand":Landroid/view/View;
    .restart local v9    # "mDivideLinePort":Landroid/view/View;
    :cond_a
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 921
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    .line 923
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v15, 0x7f090259

    invoke-virtual {v14, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v15, 0x7f09025e

    invoke-virtual {v14, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    .line 925
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 927
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSearchViewCalllogPortContainer:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 928
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSearchViewCalllogLandContainer:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 936
    .end local v8    # "mDivideLineLand":Landroid/view/View;
    .end local v9    # "mDivideLinePort":Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    if-eqz v14, :cond_c

    .line 937
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchResult:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 939
    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_d

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_d

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/4 v15, 0x3

    if-eq v14, v15, :cond_d

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/4 v15, 0x7

    if-ne v14, v15, :cond_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchResult:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 940
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchResult:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 977
    .restart local v4    # "lpDigits":Landroid/view/ViewGroup$LayoutParams;
    .restart local v5    # "lpTop":Landroid/view/ViewGroup$LayoutParams;
    .restart local v7    # "mContactPhoto":Landroid/widget/ImageView;
    .restart local v10    # "mlpAddBtnTablet":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v11    # "mlpDigits":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v12    # "rlTop":Landroid/widget/RelativeLayout;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0146

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 978
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b0146

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 980
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c012f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 981
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0147

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 982
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0231

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 983
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c014b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 984
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0235

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 985
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c014b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_4

    .line 996
    .end local v4    # "lpDigits":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "lpTop":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "mlpAddBtnTablet":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "mlpDigits":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "rlTop":Landroid/widget/RelativeLayout;
    :cond_f
    const/high16 v14, 0x45200000

    cmpl-float v14, v3, v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x44c80000

    cmpl-float v14, v3, v14

    if-nez v14, :cond_12

    .line 997
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v15, 0x7f090250

    invoke-virtual {v14, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 998
    .restart local v12    # "rlTop":Landroid/widget/RelativeLayout;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 999
    .restart local v5    # "lpTop":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1000
    .restart local v4    # "lpDigits":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1001
    .restart local v11    # "mlpDigits":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    if-eqz v14, :cond_0

    .line 1002
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1004
    .restart local v10    # "mlpAddBtnTablet":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_11

    .line 1005
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0035

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b0035

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1008
    const/4 v14, -0x1

    iput v14, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1009
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0148

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1010
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c014a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1011
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0232

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1012
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0236

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1013
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0237

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1014
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0236

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1015
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c023a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1031
    :goto_6
    invoke-virtual {v12, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v14, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v14, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    invoke-virtual {v14, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1017
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0146

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b0146

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c012f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1021
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0147

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1022
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0231

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1023
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c014b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1024
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0235

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1025
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c014b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_6

    .line 1036
    .end local v4    # "lpDigits":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "lpTop":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "mlpAddBtnTablet":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "mlpDigits":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "rlTop":Landroid/widget/RelativeLayout;
    :cond_12
    const-string v14, "feature_wsvga"

    invoke-static {v14}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1037
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v15, 0x7f090250

    invoke-virtual {v14, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 1038
    .restart local v12    # "rlTop":Landroid/widget/RelativeLayout;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1039
    .restart local v5    # "lpTop":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1040
    .restart local v4    # "lpDigits":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1043
    .restart local v11    # "mlpDigits":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    if-eqz v14, :cond_0

    .line 1044
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1046
    .restart local v10    # "mlpAddBtnTablet":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v14, 0x0

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1047
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_13

    .line 1048
    const/high16 v14, 0x44160000

    div-float v2, v3, v14

    .line 1049
    .local v2, "lcdRatio":F
    const/4 v14, -0x1

    iput v14, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1050
    const v14, 0x43f28000

    mul-float/2addr v14, v2

    float-to-int v14, v14

    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1051
    const/high16 v14, 0x429c0000

    mul-float/2addr v14, v2

    float-to-int v14, v14

    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1052
    const/high16 v14, 0x41600000

    mul-float/2addr v14, v2

    float-to-int v14, v14

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1053
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0035

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1064
    :goto_7
    invoke-virtual {v12, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v14, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v14, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    invoke-virtual {v14, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1056
    .end local v2    # "lcdRatio":F
    :cond_13
    const/high16 v14, 0x44800000

    div-float v2, v3, v14

    .line 1057
    .restart local v2    # "lcdRatio":F
    const/high16 v14, 0x44010000

    mul-float/2addr v14, v2

    float-to-int v14, v14

    iput v14, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1058
    const v14, 0x43c88000

    mul-float/2addr v14, v2

    float-to-int v14, v14

    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1059
    const/4 v14, -0x1

    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1060
    const/high16 v14, 0x41600000

    mul-float/2addr v14, v2

    float-to-int v14, v14

    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1061
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b00a3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_7
.end method

.method private setTextWithImage(Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "txtMsg"    # Landroid/widget/TextView;
    .param p2, "res"    # I

    .prologue
    const/4 v3, 0x0

    .line 2237
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2239
    .local v0, "txtWithIcon":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 2259
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2262
    :goto_0
    return-void

    .line 2241
    :pswitch_1
    const-string v1, "%s"

    const-string v2, "<img src=\"guide_icon_call\"/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2242
    new-instance v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$ImageGetter;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$ImageGetter;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V

    invoke-static {v0, v1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2245
    :pswitch_2
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2246
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2247
    const-string v1, "%s"

    const-string v2, "<img src=\"guide_icon_vtcall_skt\"/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2256
    :goto_1
    new-instance v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$ImageGetter;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$ImageGetter;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V

    invoke-static {v0, v1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2248
    :cond_0
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2249
    const-string v1, "%s"

    const-string v2, "<img src=\"guide_icon_vtcall_lgt\"/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2251
    :cond_1
    const-string v1, "%s"

    const-string v2, "<img src=\"guide_icon_vtcall\"/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2254
    :cond_2
    const-string v1, "%s"

    const-string v2, "<img src=\"guide_icon_vtcall\"/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2239
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e043d
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showToast(II)V
    .locals 5
    .param p1, "textResource"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2266
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04016a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2267
    .local v1, "viewToast":Landroid/view/View;
    const v2, 0x7f09034c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2268
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    invoke-static {v2, v3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2269
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2270
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2271
    return-void
.end method


# virtual methods
.method public KeyEvent(Landroid/view/KeyEvent;II)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v8, 0x1

    const/high16 v2, 0x3f800000

    const/4 v4, 0x0

    .line 1592
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 1593
    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getGuideAndSetting(Z)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    move-result-object v7

    .line 1594
    .local v7, "guideData":Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    if-eqz v7, :cond_3

    .line 1595
    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->caculate()V

    .line 1597
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->isPointer:I

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->isPointer:I

    if-nez v0, :cond_3

    iget-object v0, v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1598
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundToneBtn:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1599
    iget-object v0, v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->vTarget:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1600
    iget-object v0, v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->vTarget:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runTimerForDisable(Landroid/view/View;)V

    .line 1601
    iget v0, v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->nextStep:I

    iput v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    move v4, v8

    .line 1610
    .end local v7    # "guideData":Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    :cond_2
    :goto_0
    return v4

    .line 1607
    .restart local v7    # "guideData":Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->showInvaliedActoionToast()V

    goto :goto_0
.end method

.method public TouchEvent(Landroid/view/MotionEvent;II)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v8, 0x1

    const/high16 v2, 0x3f800000

    const/4 v4, 0x0

    .line 1569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 1570
    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getGuideAndSetting(Z)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    move-result-object v7

    .line 1571
    .local v7, "guideData":Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    if-eqz v7, :cond_3

    .line 1572
    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->caculate()V

    .line 1574
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->isPointer:I

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->isPointer:I

    if-nez v0, :cond_3

    iget-object v0, v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1575
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundToneBtn:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1576
    iget-object v0, v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->vTarget:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1577
    iget-object v0, v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->vTarget:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runTimerForDisable(Landroid/view/View;)V

    .line 1578
    iget v0, v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->nextStep:I

    iput v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    move v4, v8

    .line 1587
    .end local v7    # "guideData":Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    :cond_2
    :goto_0
    return v4

    .line 1584
    .restart local v7    # "guideData":Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->showInvaliedActoionToast()V

    goto :goto_0
.end method

.method public cancelTimer()V
    .locals 1

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2337
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    .line 2340
    :cond_0
    return-void
.end method

.method public checkOnConfigrationChangeRun()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2175
    iget v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->activityNum:I

    if-nez v2, :cond_0

    .line 2176
    iget v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 2177
    iget v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2189
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2180
    goto :goto_0

    .line 2184
    :cond_2
    iget v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 2185
    goto :goto_0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 2163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isSound:Z

    .line 2164
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2165
    return-void
.end method

.method public enableMsgVisiable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2168
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isMsgVisiable:Z

    .line 2169
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    if-ne v0, v2, :cond_0

    .line 2170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->SetLayoutVisiable(I)V

    .line 2172
    :cond_0
    return-void
.end method

.method public getDigitsText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStep()I
    .locals 1

    .prologue
    .line 2134
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    return v0
.end method

.method public moveBack()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 1074
    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->backStep:I

    if-gez v1, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    .line 1080
    :cond_0
    const/4 v0, 0x0

    .line 1094
    :goto_0
    return v0

    .line 1083
    :cond_1
    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->backStep:I

    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    .line 1084
    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    if-ne v1, v2, :cond_2

    .line 1085
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDigitsText(Ljava/lang/String;)V

    .line 1087
    :cond_2
    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    if-ne v1, v0, :cond_3

    .line 1089
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->emptyString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumberForWritingBuddy(Ljava/lang/String;)V

    .line 1092
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    goto :goto_0
.end method

.method public moveToNextStep()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2152
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getGuideAndSetting(Z)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    move-result-object v0

    .line 2154
    .local v0, "guideData":Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    if-eqz v0, :cond_0

    .line 2155
    iget v1, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->nextStep:I

    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    .line 2156
    const/4 v1, 0x1

    .line 2159
    :cond_0
    return v1
.end method

.method public resetGuide()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 352
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setLayout()V

    .line 353
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setPhoneLayout()V

    .line 354
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setTabletLayout()V

    .line 358
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090323

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideBack:Landroid/widget/ImageView;

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090327

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090326

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePicker:Landroid/widget/ImageView;

    .line 361
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090324

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideLayoutMsg:Landroid/widget/LinearLayout;

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090325

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsg:Landroid/widget/TextView;

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09032a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsgClose:Landroid/widget/LinearLayout;

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsgClose:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsgClose:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideMsgCloseActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 369
    .local v0, "lParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 370
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 371
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 376
    .restart local v0    # "lParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 377
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 378
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePicker:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideLayoutMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 381
    .restart local v0    # "lParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 382
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 383
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideLayoutMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isLoaded:Z

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 388
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->timerForAni:Landroid/os/CountDownTimer;

    .line 393
    :cond_1
    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 394
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    const v2, 0x7f02065b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 402
    :cond_2
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090234

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200e3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 408
    :cond_3
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 409
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 410
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnZero:Landroid/widget/ImageButton;

    const v2, 0x7f02017f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    const-string v1, "feature_volte_only"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnVoiceCall:Landroid/widget/ImageButton;

    const v2, 0x7f020322

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->animationInit(Landroid/content/Context;)V

    .line 429
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0195

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->edgeSize:I

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->edgeSizeTop:I

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0455

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sResult:Ljava/lang/String;

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e02e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sFavorites:Ljava/lang/String;

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->screenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 436
    return-void

    .line 416
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnZero:Landroid/widget/ImageButton;

    const v2, 0x7f02017c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 417
    const-string v1, "feature_volte_only"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnVoiceCall:Landroid/widget/ImageButton;

    const v2, 0x7f02028b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public resultFromContact(Z)I
    .locals 1
    .param p1, "isOk"    # Z

    .prologue
    const/4 v0, 0x6

    .line 1337
    if-eqz p1, :cond_0

    .line 1338
    iput v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    .line 1340
    :goto_0
    return v0

    :cond_0
    iput v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    goto :goto_0
.end method

.method public runGuide()Z
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, -0x2

    const/4 v12, 0x3

    const/16 v11, 0xa

    const/4 v3, 0x1

    .line 1100
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1101
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1103
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1104
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1108
    .local v0, "maxSize":I
    :goto_0
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->SetLayoutVisiable(I)V

    .line 1110
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->checkCallScreenShow()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1189
    :goto_1
    return v3

    .line 1106
    .end local v0    # "maxSize":I
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .restart local v0    # "maxSize":I
    goto :goto_0

    .line 1112
    :cond_1
    iget v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    iput v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->previousStep:I

    .line 1114
    invoke-direct {p0, v3}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getGuideAndSetting(Z)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideData:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    .line 1116
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideData:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_1

    .line 1118
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isSound:Z

    .line 1119
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideData:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget v5, v5, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->previousStep:I

    iput v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->backStep:I

    .line 1122
    iget v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    if-ne v5, v12, :cond_3

    iget v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    if-eq v5, v3, :cond_4

    :cond_3
    iget v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    if-ne v5, v12, :cond_b

    iget v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_b

    .line 1124
    :cond_4
    iget v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    if-ne v5, v3, :cond_a

    .line 1125
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0e04cf

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0e04d4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    :cond_5
    :goto_2
    iget v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    if-ne v4, v12, :cond_6

    iget v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    .line 1139
    :cond_6
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1143
    .local v1, "msgParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1144
    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1145
    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1146
    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1148
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideLayoutMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1149
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsg:Landroid/widget/TextView;

    add-int/lit8 v5, v0, -0x64

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1154
    .end local v1    # "msgParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runSetLocation:Ljava/lang/Runnable;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vPost:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 1155
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vPost:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runSetLocation:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1157
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->onGLL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v4, :cond_9

    .line 1158
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->onGLL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1160
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1162
    new-instance v4, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$5;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V

    iput-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runSetLocation:Ljava/lang/Runnable;

    .line 1174
    new-instance v4, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$6;-><init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V

    iput-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->onGLL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1187
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->onGLL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_1

    .line 1127
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsg:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0e04d2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1130
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideData:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget v4, v4, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->msgRes:I

    if-eqz v4, :cond_5

    .line 1131
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsg:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideData:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    iget v5, v5, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->msgRes:I

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setTextWithImage(Landroid/widget/TextView;I)V

    goto :goto_2
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 1
    .param p1, "_contactName"    # Ljava/lang/String;

    .prologue
    .line 2142
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;

    .line 2143
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2144
    const-string v0, "0123"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;

    .line 2145
    :cond_0
    return-void
.end method

.method public setDialNumberForWritingBuddy(Ljava/lang/String;)V
    .locals 10
    .param p1, "inputText"    # Ljava/lang/String;

    .prologue
    .line 1848
    if-nez p1, :cond_1

    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-eqz v7, :cond_1

    .line 1850
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtFavoriteNoitem:Landroid/widget/TextView;

    const v8, 0x7f0e0085

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1851
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sFavorites:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1852
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1853
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llFavoriteNoitem:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1854
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1855
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2039
    :cond_0
    :goto_0
    return-void

    .line 1859
    :cond_1
    if-eqz p1, :cond_0

    .line 1862
    const/16 v2, 0xa

    .line 1864
    .local v2, "machedNumberCount":I
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mWbReceivedText:Ljava/lang/String;

    .line 1865
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1867
    .local v4, "nLen":I
    const-string v7, "GuideDialer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDialNumberForWritingBuddy  nLen="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    sget-object v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->tempNumber:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1869
    packed-switch v4, :pswitch_data_0

    .line 1895
    :goto_1
    if-nez v4, :cond_2

    .line 1896
    const/4 v2, 0x0

    .line 1898
    :cond_2
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v7, :cond_3

    .line 1899
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1900
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090296

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1901
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090259

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1904
    :cond_3
    move-object v0, p1

    .line 1905
    .local v0, "args_number":Ljava/lang/String;
    sget-object v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->tempNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1907
    .local v1, "inumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1908
    .local v3, "mlength":I
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1910
    .local v6, "temp_length":I
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1911
    .local v5, "numberResultString":Landroid/text/SpannableString;
    packed-switch v2, :pswitch_data_1

    .line 2006
    :goto_2
    sget-object v7, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->tempNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getDigitsText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getStep()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    .line 2007
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setStep(I)V

    .line 2008
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    .line 2011
    :cond_4
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v7, :cond_0

    .line 2012
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0902a1

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1871
    .end local v0    # "args_number":Ljava/lang/String;
    .end local v1    # "inumber":Ljava/lang/String;
    .end local v3    # "mlength":I
    .end local v5    # "numberResultString":Landroid/text/SpannableString;
    .end local v6    # "temp_length":I
    :pswitch_0
    const/4 v2, 0x0

    .line 1872
    goto :goto_1

    .line 1875
    :pswitch_1
    const/4 v2, 0x1

    .line 1876
    goto :goto_1

    .line 1880
    :pswitch_2
    const/4 v2, 0x2

    .line 1881
    goto :goto_1

    .line 1885
    :pswitch_3
    const/4 v2, 0x3

    .line 1886
    goto :goto_1

    .line 1889
    :pswitch_4
    const/4 v2, 0x4

    .line 1890
    goto :goto_1

    .line 1913
    .restart local v0    # "args_number":Ljava/lang/String;
    .restart local v1    # "inumber":Ljava/lang/String;
    .restart local v3    # "mlength":I
    .restart local v5    # "numberResultString":Landroid/text/SpannableString;
    .restart local v6    # "temp_length":I
    :pswitch_5
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v7, :cond_5

    .line 1914
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1916
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1917
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtFavoriteNoitem:Landroid/widget/TextView;

    const v8, 0x7f0e0085

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1918
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sFavorites:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1919
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1920
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llFavoriteNoitem:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1921
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 1926
    :pswitch_6
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1927
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v7, :cond_6

    .line 1928
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090259

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1930
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llFavoriteNoitem:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1931
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sResult:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (0)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1932
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1933
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2

    .line 1937
    :pswitch_7
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b00ec

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v8, v3, v6

    const/16 v9, 0x12

    invoke-virtual {v5, v7, v6, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1939
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1940
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v7, :cond_7

    .line 1941
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090259

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1942
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090296

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1943
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090298

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0203a7

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1944
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f09029b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1947
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f09029f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1948
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f0902a3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "9"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1950
    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llFavoriteNoitem:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1951
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const v8, 0x7f09021e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1952
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const v8, 0x7f090222

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1953
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sResult:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (1)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1954
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1955
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2

    .line 1959
    :pswitch_8
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b00ec

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v8, v3, v6

    const/16 v9, 0x12

    invoke-virtual {v5, v7, v6, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1961
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1962
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v7, :cond_8

    .line 1963
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090259

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1964
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090296

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1965
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090298

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0203a7

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1966
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f09029b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1970
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f09029f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1971
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f0902a3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "3"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1973
    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llFavoriteNoitem:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1974
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const v8, 0x7f09021e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1975
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const v8, 0x7f090222

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1976
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sResult:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (1)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1977
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1978
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2

    .line 1982
    :pswitch_9
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b00ec

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v8, v3, v6

    const/16 v9, 0x12

    invoke-virtual {v5, v7, v6, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1984
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1985
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v7, :cond_9

    .line 1986
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090259

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1987
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090296

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1988
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090298

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0203a7

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1989
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f09029b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1990
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f09029f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1991
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f0902a3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "1"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1993
    :cond_9
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llFavoriteNoitem:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1994
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const v8, 0x7f09021e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1995
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const v8, 0x7f090222

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1996
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sResult:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (1)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1997
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1998
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2

    .line 2015
    .end local v0    # "args_number":Ljava/lang/String;
    .end local v1    # "inumber":Ljava/lang/String;
    .end local v3    # "mlength":I
    .end local v5    # "numberResultString":Landroid/text/SpannableString;
    .end local v6    # "temp_length":I
    :cond_a
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z

    if-nez v7, :cond_b

    .line 2016
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2017
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090296

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2018
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090259

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2019
    if-eqz v4, :cond_0

    .line 2020
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2021
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;

    const v8, 0x7f090259

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2024
    :cond_b
    if-eqz v4, :cond_c

    .line 2025
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llFavoriteNoitem:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2026
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sResult:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (0)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2027
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2028
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2030
    :cond_c
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtFavoriteNoitem:Landroid/widget/TextView;

    const v8, 0x7f0e0085

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 2031
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sFavorites:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2032
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2033
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llFavoriteNoitem:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2034
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1869
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 1911
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setDigitsText(Ljava/lang/String;)V
    .locals 1
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2344
    return-void
.end method

.method public setEasyMode(Z)V
    .locals 0
    .param p1, "_isEasyMode"    # Z

    .prologue
    .line 2148
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isEasyMode:Z

    .line 2149
    return-void
.end method

.method public setGuideLocation(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;)V
    .locals 13
    .param p1, "guideData"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v8, -0x2

    const/4 v9, 0x3

    .line 1205
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1206
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1207
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1208
    .local v6, "width":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1211
    .local v0, "height":I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1212
    .local v4, "pointerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideLayoutMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1213
    .local v2, "msgParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1217
    .local v3, "pickerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerX:I

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1218
    iget v7, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerY:I

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1219
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1221
    iget v7, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pickerType:I

    packed-switch v7, :pswitch_data_0

    .line 1234
    :goto_0
    :pswitch_0
    iget v7, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerX:I

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePicker:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1235
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePicker:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1238
    iget v7, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerX:I

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideLayoutMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v1, v7, v8

    .line 1239
    .local v1, "msgLeft":I
    const/16 v7, 0xa

    if-ge v1, v7, :cond_0

    .line 1240
    const/16 v1, 0xa

    .line 1241
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideLayoutMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v8, v6, -0xa

    if-le v7, v8, :cond_1

    .line 1242
    add-int/lit8 v7, v6, -0xa

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideLayoutMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int v1, v7, v8

    .line 1244
    :cond_1
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1245
    const/16 v7, 0xa

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1248
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideLayoutMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1250
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isLoaded:Z

    .line 1252
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideLayoutMsg:Landroid/widget/LinearLayout;

    iget v8, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->isMsg:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1254
    iget v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    if-ne v7, v9, :cond_6

    iget v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    if-eq v7, v9, :cond_2

    iget v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    if-eq v7, v12, :cond_2

    iget v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    .line 1255
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePicker:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1259
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    iget v8, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->isPointer:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1261
    iget v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I

    if-ne v7, v9, :cond_3

    iget v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    if-ne v7, v12, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsgClose:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_3

    .line 1262
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideMsgClose:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    :cond_3
    iget v7, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->isPointer:I

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isMsgVisiable:Z

    if-eqz v7, :cond_7

    .line 1266
    iput v10, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->aniTime:I

    .line 1267
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mFadingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1274
    :goto_2
    iget v7, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->isMsg:I

    if-nez v7, :cond_8

    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isMsgVisiable:Z

    if-eqz v7, :cond_8

    .line 1275
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideLayoutMsg:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1276
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePicker:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 1277
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePicker:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mShowAnimationPicker:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1285
    :cond_4
    :goto_3
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isMsgVisiable:Z

    if-nez v7, :cond_5

    .line 1286
    invoke-direct {p0, v11}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->SetLayoutVisiable(I)V

    .line 1290
    :cond_5
    return-void

    .line 1223
    .end local v1    # "msgLeft":I
    :pswitch_1
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePicker:Landroid/widget/ImageView;

    const v8, 0x7f02065e

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1224
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePicker:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1225
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->edgeSize:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideLayoutMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 1228
    :pswitch_2
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePicker:Landroid/widget/ImageView;

    const v8, 0x7f020660

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1229
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1230
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePicker:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->edgeSizeTop:I

    sub-int/2addr v7, v8

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 1257
    .restart local v1    # "msgLeft":I
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePicker:Landroid/widget/ImageView;

    iget v8, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->isMsg:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1269
    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    .line 1270
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mFadingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7}, Landroid/view/animation/Animation;->cancel()V

    .line 1271
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mFlashingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7}, Landroid/view/animation/Animation;->cancel()V

    goto/16 :goto_2

    .line 1279
    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuideLayoutMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    .line 1280
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePicker:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    .line 1281
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7}, Landroid/view/animation/Animation;->cancel()V

    .line 1282
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mShowAnimationPicker:Landroid/view/animation/Animation;

    invoke-virtual {v7}, Landroid/view/animation/Animation;->cancel()V

    goto :goto_3

    .line 1221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setStep(I)V
    .locals 0
    .param p1, "_step"    # I

    .prologue
    .line 2138
    iput p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I

    .line 2139
    return-void
.end method

.method public showInvaliedActoionToast()V
    .locals 3

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e0432

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1616
    return-void
.end method
