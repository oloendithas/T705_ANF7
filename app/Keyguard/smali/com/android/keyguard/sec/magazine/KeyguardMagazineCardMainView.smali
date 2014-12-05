.class public Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
.super Landroid/widget/FrameLayout;
.source "KeyguardMagazineCardMainView.java"


# instance fields
.field private final MESSAGE_ADD_CARD:I

.field private final MESSAGE_REMOVE_CARD:I

.field private final MESSAGE_UPDATE_CARD:I

.field private final TAG:Ljava/lang/String;

.field private final WAKEUP_ACTION_BLOCK_DURATION:J

.field private final WAKEUP_DURATION:J

.field private mCardChangedListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

.field private mCardContainerLayout:Landroid/widget/LinearLayout;

.field private mCardUIFrame:Landroid/view/View;

.field private mCategoryFilter:I

.field private mIsWakeupActionBlocked:Z

.field private mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

.field private mKeyguardMagazineAnimationController:Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;

.field private mListView:Landroid/widget/LinearLayout;

.field private mMagazineCardControlHandler:Landroid/os/Handler;

.field private mPriorityTable:[[I

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mUnblockWakeupActionHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0xa

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v0, "KeyguardMagazineCardMainView"

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->TAG:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 62
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    .line 65
    iput v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    .line 77
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardContainerLayout:Landroid/widget/LinearLayout;

    .line 78
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardUIFrame:Landroid/view/View;

    .line 80
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MISSED_CALL:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEW_MESSAGE:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_ROAMING:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_FLIGHT_MODE:I

    aput v3, v2, v4

    aput v7, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MUSIC_PLAYER:I

    aput v3, v2, v4

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    .line 99
    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardChangedListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    .line 656
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_ADD_CARD:I

    .line 657
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_REMOVE_CARD:I

    .line 658
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_UPDATE_CARD:I

    .line 660
    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;

    .line 689
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->WAKEUP_DURATION:J

    .line 690
    const-wide/16 v0, 0x9c4

    iput-wide v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->WAKEUP_ACTION_BLOCK_DURATION:J

    .line 691
    iput-boolean v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mIsWakeupActionBlocked:Z

    .line 692
    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mUnblockWakeupActionHandler:Landroid/os/Handler;

    .line 126
    const-string v0, "KeyguardMagazineCardMainView"

    const-string v1, "KeyguardMagazineCardMainView(context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->setMagazineCardFilter()V

    .line 130
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->init(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 132
    :cond_8f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0xa

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const-string v0, "KeyguardMagazineCardMainView"

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->TAG:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 62
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    .line 65
    iput v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    .line 77
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardContainerLayout:Landroid/widget/LinearLayout;

    .line 78
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardUIFrame:Landroid/view/View;

    .line 80
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MISSED_CALL:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEW_MESSAGE:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_ROAMING:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_FLIGHT_MODE:I

    aput v3, v2, v4

    aput v7, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MUSIC_PLAYER:I

    aput v3, v2, v4

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    .line 99
    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardChangedListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    .line 656
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_ADD_CARD:I

    .line 657
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_REMOVE_CARD:I

    .line 658
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_UPDATE_CARD:I

    .line 660
    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;

    .line 689
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->WAKEUP_DURATION:J

    .line 690
    const-wide/16 v0, 0x9c4

    iput-wide v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->WAKEUP_ACTION_BLOCK_DURATION:J

    .line 691
    iput-boolean v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mIsWakeupActionBlocked:Z

    .line 692
    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mUnblockWakeupActionHandler:Landroid/os/Handler;

    .line 136
    const-string v0, "KeyguardMagazineCardMainView"

    const-string v1, "KeyguardMagazineCardMainView(context, attrs)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->setMagazineCardFilter()V

    .line 140
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->init(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 142
    :cond_8f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v7, 0xa

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const-string v0, "KeyguardMagazineCardMainView"

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->TAG:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 62
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    .line 65
    iput v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    .line 77
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardContainerLayout:Landroid/widget/LinearLayout;

    .line 78
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardUIFrame:Landroid/view/View;

    .line 80
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MISSED_CALL:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEW_MESSAGE:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_ROAMING:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_FLIGHT_MODE:I

    aput v3, v2, v4

    aput v7, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MUSIC_PLAYER:I

    aput v3, v2, v4

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    .line 99
    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardChangedListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    .line 656
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_ADD_CARD:I

    .line 657
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_REMOVE_CARD:I

    .line 658
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_UPDATE_CARD:I

    .line 660
    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;

    .line 689
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->WAKEUP_DURATION:J

    .line 690
    const-wide/16 v0, 0x9c4

    iput-wide v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->WAKEUP_ACTION_BLOCK_DURATION:J

    .line 691
    iput-boolean v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mIsWakeupActionBlocked:Z

    .line 692
    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mUnblockWakeupActionHandler:Landroid/os/Handler;

    .line 146
    const-string v0, "KeyguardMagazineCardMainView"

    const-string v1, "KeyguardMagazineCardMainView(context, attrs, defStyle)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->setMagazineCardFilter()V

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->init(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 152
    :cond_8f
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    .param p1, "x1"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->addCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    .param p1, "x1"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->removeCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    .param p1, "x1"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->updateCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mIsWakeupActionBlocked:Z

    return p1
.end method

.method private addCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 7
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 338
    if-nez p1, :cond_3

    .line 351
    :goto_2
    return-void

    .line 341
    :cond_3
    iget v2, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->findCardViewById(I)I

    move-result v0

    .line 342
    .local v0, "cardIndex":I
    if-ltz v0, :cond_26

    .line 345
    const-string v2, "KeyguardMagazineCardMainView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCard : Card already exist - R"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 349
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getCardViewPriorityPosition(Lcom/samsung/android/magazinecard/MagazineCardRecord;)I

    move-result v1

    .line 350
    .local v1, "index":I
    invoke-direct {p0, p1, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->addCardView(Lcom/samsung/android/magazinecard/MagazineCardRecord;I)V

    goto :goto_2
.end method

.method private addCardView(Lcom/samsung/android/magazinecard/MagazineCardRecord;I)V
    .registers 8
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .param p2, "index"    # I

    .prologue
    .line 355
    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    if-nez v2, :cond_e

    .line 356
    :cond_6
    const-string v2, "KeyguardMagazineCardMainView"

    const-string v3, "addCardView : Incorrect card or list view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_d
    return-void

    .line 360
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->isDisplayableCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 361
    const-string v2, "KeyguardMagazineCardMainView"

    const-string v3, "addCardView : Not include this card"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 366
    :cond_1c
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 367
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030016

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    .line 368
    .local v0, "cardHolderView":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    invoke-virtual {v0, p1, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->build(Lcom/samsung/android/magazinecard/MagazineCardRecord;Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    .line 371
    if-gez p2, :cond_3d

    .line 372
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getCardViewPriorityPosition(Lcom/samsung/android/magazinecard/MagazineCardRecord;)I

    move-result p2

    .line 373
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_d

    .line 375
    :cond_3d
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_d
.end method

.method private comparePriority(II)I
    .registers 9
    .param p1, "leftCategory"    # I
    .param p2, "rightCategory"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, "leftPriority":I
    const/4 v2, 0x0

    .line 500
    .local v2, "rightPriority":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    array-length v4, v4

    if-ge v0, v4, :cond_2b

    .line 501
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v3

    and-int/2addr v4, p1

    if-eqz v4, :cond_19

    .line 502
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    aget-object v4, v4, v0

    aget v1, v4, v5

    .line 505
    :cond_19
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v3

    and-int/2addr v4, p2

    if-eqz v4, :cond_28

    .line 506
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    aget-object v4, v4, v0

    aget v2, v4, v5

    .line 500
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 510
    :cond_2b
    if-eq v1, v2, :cond_4a

    .line 511
    const-string v3, "KeyguardMagazineCardMainView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "comparePriority : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    sub-int v3, v1, v2

    .line 515
    :goto_49
    return v3

    .line 514
    :cond_4a
    const-string v4, "KeyguardMagazineCardMainView"

    const-string v5, "comparePriority : same priority"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private findCardViewById(I)I
    .registers 7
    .param p1, "cardRecordId"    # I

    .prologue
    const/4 v3, -0x1

    .line 443
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_f

    :cond_d
    move v2, v3

    .line 453
    :cond_e
    :goto_e
    return v2

    .line 446
    :cond_f
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 447
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_2b

    .line 448
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    .line 449
    .local v1, "holder":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->getCardRecordId()I

    move-result v4

    if-eq v4, p1, :cond_e

    .line 447
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .end local v1    # "holder":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    :cond_2b
    move v2, v3

    .line 453
    goto :goto_e
.end method

.method private getCardViewPriorityPosition(Lcom/samsung/android/magazinecard/MagazineCardRecord;)I
    .registers 9
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    const/4 v4, -0x1

    .line 462
    const-string v5, "KeyguardMagazineCardMainView"

    const-string v6, "getCardViewPriorityPosition"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v5, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-gtz v5, :cond_16

    :cond_14
    move v3, v4

    .line 485
    :goto_15
    return v3

    .line 467
    :cond_16
    iget-object v5, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 469
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v0, :cond_53

    .line 470
    iget-object v5, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    .line 473
    .local v2, "holder":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    if-eqz v2, :cond_50

    .line 474
    iget-object v5, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v5, v5, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    invoke-virtual {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->getCardCategory()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->comparePriority(II)I

    move-result v1

    .line 477
    .local v1, "compareResult":I
    if-ltz v1, :cond_50

    .line 478
    const-string v4, "KeyguardMagazineCardMainView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCardViewPriorityPosition : index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 469
    .end local v1    # "compareResult":I
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 484
    .end local v2    # "holder":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    :cond_53
    const-string v5, "KeyguardMagazineCardMainView"

    const-string v6, "getCardViewPriorityPosition : index -1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 485
    goto :goto_15
.end method

.method private getCurUserId()I
    .registers 7

    .prologue
    const v2, 0x7fffffff

    .line 159
    const v0, 0x7fffffff

    .line 162
    .local v0, "curUserId":I
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_1a

    .line 169
    if-ne v0, v2, :cond_37

    .line 170
    const-string v3, "KeyguardMagazineCardMainView"

    const-string v4, "setMagazineCardFilter : Incorrect user id"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_19
    return v2

    .line 163
    :catch_1a
    move-exception v1

    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "KeyguardMagazineCardMainView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMagazineCardFilter : Cannot get current user id e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_19

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_37
    move v2, v0

    .line 174
    goto :goto_19
.end method

.method private getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 545
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 546
    .local v1, "screenRectOfView":Landroid/graphics/Rect;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 548
    .local v0, "screenPointOfView":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 549
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 550
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 551
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 553
    return-object v1
.end method

.method private init(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 255
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->isMagazineCardEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 256
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 257
    const/4 v0, 0x0

    .line 260
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private initViews()V
    .registers 3

    .prologue
    .line 264
    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 265
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    .line 267
    new-instance v0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;

    invoke-direct {v0}, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardMagazineAnimationController:Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardMagazineAnimationController:Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 270
    return-void
.end method

.method private isDisplayableCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)Z
    .registers 6
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 239
    const-string v1, "KeyguardMagazineCardMainView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisplayableCard : Filter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v1, "KeyguardMagazineCardMainView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisplayableCard - Card : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v3, v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getCurUserId()I

    move-result v0

    .line 245
    .local v0, "curUserId":I
    iget-object v1, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v1, v1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    if-ne v0, v1, :cond_5a

    iget v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    iget-object v2, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v2, v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_5a

    .line 247
    const-string v1, "KeyguardMagazineCardMainView"

    const-string v2, "isDisplayableCard : Can be displayed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x1

    .line 250
    :goto_59
    return v1

    :cond_5a
    const/4 v1, 0x0

    goto :goto_59
.end method

.method private isMagazineCardEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 155
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private removeCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 3
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 380
    if-nez p1, :cond_3

    .line 384
    :goto_2
    return-void

    .line 383
    :cond_3
    iget v0, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->removeCardView(I)V

    goto :goto_2
.end method

.method private removeCardView(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->findCardViewById(I)I

    move-result v0

    .line 388
    .local v0, "childViewIndex":I
    if-ltz v0, :cond_b

    .line 389
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 391
    :cond_b
    return-void
.end method

.method private setMagazineCardFilter()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEW_MESSAGE:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MISSED_CALL:I

    or-int/2addr v3, v4

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_ROAMING:I

    or-int/2addr v3, v4

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_FLIGHT_MODE:I

    or-int/2addr v3, v4

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MUSIC_PLAYER:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    .line 189
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getCurUserId()I

    move-result v0

    .line 190
    .local v0, "curUserId":I
    const v3, 0x7fffffff

    if-ne v0, v3, :cond_1c

    .line 230
    :cond_1b
    :goto_1b
    return-void

    .line 195
    :cond_1c
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_68

    .line 196
    .local v1, "isUltraPowerSavingMode":Z
    :goto_2a
    if-eqz v1, :cond_6a

    .line 197
    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEW_MESSAGE:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MISSED_CALL:I

    or-int/2addr v3, v4

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_FLIGHT_MODE:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    .line 201
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_email"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_4b

    .line 202
    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_EMAIL:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    .line 204
    :cond_4b
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_todayschedule"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_60

    .line 205
    iget v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_TODAYS_SCHEDULE:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    .line 207
    :cond_60
    const-string v2, "KeyguardMagazineCardMainView"

    const-string v3, "MagizneCard is Disabled: Ultra power saving mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .end local v1    # "isUltraPowerSavingMode":Z
    :cond_68
    move v1, v2

    .line 195
    goto :goto_2a

    .line 209
    .restart local v1    # "isUltraPowerSavingMode":Z
    :cond_6a
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_weather"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_7f

    .line 210
    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_WEATHER:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    .line 212
    :cond_7f
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_todayschedule"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_94

    .line 213
    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_TODAYS_SCHEDULE:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    .line 215
    :cond_94
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_news"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_a9

    .line 216
    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEWS:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    .line 218
    :cond_a9
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_social"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_be

    .line 219
    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_SOCIAL:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    .line 221
    :cond_be
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_hereandnow"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_d3

    .line 222
    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_HERE_N_NOW:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    .line 224
    :cond_d3
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_email"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_e8

    .line 225
    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_EMAIL:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    .line 227
    :cond_e8
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_todaybirthday"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1b

    .line 228
    iget v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_TODAY_BIRTHDAY:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    goto/16 :goto_1b
.end method

.method private updateCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 6
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 394
    iget v1, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->findCardViewById(I)I

    move-result v0

    .line 395
    .local v0, "cardIndex":I
    if-gez v0, :cond_23

    .line 397
    const-string v1, "KeyguardMagazineCardMainView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCard : Card is not exist - R"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_22
    return-void

    .line 403
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->updateCardView(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_22
.end method

.method private updateCardView(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 6
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 407
    if-nez p1, :cond_3

    .line 425
    :goto_2
    return-void

    .line 410
    :cond_3
    iget v1, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->findCardViewById(I)I

    move-result v0

    .line 411
    .local v0, "childViewIndex":I
    const-string v1, "KeyguardMagazineCardMainView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCardView : card index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 415
    if-ltz v0, :cond_31

    .line 416
    iget v1, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->removeCardView(I)V

    .line 417
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->addCardView(Lcom/samsung/android/magazinecard/MagazineCardRecord;I)V

    .line 424
    :cond_31
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardMagazineAnimationController:Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_2
.end method


# virtual methods
.method public clearAllCardView()V
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 335
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v0, v3

    .line 702
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v1, v3

    .line 704
    .local v1, "y":I
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->isPointInCard(II)Z

    move-result v3

    if-nez v3, :cond_19

    .line 705
    const-string v3, "KeyguardMagazineCardMainView"

    const-string v4, "not in point in card"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :goto_18
    return v2

    .line 709
    :cond_19
    iget-boolean v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mIsWakeupActionBlocked:Z

    if-nez v3, :cond_39

    .line 710
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mIsWakeupActionBlocked:Z

    .line 712
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v3, :cond_32

    .line 713
    const-string v3, "KeyguardMagazineCardMainView"

    const-string v4, "wake up by user touch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v4, 0x1388

    invoke-interface {v3, v4, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 717
    :cond_32
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mUnblockWakeupActionHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 720
    :cond_39
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_18
.end method

.method public getFocusedCard()Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 313
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_10

    :cond_e
    move-object v0, v3

    .line 323
    :cond_f
    :goto_f
    return-object v0

    .line 316
    :cond_10
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 317
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v1, :cond_30

    .line 318
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    .line 319
    .local v0, "child":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->isCardExpanded()Z

    move-result v4

    if-eq v4, v5, :cond_f

    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->isCardScaleDown()Z

    move-result v4

    if-eq v4, v5, :cond_f

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .end local v0    # "child":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    :cond_30
    move-object v0, v3

    .line 323
    goto :goto_f
.end method

.method public getKeyguardHostView()Lcom/android/keyguard/KeyguardHostView;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    return-object v0
.end method

.method public getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 535
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 536
    .local v1, "screenPointOfView":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 537
    .local v0, "screenOffsetOfView":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 538
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 539
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 540
    return-object v1
.end method

.method public isPointInCard(II)Z
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 520
    iget-object v6, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_10

    :cond_e
    move v4, v5

    .line 531
    :cond_f
    :goto_f
    return v4

    .line 523
    :cond_10
    iget-object v6, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 524
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v0, :cond_2e

    .line 525
    iget-object v6, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    .line 526
    .local v1, "holder":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 527
    .local v2, "holderRect":Landroid/graphics/Rect;
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eq v6, v4, :cond_f

    .line 524
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .end local v1    # "holder":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .end local v2    # "holderRect":Landroid/graphics/Rect;
    :cond_2e
    move v4, v5

    .line 531
    goto :goto_f
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->isMagazineCardEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 296
    :goto_6
    return-void

    .line 290
    :cond_7
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardChangedListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->unregisterCardChangedListener(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;)V

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1b

    .line 293
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 295
    :cond_1b
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    goto :goto_6
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 274
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 276
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->isMagazineCardEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 283
    :goto_9
    return-void

    .line 279
    :cond_a
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->initViews()V

    .line 280
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardChangedListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->registerCardChangedListener(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->refreshCardView()V

    goto :goto_9
.end method

.method public refreshCardView()V
    .registers 7

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->clearAllCardView()V

    .line 430
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->getCards()Ljava/util/ArrayList;

    move-result-object v1

    .line 432
    .local v1, "cards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/magazinecard/MagazineCardRecord;>;"
    if-eqz v1, :cond_3f

    .line 433
    const-string v3, "KeyguardMagazineCardMainView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshCardView : Card Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_31
    if-ltz v2, :cond_3f

    .line 436
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 437
    .local v0, "c":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->addCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    .line 435
    add-int/lit8 v2, v2, -0x1

    goto :goto_31

    .line 440
    .end local v0    # "c":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .end local v2    # "i":I
    :cond_3f
    return-void
.end method

.method public resetFocusedMagazineCardState()V
    .registers 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getFocusedCard()Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    move-result-object v0

    .line 328
    .local v0, "holder":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    if-eqz v0, :cond_9

    .line 329
    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->restoreDefaultCardState()V

    .line 331
    :cond_9
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 730
    return-void
.end method

.method public setKeyguardHostView(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 2
    .param p1, "hostView"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    .line 300
    return-void
.end method

.method public setOnKeyguardDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V
    .registers 3
    .param p1, "action"    # Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_9

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V

    .line 310
    :cond_9
    return-void
.end method
