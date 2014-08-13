.class public Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;
.super Ljava/lang/Object;
.source "WritingBuddyTutorialManager.java"


# static fields
.field public static final PHASE_CLOSED:I = 0x5

.field public static final PHASE_HOVERED:I = 0x2

.field public static final PHASE_HOVER_CANCELED:I = 0x6

.field public static final PHASE_NONE:I = 0x0

.field public static final PHASE_OPENED:I = 0x3

.field public static final PHASE_START:I = 0x1

.field public static final PHASE_TEXT_INSERTED:I = 0x4


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mListener:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

.field mPhase:I

.field private mTimer:Landroid/os/CountDownTimer;

.field private mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "WritingBuddyTutorialManager"

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mPhase:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTimer:Landroid/os/CountDownTimer;

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mActivity:Landroid/app/Activity;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method


# virtual methods
.method public refresh()V
    .locals 15

    .prologue
    const v4, 0x7f0c01ab

    const v3, 0x7f0c01aa

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 55
    const-string v0, "WritingBuddyTutorialManager"

    const-string v1, "refresh"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 59
    iput-object v13, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 60
    iget v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mPhase:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mPhase:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_WRITINGBUDDY:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    invoke-direct {v0, v1, v2, v13}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mListener:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setOnIndicatorTouchListener(Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 68
    .local v9, "resources":Landroid/content/res/Resources;
    const/4 v12, 0x0

    .line 69
    .local v12, "top":I
    const/4 v8, 0x0

    .line 70
    .local v8, "left":I
    const/4 v11, 0x0

    .line 71
    .local v11, "text":Ljava/lang/String;
    const/4 v6, 0x1

    .line 72
    .local v6, "arrowVisible":Z
    const/4 v10, 0x0

    .line 73
    .local v10, "setIndicatorVisibility":Z
    const/4 v7, 0x1

    .line 75
    .local v7, "gravity":I
    iget v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mPhase:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 111
    iput-object v13, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTimer:Landroid/os/CountDownTimer;

    .line 113
    :cond_2
    if-eqz v11, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->initialize()V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v12}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorLeftPosition(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorVisibility(Z)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setArrowVisibility(Z)V

    .line 119
    const/4 v7, 0x5

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravityNoPadding(I)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v11}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v14}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->showWithUntouchable(Z)V

    .line 125
    :cond_3
    iget v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mPhase:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 126
    new-instance v0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager$1;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager$1;-><init>(Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;JJ)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTimer:Landroid/os/CountDownTimer;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 78
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e04cf

    new-array v2, v14, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0e04d4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 80
    const/4 v10, 0x1

    .line 81
    goto :goto_1

    .line 84
    :pswitch_2
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 85
    const v0, 0x7f0c01ac

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e04d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 87
    const/4 v10, 0x1

    .line 88
    const/4 v7, 0x3

    .line 89
    goto/16 :goto_1

    .line 92
    :pswitch_3
    const v0, 0x7f0c01ae

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 93
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e04d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 95
    const/4 v10, 0x0

    .line 96
    goto/16 :goto_1

    .line 99
    :pswitch_4
    const v0, 0x7f0c01af

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 100
    const v0, 0x7f0c01d2

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e04d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 102
    const/4 v10, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    goto/16 :goto_1

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 145
    iget v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mPhase:I

    if-eq v0, p1, :cond_0

    .line 146
    iput p1, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mPhase:I

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->refresh()V

    .line 150
    :cond_0
    return-void
.end method

.method public setVisibilityTutorialPopup(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setVisibilityPopupView(Z)V

    .line 156
    :cond_0
    return-void
.end method

.method public startTutorial()V
    .locals 3

    .prologue
    .line 46
    const-string v0, "WritingBuddyTutorialManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTutorial : mPhase = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mPhase:I

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mPhase:I

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->refresh()V

    .line 52
    :cond_0
    return-void
.end method
