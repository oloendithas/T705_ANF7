.class public Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;
.super Ljava/lang/Object;
.source "AddaContactTutorialManager.java"


# static fields
.field public static final PHASE_INPUT_DETAIL:I = 0x2

.field public static final PHASE_NONE:I = 0x0

.field public static final PHASE_SAVE:I = 0x3

.field public static final PHASE_START:I = 0x1

.field public static final PHASE_WRITE:I = 0x4

.field public static final PHASE_WRITE_SIMACCOUNT:I = 0x5


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mListener:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

.field mPhase:I

.field private mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "AddaContactTutorialManager"

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mPhase:I

    .line 33
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    .line 35
    new-instance v0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager$1;-><init>(Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mListener:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

    .line 51
    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0e042f

    const/4 v11, 0x5

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 70
    const-string v4, "AddaContactTutorialManager"

    const-string v6, "refresh"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 76
    iput-object v9, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 79
    :cond_0
    iget v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mPhase:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    iget v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mPhase:I

    if-ne v4, v11, :cond_3

    .line 80
    :cond_1
    new-instance v4, Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v6, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    sget-object v7, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_WRITINGBUDDY:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    invoke-direct {v4, v6, v7, v9}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V

    iput-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 84
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v6, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mListener:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setOnIndicatorTouchListener(Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;)V

    .line 87
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 89
    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mPhase:I

    packed-switch v4, :pswitch_data_0

    .line 184
    :cond_2
    :goto_1
    return-void

    .line 82
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_3
    new-instance v4, Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v6, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    goto :goto_0

    .line 91
    .restart local v2    # "rect":Landroid/graphics/Rect;
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->initialize()V

    .line 92
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0169

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 94
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c016a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorLeftPosition(I)V

    .line 96
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c016b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c016c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c016d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c016e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 100
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTouchableArea(Landroid/graphics/Rect;)V

    .line 101
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v10}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorVisibility(Z)V

    .line 102
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v10}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravity(I)V

    .line 103
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0e042d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(Ljava/lang/String;)V

    .line 105
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v10}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->show(Z)V

    goto/16 :goto_1

    .line 109
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->initialize()V

    goto/16 :goto_1

    .line 113
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->initialize()V

    .line 114
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c01aa

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 116
    .local v3, "top":I
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c01ac

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 118
    .local v0, "left":I
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 119
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorLeftPosition(I)V

    .line 120
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v10}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->showWithUntouchable(Z)V

    .line 121
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v11}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravityNoPadding(I)V

    .line 122
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v10}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorVisibility(Z)V

    .line 123
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v6, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(Ljava/lang/String;)V

    .line 124
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Lcom/android/contacts/activities/ContactEditorActivity;

    if-eqz v4, :cond_2

    .line 125
    sput-boolean v5, Lcom/android/contacts/editor/TextFieldsEditorView;->mAddaContactTutorialShouldSave:Z

    goto/16 :goto_1

    .line 130
    .end local v0    # "left":I
    .end local v3    # "top":I
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->initialize()V

    .line 131
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v10}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setSimAccountMode(Z)V

    .line 132
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c01b2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 134
    .restart local v3    # "top":I
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c01b3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 136
    .restart local v0    # "left":I
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 137
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorLeftPosition(I)V

    .line 138
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v10}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->showWithUntouchable(Z)V

    .line 139
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v11}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravityNoPadding(I)V

    .line 140
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v10}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorVisibility(Z)V

    .line 141
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v6, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Lcom/android/contacts/activities/ContactEditorActivity;

    if-eqz v4, :cond_2

    .line 144
    sput-boolean v5, Lcom/android/contacts/editor/TextFieldsEditorView;->mAddaContactTutorialShouldSave:Z

    goto/16 :goto_1

    .line 149
    .end local v0    # "left":I
    .end local v3    # "top":I
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->initialize()V

    .line 150
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Lcom/android/contacts/activities/ContactEditorActivity;

    if-eqz v4, :cond_4

    .line 151
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ContactEditorActivity;->getCoordinatesTutorialView()[I

    move-result-object v1

    .line 153
    .local v1, "mSaveLoc":[I
    if-eqz v1, :cond_2

    .line 156
    iget-object v6, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    aget v4, v1, v10

    if-gez v4, :cond_5

    move v4, v5

    :goto_2
    invoke-virtual {v6, v4}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 157
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    aget v6, v1, v5

    invoke-virtual {v4, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorLeftPosition(I)V

    .line 159
    .end local v1    # "mSaveLoc":[I
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0171

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0172

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0173

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0174

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v2, v4, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 168
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTouchableArea(Landroid/graphics/Rect;)V

    .line 169
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->showWithUntouchable(Z)V

    .line 170
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 171
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v11}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravityNoPadding(I)V

    .line 176
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v10}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorVisibility(Z)V

    .line 177
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setArrowVisibility(Z)V

    .line 178
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextViewVisibility(Z)V

    goto/16 :goto_1

    .line 156
    .restart local v1    # "mSaveLoc":[I
    :cond_5
    aget v4, v1, v10

    goto :goto_2

    .line 173
    .end local v1    # "mSaveLoc":[I
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v11}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravity(I)V

    goto :goto_3

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 187
    iget v0, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mPhase:I

    if-eq v0, p1, :cond_0

    .line 188
    iput p1, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mPhase:I

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->refresh()V

    .line 192
    :cond_0
    return-void
.end method

.method public setVisibilityTutorialPopup(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setVisibilityPopupView(Z)V

    .line 198
    :cond_0
    return-void
.end method

.method public startTutorial()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "AddaContactTutorialManager"

    const-string v1, "startTutorial"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mPhase:I

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->refresh()V

    .line 57
    return-void
.end method

.method public startTutorial(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 2
    .param p1, "currentAcount"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 60
    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mPhase:I

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->refresh()V

    .line 67
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mPhase:I

    goto :goto_0
.end method
