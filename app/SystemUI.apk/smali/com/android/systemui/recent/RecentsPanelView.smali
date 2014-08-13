.class public Lcom/android/systemui/recent/RecentsPanelView;
.super Landroid/widget/FrameLayout;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/recent/RecentsCallback;
.implements Lcom/android/systemui/statusbar/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnTouchShortcutIcon;,
        Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;,
        Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;,
        Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;,
        Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;,
        Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    }
.end annotation


# static fields
.field private static final ASSIST_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field private static final CONTROL_PANEL_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.controlpanel.activity.JobManagerActivity"

.field private static final CONTROL_PANEL_PACKAGE:Ljava/lang/String; = "com.sec.android.app.controlpanel"

.field static final DB_RECENT_MENUKEY_DIALOG_CHECKED:Ljava/lang/String; = "recent_menukey_dialog_do_not_show"

.field static final DB_RECENT_MENUKEY_DIALOG_CHECKING:Ljava/lang/String; = "recent_menukey_dialog_do_not_show_checking"

.field static final DEBUG:Z

.field private static final GOOGLEBUTTON_3RDAPP:I = 0x2

.field private static final GOOGLEBUTTON_DEFAULT:I = 0x0

.field private static final GOOGLEBUTTON_NONE:I = 0x3

.field private static final GOOGLEBUTTON_SEARCH:I = 0x1

.field private static final MAX_NUM_SHORTCUT_BUTTONS:I = 0x4

.field private static final PATTERN_COMMA:Ljava/util/regex/Pattern;

.field private static final RECENTSPANEL_CLOSE:Ljava/lang/String; = "com.android.systemui.recent.RECENTSPANEL_CLOSE"

.field private static final RECENTSPANEL_OPEN:Ljava/lang/String; = "com.android.systemui.recent.RECENTSPANEL_OPEN"

.field private static final SHOW_HELP_POPUP:I = 0x1

.field static final TAG:Ljava/lang/String; = "RecentsPanelView"

.field private static final TASK_MANAGER_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.taskmanager.activity.TaskManagerActivity"

.field private static final TASK_MANAGER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.taskmanager"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-RecentsPanelView"

.field public static processed:Z


# instance fields
.field private DELAY_SHOW_RECENTMENU_HELPPOPUP:I

.field private lastDegrees:I

.field private mAnimateIconOfFirstTask:Z

.field private mCallUiHiddenBeforeNextReload:Z

.field private mDisableAlertCheckBox:Landroid/widget/CheckBox;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFitThumbnailToXY:Z

.field private mHandler:Landroid/os/Handler;

.field private mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

.field private mHighEndGfx:Z

.field private mIsTaskManagerInstalled:Z

.field private mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

.field private mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mNoRecentApp:Landroid/widget/TextView;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mRecentItemLayoutId:I

.field private mRecentTaskDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

.field private mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

.field private mRecentsDivider01:Landroid/widget/LinearLayout;

.field private mRecentsDivider02:Landroid/widget/LinearLayout;

.field private mRecentsGoogleButton:Landroid/view/View;

.field private mRecentsLaunchButton:Landroid/view/View;

.field private mRecentsNoApps:Landroid/view/View;

.field private mRecentsRemoveAllButton:Landroid/view/View;

.field private mRecentsScrim:Landroid/view/View;

.field private mResouces:Landroid/content/res/Resources;

