.class public final Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
.super Ljava/lang/Object;
.source "CallLogListItemViews.java"


# instance fields
.field public final PrimaryActionLongClickListener:Landroid/view/View;

.field public final bottomDivider:Landroid/view/View;

.field public final callIndi:Landroid/widget/ImageView;

.field public final callLogDate:Landroid/widget/RelativeLayout;

.field public final callLogDate_text:Landroid/widget/TextView;

.field public final callLogViewby_text:Landroid/widget/TextView;

.field public final groupCount:Landroid/widget/TextView;

.field public final imageLayout:Landroid/widget/RelativeLayout;

.field public final listHeaderTextView:Landroid/widget/TextView;

.field public final logType:Landroid/widget/ImageView;

.field public final nameText:Landroid/widget/TextView;

.field public final numberText:Landroid/widget/TextView;

.field public final phoneCallDetailsViews:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

.field public final photoButton:Landroid/widget/ImageButton;

.field public final photoView:Landroid/widget/ImageView;

.field public primaryActionView:Landroid/view/View;

.field public final quickContactView:Landroid/widget/QuickContactBadge;

.field public final remindmeimage:Landroid/widget/ImageView;

.field public final secondaryActionView:Landroid/widget/Button;

.field public final simcardImage:Landroid/widget/ImageView;

.field public final timeText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "callLogDate"    # Landroid/widget/RelativeLayout;
    .param p2, "callLogDate_text"    # Landroid/widget/TextView;
    .param p3, "callLogViewby_text"    # Landroid/widget/TextView;
    .param p4, "imagelayout"    # Landroid/widget/RelativeLayout;
    .param p5, "photoView"    # Landroid/widget/ImageView;
    .param p6, "image_button"    # Landroid/widget/ImageButton;
    .param p7, "quickContactView"    # Landroid/widget/QuickContactBadge;
    .param p8, "primaryActionView"    # Landroid/view/View;
    .param p9, "PrimaryActionLongClickListener"    # Landroid/view/View;
    .param p10, "secondaryActionView"    # Landroid/widget/Button;
    .param p11, "logType"    # Landroid/widget/ImageView;
    .param p12, "nameText"    # Landroid/widget/TextView;
    .param p13, "groupCount"    # Landroid/widget/TextView;
    .param p14, "callIndi"    # Landroid/widget/ImageView;
    .param p15, "numberText"    # Landroid/widget/TextView;
    .param p16, "timeText"    # Landroid/widget/TextView;
    .param p17, "phoneCallDetailsViews"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;
    .param p18, "listHeaderTextView"    # Landroid/widget/TextView;
    .param p19, "bottomDivider"    # Landroid/view/View;
    .param p20, "view"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/RelativeLayout;

    .line 73
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate_text:Landroid/widget/TextView;

    .line 74
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogViewby_text:Landroid/widget/TextView;

    .line 75
    iput-object p11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->logType:Landroid/widget/ImageView;

    .line 76
    iput-object p12, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    .line 77
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->groupCount:Landroid/widget/TextView;

    .line 78
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callIndi:Landroid/widget/ImageView;

    .line 79
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    .line 80
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    .line 81
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->imageLayout:Landroid/widget/RelativeLayout;

    .line 82
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoView:Landroid/widget/ImageView;

    .line 83
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    .line 84
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    .line 85
    const-string v1, "feature_tablet_selection_mode"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    const v1, 0x7f0900f3

    move-object/from16 v0, p20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    .line 90
    :goto_0
    const-string v1, "feature_tablet_selection_mode"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    const v1, 0x7f0900f3

    move-object/from16 v0, p20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->PrimaryActionLongClickListener:Landroid/view/View;

    .line 95
    :goto_1
    iput-object p10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    .line 96
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

    .line 97
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    .line 98
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    .line 99
    const-string v1, "ctc_dual_mode"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_common_dsds_support "

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    :cond_0
    const v1, 0x7f0900ed

    move-object/from16 v0, p20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    .line 104
    :goto_2
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 105
    const v1, 0x7f0900eb

    move-object/from16 v0, p20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    .line 109
    :goto_3
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "feature_wvga"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 115
    :cond_2
    return-void

    .line 88
    :cond_3
    iput-object p8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    goto :goto_0

    .line 93
    :cond_4
    iput-object p9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->PrimaryActionLongClickListener:Landroid/view/View;

    goto :goto_1

    .line 102
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    goto :goto_2

    .line 107
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    goto :goto_3
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    new-instance v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->createForTest(Landroid/content/Context;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

    move-result-object v19

    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v21, Landroid/view/View;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/View;

    invoke-direct/range {v22 .. v23}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v2 .. v22}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    return-object v2
.end method

.method public static fromView(Landroid/view/View;)Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    .locals 23
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 118
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    const v3, 0x7f0900dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f0900dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0900de

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0900e3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v7, 0x7f0900e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0900e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    const v9, 0x7f0900e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/QuickContactBadge;

    const v10, 0x7f0900df

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0900df

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0900e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    const v13, 0x7f0900e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v14, 0x7f0900ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0900ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v16, 0x7f0900e9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    const v17, 0x7f0900ee

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v18, 0x7f0900ef

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->fromView(Landroid/view/View;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

    move-result-object v19

    const v20, 0x7f0900f0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    const v21, 0x7f0900f1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v22, p0

    invoke-direct/range {v2 .. v22}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    return-object v2
.end method