.field private mShortcutComponentNames:[Ljava/lang/String;

.field private mShowRecentApplicationShortCut:Z

.field private mShowRecentGoogleNowButton:Z

.field private mShowing:Z

.field private mThumbnailWidth:I

.field private mUserRotationObserver:Landroid/database/ContentObserver;

.field private mWaitingForWindowAnimation:Z

.field private mWaitingToShow:Z

.field private mWindowAnimationStartTime:J

.field private mWindowManager:Landroid/view/WindowManager;

.field private misAvailableHelpHub:Z

.field private orientationListener:Landroid/view/OrientationEventListener;

.field private recentButton:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 138
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/recent/RecentsPanelView;->DEBUG:Z

    .line 205
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recent/RecentsPanelView;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    .line 224
    sput-boolean v1, Lcom/android/systemui/recent/RecentsPanelView;->processed:Z

    return-void

    :cond_0
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 478
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 481
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    iput-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    .line 156
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->DELAY_SHOW_RECENTMENU_HELPPOPUP:I

    .line 206
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    .line 225
    iput-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUserRotationObserver:Landroid/database/ContentObserver;

    .line 226
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->misAvailableHelpHub:Z

    .line 1024
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsPanelView$9;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHandler:Landroid/os/Handler;

    .line 482
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateValuesFromResources()V

    .line 484
    sget-object v1, Lcom/android/systemui/R$styleable;->RecentsPanelView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 487
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    .line 488
    invoke-static {p1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 489
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 491
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    .line 492
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->isTaskManagerInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->isControlPanelInstalled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    .line 496
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    .line 498
    sget-boolean v1, Lcom/android/systemui/recent/RecentsPanelView;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 499
    const-string v1, "STATUSBAR-RecentsPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecentsPanelView() : mShowRecentApplicationShortCut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowManager:Landroid/view/WindowManager;

    .line 504
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mResouces:Landroid/content/res/Resources;

    .line 505
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mDisplayWidth:I

    .line 506
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mDisplayHeight:I

    .line 508
    return-void

    :cond_2
    move v1, v2

    .line 492
    goto :goto_0

    :cond_3
    move v3, v2

    .line 496
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/OrientationEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->orientationListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/OrientationEventListener;)Landroid/view/OrientationEventListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->orientationListener:Landroid/view/OrientationEventListener;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/IRecentsUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->lastDegrees:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/recent/RecentsPanelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->lastDegrees:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/recent/RecentsPanelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mDisplayWidth:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/recent/RecentsPanelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mDisplayHeight:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/recent/RecentsPanelView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3502(Lcom/android/systemui/recent/RecentsPanelView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # Landroid/widget/PopupMenu;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/recent/RecentsPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->isTaskManagerInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/recent/RecentsPanelView;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private animateInIconOfFirstTask()V
    .locals 15

    .prologue
    .line 1544
    iget-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v11}, Lcom/android/systemui/recent/RecentTasksLoader;->isFirstScreenful()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowAnimationStartTime:J

    sub-long/2addr v11, v13

    long-to-int v8, v11

    .line 1548
    .local v8, "timeSinceWindowAnimation":I
    const/16 v6, 0x96

    .line 1549
    .local v6, "minStartDelay":I
    const/4 v11, 0x0

    rsub-int v12, v8, 0x96

    const/16 v13, 0x96

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1551
    .local v7, "startDelay":I
    const/16 v2, 0xfa

    .line 1552
    .local v2, "duration":I
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 1553
    .local v3, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v11, 0x3fc00000

    invoke-direct {v1, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 1554
    .local v1, "cubic":Landroid/animation/TimeInterpolator;
    iget-object v11, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-static {v11}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 1555
    const/4 v11, 0x3

    new-array v0, v11, [Landroid/view/View;

    const/4 v11, 0x0

    iget-object v12, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    aput-object v12, v0, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    aput-object v12, v0, v11

    const/4 v11, 0x2

    iget-object v12, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    aput-object v12, v0, v11

    .local v0, "arr$":[Landroid/view/View;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v9, v0, v4

    .line 1558
    .local v9, "v":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 1559
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/high16 v12, 0x3f800000

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    int-to-long v12, v7

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0xfa

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 1562
    .local v10, "vpa":Landroid/view/ViewPropertyAnimator;
    new-instance v11, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;

    invoke-direct {v11, v10, v9}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 1555
    .end local v10    # "vpa":Landroid/view/ViewPropertyAnimator;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1565
    .end local v9    # "v":Landroid/view/View;
    :cond_1
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 1566
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 1568
    .end local v0    # "arr$":[Landroid/view/View;
    .end local v1    # "cubic":Landroid/animation/TimeInterpolator;
    .end local v2    # "duration":I
    .end local v3    # "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "minStartDelay":I
    .end local v7    # "startDelay":I
    .end local v8    # "timeSinceWindowAnimation":I
    :cond_2
    return-void
.end method

.method private checkAssistAppIsInstalled()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2063
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "search"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v6, -0x2

    invoke-virtual {v3, v5, v4, v6}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v2

    .line 2066
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 2067
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2068
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 2069
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2070
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 2083
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "component":Landroid/content/ComponentName;
    :goto_0
    return v3

    .line 2074
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "component":Landroid/content/ComponentName;
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2076
    const/4 v3, 0x1

    goto :goto_0

    .line 2078
    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    .line 2083
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "component":Landroid/content/ComponentName;
    :cond_2
    const/4 v3, 0x3

    goto :goto_0
.end method

.method private createCustomAnimations(Landroid/animation/LayoutTransition;)V
    .locals 3
    .param p1, "transitioner"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 1453
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 1454
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 1455
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 1456
    return-void
.end method

.method private getHelpVersionCode()I
    .locals 6

    .prologue
    .line 984
    const/4 v1, 0x1

    .line 987
    .local v1, "helpVersionCode":I
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 988
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 992
    const/4 v1, 0x1

    .line 1015
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    const-string v3, "STATUSBAR-RecentsPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHelpVersionCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    return v1

    .line 994
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 999
    const/4 v1, 0x2

    goto :goto_0

    .line 1001
    :cond_2
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1009
    const/4 v1, 0x3

    goto :goto_0

    .line 1011
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 2234
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 2236
    .local v1, "mAM":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    .line 2238
    .local v2, "mIconDpi":I
    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2243
    .local v3, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    .line 2239
    .end local v3    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 2240
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private isControlPanelInstalled()Z
    .locals 6

    .prologue
    .line 2042
    const/4 v2, 0x0

    .line 2044
    .local v2, "useControlPanel":Z
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.controlpanel"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2046
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 2047
    const/4 v2, 0x1

    .line 2055
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 2049
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2051
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 2052
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 2053
    const-string v3, "RecentsPanelView"

    const-string v4, "CONTROL_PANEL_PACKAGE not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isEnableEmergencyMode(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x200

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2286
    if-nez p0, :cond_1

    .line 2302
    :cond_0
    :goto_0
    return v5

    .line 2289
    :cond_1
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 2290
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    const/4 v1, 0x0

    .line 2291
    .local v1, "isEmergencyMode":Z
    const/4 v3, 0x0

    .line 2292
    .local v3, "isUltraPowerSavingMode":Z
    const/4 v2, 0x0

    .line 2293
    .local v2, "isEmergencyOrUPSM":Z
    if-eqz v0, :cond_2

    .line 2294
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    .line 2295
    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    .line 2297
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    .line 2298
    const-string v6, "RecentsPanelView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmergencyMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isUltraPowerSavingMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isEmergencyOrUPSM:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    :cond_2
    const/4 v0, 0x0

    .line 2302
    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    move v1, v5

    .line 2294
    goto :goto_1

    :cond_5
    move v3, v5

    .line 2295
    goto :goto_2
.end method

.method private isTaskManagerInstalled()Z
    .locals 6

    .prologue
    .line 2025
    const/4 v2, 0x0

    .line 2027
    .local v2, "useTaskManager":Z
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.taskmanager"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2029
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->isEnableEmergencyMode(Landroid/content/Context;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 2030
    const/4 v2, 0x1

    .line 2038
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 2032
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2034
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 2035
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 2036
    const-string v3, "RecentsPanelView"

    const-string v4, "TASK_MANAGER_PACKAGE not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2211
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2213
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v4, :cond_1

    .line 2214
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2215
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 2229
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 2219
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 2220
    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    .line 2221
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/recent/RecentsPanelView;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2222
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 2229
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2226
    :catch_0
    move-exception v1

    .line 2227
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "RecentsPanelView"

    const-string v5, "Couldn\'t find resources for package"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private makeTraybarHelpPopupLayout(Z)V
    .locals 25
    .param p1, "isChecking"    # Z

    .prologue
    .line 675
    const-string v22, "STATUSBAR-RecentsPanelView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "makeTraybarHelpPopupLayout isChecking : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :try_start_0
    new-instance v6, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x1030128

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v6, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 685
    .local v6, "dialogContext":Landroid/content/Context;
    const-string v22, "layout_inflater"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 687
    .local v15, "layoutInflater":Landroid/view/LayoutInflater;
    const v22, 0x7f04002c

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 689
    .local v21, "trayBarHelpPopupView":Landroid/view/View;
    if-nez v21, :cond_1

    .line 690
    const-string v22, "STATUSBAR-RecentsPanelView"

    const-string v23, "trayBarHelpPopupView is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    .end local v6    # "dialogContext":Landroid/content/Context;
    .end local v15    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v21    # "trayBarHelpPopupView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 694
    .restart local v6    # "dialogContext":Landroid/content/Context;
    .restart local v15    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v21    # "trayBarHelpPopupView":Landroid/view/View;
    :cond_1
    const v22, 0x7f0800d7

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 695
    .local v4, "container":Landroid/view/View;
    new-instance v22, Lcom/android/systemui/recent/RecentsPanelView$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$1;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 713
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v22, :cond_2

    .line 715
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 716
    .local v7, "dispMetrix":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 717
    .local v8, "display":Landroid/view/Display;
    invoke-virtual {v8, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 718
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mDisplayWidth:I

    .line 719
    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mDisplayHeight:I

    .line 720
    const-string v22, "STATUSBAR-RecentsPanelView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "makeTraybarHelpPopupLayout w : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mDisplayWidth:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " h:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mDisplayHeight:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .end local v7    # "dispMetrix":Landroid/util/DisplayMetrics;
    .end local v8    # "display":Landroid/view/Display;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsPanelView;->dismissHelpPopupWindowTraybar()V

    .line 729
    new-instance v22, Landroid/widget/PopupWindow;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mDisplayWidth:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mDisplayHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$2;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 747
    const v22, 0x7f0800da

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$3;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 760
    :cond_3
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRecentMenuStringForVZW:Z

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 763
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsPanelView;->getHelpVersionCode()I

    move-result v14

    .line 765
    .local v14, "helpVersionCode":I
    const v22, 0x7f0800d9

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 769
    .local v13, "helpText":Landroid/widget/TextView;
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRecentMenuStringForVZW:Z

    if-eqz v22, :cond_5

    .line 770
    const v22, 0x7f0b0219

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    .line 789
    :goto_1
    const v22, 0x7f0800db

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 792
    .local v10, "helpButton":Landroid/widget/Button;
    new-instance v22, Lcom/android/systemui/recent/RecentsPanelView$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/recent/RecentsPanelView$4;-><init>(Lcom/android/systemui/recent/RecentsPanelView;I)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->misAvailableHelpHub:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v14, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/recent/RecentsPanelView;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 828
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 832
    :goto_2
    const v22, 0x7f0800dc

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 834
    .local v11, "helpDivider":Landroid/widget/LinearLayout;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 836
    const v22, 0x7f0800dd

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 838
    .local v18, "okButton":Landroid/widget/Button;
    new-instance v22, Lcom/android/systemui/recent/RecentsPanelView$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$5;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 849
    const v22, 0x7f0800d8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 851
    .local v12, "helpPopupContainer":Landroid/widget/LinearLayout;
    const v22, 0x7f0800de

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 853
    .local v3, "bottomPicker":Landroid/widget/ImageView;
    const v22, 0x7f0800e1

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 855
    .local v19, "rightPicker":Landroid/widget/ImageView;
    const v22, 0x7f0800e0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 857
    .local v16, "leftPicker":Landroid/widget/ImageView;
    const v22, 0x7f0800df

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 861
    .local v20, "topPicker":Landroid/widget/ImageView;
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v22, :cond_a

    .line 862
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout$LayoutParams;

    .line 864
    .local v17, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0xc

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 865
    const/16 v22, 0xe

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 866
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getRotation()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->lastDegrees:I

    .line 869
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 870
    .local v9, "displayMetrix":Landroid/util/DisplayMetrics;
    new-instance v22, Lcom/android/systemui/recent/RecentsPanelView$6;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/recent/RecentsPanelView$6;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->orientationListener:Landroid/view/OrientationEventListener;

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->orientationListener:Landroid/view/OrientationEventListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/OrientationEventListener;->enable()V

    .line 891
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRecentMenuStringForVZW:Z

    if-eqz v22, :cond_0

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0202af

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 977
    .end local v3    # "bottomPicker":Landroid/widget/ImageView;
    .end local v4    # "container":Landroid/view/View;
    .end local v6    # "dialogContext":Landroid/content/Context;
    .end local v9    # "displayMetrix":Landroid/util/DisplayMetrics;
    .end local v10    # "helpButton":Landroid/widget/Button;
    .end local v11    # "helpDivider":Landroid/widget/LinearLayout;
    .end local v12    # "helpPopupContainer":Landroid/widget/LinearLayout;
    .end local v13    # "helpText":Landroid/widget/TextView;
    .end local v14    # "helpVersionCode":I
    .end local v15    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v16    # "leftPicker":Landroid/widget/ImageView;
    .end local v17    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18    # "okButton":Landroid/widget/Button;
    .end local v19    # "rightPicker":Landroid/widget/ImageView;
    .end local v20    # "topPicker":Landroid/widget/ImageView;
    .end local v21    # "trayBarHelpPopupView":Landroid/view/View;
    :catch_0
    move-exception v22

    goto/16 :goto_0

    .line 773
    .restart local v4    # "container":Landroid/view/View;
    .restart local v6    # "dialogContext":Landroid/content/Context;
    .restart local v13    # "helpText":Landroid/widget/TextView;
    .restart local v14    # "helpVersionCode":I
    .restart local v15    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v21    # "trayBarHelpPopupView":Landroid/view/View;
    :cond_5
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRecentMenuStringForATT:Z

    if-eqz v22, :cond_6

    .line 774
    const v22, 0x7f0b021c

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 777
    :cond_6
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v14, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/recent/RecentsPanelView;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->misAvailableHelpHub:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    .line 778
    :cond_7
    const v22, 0x7f0b021b

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 786
    :cond_8
    const v22, 0x7f0b0218

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 830
    .restart local v10    # "helpButton":Landroid/widget/Button;
    :cond_9
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 897
    .restart local v3    # "bottomPicker":Landroid/widget/ImageView;
    .restart local v11    # "helpDivider":Landroid/widget/LinearLayout;
    .restart local v12    # "helpPopupContainer":Landroid/widget/LinearLayout;
    .restart local v16    # "leftPicker":Landroid/widget/ImageView;
    .restart local v18    # "okButton":Landroid/widget/Button;
    .restart local v19    # "rightPicker":Landroid/widget/ImageView;
    .restart local v20    # "topPicker":Landroid/widget/ImageView;
    :cond_a
    new-instance v22, Lcom/android/systemui/recent/RecentsPanelView$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/systemui/recent/RecentsPanelView$7;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/widget/LinearLayout;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getRotation()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->lastDegrees:I

    .line 936
    new-instance v22, Lcom/android/systemui/recent/RecentsPanelView$8;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$8;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->orientationListener:Landroid/view/OrientationEventListener;

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->orientationListener:Landroid/view/OrientationEventListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/OrientationEventListener;->enable()V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 957
    .restart local v8    # "display":Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 958
    .local v5, "degrees":I
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 960
    :pswitch_0
    const-string v22, "STATUSBAR-RecentsPanelView"

    const-string v23, "ZERO ,Bottom"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 964
    :pswitch_1
    const-string v22, "RecentsPanelView"

    const-string v23, "90 ,RIGHT"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 968
    :pswitch_2
    const-string v22, "RecentsPanelView"

    const-string v23, "180 ,TOP"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 972
    :pswitch_3
    const-string v22, "RecentsPanelView"

    const-string v23, "270 ,LEFT"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 958
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 515
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 516
    .local v1, "l":I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 517
    .local v2, "r":I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 518
    .local v3, "t":I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 519
    .local v0, "b":I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private refreshRecentTasksList(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p2, "firstScreenful"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1614
    .local p1, "recentTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "refreshRecentTasksList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1617
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recent/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;Z)V

    .line 1621
    :goto_0
    return-void

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground()V

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 1104
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUserRotationObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_0

    .line 1105
    new-instance v2, Lcom/android/systemui/recent/RecentsPanelView$11;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/recent/RecentsPanelView$11;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUserRotationObserver:Landroid/database/ContentObserver;

    .line 1113
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1114
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "user_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1115
    .local v1, "tmp":Landroid/net/Uri;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUserRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1117
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "tmp":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private replaceGoogleButtonTextAndIcon(I)V
    .locals 3
    .param p1, "assist_type"    # I

    .prologue
    const v2, 0x7f02027c

    const/4 v1, 0x0

    .line 2087
    if-nez p1, :cond_3

    .line 2088
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 2089
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    .line 2090
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0b01ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2108
    :cond_0
    :goto_0
    return-void

    .line 2093
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 2096
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2100
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 2101
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonToSearchTextAndIcon()V

    goto :goto_0

    .line 2102
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 2103
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonTo3rdAppTextAndIcon()V

    goto :goto_0

    .line 2105
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private replaceGoogleButtonTo3rdAppTextAndIcon()V
    .locals 24

    .prologue
    .line 2126
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 2127
    .local v15, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "search"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/SearchManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-virtual/range {v20 .. v23}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v12

    .line 2129
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_0

    .line 2130
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 2131
    .local v16, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v16, :cond_0

    .line 2132
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2135
    .local v7, "buttonText":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    const/16 v21, 0x80

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 2139
    .local v13, "metaData":Landroid/os/Bundle;
    if-eqz v13, :cond_1

    const-string v20, "com.android.systemui.action_assist_icon"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .local v11, "iconResId":I
    if-eqz v11, :cond_1

    .line 2141
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v17

    .line 2142
    .local v17, "res":Landroid/content/res/Resources;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2147
    .end local v11    # "iconResId":I
    .end local v17    # "res":Landroid/content/res/Resources;
    .local v6, "buttonIcon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020282

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2149
    .local v4, "SearchIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 2150
    .local v19, "width":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 2151
    .local v10, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    .line 2153
    .local v18, "scale":F
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_0

    .line 2154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 2155
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2156
    sget-boolean v20, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v20, :cond_2

    .line 2157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2177
    .end local v4    # "SearchIcon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "buttonIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "buttonText":Ljava/lang/String;
    .end local v10    # "height":I
    .end local v13    # "metaData":Landroid/os/Bundle;
    .end local v16    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v18    # "scale":F
    .end local v19    # "width":I
    :cond_0
    :goto_1
    return-void

    .line 2144
    .restart local v7    # "buttonText":Ljava/lang/String;
    .restart local v13    # "metaData":Landroid/os/Bundle;
    .restart local v16    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .restart local v6    # "buttonIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 2159
    .restart local v4    # "SearchIcon":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "height":I
    .restart local v18    # "scale":F
    .restart local v19    # "width":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2170
    .end local v4    # "SearchIcon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "buttonIcon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "height":I
    .end local v13    # "metaData":Landroid/os/Bundle;
    .end local v18    # "scale":F
    .end local v19    # "width":I
    :catch_0
    move-exception v9

    .line 2171
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "RecentsPanelView"

    const-string v21, " (NameNotFoundException e) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2163
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "SearchIcon":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "buttonIcon":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "height":I
    .restart local v13    # "metaData":Landroid/os/Bundle;
    .restart local v18    # "scale":F
    .restart local v19    # "width":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ImageButton;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 2164
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "buttonIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2165
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v18

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    mul-float v21, v21, v18

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2167
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2172
    .end local v4    # "SearchIcon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    .end local v10    # "height":I
    .end local v13    # "metaData":Landroid/os/Bundle;
    .end local v18    # "scale":F
    .end local v19    # "width":I
    :catch_1
    move-exception v14

    .line 2173
    .local v14, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v20, "RecentsPanelView"

    const-string v21, " (Resources.NotFoundException e) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private replaceGoogleButtonToSearchTextAndIcon()V
    .locals 3

    .prologue
    const v2, 0x7f020282

    const/4 v1, 0x0

    .line 2111
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 2112
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    .line 2113
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x104000c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2123
    :cond_0
    :goto_0
    return-void

    .line 2115
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 2119
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private replaceRemoveAllButtonTextAndIcon()V
    .locals 3

    .prologue
    const v2, 0x7f02027b

    const/4 v1, 0x0

    .line 2195
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 2196
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    .line 2197
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0b01ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2207
    :cond_0
    :goto_0
    return-void

    .line 2200
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 2203
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private replaceTaskButtonTextAndIcon()V
    .locals 3

    .prologue
    const v2, 0x7f02027d

    const/4 v1, 0x0

    .line 2180
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 2181
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    .line 2182
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0b01aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2192
    :cond_0
    :goto_0
    return-void

    .line 2185
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 2188
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2189
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 575
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showIfReady()V
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 570
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V

    .line 572
    :cond_0
    return-void
.end method

.method private showImpl(Z)V
    .locals 9
    .param p1, "show"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 584
    const-string v5, "RecentsPanelView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "show: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    .line 587
    if-eqz p1, :cond_d

    .line 589
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "recentapps"

    invoke-static {v5, v7}, Lcom/android/systemui/recent/RecentsPanelView;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 592
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 593
    .local v0, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {v0, v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 658
    .end local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_0
    :goto_0
    return-void

    .line 600
    .restart local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_8

    move v2, v3

    .line 602
    .local v2, "noApps":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    const/high16 v7, 0x3f800000

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 603
    iget-object v7, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v2, :cond_9

    move v5, v4

    :goto_2
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v5, :cond_2

    .line 606
    if-eqz v2, :cond_a

    .line 607
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 608
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 616
    :cond_2
    :goto_3
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v5, :cond_6

    .line 617
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 618
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 620
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceTaskButtonTextAndIcon()V

    .line 622
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v5, :cond_b

    .line 623
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->checkAssistAppIsInstalled()I

    move-result v1

    .line 624
    .local v1, "mAssistApp":I
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 625
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 626
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonTextAndIcon(I)V

    .line 631
    .end local v1    # "mAssistApp":I
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 632
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 635
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceRemoveAllButtonTextAndIcon()V

    .line 637
    :cond_6
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/recent/RecentsPanelView;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 638
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_7

    .line 639
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 646
    :cond_7
    :goto_5
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 647
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 648
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 649
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .end local v2    # "noApps":Z
    :cond_8
    move v2, v4

    .line 600
    goto :goto_1

    .restart local v2    # "noApps":Z
    :cond_9
    move v5, v6

    .line 603
    goto :goto_2

    .line 611
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 612
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    .line 627
    :cond_b
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v5, :cond_4

    .line 628
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider02:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 641
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_7

    .line 642
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 651
    .end local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v2    # "noApps":Z
    :cond_d
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 653
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    .line 654
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_0

    .line 655
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->dismiss()V

    goto/16 :goto_0
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1772
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1774
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1775
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1777
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 1096
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1097
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUserRotationObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUserRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1099
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUserRotationObserver:Landroid/database/ContentObserver;

    .line 1101
    :cond_0
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 3
    .param p1, "h"    # Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "show"    # Z
    .param p4, "anim"    # Z

    .prologue
    .line 1459
    if-eqz p2, :cond_1

    .line 1460
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1461
    if-eqz p3, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    if-eqz p4, :cond_0

    .line 1463
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f05000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1466
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1469
    :cond_1
    return-void
.end method

.method private updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 5
    .param p1, "h"    # Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .param p2, "thumbnail"    # Landroid/graphics/drawable/Drawable;
    .param p3, "show"    # Z
    .param p4, "anim"    # Z

    .prologue
    .line 1472
    if-eqz p2, :cond_4

    .line 1476
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1480
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1483
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    if-eqz v2, :cond_5

    .line 1484
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1493
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1494
    if-eqz p4, :cond_2

    .line 1495
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x7f05000c

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1498
    :cond_2
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1500
    :cond_3
    iput-object p2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 1502
    :cond_4
    return-void

    .line 1486
    :cond_5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1487
    .local v1, "scaleMatrix":Landroid/graphics/Matrix;
    iget v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1488
    .local v0, "scale":F
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1489
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1490
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private updateUiElements()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1638
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1640
    .local v0, "items":I
    :goto_0
    const-string v3, "STATUSBAR-RecentsPanelView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUiElements items:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Showing:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v3, Landroid/view/View;

    if-lez v0, :cond_2

    move v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz v3, :cond_0

    .line 1646
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1649
    .local v1, "numRecentApps":I
    :goto_2
    if-nez v1, :cond_4

    .line 1650
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1657
    .local v2, "recentAppsAccessibilityDescription":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1659
    .end local v1    # "numRecentApps":I
    .end local v2    # "recentAppsAccessibilityDescription":Ljava/lang/String;
    :cond_0
    return-void

    .end local v0    # "items":I
    :cond_1
    move v0, v4

    .line 1638
    goto :goto_0

    .line 1641
    .restart local v0    # "items":I
    :cond_2
    const/16 v5, 0x8

    goto :goto_1

    :cond_3
    move v1, v4

    .line 1646
    goto :goto_2

    .line 1653
    .restart local v1    # "numRecentApps":I
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x7f0e0000

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "recentAppsAccessibilityDescription":Ljava/lang/String;
    goto :goto_3
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 2

    .prologue
    .line 1581
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "clearRecentTasksList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons(Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 1586
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->onTaskLoadingCancelled()V

    .line 1588
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v0}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoHome()V

    .line 1138
    return-void
.end method

.method public dismissAndGoBack()V
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v0}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoBack()V

    .line 1142
    return-void
.end method

.method public dismissHelpPopupWindowTraybar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 663
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "dismissHelpPopupWindowTraybar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "call to dismiss HelpPopupWindowTraybar"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 667
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 668
    iput-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    .line 671
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2251
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2253
    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    .line 2254
    .local v7, "paddingLeft":I
    invoke-virtual {p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v6

    .line 2255
    .local v6, "offsetRequired":Z
    if-eqz v6, :cond_0

    .line 2256
    invoke-virtual {p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v0

    add-int/2addr v7, v0

    .line 2259
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int v2, v0, v7

    .line 2260
    .local v2, "left":I
    iget v0, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v2

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    sub-int v3, v0, v7

    .line 2261
    .local v3, "right":I
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v6}, Landroid/view/View;->getFadeTop(Z)I

    move-result v1

    add-int v4, v0, v1

    .line 2262
    .local v4, "top":I
    invoke-virtual {p0, v6}, Landroid/view/View;->getFadeHeight(Z)I

    move-result v0

    add-int v5, v4, v0

    .line 2264
    .local v5, "bottom":I
    if-eqz v6, :cond_1

    .line 2265
    invoke-virtual {p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v0

    add-int/2addr v3, v0

    .line 2266
    invoke-virtual {p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v0

    add-int/2addr v5, v0

    .line 2268
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->drawFadedEdges(Landroid/graphics/Canvas;IIII)V

    .line 2269
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 1169
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 1170
    .local v1, "y":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1171
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1173
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2277
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2279
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v1}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoBack()V

    .line 2282
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getShowRecentApplicationShortCut()Z
    .locals 1

    .prologue
    .line 2018
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    return v0
.end method

.method public handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "thumbnailView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1789
    sget-boolean v3, Lcom/android/systemui/recent/RecentsPanelView;->processed:Z

    if-eqz v3, :cond_1

    .line 1790
    sput-boolean v2, Lcom/android/systemui/recent/RecentsPanelView;->processed:Z

    .line 1791
    invoke-virtual {p3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1792
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    move-object p2, p1

    .end local p2    # "anchorView":Landroid/view/View;
    :cond_0
    invoke-direct {v1, v3, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1794
    .local v1, "popup":Landroid/widget/PopupMenu;
    iput-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    .line 1797
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 1798
    .local v0, "enableEmergency":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 1799
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const/high16 v3, 0x7f100000

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1804
    :goto_1
    new-instance v2, Lcom/android/systemui/recent/RecentsPanelView$13;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$13;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1826
    new-instance v2, Lcom/android/systemui/recent/RecentsPanelView$14;

    invoke-direct {v2, p0, p3}, Lcom/android/systemui/recent/RecentsPanelView$14;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1833
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 1835
    .end local v0    # "enableEmergency":Z
    .end local v1    # "popup":Landroid/widget/PopupMenu;
    :cond_1
    return-void

    .restart local v1    # "popup":Landroid/widget/PopupMenu;
    :cond_2
    move v0, v2

    .line 1797
    goto :goto_0

    .line 1801
    .restart local v0    # "enableEmergency":Z
    :cond_3
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f100002

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1671
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 1672
    .local v5, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v0, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 1673
    .local v0, "ad":Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1674
    .local v3, "context":Landroid/content/Context;
    const-string v9, "activity"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1677
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .line 1678
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v8, 0x1

    .line 1679
    .local v8, "usingDrawingCache":Z
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v9, v9, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_0

    .line 1680
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1681
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 1683
    const/4 v8, 0x0

    .line 1686
    :cond_0
    if-eqz v8, :cond_1

    .line 1687
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v13}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1688
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1690
    :cond_1
    if-nez v2, :cond_4

    .line 1695
    .local v7, "opts":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0, v12}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 1696
    iget v9, v0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    if-ltz v9, :cond_5

    if-eqz v1, :cond_5

    .line 1698
    sget-boolean v9, Lcom/android/systemui/recent/RecentsPanelView;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 1699
    const-string v9, "RecentsPanelView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " label:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    :cond_2
    iget v9, v0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    invoke-virtual {v1, v9, v13, v7}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1718
    :goto_1
    if-eqz v8, :cond_3

    .line 1719
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1721
    :cond_3
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v9, :cond_7

    .line 1723
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v9}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoBack()V

    .line 1729
    :goto_2
    return-void

    .line 1690
    .end local v7    # "opts":Landroid/os/Bundle;
    :cond_4
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-static {v9, v2, v12, v12, v7}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    goto :goto_0

    .line 1703
    .restart local v7    # "opts":Landroid/os/Bundle;
    :cond_5
    iget-object v6, v0, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    .line 1704
    .local v6, "intent":Landroid/content/Intent;
    const v9, 0x10104000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1707
    sget-boolean v9, Lcom/android/systemui/recent/RecentsPanelView;->DEBUG:Z

    if-eqz v9, :cond_6

    .line 1708
    const-string v9, "RecentsPanelView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_6
    :try_start_0
    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v6, v7, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1712
    :catch_0
    move-exception v4

    .line 1713
    .local v4, "e":Ljava/lang/SecurityException;
    const-string v9, "RecentsPanelView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recents does not have the permission to launch "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1714
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 1715
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "RecentsPanelView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error launching activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1727
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v9}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoHome()V

    goto :goto_2
.end method

.method public handleSwipe(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 1736
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v0, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 1737
    .local v0, "ad":Lcom/android/systemui/recent/TaskDescription;
    if-nez v0, :cond_1

    .line 1738
    const-string v2, "RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to find activity description for swiped task; view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    :cond_0
    :goto_0
    return-void

    .line 1742
    :cond_1
    sget-boolean v2, Lcom/android/systemui/recent/RecentsPanelView;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1743
    const-string v2, "RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Jettison "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 1745
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1748
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->remove(Lcom/android/systemui/recent/TaskDescription;)V

    .line 1753
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 1754
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->dismissAndGoBack()V

    .line 1759
    :cond_4
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1761
    .local v1, "am":Landroid/app/ActivityManager;
    if-eqz v1, :cond_0

    .line 1762
    iget v2, v0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v1, v2, v5}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 1765
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x7f0b009a

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1766
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1767
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 523
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v0, :cond_0

    .line 524
    invoke-direct {p0, p1, p2, p0}, Lcom/android/systemui/recent/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v0

    .line 526
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1180
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    return v0
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->numItemsInOneScreenful()I

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1145
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1148
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz v1, :cond_0

    .line 1149
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 1150
    .local v0, "transitioner":Landroid/animation/LayoutTransition;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1151
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->createCustomAnimations(Landroid/animation/LayoutTransition;)V

    .line 1155
    .end local v0    # "transitioner":Landroid/animation/LayoutTransition;
    :goto_0
    return-void

    .line 1153
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1158
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1161
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1084
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->registerContentObserver()V

    .line 1085
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1086
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1087
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1088
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    .line 1090
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1092
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->unregisterContentObserver()V

    .line 1093
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1094
    return-void
.end method

.method protected onFinishInflate()V
    .locals 29

    .prologue
    .line 1216
    invoke-super/range {p0 .. p0}, Landroid/view/View;->onFinishInflate()V

    .line 1218
    const-string v25, "STATUSBAR-RecentsPanelView"

    const-string v26, "onFinishInflate()"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const/16 v25, 0x1

    sput-boolean v25, Lcom/android/systemui/recent/RecentsPanelView;->processed:Z

    .line 1223
    const v25, 0x7f080096

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/recent/RecentsPanelView$12;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$12;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    invoke-interface/range {v25 .. v26}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setOnScrollListener(Ljava/lang/Runnable;)V

    .line 1230
    new-instance v25, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    .line 1234
    const v25, 0x7f080095

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    .line 1235
    const v25, 0x7f0800b8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    .line 1238
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_17

    .line 1239
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v25, :cond_c

    .line 1240
    const v25, 0x7f0800a6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    .line 1241
    const v25, 0x7f0800a7

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    .line 1242
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v25, :cond_0

    .line 1243
    const v25, 0x7f0800a8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider01:Landroid/widget/LinearLayout;

    .line 1244
    const v25, 0x7f0800aa

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider02:Landroid/widget/LinearLayout;

    .line 1261
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 1262
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v25, :cond_e

    .line 1263
    const v25, 0x7f0800a9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    .line 1271
    :cond_1
    :goto_1
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v25, :cond_10

    .line 1272
    const v25, 0x7f0800ab

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    .line 1280
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v25, v0

    check-cast v25, Landroid/view/ViewGroup;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 1282
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d0006

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v25, v0

    check-cast v25, Landroid/view/ViewGroup;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1286
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v25, :cond_12

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const v26, 0x7f020060

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1310
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 1313
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1315
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    :cond_4
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v25, :cond_5

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1321
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    move/from16 v25, v0

    if-eqz v25, :cond_13

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 1330
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 1333
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v25, :cond_7

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1339
    :cond_7
    const/4 v12, 0x0

    .line 1340
    .local v12, "mBlockRecentApplicationShortCut":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v10

    .line 1341
    .local v10, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v10, :cond_8

    .line 1342
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v25

    if-nez v25, :cond_8

    .line 1343
    const-string v25, "RecentsPanelView"

    const-string v26, "mBlockRecentApplicationShortCut = true"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/4 v12, 0x1

    .line 1350
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    move/from16 v25, v0

    if-eqz v25, :cond_16

    if-nez v12, :cond_16

    .line 1351
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1352
    .local v15, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1354
    .local v21, "shortcutAppList":Ljava/lang/String;
    sget-object v25, Lcom/android/systemui/recent/RecentsPanelView;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    .line 1355
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    .line 1356
    .local v19, "shortCutLayout":[Landroid/widget/LinearLayout;
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Landroid/widget/ImageView;

    move-object/from16 v18, v0

    .line 1357
    .local v18, "shortCutIcons":[Landroid/widget/ImageView;
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v20, v0

    .line 1358
    .local v20, "shortCutTexts":[Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 1360
    .local v14, "numIcons":I
    const/16 v26, 0x0

    const v25, 0x7f08009a

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    aput-object v25, v19, v26

    .line 1361
    const/16 v26, 0x1

    const v25, 0x7f08009d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    aput-object v25, v19, v26

    .line 1362
    const/16 v26, 0x2

    const v25, 0x7f0800a0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    aput-object v25, v19, v26

    .line 1363
    const/16 v26, 0x3

    const v25, 0x7f0800a3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    aput-object v25, v19, v26

    .line 1365
    const/16 v26, 0x0

    const v25, 0x7f08009b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    aput-object v25, v18, v26

    .line 1366
    const/16 v26, 0x1

    const v25, 0x7f08009e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    aput-object v25, v18, v26

    .line 1367
    const/16 v26, 0x2

    const v25, 0x7f0800a1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    aput-object v25, v18, v26

    .line 1368
    const/16 v26, 0x3

    const v25, 0x7f0800a4

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    aput-object v25, v18, v26

    .line 1370
    const/16 v26, 0x0

    const v25, 0x7f08009c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    aput-object v25, v20, v26

    .line 1371
    const/16 v26, 0x1

    const v25, 0x7f08009f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    aput-object v25, v20, v26

    .line 1372
    const/16 v26, 0x2

    const v25, 0x7f0800a2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    aput-object v25, v20, v26

    .line 1373
    const/16 v26, 0x3

    const v25, 0x7f0800a5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    aput-object v25, v20, v26

    .line 1375
    const/4 v7, -0x1

    .line 1377
    .local v7, "curFocus":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v8, v0, :cond_14

    const/16 v25, 0x4

    move/from16 v0, v25

    if-ge v8, v0, :cond_14

    .line 1378
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1379
    .local v9, "intent":Landroid/content/Intent;
    sget-boolean v25, Lcom/android/systemui/recent/RecentsPanelView;->DEBUG:Z

    if-eqz v25, :cond_9

    .line 1380
    const-string v25, "STATUSBAR-RecentsPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onFinishInflate() : mShortcutComponentNames["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "] = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v27, v0

    aget-object v27, v27, v8

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v8

    invoke-static/range {v25 .. v25}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1384
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v9, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v17

    .line 1385
    .local v17, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v17, :cond_b

    .line 1386
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1387
    .local v24, "shortcutText":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 1388
    .local v22, "shortcutIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v22, :cond_b

    if-eqz v24, :cond_b

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_b

    .line 1389
    aget-object v25, v19, v8

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 1390
    aget-object v25, v19, v8

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setClickable(Z)V

    .line 1391
    aget-object v25, v19, v8

    new-instance v26, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1393
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x5a

    const/16 v28, 0x5a

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1395
    aget-object v25, v18, v8

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1396
    aget-object v25, v18, v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1397
    aget-object v25, v18, v8

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1398
    aget-object v25, v18, v8

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setPressed(Z)V

    .line 1399
    aget-object v25, v18, v8

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setClickable(Z)V

    .line 1400
    aget-object v25, v18, v8

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->clearFocus()V

    .line 1401
    aget-object v25, v18, v8

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const/16 v26, 0xff

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1403
    aget-object v25, v20, v8

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1405
    aget-object v25, v18, v8

    new-instance v26, Lcom/android/systemui/recent/RecentsPanelView$OnTouchShortcutIcon;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnTouchShortcutIcon;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1406
    aget-object v25, v18, v8

    new-instance v26, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1407
    add-int/lit8 v14, v14, 0x1

    .line 1409
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v7, v0, :cond_a

    .line 1410
    aget-object v25, v19, v8

    aget-object v26, v19, v7

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getId()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 1411
    aget-object v25, v19, v7

    aget-object v26, v19, v8

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getId()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 1413
    :cond_a
    move v7, v8

    .line 1377
    .end local v22    # "shortcutIcon":Landroid/graphics/drawable/Drawable;
    .end local v24    # "shortcutText":Ljava/lang/String;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 1246
    .end local v7    # "curFocus":I
    .end local v8    # "i":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v12    # "mBlockRecentApplicationShortCut":Z
    .end local v14    # "numIcons":I
    .end local v15    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v18    # "shortCutIcons":[Landroid/widget/ImageView;
    .end local v19    # "shortCutLayout":[Landroid/widget/LinearLayout;
    .end local v20    # "shortCutTexts":[Landroid/widget/TextView;
    .end local v21    # "shortcutAppList":Ljava/lang/String;
    :cond_c
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v25, :cond_d

    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v25, :cond_d

    .line 1247
    const v25, 0x7f0800b2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    .line 1248
    const v25, 0x7f0800b3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    .line 1249
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v25, :cond_0

    .line 1250
    const v25, 0x7f0800b4

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider01:Landroid/widget/LinearLayout;

    .line 1251
    const v25, 0x7f0800b6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider02:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 1254
    :cond_d
    const v25, 0x7f0800ac

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    .line 1255
    const v25, 0x7f0800ad

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    .line 1256
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v25, :cond_0

    .line 1257
    const v25, 0x7f0800ae

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider01:Landroid/widget/LinearLayout;

    .line 1258
    const v25, 0x7f0800b0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider02:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 1264
    :cond_e
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v25, :cond_f

    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v25, :cond_f

    .line 1265
    const v25, 0x7f0800b5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    goto/16 :goto_1

    .line 1267
    :cond_f
    const v25, 0x7f0800af

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    goto/16 :goto_1

    .line 1273
    :cond_10
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v25, :cond_11

    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v25, :cond_11

    .line 1274
    const v25, 0x7f0800b7

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    goto/16 :goto_2

    .line 1276
    :cond_11
    const v25, 0x7f0800b1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    goto/16 :goto_2

    .line 1289
    .restart local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_12
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v25, :cond_2

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d00ad

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v25, v0

    check-cast v25, Landroid/view/ViewGroup;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1295
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0d00ad

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1298
    .local v16, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d00ae

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1302
    .local v6, "bottomMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider01:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1304
    .local v13, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v13, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider01:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider02:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 1325
    .end local v6    # "bottomMargin":I
    .end local v13    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v16    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_13
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v25, :cond_6

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider02:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1418
    .restart local v7    # "curFocus":I
    .restart local v8    # "i":I
    .restart local v10    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    .restart local v12    # "mBlockRecentApplicationShortCut":Z
    .restart local v14    # "numIcons":I
    .restart local v15    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v18    # "shortCutIcons":[Landroid/widget/ImageView;
    .restart local v19    # "shortCutLayout":[Landroid/widget/LinearLayout;
    .restart local v20    # "shortCutTexts":[Landroid/widget/TextView;
    .restart local v21    # "shortcutAppList":Ljava/lang/String;
    :cond_14
    if-lez v14, :cond_18

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d00bd

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v25, v0

    check-cast v25, Landroid/view/ViewGroup;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1423
    const v25, 0x7f080098

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 1424
    .local v23, "shortcutLine":Landroid/widget/ImageView;
    const v25, 0x7f080099

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1426
    .local v5, "applicationShortcutLayout":Landroid/widget/LinearLayout;
    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v25, :cond_15

    .line 1427
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1429
    :cond_15
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1436
    .end local v5    # "applicationShortcutLayout":Landroid/widget/LinearLayout;
    .end local v7    # "curFocus":I
    .end local v8    # "i":I
    .end local v14    # "numIcons":I
    .end local v15    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v18    # "shortCutIcons":[Landroid/widget/ImageView;
    .end local v19    # "shortCutLayout":[Landroid/widget/LinearLayout;
    .end local v20    # "shortCutTexts":[Landroid/widget/TextView;
    .end local v21    # "shortcutAppList":Ljava/lang/String;
    .end local v23    # "shortcutLine":Landroid/widget/ImageView;
    :cond_16
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v25, v0

    if-eqz v25, :cond_17

    .line 1437
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    .line 1438
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    move/from16 v25, v0

    if-nez v25, :cond_19

    sget-boolean v25, Lcom/android/systemui/statusbar/Feature;->mIsMacchiato:Z

    if-nez v25, :cond_19

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1446
    .end local v10    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v12    # "mBlockRecentApplicationShortCut":Z
    :cond_17
    :goto_7
    return-void

    .line 1431
    .restart local v7    # "curFocus":I
    .restart local v8    # "i":I
    .restart local v10    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    .restart local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v12    # "mBlockRecentApplicationShortCut":Z
    .restart local v14    # "numIcons":I
    .restart local v15    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v18    # "shortCutIcons":[Landroid/widget/ImageView;
    .restart local v19    # "shortCutLayout":[Landroid/widget/LinearLayout;
    .restart local v20    # "shortCutTexts":[Landroid/widget/TextView;
    .restart local v21    # "shortcutAppList":Ljava/lang/String;
    :cond_18
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    goto :goto_6

    .line 1440
    .end local v7    # "curFocus":I
    .end local v8    # "i":I
    .end local v14    # "numIcons":I
    .end local v15    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v18    # "shortCutIcons":[Landroid/widget/ImageView;
    .end local v19    # "shortCutLayout":[Landroid/widget/LinearLayout;
    .end local v20    # "shortCutTexts":[Landroid/widget/TextView;
    .end local v21    # "shortcutAppList":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v25, v0

    if-eqz v25, :cond_17

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    check-cast v25, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v26, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto :goto_7
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 1781
    const/4 v0, 0x1

    .line 1783
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 1732
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    .line 1733
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1840
    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    .line 1841
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1842
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1849
    :cond_1
    :goto_0
    return v0

    .line 1846
    :cond_2
    const/16 v1, 0x52

    if-eq p1, v1, :cond_1

    .line 1849
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTaskLoadingCancelled()V
    .locals 2

    .prologue
    .line 1592
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "onTaskLoadingCancelled()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 1597
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 1599
    :cond_0
    return-void
.end method

.method onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 7
    .param p1, "td"    # Lcom/android/systemui/recent/TaskDescription;

    .prologue
    .line 1505
    const-string v5, "STATUSBAR-RecentsPanelView"

    const-string v6, "onTaskThumbnailLoaded()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    monitor-enter p1

    .line 1507
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v5, :cond_3

    .line 1508
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v1, Landroid/view/ViewGroup;

    .line 1509
    .local v1, "container":Landroid/view/ViewGroup;
    instance-of v5, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v5, :cond_0

    .line 1510
    const v5, 0x7f080097

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "container":Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 1514
    .restart local v1    # "container":Landroid/view/ViewGroup;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1515
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1516
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v5, :cond_2

    .line 1517
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 1518
    .local v2, "h":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-boolean v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    if-nez v5, :cond_2

    iget-object v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    if-ne v5, p1, :cond_2

    .line 1523
    const/4 v0, 0x0

    .line 1524
    .local v0, "animateShow":Z
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 1525
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 1527
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v5, :cond_1

    .line 1531
    iget-object v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->bgFrameShadow:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1533
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    .line 1514
    .end local v0    # "animateShow":Z
    .end local v2    # "h":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1539
    .end local v1    # "container":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 1541
    return-void

    .line 1539
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public onTasksLoaded(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p2, "firstScreenful"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1625
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "onTasksLoaded()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 1632
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v0}, Lcom/android/systemui/recent/IRecentsUI;->isActivityShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1633
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshViews()V

    .line 1635
    :cond_0
    return-void

    .line 1630
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public onUiHidden()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1121
    const-string v3, "STATUSBAR-RecentsPanelView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUiHidden() - mShowing:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", mRecentTaskDescriptions != null:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    .line 1124
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1126
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    .line 1134
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 1121
    goto :goto_0

    .line 1128
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v2, "set checkbox checking InformDialog true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "recent_menukey_dialog_do_not_show_checking"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1
.end method

.method public onWindowAnimationStart()V
    .locals 2

    .prologue
    .line 1572
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "onWindowAnimationStart()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    .line 1575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowAnimationStartTime:J

    .line 1576
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->animateInIconOfFirstTask()V

    .line 1577
    return-void
.end method

.method public refreshRecentTasksList()V
    .locals 2

    .prologue
    .line 1608
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 1609
    return-void
.end method

.method public refreshViews()V
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 1603
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateUiElements()V

    .line 1604
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 1605
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1
    .param p1, "minAlpha"    # F

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setMinSwipeAlpha(F)V

    .line 1450
    return-void
.end method

.method public setRecentTasksLoader(Lcom/android/systemui/recent/RecentTasksLoader;)V
    .locals 0
    .param p1, "loader"    # Lcom/android/systemui/recent/RecentTasksLoader;

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 1185
    return-void
.end method

.method public setRecentsCallbacks(Lcom/android/systemui/recent/IRecentsUI;)V
    .locals 0
    .param p1, "recentsUi"    # Lcom/android/systemui/recent/IRecentsUI;

    .prologue
    .line 2272
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    .line 2273
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 531
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZLjava/util/ArrayList;ZZ)V

    .line 532
    return-void
.end method

.method public show(ZLjava/util/ArrayList;ZZ)V
    .locals 4
    .param p1, "show"    # Z
    .param p3, "firstScreenful"    # Z
    .param p4, "animateIconOfFirstTask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p2, "recentTaskDescriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 536
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    if-eqz v1, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    .line 538
    const/4 p2, 0x0

    .line 539
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 540
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    .line 545
    :goto_0
    if-eqz p1, :cond_3

    .line 547
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 548
    .local v0, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {v0, v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 564
    .end local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :goto_1
    return-void

    .line 542
    :cond_0
    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 543
    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    goto :goto_0

    .line 554
    .restart local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v1, :cond_2

    .line 555
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 558
    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 559
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 560
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    goto :goto_1

    .line 562
    .end local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V

    goto :goto_1
.end method

.method public showTraybarHelpPopup()V
    .locals 13

    .prologue
    const/4 v12, -0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1036
    const-string v10, "STATUSBAR-RecentsPanelView"

    const-string v11, "showTraybarHelpPopup"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "recent_menukey_dialog_do_not_show"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_3

    move v4, v8

    .line 1039
    .local v4, "isChecked":Z
    :goto_0
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "recent_menukey_dialog_do_not_show_checking"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_4

    move v5, v8

    .line 1042
    .local v5, "isChecking":Z
    :goto_1
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 1043
    .local v7, "userManager":Landroid/os/UserManager;
    if-eqz v7, :cond_5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1045
    .local v3, "info":Landroid/content/pm/UserInfo;
    :goto_2
    if-eqz v3, :cond_1

    .line 1046
    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentsPanelView;->misAvailableHelpHub:Z

    .line 1047
    const-string v6, "com.samsung.helphub"

    .line 1048
    .local v6, "packageName":Ljava/lang/String;
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x80

    iget v11, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v1

    .line 1050
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 1051
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1052
    iput-boolean v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->misAvailableHelpHub:Z

    .line 1057
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_6

    .line 1058
    const-string v8, "STATUSBAR-RecentsPanelView"

    const-string v9, "InformDialog isChecked"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_2
    :goto_3
    return-void

    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v4    # "isChecked":Z
    .end local v5    # "isChecking":Z
    .end local v7    # "userManager":Landroid/os/UserManager;
    :cond_3
    move v4, v9

    .line 1037
    goto :goto_0

    .restart local v4    # "isChecked":Z
    :cond_4
    move v5, v9

    .line 1039
    goto :goto_1

    .line 1043
    .restart local v5    # "isChecking":Z
    .restart local v7    # "userManager":Landroid/os/UserManager;
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 1060
    .restart local v3    # "info":Landroid/content/pm/UserInfo;
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/systemui/recent/RecentsPanelView;->makeTraybarHelpPopupLayout(Z)V

    .line 1062
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_2

    .line 1063
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/systemui/recent/RecentsPanelView$10;

    invoke-direct {v9, p0}, Lcom/android/systemui/recent/RecentsPanelView$10;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    iget v10, p0, Lcom/android/systemui/recent/RecentsPanelView;->DELAY_SHOW_RECENTMENU_HELPPOPUP:I

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3
.end method

.method public simulateClick(I)Z
    .locals 2
    .param p1, "persistentTaskId"    # I

    .prologue
    .line 1662
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->findViewForTask(I)Landroid/view/View;

    move-result-object v0

    .line 1663
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1664
    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    .line 1665
    const/4 v1, 0x1

    .line 1667
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateValuesFromResources()V
    .locals 4

    .prologue
    .line 1188
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1189
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0d0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    .line 1190
    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    .line 1192
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v2, :cond_0

    .line 1193
    const v2, 0x7f0d00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    .line 1195
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v2, :cond_2

    .line 1196
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceTaskButtonTextAndIcon()V

    .line 1198
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v2, :cond_1

    .line 1200
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->checkAssistAppIsInstalled()I

    move-result v0

    .line 1201
    .local v0, "mAssistApp":I
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1202
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonTextAndIcon(I)V

    .line 1206
    .end local v0    # "mAssistApp":I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceRemoveAllButtonTextAndIcon()V

    .line 1208
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 1209
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    const v3, 0x7f0b0018

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1212
    :cond_2
    return-void
.end method
